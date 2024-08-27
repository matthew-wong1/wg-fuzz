struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> bool {
    return !select(select(true, true, any(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_i32(arg_0.a, vec2<i32>(arg_1.a.x, -reverseBits(~(-2147483647i))));
    var var_1 = ~min(~(~94669u), ~59738u);
    let var_2 = u_input.b.wyw;
    var_1 = 0u;
    var var_3 = arg_0.c;
    return select(vec3<bool>(true, any(vec3<bool>(true, true, any(vec2<bool>(true, true)))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), !vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), ~firstLeadingBit(83400u) > _wgslsmith_sub_u32(64769u, _wgslsmith_div_u32(arg_0.b, _wgslsmith_mult_u32(u_input.c.x, 30133u))));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_div_u32(~(~0u), 4294967295u);
    return vec3<i32>(abs(reverseBits(u_input.b.x)), -u_input.b.x & _wgslsmith_div_i32(41344i, reverseBits(_wgslsmith_clamp_i32(0i, 2147483647i, -2147483647i))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(~(u_input.b.wx >> (_wgslsmith_mult_vec2_u32(u_input.c.xw, vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)))), u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, -128f)));
    let var_1 = var_0;
    let var_2 = all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) && (u_input.c.x >= ~(~abs(u_input.c.x)));
    var var_3 = vec4<bool>(func_1(_wgslsmith_clamp_i32(firstLeadingBit(var_1.a.x), -var_1.a.x, -5336i), u_input.c), !select(true == (false || var_2), any(select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, var_2, true))), false), any(select(!select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, true, false), vec4<bool>(true, true, var_2, false)), !vec4<bool>(true, true, false, var_2), select(select(vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(var_2, var_2, true, var_2), var_2), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, true, var_2, var_2), vec4<bool>(var_2, false, var_2, true)), !vec4<bool>(false, false, var_2, var_2)))), !(firstLeadingBit(var_0.a.x) <= -2147483647i));
    var var_4 = all(func_2(Struct_1(~vec2<i32>(u_input.b.x, -2561i) & vec2<i32>(var_1.a.x, -1i), min(~var_0.b, _wgslsmith_div_u32(var_0.b, 8389u)), _wgslsmith_f_op_vec2_f32(-var_0.c)), Struct_1(var_0.a, var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-671f, -232f) + var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1.b, max(var_0.b, reverseBits(0u))) >> (4294967295u % 32u), var_1.b, 0i, firstTrailingBit(_wgslsmith_mod_vec3_i32(abs(u_input.b.wxz), func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-527f * _wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(floor(var_0.c.x)))), -920f));
}

