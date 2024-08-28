struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 15>;

var<private> global3: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_3(Struct_1(u_input.c.xy, -400f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.e.x * arg_0), 1f)), arg_1.a.b, true), Struct_1(_wgslsmith_clamp_vec2_i32(arg_1.c.a, firstTrailingBit(vec2<i32>(-30587i, 17589i) >> (vec2<u32>(arg_1.d, 4294967295u) % vec2<u32>(32u))), abs(_wgslsmith_mult_vec2_i32(u_input.c.wx, vec2<i32>(0i, 1i)))), all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], false, arg_1.c.d, global2[_wgslsmith_index_u32(5657u, 15u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(23397u, 15u)], true, true, arg_1.c.d), vec4<bool>(arg_1.b.b, true, true, arg_1.a.d), arg_1.b.c), !arg_1.a.b)), all(!select(global3[_wgslsmith_index_u32(20624u, 18u)], vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.b, 15u)])), true), arg_1.b, 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(904f, arg_0, 441f)))))));
    global3 = array<vec2<bool>, 18>();
    let var_1 = Struct_4(arg_1, Struct_1(vec2<i32>(11109i, ~u_input.c.x), global2[_wgslsmith_index_u32(global1.x, 15u)], ~4294967295u == select(_wgslsmith_mult_u32(0u, var_0.d), abs(0u), true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, arg_1.e.x, arg_0) * vec3<f32>(var_0.e.x, arg_0, arg_1.e.x)))) + arg_1.e), Struct_2(vec3<u32>(min(~arg_1.d, var_0.d), _wgslsmith_dot_vec3_u32(u_input.a.ywy, vec3<u32>(0u, 33216u, 102195u)), 14054u), arg_1.c, Struct_1(reverseBits(vec2<i32>(1i, arg_1.a.a.x)), global2[_wgslsmith_index_u32(var_0.d, 15u)], all(!vec3<bool>(arg_1.b.b, true, global2[_wgslsmith_index_u32(106622u, 15u)])), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.e))))));
    global1 = select(vec2<u32>(~firstTrailingBit(~arg_1.d), 4395u), min(vec2<u32>(0u, 1u), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yxy, u_input.a.xyy), ~u_input.a.zww))), false);
    return ~arg_1.d ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~(~u_input.d.x)), reverseBits(var_1.a.d) ^ arg_1.d);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_1(~u_input.c.zy, max(arg_3, -1i) > _wgslsmith_clamp_i32(arg_3, 26628i, u_input.c.x), reverseBits(1i) != (u_input.c.x >> (u_input.a.x % 32u)), arg_2.x), Struct_1(vec2<i32>(-arg_3, ~arg_3), firstTrailingBit(64307u) == 62624u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.d.xw), 15u)], any(vec2<bool>(global2[_wgslsmith_index_u32(arg_1, 15u)], true))), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(arg_3, arg_3, u_input.c.x), arg_3), any(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d.x, 15u)], true)), global2[_wgslsmith_index_u32(min(arg_1, global1.x), 15u)], !(!arg_2.x)), ~arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1227f, _wgslsmith_f_op_f32(max(765f, 556f)), _wgslsmith_f_op_f32(-188f - 1420f)) - vec3<f32>(_wgslsmith_f_op_f32(-1262f + -194f), -594f, _wgslsmith_f_op_f32(534f + -175f)))), Struct_1(u_input.c.wz & _wgslsmith_clamp_vec2_i32(u_input.c.zz, countOneBits(u_input.c.zz), vec2<i32>(u_input.c.x, arg_3)), any(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.x, 15u)], false, arg_2.x), vec4<bool>(true, arg_2.x, global2[_wgslsmith_index_u32(1u, 15u)], true), vec4<bool>(arg_2.x, true, true, global2[_wgslsmith_index_u32(arg_1, 15u)])), select(vec4<bool>(arg_2.x, arg_2.x, global2[_wgslsmith_index_u32(4294967295u, 15u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], true, arg_2.x, false), false), !vec4<bool>(global2[_wgslsmith_index_u32(24231u, 15u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], false))), global2[_wgslsmith_index_u32(min(arg_0, 51129u), 15u)], any(select(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 15u)], true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(18573u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(u_input.d.x, 15u)], false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-198f, -1354f, -2346f), vec3<f32>(-651f, -1135f, 946f)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1187f)), _wgslsmith_f_op_f32(f32(-1f) * -305f)), 1472f, -598f)), Struct_2(_wgslsmith_mult_vec3_u32(~u_input.a.yww, vec3<u32>(66086u, 0u, u_input.d.x) << (u_input.d.zxy % vec3<u32>(32u))) | vec3<u32>(~39974u, _wgslsmith_add_u32(u_input.b, arg_1), ~u_input.d.x), Struct_1(select(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(-1i, 37164i)), countOneBits(u_input.c.wx), select(vec2<bool>(false, arg_2.x), arg_2, global3[_wgslsmith_index_u32(arg_1, 18u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(u_input.b, 69338u, arg_1, u_input.b)), 15u)], global2[_wgslsmith_index_u32(global1.x, 15u)], false), Struct_1(~u_input.c.yw | u_input.c.zx, ~arg_3 > _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, 24702i), vec2<i32>(arg_3, -30222i)), arg_2.x, any(!vec3<bool>(arg_2.x, arg_2.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(202f, -471f, -1067f), vec3<f32>(-660f, -472f, 359f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, 1126f, -374f)), vec3<bool>(true, arg_2.x, false))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-279f, 429f, 123f), vec3<f32>(947f, -614f, 281f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -1331f, -1337f)))))));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~u_input.c.x), abs(_wgslsmith_add_vec2_i32(var_0.a.a.a, vec2<i32>(var_0.d.b.a.x, u_input.c.x))) >> ((vec2<u32>(17282u, u_input.d.x) | min(var_0.d.a.xy, u_input.a.xy)) % vec2<u32>(32u))) ^ 0i;
    var var_1 = var_0.c.zx;
    return u_input.b;
}

fn func_2() -> vec3<u32> {
    global1 = vec2<u32>(func_4(~1u, u_input.b << (func_3(-289f, Struct_3(Struct_1(u_input.c.wx, global2[_wgslsmith_index_u32(1u, 15u)], false, true), Struct_1(u_input.c.zz, true, false, true), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), global2[_wgslsmith_index_u32(global1.x, 15u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), u_input.a.x, vec3<f32>(1010f, 1216f, -166f))) % 32u), !global3[_wgslsmith_index_u32(1u, 18u)], 11900i), 14323u);
    global3 = array<vec2<bool>, 18>();
    return _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(93701u), u_input.b, ~71724u), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~(~u_input.a.yyy), vec3<u32>(0u << (u_input.d.x % 32u), ~u_input.b, u_input.b)), vec3<u32>(~global1.x, 0u, _wgslsmith_mod_u32(~u_input.a.x, global1.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_clamp_u32(var_0.x, ~abs(func_2().x), u_input.a.x);
    var var_2 = true;
    let var_3 = 65665u ^ ((1u | var_1) & 1u);
    var_2 = true;
    return 31060u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = Struct_1(u_input.c.yx, global2[_wgslsmith_index_u32(64866u & func_1(!(!global3[_wgslsmith_index_u32(53768u, 18u)]), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), !global2[_wgslsmith_index_u32(u_input.d.x, 15u)], false, 2812u > global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(602f, 400f, -983f, -571f)), !select(true, global2[_wgslsmith_index_u32(global1.x, 15u)], global2[_wgslsmith_index_u32(global1.x, 15u)])), 15u)], !(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-256f, -1000f), -157f, global2[_wgslsmith_index_u32(26593u, 15u)])) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -583f)))), !global2[_wgslsmith_index_u32(1u, 15u)]);
    global3 = array<vec2<bool>, 18>();
    global3 = array<vec2<bool>, 18>();
    var var_2 = Struct_3(var_1, var_1, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(22267i, ~u_input.c.x), vec2<i32>(u_input.c.x, -4979i) & u_input.c.xz), !(_wgslsmith_f_op_f32(select(-340f, -923f, false)) <= 1140f), 0i <= u_input.c.x, global2[_wgslsmith_index_u32(~0u, 15u)]), abs(u_input.d.x >> (1u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2654f), _wgslsmith_f_op_f32(f32(-1f) * -195f))))), -682f, _wgslsmith_f_op_f32(round(450f))));
    global1 = _wgslsmith_sub_vec2_u32(abs(min(u_input.a.yw, u_input.a.xw)) << (vec2<u32>(firstTrailingBit(~9462u), _wgslsmith_sub_u32(1u, 1u)) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(abs(u_input.a.ww), u_input.a.yy));
    let var_3 = Struct_1(vec2<i32>(0i, var_2.a.a.x), ~(-max(var_2.b.a.x, 7404i)) > u_input.c.x, all(vec3<bool>(!any(vec3<bool>(true, var_1.c, true)), !(true & var_2.b.c), any(select(vec4<bool>(false, true, var_2.c.b, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 15u)], false, false), var_1.c)))), var_2.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.yx)));
}

