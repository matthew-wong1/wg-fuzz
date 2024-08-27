struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> bool {
    var var_0 = vec2<i32>(arg_1.a, 14284i);
    var_0 = vec2<i32>(2147483647i, var_0.x);
    let var_1 = Struct_1(-(~abs(_wgslsmith_clamp_i32(-53393i, -2147483647i, var_0.x))), ~_wgslsmith_add_vec2_u32(~countOneBits(arg_1.b), _wgslsmith_add_vec2_u32(arg_1.b, vec2<u32>(8915u, 78547u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e.x))))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), arg_1.c), -1978f))), _wgslsmith_sub_u32(arg_0, 0u), arg_1.e);
    var var_2 = -2147483647i;
    let var_3 = _wgslsmith_mult_i32(~(-1i) | -arg_1.a, arg_1.a);
    return !(~(~arg_0) >= min(~arg_0 | u_input.b.x, 0u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(~(-15056i | (arg_1.a ^ arg_1.a)) & _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-41324i, arg_1.a, -1i), u_input.a.wwx), -vec3<i32>(-36700i, 2147483647i, -2147483647i)), -35985i), arg_1.b, 754f, _wgslsmith_sub_u32(reverseBits(~_wgslsmith_dot_vec2_u32(arg_0, u_input.b)), _wgslsmith_mod_u32(arg_0.x, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, _wgslsmith_div_f32(238f, -238f), _wgslsmith_f_op_f32(ceil(arg_1.e.x)), _wgslsmith_f_op_f32(step(arg_1.c, arg_1.e.x))))));
    return func_3(arg_0.x, arg_1, arg_1.e.xxy, true);
}

fn func_1() -> Struct_1 {
    let var_0 = min(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 0u)), u_input.b), ~(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))));
    let var_1 = select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), select(vec3<bool>(any(vec2<bool>(true, false)), true, true), vec3<bool>(func_2(vec2<u32>(1u, 0u) & vec2<u32>(var_0, var_0), Struct_1(-2147483647i, u_input.b, -869f, 11457u, vec4<f32>(-775f, 1385f, -789f, 492f))), func_3(0u, Struct_1(8303i, u_input.b, 1388f, var_0, vec4<f32>(169f, -527f, -1150f, 236f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1368f, 731f, 286f), vec3<f32>(1099f, 1445f, 2439f), vec3<bool>(true, false, false))), 0u <= u_input.b.x), true), !((var_0 ^ 69870u) == ~6904u)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(610f * 2164f), -325f, !(true | func_2(firstTrailingBit(vec2<u32>(50450u, 1u)), Struct_1(u_input.d, u_input.b, -470f, 9816u, vec4<f32>(1170f, -572f, 229f, -2553f))))));
    var var_3 = _wgslsmith_mult_vec4_i32(~(-u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, ~2147483647i, ~u_input.d, ~(~u_input.c.x)), vec4<i32>(29985i, select(55274i, u_input.c.x, var_1.x) >> (66208u % 32u), u_input.a.x, -1i)));
    var var_4 = 9255u;
    return Struct_1(_wgslsmith_dot_vec2_i32((vec2<i32>(var_3.x, u_input.d) << (~vec2<u32>(var_0, 39409u) % vec2<u32>(32u))) << (select(max(u_input.b, vec2<u32>(86158u, 0u)), ~vec2<u32>(var_0, 0u), vec2<bool>(true, var_1.x)) % vec2<u32>(32u)), vec2<i32>(0i, u_input.c.x)), vec2<u32>(54588u, 1u), var_2, ~u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 166f) * vec4<f32>(640f, 573f, var_2, 1099f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(158f, var_2, 163f, var_2) - vec4<f32>(var_2, -1672f, 994f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -960f, var_2, 837f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = func_1();
    var_0 = -1i;
    var_0 = firstLeadingBit(var_1.a);
    var_0 = u_input.a.x;
    let var_2 = _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 1u)), countOneBits(~vec2<u32>(var_1.b.x, u_input.b.x))), _wgslsmith_add_vec2_u32(~(u_input.b & vec2<u32>(23375u, 0u)), vec2<u32>(~45129u, var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(0u, 39572u), 16214u), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.d, 1u, var_1.b.x), vec3<u32>(0u, 1u, var_2)))), ~(vec3<u32>(1u, 1u, 1u) << (~vec3<u32>(var_1.b.x, u_input.b.x, var_1.b.x) % vec3<u32>(32u))), ~(~(~vec3<u32>(var_1.d, 207u, 0u)))));
}

