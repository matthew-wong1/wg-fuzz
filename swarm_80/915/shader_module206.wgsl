struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(-2147483647i, max(vec2<i32>(1i, ~(-1i)), reverseBits(vec2<i32>(-9128i, 65633i)))), ~(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = reverseBits(-12978i);
    var var_2 = _wgslsmith_sub_u32(0u, u_input.a.x);
    let var_3 = func_2().a;
    let var_4 = var_0.a;
    return func_2().a;
}

fn func_3() -> Struct_1 {
    var var_0 = func_2().a;
    let var_1 = firstTrailingBit(9805u & (~firstTrailingBit(u_input.a.x) >> (u_input.a.x % 32u)));
    var var_2 = Struct_1(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -17900i), _wgslsmith_mod_i32(65573i, 1698i), var_0.b.x), ~vec2<i32>(_wgslsmith_add_i32(1i, -8038i), -var_0.a) ^ abs(select(var_0.b & vec2<i32>(var_0.b.x, var_0.b.x), var_0.b << (u_input.a.yz % vec2<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 336f))))), 980f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(937f, 1092f), _wgslsmith_f_op_f32(sign(-1000f)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) - _wgslsmith_f_op_f32(f32(-1f) * -616f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1454f, -452f), vec2<f32>(1834f, -1275f), true)), _wgslsmith_div_vec2_f32(vec2<f32>(497f, 261f), vec2<f32>(800f, 1710f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, 1678f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, -1439f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(511f, -528f))))), u_input.a.x == u_input.a.x, firstLeadingBit(~var_0.a >> ((var_1 | _wgslsmith_mult_u32(u_input.a.x, var_1)) % 32u)));
    var_2 = func_2().a;
    return Struct_1(~0i, firstLeadingBit(var_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1000f, arg_1)) * vec4<f32>(arg_1, -268f, 1000f, -766f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, arg_1, arg_1, -583f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-515f)), _wgslsmith_f_op_f32(min(arg_1, -532f)))), true, -(arg_0.a >> (u_input.a.x % 32u)) & ~abs(87797i)), arg_3.b & arg_3.b);
    let var_1 = arg_0;
    var var_2 = var_1.b;
    var var_3 = true;
    var var_4 = vec3<i32>(var_0.a.a, ~min(18318i, -5802i), _wgslsmith_mult_i32(-var_1.b.x, _wgslsmith_sub_i32(-24144i, var_1.b.x)) >> (~u_input.a.x % 32u)) >> (u_input.a.wwx % vec3<u32>(32u));
    return vec3<i32>(min(select(var_0.a.a, 32264i, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), -21863i), -_wgslsmith_mult_i32(arg_0.a, 1i), var_4.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = 1057f;
    var var_1 = !(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    var_1 = !(!(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(true, var_1.x, false))));
    var_0 = arg_2;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -175f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a.x);
    let var_1 = func_5(Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, -367f, 220f, 302f)), vec2<f32>(_wgslsmith_f_op_f32(259f - 214f), _wgslsmith_f_op_f32(select(1303f, -1198f, true))), all(vec2<bool>(true, true)), ~(i32(-1i) * -61036i)), func_4(func_3(), -750f, firstLeadingBit(vec2<i32>(2147483647i, 17157i)), func_2())), Struct_2(Struct_1(33350i, vec2<i32>(-1i, 14085i << (1u % 32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i, -1i, -9712i), vec3<i32>(5575i, 0i, 58088i), vec3<bool>(true, true, false)), vec3<i32>(72170i, 0i, 45856i), ~vec3<i32>(7246i, -14663i, 28679i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-59067i, -14983i, 0i), vec3<i32>(50271i, 41450i, 2147483647i))))), _wgslsmith_f_op_f32(f32(-1f) * -175f));
    var_0 = 53947u;
    let var_2 = _wgslsmith_div_vec2_i32(var_1.a.b, firstLeadingBit(vec2<i32>(var_1.a.b.x, var_1.a.a) >> (select(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.wy), u_input.a.yz, vec2<bool>(false, true)) % vec2<u32>(32u))));
    let var_3 = firstLeadingBit(vec3<u32>(27103u, max(~u_input.a.x, reverseBits(1u)) | ~u_input.a.x, u_input.a.x));
    var_0 = u_input.a.x;
    var_0 = firstLeadingBit(~(~4294967295u));
    var var_4 = func_3().a;
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(0u, ~var_3.x, 17563u, u_input.a.x & var_3.x), (u_input.a ^ (vec4<u32>(1u, var_3.x, var_3.x, 1u) | u_input.a)) & abs(abs(u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f + -789f))), -3017f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_div_f32(-927f, -111f)))));
}

