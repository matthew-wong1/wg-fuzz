struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = select(vec4<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(!(1u <= arg_1.x)), select(true && all(vec4<bool>(true, true, false, false)), false, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true), !(arg_0.x >= arg_0.x)), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), any(vec4<bool>(false, false, false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), false)), true);
    var_0 = !select(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(true, true, false, true), _wgslsmith_f_op_f32(round(-1158f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1259f - -1069f)));
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(select(~(~1u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 0u), ~4294967295u), true), 1u), ~_wgslsmith_div_u32(21427u, func_3(u_input.a.zw, vec4<u32>(84137u, 4294967295u, 4294967295u, 24233u), vec4<u32>(0u, 7440u, 50413u, 0u)) ^ 1u), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~func_3(vec2<i32>(-49066i, 17811i), vec4<u32>(42368u, 2450u, 21665u, 114976u), vec4<u32>(4294967295u, 0u, 0u, 0u)), 1u), _wgslsmith_div_u32(4294967295u, ~(~29343u))));
    var var_1 = true;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -300f), false, true, vec3<bool>(true, true, true), select(vec3<bool>(true, select(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true)), _wgslsmith_clamp_vec3_i32(countOneBits(-countOneBits(u_input.a.ywx)), u_input.a.ywx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.a)))), false, var_2.a.d.x, !select(var_3.a.d, !vec3<bool>(var_2.a.d.x, false, var_3.a.b), !var_3.a.e), vec3<bool>(true, !(!(var_3.a.e.x | false)), true));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1289f), var_2.a.e.x, var_2.a.c, !var_2.a.e, vec3<bool>((min(u_input.a.x, u_input.a.x) < _wgslsmith_add_i32(2147483647i, var_2.b.x)) & true, var_3.a.a >= var_4.a, false));
}

fn func_1() -> StorageBuffer {
    let var_0 = false;
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = ~_wgslsmith_clamp_u32(0u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), min(vec3<u32>(72873u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 36733u, 4294967295u)))), 4294967295u);
    var var_3 = Struct_2(func_2(), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_i32(u_input.a.wy, u_input.a.wy)), _wgslsmith_mod_vec2_i32(max(u_input.a.wy, vec2<i32>(u_input.a.x, 2147483647i)), ~u_input.a.wx))));
    return StorageBuffer(abs(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~0u;
    var var_2 = _wgslsmith_add_vec2_i32(abs(u_input.a.yw << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~vec2<i32>(_wgslsmith_sub_i32(~(-1i), u_input.a.x >> (4294967295u % 32u)), ~1i));
    var_1 = firstTrailingBit(23981u);
    var var_3 = ~(~(~_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(var_2.x, 1i, u_input.a.x, 65548i)))) & ~(~(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 1i)));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), -1000f));
    let x = u_input.a;
    s_output = func_1();
}

