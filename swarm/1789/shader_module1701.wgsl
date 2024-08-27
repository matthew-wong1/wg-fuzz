struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(24429i, i32(-2147483648)), vec2<i32>(-1i, 1869i), vec2<i32>(8871i, -51453i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-12889i, 2147483647i), vec2<i32>(-3659i, 6470i));

var<private> global2: array<vec4<bool>, 21>;

var<private> global3: array<i32, 17> = array<i32, 17>(0i, -1877i, 5754i, 53778i, -1420i, 8643i, 0i, -1i, -5021i, 2147483647i, 71892i, 55082i, -35329i, -1i, 2147483647i, -1i, 38562i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = vec2<u32>(u_input.a, ~0u);
    var var_1 = arg_0.xz;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 534f), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_1.x), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - 1f)));
    var var_3 = vec4<bool>(!arg_1.a.x, arg_1.a.x, 17195u != var_0.x, any(vec3<bool>(true, arg_1.a.x, _wgslsmith_f_op_f32(sign(-950f)) < _wgslsmith_f_op_f32(-var_2.x))));
    global2 = array<vec4<bool>, 21>();
    return !arg_1.a;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(!func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-218f, -1938f, -445f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(638f, 272f, 1017f), vec3<f32>(-297f, 370f, -974f))))), Struct_1(vec2<bool>(true, true))));
    let var_1 = Struct_1(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2081f + 768f) * _wgslsmith_f_op_f32(f32(-1f) * -1287f)), -889f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1989f - 2078f)))), Struct_1(var_0.a)));
    let var_2 = _wgslsmith_f_op_f32(-391f + 180f);
    global2 = array<vec4<bool>, 21>();
    let var_3 = true;
    return u_input.a;
}

fn func_1() -> Struct_2 {
    global1 = array<vec2<i32>, 6>();
    global0 = array<Struct_2, 28>();
    global3 = array<i32, 17>();
    var var_0 = Struct_1(vec2<bool>(true, true));
    var var_1 = vec4<i32>(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a | u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)), 17u)] & 5388i, 2147483647i, ~_wgslsmith_sub_i32(u_input.b.x, global3[_wgslsmith_index_u32(abs(func_2()), 17u)]), u_input.b.x);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~min(abs(vec3<u32>(1843u, u_input.a, u_input.a)), ~vec3<u32>(0u, u_input.a, 14391u)) << (max((vec3<u32>(u_input.a, u_input.a, 0u) | vec3<u32>(41003u, u_input.a, u_input.a)) & ~vec3<u32>(u_input.a, 59708u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<u32>(48949u, 89201u, 12422u)))) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, func_2())), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 17>();
    let var_0 = func_1();
    var var_1 = ~abs(reverseBits(vec4<i32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(var_0.b, 17u)]) << (vec4<u32>(u_input.a, var_0.a, 4294967295u, 1u) % vec4<u32>(32u))));
    global0 = array<Struct_2, 28>();
    var var_2 = Struct_1(vec2<bool>(true, true));
    var var_3 = ~(~(~select(max(vec3<u32>(var_0.a, u_input.a, 4294967295u), vec3<u32>(var_0.b, 17848u, 12320u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, var_0.b, 1u), vec3<u32>(14664u, 0u, 4294967295u)), vec3<bool>(true, var_2.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(max(u_input.a, _wgslsmith_mult_u32(var_0.b, 1u)), _wgslsmith_add_u32(var_3.x, max(4294967295u, u_input.a)), u_input.a), 121874u));
}

