struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> vec3<i32> {
    var var_0 = arg_2.xy;
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - 1116f), -165f, all(arg_0.b.yy))))), vec2<f32>(arg_2.x, global1.e.e.x), !(~2934u < abs(global1.b.x))));
    let var_1 = 1527f;
    let var_2 = Struct_3(vec3<bool>(global1.a.x, !select(arg_1.b.x, !arg_1.c, global1.a.x), (_wgslsmith_f_op_f32(select(319f, -979f, false)) <= -577f) & !(false == arg_0.a)), ~global1.e.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.c))))), global1.d, global2[_wgslsmith_index_u32(global1.b.x, 9u)]);
    return _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, i32(-1i) * -var_2.d.b, 2147483647i), -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1.d.b, -2906i, var_2.d.b) >> (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), abs(vec3<i32>(0i, -9118i, u_input.d.x))), vec3<i32>(min(-42912i, -21517i), 1i, -global1.d.b)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.d.x, global1.d.b), _wgslsmith_mod_i32(-1i, u_input.d.x), u_input.b >> (19411u % 32u)), 0i), u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.d.b, global1.d.b), u_input.d), vec2<i32>(-6468i, global1.d.b)), 1i));
    let var_1 = vec2<u32>(global0.x, global0.x);
    var_0 = countOneBits(func_3(global1.e, global2[_wgslsmith_index_u32(abs(global0.x), 9u)], vec4<f32>(-556f, _wgslsmith_f_op_f32(-652f + global1.e.e.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.x))), 659f), max(_wgslsmith_dot_vec2_u32(reverseBits(global1.b), vec2<u32>(var_1.x, global0.x)), _wgslsmith_sub_u32(global0.x, countOneBits(1u)))));
    var var_2 = func_3(Struct_1(true || ((var_1.x > global0.x) && global1.d.c), global1.e.b, global1.a.x, var_1, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * 1077f) + -1086f), -654f)), global1.e, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2304f), _wgslsmith_f_op_f32(exp2(global1.e.e.x)), _wgslsmith_f_op_f32(-global1.c.x), global1.e.e.x)))), _wgslsmith_div_u32(u_input.c.x, abs(~_wgslsmith_mult_u32(15119u, 1u)))).x;
    var_2 = 1i;
    return Struct_1(all(vec4<bool>(!arg_0, select(global1.a.x, false, global1.d.a.b.x) || (2147483647i > u_input.d.x), reverseBits(global1.d.a.d.x) > _wgslsmith_add_u32(0u, global0.x), any(select(vec4<bool>(global1.d.a.b.x, global1.e.c, arg_0, arg_0), vec4<bool>(true, global1.a.x, true, global1.d.c), global1.e.b)))), select(vec4<bool>(!any(global1.d.a.b), !(!arg_0), (global1.d.a.d.x & var_1.x) < 4294967295u, all(vec4<bool>(true, true, arg_0, false)) && false), vec4<bool>(arg_0, any(select(vec4<bool>(arg_0, false, true, true), global1.e.b, global1.d.a.b)), _wgslsmith_f_op_f32(393f - global1.e.e.x) >= _wgslsmith_f_op_f32(global1.d.a.e.x - 1359f), all(select(vec3<bool>(true, global1.d.c, true), vec3<bool>(arg_0, false, global1.a.x), global1.d.a.a))), arg_0), any(select(global1.e.b, vec4<bool>(false, any(global1.e.b), arg_0, global1.d.a.e.x > global1.d.a.e.x), global1.a.x)), var_1, global1.c.yz);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> vec3<u32> {
    global2 = array<Struct_1, 9>();
    let var_0 = any(global1.d.a.b);
    var var_1 = func_2(true);
    var var_2 = !vec4<bool>(!(!(arg_1.e.b.x != false)), !(-836f >= _wgslsmith_div_f32(arg_1.e.e.x, var_1.e.x)), false, arg_1.e.b.x);
    var_1 = global1.e;
    return u_input.a;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_3(!(!global1.e.b.wyy), arg_1.d.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, -345f, 2117f)), arg_1.a))), Struct_2(Struct_1(global1.a.x, vec4<bool>(arg_1.b.x, arg_0, arg_0, arg_1.b.x), global1.e.a, max(max(vec2<u32>(arg_2, global0.x), vec2<u32>(20367u, global0.x)), vec2<u32>(40023u, 1u)), arg_1.a.zx), -(_wgslsmith_sub_i32(global1.d.b, global1.d.b) & 0i), arg_1.b.x), Struct_1(!arg_1.b.x, vec4<bool>(true && !arg_0, global1.d.a.b.x, all(func_2(arg_1.b.x).b), any(!vec3<bool>(arg_1.b.x, arg_0, global1.a.x))), !all(vec2<bool>(false, arg_1.b.x)), _wgslsmith_add_vec2_u32(vec2<u32>(global1.d.a.d.x, ~4294967295u), vec2<u32>(reverseBits(4294967295u), global0.x)), global1.c.zx));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.c))), !vec2<bool>(all(vec2<bool>(true, true)), false), vec2<u32>(func_2(arg_0).d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, arg_1.c.x, arg_1.d.x), vec3<u32>(43676u, 75444u, 0u)) << ((_wgslsmith_clamp_u32(25165u, 4294967295u, var_0.e.d.x) >> (u_input.c.x % 32u)) % 32u)), reverseBits(select(reverseBits(arg_1.d) << (abs(vec3<u32>(36871u, 3493u, u_input.a.x)) % vec3<u32>(32u)), select(_wgslsmith_mult_vec3_u32(u_input.a, arg_1.d), arg_1.d & vec3<u32>(u_input.c.x, var_0.e.d.x, 1u), !vec3<bool>(false, arg_0, false)), !vec3<bool>(arg_0, var_0.d.a.b.x, var_0.e.c))), 1u);
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.a.e.x, var_0.e.e.x, 603f), vec3<f32>(511f, 1157f, arg_1.a.x), vec3<bool>(arg_0, false, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.x, global1.e.e.x, var_1.a.x)))), var_1.a)), vec2<bool>(arg_0, !(_wgslsmith_f_op_f32(floor(var_1.a.x)) < _wgslsmith_f_op_f32(var_1.a.x + -629f))), vec2<u32>(~arg_2, 0u), firstLeadingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(arg_1.d), var_1.d)), ~var_1.e);
    let var_3 = Struct_3(select(!select(global1.d.a.b.xyy, var_0.e.b.wyx, true), select(!select(var_0.e.b.wxw, vec3<bool>(true, global1.e.b.x, false), vec3<bool>(arg_0, var_2.b.x, arg_0)), vec3<bool>(global1.d.c, var_1.b.x, true), select(var_0.e.b.yyw, !global1.a, any(vec4<bool>(false, true, arg_1.b.x, var_1.b.x)))), !select(all(vec3<bool>(var_2.b.x, false, arg_0)), var_1.b.x, !var_0.d.c)), ~(~arg_1.c) | global1.e.d, arg_1.a, global1.d, Struct_1(select(arg_0, !(global0.x >= 21472u), arg_0), global1.e.b, var_2.b.x, u_input.a.zz, vec2<f32>(1f, global1.e.e.x)));
    global2 = array<Struct_1, 9>();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(!select(global1.e.c, global1.a.x, global1.a.x) | true, !global1.d.a.c, global1.a.x), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1528f, global1.d.a.e.x, _wgslsmith_f_op_f32(abs(-683f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global1.c)), global1.c, true))), vec2<bool>(true, global1.e.c || true), vec2<u32>(1u, ~firstTrailingBit(global1.b.x)), vec3<u32>(0u >> (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(func_1(global1.d.a.d.x, Struct_3(vec3<bool>(global1.e.a, true, global1.a.x), vec2<u32>(u_input.a.x, 0u), global1.c, global1.d, global1.e), false, vec2<bool>(global1.e.a, true)), ~vec3<u32>(0u, 17566u, global1.d.a.d.x)), u_input.a.x), u_input.c.x), 0u);
    let var_1 = func_4(var_0.a.x, Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(620f, _wgslsmith_f_op_f32(round(901f)), -464f))), !(!(!vec2<bool>(global1.a.x, false))), u_input.a.xz, ~vec3<u32>(1u, _wgslsmith_div_u32(6406u, 26515u), u_input.c.x), ~(~15716u) | _wgslsmith_mult_u32(_wgslsmith_div_u32(global1.d.a.d.x, global0.x), _wgslsmith_sub_u32(4294967295u, var_0.d.a.d.x))), func_4(all(select(func_4(var_0.d.c, Struct_4(vec3<f32>(var_0.c.x, global1.d.a.e.x, 535f), vec2<bool>(var_0.a.x, false), var_0.b, u_input.a, 0u), global0.x).d.a.b.wy, global1.a.zy, func_2(true).b.yz)), Struct_4(var_0.c, vec2<bool>(var_0.d.c, true), vec2<u32>(var_0.d.a.d.x, abs(51597u)), ~(u_input.a << (u_input.a % vec3<u32>(32u))), func_2(var_0.a.x).d.x), 4294967295u).d.a.d.x).d;
    var var_2 = 2499f;
    global0 = countOneBits(~u_input.c.xy);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-546f, var_1.a.e.x, -881f))) * vec3<f32>(215f, var_0.d.a.e.x, 948f)))), var_0.e.b.zy, _wgslsmith_div_vec2_u32(select(~vec2<u32>(global1.b.x, 1u), vec2<u32>(4543u, u_input.c.x) ^ _wgslsmith_mult_vec2_u32(var_1.a.d, u_input.a.xx), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.b, 2147483647i), vec3<i32>(0i, var_0.d.b, 0i)) >= firstLeadingBit(2147483647i)), var_0.b), ~u_input.a, _wgslsmith_add_u32(var_1.a.d.x, 0u));
    var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.d.a.e.x, 776f)) - _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 712f) + _wgslsmith_f_op_f32(f32(-1f) * -156f)))), var_1.a.b.wz, abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.x, 26485u) >> (var_1.a.d % vec2<u32>(32u)), var_0.e.d), ~reverseBits(global1.b), select(func_4(true, Struct_4(var_0.c, var_0.d.a.b.zy, var_1.a.d, vec3<u32>(1u, 0u, 9740u), 4294967295u), u_input.a.x).a.zx, var_3.b, !var_0.a.x))), var_3.d, global0.x);
    var var_4 = -u_input.b;
    global1 = func_4(!(-885f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -383f), global1.e.e.x))), Struct_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), -115f, _wgslsmith_f_op_f32(abs(825f))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.e.x), -1454f, 1083f))), global1.d.a.b.wy, select(_wgslsmith_mult_vec2_u32(~vec2<u32>(45520u, 86049u), vec2<u32>(global0.x, global0.x)), ~vec2<u32>(70183u, 60389u), var_3.b), u_input.c, ~((global1.e.d.x << (0u % 32u)) & var_1.a.d.x)), global1.d.a.d.x);
    global2 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-21852i, 0i), min(54841i, 1i))), 2147483647i), _wgslsmith_clamp_vec3_i32(-abs(func_3(global1.e, Struct_1(var_0.a.x, vec4<bool>(global1.d.c, true, false, var_0.d.c), var_0.e.b.x, u_input.a.xz, vec2<f32>(var_3.a.x, -173f)), vec4<f32>(1000f, 1626f, -2038f, -521f), 37034u)), -_wgslsmith_mult_vec3_i32(vec3<i32>(24784i, 1i, var_0.d.b) & vec3<i32>(17934i, -6091i, -1i), vec3<i32>(-5035i, var_1.b, u_input.d.x)), vec3<i32>(u_input.d.x, _wgslsmith_div_i32(countOneBits(1i), global1.d.b), -1i)), var_1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a.x, global1.c.x, 139f, -1040f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1019f, var_1.a.e.x, var_0.d.a.e.x, global1.d.a.e.x))), vec4<bool>(false, global1.e.a, var_0.e.b.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-408f, var_1.a.e.x, 466f, 745f))))), var_3.a.zz);
}

