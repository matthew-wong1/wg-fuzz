struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: array<u32, 25>;

var<private> global3: Struct_3 = Struct_3(Struct_1(false, vec3<bool>(true, false, true)), vec4<u32>(1u, 1u, 54127u, 4294967295u), vec4<bool>(true, true, false, true), Struct_2(true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    let var_0 = global1.a;
    let var_1 = firstLeadingBit(firstLeadingBit(-vec4<i32>(arg_3.x, u_input.a.x, 1i, -16298i))) | abs(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, arg_3.x, arg_2, arg_3.x), vec4<i32>(1i, -1i, -2147483647i << (global2[_wgslsmith_index_u32(u_input.b.x, 25u)] % 32u), _wgslsmith_div_i32(arg_2, -2147483647i))));
    var var_2 = abs(vec3<u32>(_wgslsmith_mult_u32(min(1u, 28227u), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.c.x % 32u)), abs(global2[_wgslsmith_index_u32(select(1u, 4294967295u, true), 25u)]) ^ _wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, 1u), ~((global2[_wgslsmith_index_u32(4294967295u, 25u)] >> (global2[_wgslsmith_index_u32(global3.b.x, 25u)] % 32u)) | ~global2[_wgslsmith_index_u32(u_input.b.x, 25u)])));
    let var_3 = global3.d;
    global0 = array<vec3<bool>, 16>();
    return !(!(!(true & (arg_0 >= -472f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>) -> bool {
    global1 = global3.d;
    var var_0 = false;
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_clamp_vec2_i32(u_input.a.yy, firstTrailingBit(u_input.a.xw), vec2<i32>(select(~2147483647i, -18230i, func_3(570f, global3.a.b.zx, u_input.a.x, vec3<i32>(-14212i, -1i, -6572i))) >> (global2[_wgslsmith_index_u32(firstTrailingBit(~arg_1.x), 25u)] % 32u), ~u_input.a.x));
    var_1 = 1u;
    return !(!(!global1.a) & (-7709i < countOneBits(_wgslsmith_mod_i32(var_2.x, -50558i))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = Struct_1(false, select(select(vec3<bool>(true, func_2(global3.a, vec4<u32>(4294967295u, global3.b.x, u_input.b.x, 0u), vec4<f32>(-814f, arg_1, arg_1, 1267f)), u_input.a.x >= u_input.a.x), vec3<bool>(true, global1.a || global1.a, global3.c.x), u_input.a.x < u_input.a.x), global3.c.wxw, !global0[_wgslsmith_index_u32(66183u, 16u)]));
    global1 = Struct_2(all(vec4<bool>(true, select(global3.c.x, true, true), var_0.b.x || true, !arg_0.b.x)) | var_0.b.x);
    global2 = array<u32, 25>();
    var_0 = global3.a;
    var var_1 = Struct_1(false, arg_0.b);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(arg_1, arg_1)) - -835f) + _wgslsmith_f_op_f32(sign(714f)))));
}

fn func_4(arg_0: bool) -> Struct_3 {
    var var_0 = u_input.b.x;
    var var_1 = global3.c.yy;
    var_1 = !select(select(select(vec2<bool>(true, false), !global3.a.b.xy, true), select(select(vec2<bool>(true, false), vec2<bool>(global1.a, false), false), global3.c.xz, global3.c.x), func_2(Struct_1(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 25u)], 16u)]), global3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1117f, 998f, -1826f, -1844f)))), global3.c.yw, select(vec2<bool>(global3.c.x, arg_0), vec2<bool>(func_3(1000f, vec2<bool>(true, false), -42764i, u_input.a.wxz), true), false));
    global0 = array<vec3<bool>, 16>();
    var var_2 = select(global3.c.xw, vec2<bool>(true, true), vec2<bool>(true, arg_0));
    return Struct_3(Struct_1(true, select(select(vec3<bool>(true, true, true), vec3<bool>(true, global3.d.a, var_2.x), true), vec3<bool>(true, u_input.a.x != u_input.a.x, all(vec3<bool>(false, global1.a, var_1.x))), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, false), true))), ~vec4<u32>(1u, u_input.c.x, _wgslsmith_add_u32(~global3.b.x, 4294967295u), u_input.b.x), global3.c, Struct_2(true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 25>();
    var var_0 = vec3<bool>(!(!global3.c.x), true, (u_input.a.x & 0i) != u_input.a.x);
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-717f, _wgslsmith_f_op_f32(f32(-1f) * -1166f))) + _wgslsmith_div_f32(-522f, _wgslsmith_f_op_f32(f32(-1f) * -2396f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3.a, 468f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f - -579f) + _wgslsmith_f_op_f32(f32(-1f) * -1565f))));
    let var_2 = !(!select(vec4<bool>(var_1.d.a, true, !var_1.a.a, true), var_1.c, func_4(38066u > u_input.b.x).a.b.x));
    global1 = var_1.d;
    global0 = array<vec3<bool>, 16>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f * _wgslsmith_f_op_f32(step(239f, -1157f)))), -672f, !all(var_2.xyz))));
    var var_4 = func_4(select(true & (true || global1.a), !global1.a, var_2.x) | func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-852f - 611f)), select(func_4(true).c.yw, func_4(var_0.x).c.wy, true), ~u_input.a.x | _wgslsmith_div_i32(-1i, -14917i), u_input.a.xzw)).a;
    global1 = Struct_2(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.x, ~2147483647i), u_input.a.x, u_input.a.x, ~vec4<u32>(u_input.c.x, 48786u, _wgslsmith_sub_u32(3635u, var_1.b.x), ~(u_input.c.x >> (u_input.c.x % 32u))));
}

