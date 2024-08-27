struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a);
}

fn func_3() -> bool {
    var var_0 = func_1(Struct_1(vec4<i32>(u_input.b.x, -1i, func_1(Struct_1(vec4<i32>(1i, 32895i, u_input.b.x, u_input.b.x)), vec4<bool>(true, true, true, true), -114f, func_1(Struct_1(vec4<i32>(u_input.b.x, 30870i, -2147483647i, u_input.b.x)), vec4<bool>(false, false, false, true), -574f, Struct_1(vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x)))).a.x, -9574i)), select(!vec4<bool>(true, true, 2147483647i <= u_input.b.x, u_input.b.x <= -30575i), vec4<bool>(!any(vec4<bool>(false, false, true, true)), true, (0i & u_input.b.x) < u_input.b.x, true), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1826f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(-1f)), func_1(func_1(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 17172i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1157f))), func_1(func_1(Struct_1(vec4<i32>(1i, u_input.b.x, 2147483647i, 0i)), vec4<bool>(true, false, false, false), -256f, Struct_1(vec4<i32>(21319i, u_input.b.x, 2147483647i, -21929i))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(-1000f, -2463f)), func_1(Struct_1(vec4<i32>(0i, 59280i, -1i, u_input.b.x)), vec4<bool>(true, false, true, false), 1582f, Struct_1(vec4<i32>(u_input.b.x, -1i, 73733i, 0i))))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, false, true)), false, true, true), vec4<bool>(true, true, true, true)), -612f, Struct_1(firstTrailingBit(-vec4<i32>(68205i, u_input.b.x, u_input.b.x, -2147483647i)))));
    return ((all(vec2<bool>(true, true)) & any(vec2<bool>(true, false))) | any(vec3<bool>(true, true, true))) & (u_input.a != ~_wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = func_1(arg_3, select(vec4<bool>(true, false, !any(vec4<bool>(false, true, true, false)), true), vec4<bool>(func_3(), true, true, false), true), arg_1, arg_3);
    var var_1 = false;
    var_1 = true;
    let var_2 = arg_3;
    let var_3 = ~(vec4<u32>(42863u, min(u_input.a, _wgslsmith_add_u32(46110u, u_input.a)), ~u_input.a, u_input.a) >> (max(~vec4<u32>(u_input.a, u_input.a, 126137u, 0u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 31927u, 30620u, u_input.a), vec4<u32>(u_input.a, 34299u, 43714u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a))) % vec4<u32>(32u)));
    return _wgslsmith_add_vec4_i32(select(var_2.a, reverseBits(_wgslsmith_div_vec4_i32(~var_2.a, arg_2)), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false))), abs(-vec4<i32>(abs(arg_2.x), -4212i, _wgslsmith_mult_i32(var_0.a.x, -1i), -59214i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(func_2(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(round(-584f)), countOneBits(vec4<i32>(68017i, u_input.b.x, u_input.b.x, u_input.b.x)), func_1(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(abs(1000f)), Struct_1(vec4<i32>(u_input.b.x, -34519i, u_input.b.x, 2862i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(~(-var_0.a.x)), _wgslsmith_mult_i32(-1i, var_0.a.x)));
}

