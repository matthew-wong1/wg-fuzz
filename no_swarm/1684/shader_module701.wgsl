struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, vec2<u32>(107868u, 0u), vec3<bool>(false, false, false), vec4<f32>(325f, -831f, -142f, 890f)), Struct_1(false, vec2<u32>(0u, 24417u), vec3<bool>(false, true, false), vec4<f32>(-1099f, 1000f, 338f, -878f)));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true, vec2<u32>(0u, 0u), vec3<bool>(false, false, false), vec4<f32>(-194f, 901f, 2858f, -344f));

var<private> global3: vec2<i32>;

var<private> global4: array<vec4<bool>, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: i32) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_add_u32(~global2.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(48067u, global1.b.x, global2.b.x), u_input.a), select(u_input.a, u_input.a, arg_1.wxz)))), 2u)];
    var var_1 = -(u_input.b | 0i);
    var_1 = 17446i;
    global3 = -_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b | 1i, i32(-1i) * -29318i), abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, global3.x), vec2<i32>(-8773i, global3.x)) | firstLeadingBit(vec2<i32>(global3.x, -1i))));
    global0 = array<Struct_1, 2>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1194f, var_0.d.x, all(vec2<bool>(arg_1.x, global2.c.x)))), 1555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x + -550f) + _wgslsmith_f_op_f32(min(var_0.d.x, 278f))), _wgslsmith_div_f32(global2.d.x, -896f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.d)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(false, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a.x, global1.b.x, 6227u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), u_input.a)), 44167u), vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1053f))) == _wgslsmith_div_f32(_wgslsmith_div_f32(1064f, 1100f), _wgslsmith_f_op_f32(ceil(global2.d.x))), arg_1.c.x, all(global2.c.xy)), global2.d);
    let var_1 = !(!global2.c.x);
    global0 = array<Struct_1, 2>();
    let var_2 = Struct_1(!(-arg_0 <= abs(u_input.b & global3.x)), select(u_input.a.yy | ~_wgslsmith_add_vec2_u32(u_input.a.zx, global2.b), reverseBits(reverseBits(vec2<u32>(5647u, arg_1.b.x))), 1u == ~u_input.a.x), vec3<bool>((u_input.a.x >= _wgslsmith_mod_u32(62224u, 1u)) & var_1, var_1, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(!arg_1.c.xz, vec4<bool>(global1.a || var_1, true, any(arg_1.c), !var_0.c.x), global3.x))));
    var var_3 = Struct_1(global2.c.x, arg_1.b, vec3<bool>(false == global2.a, any(select(vec2<bool>(global2.a, true), !vec2<bool>(var_2.c.x, false), select(arg_1.c.xy, var_2.c.yx, vec2<bool>(true, var_2.c.x)))), all(!global4[_wgslsmith_index_u32(~4294967295u, 13u)])), _wgslsmith_f_op_vec4_f32(exp2(global2.d)));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    let var_0 = Struct_1(!(!all(vec2<bool>(false, true))), global1.b, global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.d))))));
    global0 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(~(1u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, arg_0.b.x, 0u, u_input.a.x), vec4<u32>(0u, 4294967295u, global1.b.x, 26912u))), 2u)];
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global3 = ~(-countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(7837i, arg_1))) | _wgslsmith_mod_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(arg_1, -25149i)), ~vec2<i32>(global3.x, -17278i), false), vec2<i32>(max(28962i, -15268i), abs(22716i))));
    let var_0 = ~27675u;
    global1 = func_4(Struct_1(arg_2.d.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x + arg_2.d.x) - _wgslsmith_f_op_f32(-global2.d.x)), ~_wgslsmith_div_vec2_u32(arg_2.b, ~global2.b), arg_2.c, arg_0.d));
    global3 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, global3.x), 13651i);
    global4 = array<vec4<bool>, 13>();
    return Struct_1(firstLeadingBit(0u) > ~(~(var_0 ^ var_0)), firstTrailingBit(arg_0.b & ~abs(arg_0.b)), !vec3<bool>(arg_2.a, true && arg_2.a, true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.d))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = func_5(func_4(func_2(-39927i, arg_2)), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_div_i32(min(u_input.b, arg_1), select(u_input.b, -2147483647i, false))), ~(-17869i), 1i), arg_2, _wgslsmith_div_u32(~countOneBits(global2.b.x), u_input.a.x) < global1.b.x);
    let var_1 = _wgslsmith_f_op_f32(max(849f, _wgslsmith_f_op_f32(ceil(-221f))));
    global2 = arg_2;
    global1 = Struct_1(true, vec2<u32>(global1.b.x, ~(~4294967295u)), global2.c, vec4<f32>(-536f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1421f), global1.d.x), func_5(func_4(Struct_1(arg_2.c.x, global1.b, global2.c, var_0.d)), reverseBits(u_input.b << (global2.b.x % 32u)), arg_2, var_0.c.x).d.x, func_2(global3.x, func_5(Struct_1(arg_0, global2.b, vec3<bool>(false, true, true), vec4<f32>(849f, 807f, global2.d.x, var_0.d.x)), -14811i, global0[_wgslsmith_index_u32(1u, 2u)], true)).d.x));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(10712u, _wgslsmith_div_u32(countOneBits(countOneBits(var_0.b.x)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.a), firstLeadingBit(u_input.a))), reverseBits(max(global1.b.x, u_input.a.x)) | reverseBits(global1.b.x & global1.b.x)), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(24484u, 31870u, 11298u) << (vec3<u32>(global2.b.x, 89389u, u_input.a.x) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.x, 1u, 4294967295u), u_input.a)));
    return vec3<bool>(true, arg_2.a, select(!(!var_0.a && !global2.a), any(!vec4<bool>(false, true, global2.c.x, global2.c.x)), true == !(true | arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(select(u_input.a.x, 8680u, true), 19752u, u_input.a.x);
    global1 = Struct_1(false, vec2<u32>(global1.b.x, firstTrailingBit(global1.b.x)), global2.c, vec4<f32>(_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(968f)) - _wgslsmith_f_op_f32(-global1.d.x))), global2.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1022f, global2.d.x) * _wgslsmith_f_op_f32(f32(-1f) * -673f))))));
    let var_1 = func_1(!(!all(vec4<bool>(false, false, false, false))), _wgslsmith_sub_i32(global3.x, ~(~global3.x) | -44134i), global0[_wgslsmith_index_u32(abs(max(_wgslsmith_mult_u32(global2.b.x, global2.b.x) ^ var_0.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, global1.b.x, global2.b.x, global1.b.x), vec4<u32>(1u, u_input.a.x, global1.b.x, u_input.a.x))))), 2u)]);
    let var_2 = vec2<bool>(!(!select(true, var_1.x, select(true, var_1.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(func_4(Struct_1(true, global2.b, vec3<bool>(var_1.x, true, false), vec4<f32>(global1.d.x, 345f, global1.d.x, 1000f))).c.zx, select(vec4<bool>(false, true, false, false), global4[_wgslsmith_index_u32(global1.b.x, 13u)], false), global3.x)).x - -1358f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + 234f)));
    global1 = Struct_1(!func_1(true, global3.x << (1u % 32u), Struct_1(false && global1.a, global1.b, select(global2.c, global2.c, var_1), global1.d)).x, ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.b, var_0.zx, vec2<u32>(global1.b.x, global2.b.x)), firstTrailingBit(vec2<u32>(var_0.x, 23018u))), countOneBits(vec2<u32>(global1.b.x, u_input.a.x) & vec2<u32>(global1.b.x, global1.b.x))), vec3<bool>(any(vec4<bool>(!var_1.x, var_2.x, false | var_1.x, true)), true | global1.c.x, true), func_2(max(_wgslsmith_mult_i32(1i, -2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3.x, global3.x), vec3<i32>(39635i, -1i, 7232i)), -1i), global0[_wgslsmith_index_u32(36567u, 2u)]).d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~global3.x));
}

