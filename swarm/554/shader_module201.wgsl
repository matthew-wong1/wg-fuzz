struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32 = 4294967295u;

var<private> global2: i32 = -20302i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = Struct_2(arg_1.a, _wgslsmith_div_u32(~(~1u), global0.x));
    var var_1 = arg_1;
    var var_2 = all(vec3<bool>(all(vec2<bool>(all(vec4<bool>(true, false, true, true)), arg_2 >= arg_1.b)), !(all(vec2<bool>(false, true)) | any(vec4<bool>(true, true, false, true))), true));
    var_2 = select(any(vec3<bool>(!any(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, true, true)))), any(!vec4<bool>(arg_0.a.a == 188f, all(vec3<bool>(true, false, true)), false, true)), all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), false), vec2<bool>(true, true), true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-219f)), 975f)));
    return 256f;
}

fn func_2() -> vec3<u32> {
    let var_0 = u_input.c.xw;
    let var_1 = any(vec2<bool>(false, false));
    var var_2 = Struct_3(u_input.d.x, Struct_2(Struct_1(-1659f, firstTrailingBit(vec2<u32>(u_input.b, 65260u)) ^ ~vec2<u32>(0u, 4424u)), _wgslsmith_add_u32(1u, ~u_input.a)));
    let var_3 = var_2.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(var_3.a, ~54938u), Struct_2(Struct_1(var_2.b.a.a, u_input.c.wy), 64638u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, 65171u), vec3<u32>(10151u, u_input.c.x, 30310u)), u_input.c.zwx))), _wgslsmith_f_op_f32(-var_3.a.a), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.a.a + var_3.a.a), var_2.b.a.a)))));
    return vec3<u32>(118049u, global0.x, 32674u);
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, global0.x, u_input.a, 4294967295u)), u_input.c) >> (select(82093u, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, global0.x)) | u_input.b, false | ((i32(-1i) * -1295i) < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.d.x, 20976i, u_input.d.x), vec4<i32>(-1247i, u_input.d.x, u_input.d.x, u_input.d.x)))) % 32u);
    let var_1 = all(!select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), true));
    var_0 = ~(func_2().x << (abs(global0.x | ~6569u) % 32u));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(513f))))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1353f - -943f))), global0.yz ^ countOneBits(reverseBits(global0.xx))), 1u);
    return Struct_3(_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, u_input.d.x), _wgslsmith_mult_i32(arg_0.x, arg_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, u_input.d.x), vec3<i32>(1i, 7675i, arg_0.x), vec3<i32>(-95928i, -30319i, -1i)), _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(arg_0.x, -19792i, -6129i))))), Struct_2(var_3.a, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(global0.x, 1u, 59495u), abs(_wgslsmith_mult_u32(var_3.a.b.x, var_3.a.b.x)))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_4(~(~(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) << (func_2() % vec3<u32>(32u)))));
    var var_1 = all(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(false, false), !(!(-603f < var_0.b.a.a))));
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1263f)));
    let var_4 = vec3<u32>(_wgslsmith_mult_u32(1u, ~60319u), max(_wgslsmith_mult_u32(var_2.x, _wgslsmith_dot_vec3_u32(func_2(), vec3<u32>(4294967295u, 4294967295u, global0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(39886u, 1u, var_0.b.b, max(var_0.b.b, u_input.c.x)), ~vec4<u32>(global0.x, var_0.b.b, var_2.x, 0u))), var_0.b.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.a.a, var_0.b.a.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 92951i;
    global1 = u_input.b;
    global0 = vec3<u32>(global0.x, global0.x, ~74170u);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1819f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(766f - -1099f))))), _wgslsmith_f_op_f32(sign(1020f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(1f)), _wgslsmith_f_op_f32(-340f + -528f))), -2109f);
    let var_1 = func_4((~firstTrailingBit(vec3<i32>(-1i, u_input.d.x, 79533i)) ^ vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), _wgslsmith_sub_i32(1i, u_input.d.x))) << (_wgslsmith_mult_vec3_u32(~u_input.c.yzw, vec3<u32>(58626u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 0u, global0.x), u_input.c))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.wxz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.xzy))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.wzz)))), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(-var_0.xxw));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(13891i, var_1.a), _wgslsmith_mult_i32(u_input.d.x, var_1.a), ~(-12643i)) | select(~vec3<i32>(var_1.a, var_1.a, 47570i), vec3<i32>(-54771i, var_1.a, -1i) & vec3<i32>(1i, 2147483647i, 0i), all(vec2<bool>(true, false)))), 1f, -632f);
}

