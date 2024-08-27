struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), false)), vec3<bool>(any(vec2<bool>(true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !any(vec4<bool>(true, true, true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, select(false, true, false), all(vec3<bool>(true, true, false))), any(vec4<bool>(false, false, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(-376f * _wgslsmith_f_op_f32(ceil(global0.b.x)));
    global0 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~46569u), _wgslsmith_sub_u32(22848u | global0.a.x, select(u_input.b, 93892u, true)), global0.c.x | global0.c.x, ~_wgslsmith_add_u32(6017u, 1u)), vec4<u32>(0u, 32687u, select(~35199u, 0u, var_0.x), ~global0.a.x), ~(_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(76465u, u_input.b, 77667u, 1u)) << ((vec4<u32>(global0.c.x, 1u, u_input.a.x, 0u) ^ u_input.a) % vec4<u32>(32u)))), global0.b, ~vec2<u32>(global0.c.x, ~(u_input.b ^ global0.a.x)), abs(select(-global0.d, vec2<i32>(-21458i, global0.d.x), var_0.yz) ^ vec2<i32>(global0.d.x, 1i)));
    let var_2 = Struct_1(~(~abs(vec4<u32>(93732u, 1u, u_input.a.x, 11687u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, -1180f) * _wgslsmith_f_op_f32(min(1106f, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)) + _wgslsmith_f_op_f32(round(global0.b.x))), _wgslsmith_f_op_f32(max(-545f, _wgslsmith_f_op_f32(global0.b.x - global0.b.x))))), u_input.a.xx, vec2<i32>(reverseBits(-2147483647i), -2147483647i));
    var var_3 = u_input.a.yy;
    return global0.a.zwx;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 27850u), _wgslsmith_clamp_u32(~max(global0.c.x, 0u), countOneBits(min(1u, 6180u)), _wgslsmith_dot_vec3_u32(~u_input.a.xww, func_3())), _wgslsmith_clamp_u32(u_input.b, arg_3.a.x << (_wgslsmith_div_u32(94820u, u_input.b) % 32u), abs(max(0u, 0u))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(global0.a.yyw), ~u_input.a.yzx), ~(~u_input.a.wzy)));
    let var_1 = 1i;
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, max(u_input.b, 64667u), var_0.x), var_0.wwz);
    var var_3 = Struct_1(~vec4<u32>(abs(15871u) << ((1129u | arg_0) % 32u), var_2.x, (arg_3.c.x << (16454u % 32u)) ^ 58434u, 1u), _wgslsmith_f_op_vec3_f32(select(arg_3.b, global0.b, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, -6348i >= arg_1.x, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true)))), ((~u_input.a.wy >> (~var_2.zz % vec2<u32>(32u))) | vec2<u32>(~u_input.a.x, 1u)) << (var_0.wy % vec2<u32>(32u)), ~(~(vec2<i32>(-2147483647i, -49497i) ^ -vec2<i32>(global0.d.x, -38885i))));
    let var_4 = ~(1u | global0.a.x);
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = 35383u;
    global0 = func_2(1u, ~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<i32>(28055i, 42552i, arg_1.d.x))) >> (arg_1.a.xyy % vec3<u32>(32u)), arg_1.b.x, arg_1);
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(firstLeadingBit(func_3()), vec3<u32>(arg_1.a.x, 1u, 22494u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), reverseBits(_wgslsmith_sub_vec3_u32(u_input.a.yzx, u_input.a.wwy))), vec3<u32>(u_input.a.x ^ 4294967295u, ~countOneBits(~arg_1.c.x), arg_1.a.x));
    var var_2 = vec2<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.d.x, countOneBits(arg_1.d.x)), global0.d.x, ~(~(-8556i)))) ^ _wgslsmith_div_vec2_i32(vec2<i32>(~(-15073i), global0.d.x), arg_1.d);
    var var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.d.x, 18196i, 441i) >> (vec3<u32>(53401u, global0.a.x, var_1.x) % vec3<u32>(32u)), select(vec3<i32>(29111i, 1i, arg_1.d.x), vec3<i32>(arg_1.d.x, 28308i, arg_1.d.x), false)));
    return _wgslsmith_mult_i32(countOneBits(var_2.x), arg_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 67353u;
    let var_1 = any(select(vec2<bool>(func_1(global0.b.x, Struct_1(u_input.a, global0.b, global0.c, vec2<i32>(2265i, global0.d.x))) != (global0.d.x | 7691i), true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false)), vec2<bool>(false, all(vec3<bool>(false, true, false)))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(67266u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.b.x, global0.b.x, 456f)))), vec4<f32>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 664f, true)), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(min(global0.b.x, -937f)), _wgslsmith_f_op_f32(-1149f * -1916f)))));
}

