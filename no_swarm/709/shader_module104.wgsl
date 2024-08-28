struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
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

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = min(u_input.b, 2920u);
    global0 = arg_1.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1942f)))), _wgslsmith_f_op_f32(arg_1.a.x - -574f)))));
    return arg_1;
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec4_u32(~min(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) << (vec4<u32>(52107u, 28374u, 1u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, 37517u) << (vec4<u32>(4294967295u, 8234u, u_input.a.x, 17283u) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.b) >> (vec4<u32>(u_input.d.x, 56704u, u_input.b, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(33252u, u_input.b, u_input.b, 0u))), countOneBits(min(vec4<u32>(u_input.d.x, u_input.d.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.a.x)) << ((vec4<u32>(u_input.a.x, 4294967295u, 20577u, 26649u) | ~vec4<u32>(1u, 4294967295u, u_input.d.x, 1u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.b, 63789u)), var_0.x), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.d.x), u_input.b), abs(0u), ~u_input.d.x), ~(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.d.x, 82365u), vec4<u32>(var_0.x, u_input.a.x, 99059u, u_input.a.x))) | _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(17524u, 4294967295u, 0u, u_input.b), vec4<u32>(u_input.b, u_input.d.x, u_input.a.x, 48332u)), vec4<u32>(0u, u_input.b, 75628u, 4294967295u))));
    var_0 = ~vec4<u32>(u_input.b, var_1.x, 4294967295u, ~u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1419f - -1310f) * _wgslsmith_f_op_f32(f32(-1f) * -330f)), -1106f, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), -274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1146f)))));
    var_1 = select(select(~firstTrailingBit(vec4<u32>(var_1.x, var_0.x, 71562u, 67264u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.x, 0u, 42258u, 4294967295u), vec4<u32>(var_1.x, var_1.x, 34070u, 4294967295u), vec4<bool>(true, true, true, false)), max(vec4<u32>(var_0.x, var_0.x, var_1.x, var_0.x), vec4<u32>(var_1.x, var_1.x, var_1.x, var_0.x))), all(vec3<bool>(true, true, true)) | true), ~(~vec4<u32>(13759u, 70618u, 4795u, u_input.d.x) | max(vec4<u32>(1u, 31150u, 4294967295u, var_1.x), vec4<u32>(var_1.x, 0u, var_0.x, var_1.x))), select(vec4<bool>(true, 4294967295u >= var_0.x, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, all(vec4<bool>(false, true, false, true)), u_input.c.x >= 25649i))) << (_wgslsmith_mult_vec4_u32(~(~abs(vec4<u32>(4294967295u, u_input.a.x, 15539u, u_input.b))), ~(~vec4<u32>(4294967295u, 15807u, 1u, u_input.d.x)) | abs(vec4<u32>(1u, var_0.x, var_0.x, 14346u))) % vec4<u32>(32u));
    return var_2;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), arg_2);
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(-(~(-1i)), -11818i), _wgslsmith_mult_i32(u_input.c.x, abs(min(2147483647i, -60210i)) | _wgslsmith_mult_i32(u_input.c.x, -u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2009f, 463f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1421f * 1800f))), 1302f, -953f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, -1377f, 276f, 555f) + vec4<f32>(351f, 1282f, -280f, -687f))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x));
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    let var_3 = u_input.d.yz;
    var var_4 = vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -1i), _wgslsmith_sub_i32(1i, -max(6471i, u_input.c.x)), func_2((u_input.a << (_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, u_input.b)) % vec3<u32>(32u))) | u_input.d, var_0.a.wwz, func_1(func_1(func_1(Struct_1(var_0.a), Struct_1(vec4<f32>(1005f, var_0.a.x, var_0.a.x, -2514f))), Struct_1(var_0.a)), func_1(Struct_1(vec4<f32>(-238f, 122f, var_0.a.x, 1000f)), Struct_1(var_0.a)))));
    var_1 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), -559f)))));
    var var_5 = var_3;
    let var_6 = 1275f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -582f))) + 1350f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~reverseBits(u_input.c.x), u_input.c.x) | 46862i);
}

