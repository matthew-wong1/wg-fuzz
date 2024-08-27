struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    global0 = array<vec4<bool>, 11>();
    var var_0 = arg_2.b;
    var var_1 = arg_2.b;
    var var_2 = -1965i;
    var var_3 = Struct_3(arg_2.b, Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(min(2147483647i, 1i), var_0.a), ~12485i), arg_2.b), global0[_wgslsmith_index_u32(1u, 11u)]);
    return !((4235u < arg_0.x) | !(var_3.b.b.a <= var_0.a));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(abs(-(~5847i))), Struct_2(~(-1i), Struct_1(-1i)), select(arg_1.a, select(arg_1.a, global0[_wgslsmith_index_u32(~u_input.a.x, 11u)], global0[_wgslsmith_index_u32(63303u, 11u)]), !vec4<bool>(true, all(vec3<bool>(false, true, true)), true, false)));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(1484f, 565f)))), -1197f, _wgslsmith_f_op_f32(min(-875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec2<i32>(1i, 0i), var_0.a.a);
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    var var_3 = var_1;
    let var_4 = Struct_5(!var_0.c);
    return -vec2<i32>(min(i32(-1i) * -19965i, var_0.a.a), ~1i);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 1461f;
    let var_1 = max(func_4(true, Struct_5(vec4<bool>(func_3(u_input.a, vec3<bool>(true, false, true), Struct_2(arg_0.b.a, Struct_1(0i))), true, arg_0.a <= -5176i, all(vec3<bool>(true, true, true))))), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(arg_0.b.a, 20341i, arg_0.b.a), vec3<i32>(2147483647i, -1i, arg_0.b.a), vec3<bool>(false, false, false))), _wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(33358i, arg_0.b.a, 444i), vec3<i32>(11985i, arg_0.a, arg_0.a))))));
    let var_2 = ~(~(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) ^ ~u_input.a.x) << (u_input.a.x % 32u));
    var var_3 = _wgslsmith_f_op_f32(603f + -667f);
    var var_4 = -arg_0.b.a;
    return arg_0.b;
}

fn func_1() -> vec3<i32> {
    global0 = array<vec4<bool>, 11>();
    let var_0 = all(vec2<bool>(true, reverseBits(u_input.a.x) != 59701u));
    let var_1 = 792f;
    global0 = array<vec4<bool>, 11>();
    let var_2 = func_2(Struct_2(-38979i, Struct_1(-57445i)));
    return countOneBits(vec3<i32>(_wgslsmith_mult_i32(var_2.a, var_2.a ^ -12548i), 23548i, var_2.a) >> ((u_input.a & (u_input.a | ~vec3<u32>(u_input.a.x, 97312u, u_input.a.x))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    let var_0 = vec4<bool>(abs(2147483647i) > _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(func_1())), !all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1102f))) > -2116f, true);
    let x = u_input.a;
    s_output = StorageBuffer((~u_input.a.x & _wgslsmith_mult_u32(abs(u_input.a.x), u_input.a.x)) << (_wgslsmith_clamp_u32(reverseBits(~u_input.a.x), u_input.a.x, firstTrailingBit(u_input.a.x) | u_input.a.x) % 32u), -abs(vec2<i32>(-34578i, -11772i)), countOneBits(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 62944u))), vec2<u32>(abs(6903u), _wgslsmith_clamp_u32(max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(select(u_input.a.yx, vec2<u32>(0u, 1u), false), vec2<u32>(u_input.a.x, u_input.a.x)), 4294967295u)), u_input.a.zz);
}

