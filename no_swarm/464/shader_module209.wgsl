struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> i32 {
    global0 = array<vec4<bool>, 28>();
    var var_0 = Struct_2(firstLeadingBit(_wgslsmith_div_i32(arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 29194i, 36788i, -2147483647i), vec4<i32>(2147483647i, arg_3, 1i, -35850i)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1778f) + 105f))))), !global0[_wgslsmith_index_u32(~firstLeadingBit(~arg_2), 28u)]);
    global0 = array<vec4<bool>, 28>();
    return 1i;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    var var_0 = vec3<u32>(79834u, ~53580u, max(arg_3.a, 33093u)) & vec3<u32>((arg_3.a | arg_2.c) ^ ~0u, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_3.a, 86835u), arg_3.a, ~arg_2.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.a, arg_3.a), vec2<u32>(arg_3.a, arg_2.c) << (vec2<u32>(arg_2.c, arg_2.c) % vec2<u32>(32u))) << (_wgslsmith_div_u32(45163u, 15116u) % 32u));
    var var_1 = Struct_2(-(2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 61593i), ~u_input.a)), -287f, !(!select(select(vec4<bool>(arg_2.a.c.x, true, arg_2.a.c.x, false), vec4<bool>(arg_2.d.x, arg_2.a.c.x, false, true), arg_2.a.c), vec4<bool>(true, false, arg_2.a.c.x, false), true)));
    let var_2 = 3090f;
    return _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_3.a | arg_2.c, 76289u, 4294967295u, _wgslsmith_clamp_u32(4294967295u, 32652u, var_0.x)) >> ((min(vec4<u32>(var_0.x, 0u, 3566u, arg_2.c), vec4<u32>(arg_3.b, 18435u, 0u, 13922u)) | vec4<u32>(arg_3.b, 71543u, arg_3.a, 89671u)) % vec4<u32>(32u))), vec4<u32>(1u, arg_3.b, min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, arg_2.c), max(vec2<u32>(55434u, 0u), vec2<u32>(0u, arg_2.c))), ~1u), 4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    global0 = array<vec4<bool>, 28>();
    let var_0 = u_input.a.yz;
    var var_1 = func_4(Struct_2(arg_1.a, -404f, global0[_wgslsmith_index_u32(~1u, 28u)]), _wgslsmith_clamp_i32(max(-7617i, 8221i), _wgslsmith_sub_i32(arg_1.a, var_0.x), _wgslsmith_add_i32(-firstTrailingBit(6701i), func_2(select(vec2<u32>(5847u, 0u), vec2<u32>(0u, 39132u), vec2<bool>(arg_1.c.x, arg_1.c.x)), vec4<u32>(49025u, 66095u, 1u, 71041u), abs(1u), var_0.x))), vec2<u32>(~func_3(var_0.x, -vec4<i32>(u_input.a.x, var_0.x, 8161i, 21957i), Struct_4(arg_1, var_0.x, 5436u, vec2<bool>(arg_1.c.x, arg_1.c.x)), Struct_3(0u, 0u, 2147483647i, vec2<f32>(arg_1.b, arg_1.b))), func_3(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, -18638i)), vec2<i32>(var_0.x, 0i)), vec4<i32>(23730i, -arg_1.a, _wgslsmith_mod_i32(var_0.x, u_input.a.x), -8640i), Struct_4(arg_1, firstLeadingBit(-4294i), abs(4294967295u), arg_1.c.zy), Struct_3(~0u, 4294967295u >> (0u % 32u), ~22054i, vec2<f32>(arg_1.b, arg_1.b)))));
    var var_2 = vec3<u32>(4294967295u, reverseBits(~27962u), 1u);
    let var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, var_2.x), max(var_2.x, var_2.x) | var_2.x, 1u), vec3<u32>(var_2.x, var_2.x >> (10602u % 32u), ~1u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(35025u, var_2.x, var_2.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_2.x, var_2.x), vec3<u32>(var_2.x, var_2.x, 4294967295u) >> (vec3<u32>(var_2.x, var_2.x, 34202u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_2.x, 29684u, 4294967295u) ^ vec3<u32>(var_2.x, 3882u, 15471u)), ~abs(vec3<u32>(var_2.x, var_2.x, var_2.x))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.x, var_2.x, var_2.x), ~vec3<u32>(var_2.x, 0u, var_2.x), vec3<u32>(var_2.x, 4294967295u, var_2.x)))));
    return 21605u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 28>();
    let var_0 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(54730u, ~47556u, select(4294967295u, 5957u, false))), countOneBits(func_1(-u_input.a.x >= u_input.a.x, Struct_2(-u_input.a.x, _wgslsmith_f_op_f32(534f - -984f), global0[_wgslsmith_index_u32(0u, 28u)]))));
    global0 = array<vec4<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx >> (_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_0, 60043u)) >> (firstLeadingBit(vec2<u32>(0u, var_0)) % vec2<u32>(32u)), vec2<u32>(4294967295u, var_0)) % vec2<u32>(32u)), ~(~vec4<u32>(select(var_0, var_0, true), 40147u, var_0 ^ 82453u, ~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2021f)), _wgslsmith_div_f32(-733f, -2620f))) - -1000f), -vec2<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), 1i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1541f, -215f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -520f), -1042f)), _wgslsmith_f_op_f32(472f + _wgslsmith_f_op_f32(select(-1378f, -1076f, false)))))));
}

