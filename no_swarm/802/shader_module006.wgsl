struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), vec4<i32>(17726i, -1i, i32(-2147483648), -44276i), vec4<i32>(-10682i, -67580i, -1i, -1i), vec4<i32>(-1i, 42564i, -20297i, i32(-2147483648)), vec4<i32>(-4590i, -2222i, 28002i, 12544i), vec4<i32>(33142i, -27281i, -1i, -1i), vec4<i32>(48446i, -1i, -5163i, -4712i));

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~(~44510u), 16u)];
    let var_1 = global1[_wgslsmith_index_u32(42852u, 16u)];
    var var_2 = u_input.c;
    var_2 = ~(~u_input.c);
    let var_3 = Struct_1(!select(!(!arg_1), vec4<bool>(!arg_1.x, all(vec4<bool>(false, var_1.a.x, var_1.a.x, false)), true, var_1.b), true), any(!var_0.a.wyx) || false);
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(~78855u | ~u_input.c), u_input.c), ~(u_input.c | abs(1u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> vec4<bool> {
    global0 = array<vec4<i32>, 7>();
    var var_0 = true;
    let var_1 = Struct_1(!vec4<bool>(true, any(vec2<bool>(true, true)), true, true), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(227f, 2133f, -322f, -205f) + vec4<f32>(1000f, 723f, -499f, -1089f))), vec4<bool>(select(true, true, false), all(vec2<bool>(true, true)), true, 4294967295u != arg_0.x), -firstLeadingBit(u_input.b.yx), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -46261i), u_input.a.x, -4270i)) == arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, -1172f, ~_wgslsmith_sub_i32(27993i, arg_1) < (min(-3295i, u_input.a.x) >> (9633u % 32u)))));
    var var_3 = Struct_1(select(vec4<bool>(var_1.b, any(!var_1.a.yy), !(false && var_1.a.x), true), select(select(var_1.a, var_1.a, select(vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.b, var_1.a.x), var_1.a.x)), !select(var_1.a, var_1.a, vec4<bool>(var_1.b, var_1.b, var_1.b, true)), !(!var_1.a)), true), true);
    return !select(var_1.a, !(!var_1.a), all(vec2<bool>(select(false, false, var_1.a.x), any(vec2<bool>(true, true)))));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!func_4(vec3<u32>(func_3(vec4<f32>(680f, 898f, -1004f, 757f), vec4<bool>(true, true, true, false), u_input.b.yy, u_input.b.yww), ~27385u, 13878u), 0i), true && any(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    var_0 = Struct_1(select(func_4(vec3<u32>(u_input.c, 51631u, u_input.c) << (countOneBits(vec3<u32>(0u, u_input.c, u_input.c)) % vec3<u32>(32u)), 33119i), vec4<bool>(any(vec2<bool>(var_0.a.x, false)), true, true, !func_4(vec3<u32>(u_input.c, 0u, u_input.c), 0i).x), vec4<bool>(var_0.b, var_0.a.x & true, var_0.a.x, var_0.b & true)), !(!var_0.a.x));
    let var_1 = -411f;
    var var_2 = u_input.b.x;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(22086u, _wgslsmith_div_u32(~12243u, u_input.c)), max(~vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(u_input.c, 4294967295u)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(88566u, u_input.c), vec2<u32>(0u, 66474u)) % vec2<u32>(32u)), select(var_0.a.wz, vec2<bool>(true, var_0.b), true)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14143u, u_input.c), ~(~vec2<u32>(18139u, u_input.c))), select(~min(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(_wgslsmith_mult_u32(39568u, 18290u), 4294967295u | u_input.c), false))), 16u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_1, 16>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(324f))), _wgslsmith_f_op_f32(f32(-1f) * -1475f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -790f);
    global1 = array<Struct_1, 16>();
    var var_2 = arg_0;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_dot_vec4_i32((u_input.b << (countOneBits(vec4<u32>(u_input.c, 35879u, 37426u, 34650u)) % vec4<u32>(32u))) << (reverseBits(min(~vec4<u32>(4294967295u, 0u, 6638u, 57501u), select(vec4<u32>(1u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), true))) % vec4<u32>(32u)), ~vec4<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.b.wxy, vec3<i32>(28274i, 2147483647i, u_input.b.x))), _wgslsmith_mult_i32(-u_input.a.x, countOneBits(u_input.b.x)), firstLeadingBit(~u_input.b.x), -func_1(global1[_wgslsmith_index_u32(0u, 16u)], vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(true, false, true, false), false))));
    var var_1 = u_input.c;
    let var_2 = -457f;
    let var_3 = min(abs(~vec3<u32>(u_input.c, u_input.c, 4294967295u)) & vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.c, 46712u)), _wgslsmith_sub_u32(u_input.c, 0u), ~_wgslsmith_add_u32(96427u, 75499u)), ~(~select(vec3<u32>(61168u, 11953u, 26910u), select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 39487u, u_input.c), true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, u_input.a.x);
}

