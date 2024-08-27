struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true));

var<private> global1: vec4<f32> = vec4<f32>(-287f, -481f, 290f, -534f);

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_3(vec4<i32>(-1i) * -((vec4<i32>(u_input.a, u_input.a, arg_0, -1i) >> (vec4<u32>(0u, 84759u, 40865u, 30403u) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_1 = arg_1;
    global2 = array<Struct_1, 26>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, arg_1.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_div_f32(226f, -152f));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f), 428f), -688f)) + 974f));
    return arg_1.b.x;
}

fn func_2() -> bool {
    global0 = array<vec4<bool>, 23>();
    global0 = array<vec4<bool>, 23>();
    global2 = array<Struct_1, 26>();
    let var_0 = select(true, true, any(select(vec2<bool>(false, any(vec4<bool>(false, true, false, false))), vec2<bool>(true, func_3(u_input.a, Struct_2(global1.x, vec2<bool>(true, true)))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -273f) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.x, 570f)))), -572f)));
    return any(!(!select(vec2<bool>(false, false), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)))) || true;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 23>();
    global0 = array<vec4<bool>, 23>();
    var var_0 = select(select(select(vec3<bool>(func_2(), false, arg_0.c.x), select(select(vec3<bool>(arg_0.c.x, arg_0.c.x, false), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), !vec3<bool>(true, arg_0.c.x, arg_0.c.x), all(arg_0.c)), select(true, all(vec2<bool>(arg_0.c.x, arg_0.c.x)), all(vec3<bool>(false, arg_0.c.x, true)))), !vec3<bool>(false, any(vec2<bool>(arg_0.c.x, false)), true), true), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, arg_0.c.x), vec3<bool>(arg_0.c.x, false, true)), select(vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c.x), arg_0.c.x)), true);
    let var_1 = select(vec3<bool>(!(!select(var_0.x, arg_0.c.x, var_0.x)), arg_0.c.x, !(!func_3(-2147483647i, Struct_2(global1.x, vec2<bool>(arg_0.c.x, var_0.x))))), select(!(!select(vec3<bool>(true, var_0.x, arg_0.c.x), vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, true))), !select(vec3<bool>(true, arg_0.c.x, arg_0.c.x), !vec3<bool>(arg_0.c.x, false, var_0.x), var_0.x), var_0.x), select(!vec3<bool>(true, arg_0.c.x, true && var_0.x), vec3<bool>(all(vec2<bool>(var_0.x, arg_0.c.x)), !select(arg_0.c.x, arg_0.c.x, arg_0.c.x), false), vec3<bool>(!(!var_0.x), all(global0[_wgslsmith_index_u32(arg_2.x, 23u)]) || var_0.x, arg_1.x != ~4294967295u)));
    var var_2 = var_0.zz;
    return global2[_wgslsmith_index_u32(arg_1.x, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~0u)) & ~firstTrailingBit(countOneBits(0u)), 26u)], _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, _wgslsmith_mod_u32(1u, 4294967295u), 0u, 0u), abs(vec4<u32>(107105u, 20830u, 65901u, 0u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), countOneBits(firstTrailingBit(select(vec3<u32>(6825u, 0u, 27957u), reverseBits(vec3<u32>(1u, 22379u, 35532u)), vec3<bool>(true, true, true)))), ~abs(~vec2<u32>(1u, 1u)));
    global2 = array<Struct_1, 26>();
    let var_1 = Struct_2(-1934f, vec2<bool>(var_0.c.x, true));
    var var_2 = Struct_3(var_0.d);
    global0 = array<vec4<bool>, 23>();
    var var_3 = var_0.a.x ^ -_wgslsmith_mod_i32(countOneBits(abs(40485i)), _wgslsmith_clamp_i32(firstTrailingBit(17912i), -1i | u_input.b.x, var_2.a.x | var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer((max(1i >> (0u % 32u), u_input.a) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(52739u, 0u), 1u) % 32u)) & (-min(var_0.d.x, -3612i) & 1i), reverseBits(~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a * global1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(167f, -710f)))) * 1000f)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 43461u, 7352u, 1u), vec4<u32>(54372u, 0u, 1u, 16187u)) << (select(vec4<u32>(8674u, 71766u, 1u, 65368u), vec4<u32>(0u, 17453u, 1u, 60756u), vec4<bool>(true, var_1.b.x, var_0.c.x, true)) % vec4<u32>(32u)), vec4<u32>(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(8944u, 0u, 4294967295u), vec3<u32>(0u, 1u, 1u)), _wgslsmith_add_u32(1u, 7752u), abs(4294967295u))), select(73083u, 1u, any(select(vec3<bool>(true, true, var_0.c.x), vec3<bool>(var_1.b.x, true, var_0.c.x), vec3<bool>(var_1.b.x, var_0.c.x, true)))), 0u, ~(~(~13994u))));
}

