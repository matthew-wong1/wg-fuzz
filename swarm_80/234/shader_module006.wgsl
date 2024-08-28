struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = 1i;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec2_i32(~max(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 42882i), vec2<i32>(2147483647i, -10491i)) << (~arg_2 % vec2<u32>(32u)), ~(~vec2<i32>(33160i, 0i))), -(vec2<i32>(-1i, 1i) | vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(33140i, -44937i), vec2<i32>(5173i, 46828i)), 1i)));
    let var_1 = var_0.x;
    let var_2 = select(select(!vec2<bool>(any(vec3<bool>(arg_0.a.x, true, arg_3.a.x)), false), select(!arg_3.a.yy, vec2<bool>(true | arg_3.a.x, true), all(arg_0.a) & arg_0.a.x), func_2(func_2(func_2(arg_0, arg_3.a.x), -1279f > arg_3.b), true).a.yz), arg_0.a.yx, true);
    var_0 = _wgslsmith_clamp_vec2_i32(-(select(reverseBits(vec2<i32>(-2147483647i, var_0.x)), countOneBits(vec2<i32>(-2147483647i, 1334i)), var_2.x & true) & vec2<i32>(_wgslsmith_sub_i32(var_0.x, 2147483647i), 2147483647i | var_0.x)), max(~abs(-vec2<i32>(var_0.x, 1i)), vec2<i32>(-80876i, var_0.x)), min(vec2<i32>(27638i, var_0.x), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(-1i, var_0.x)))));
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_2.x, min(arg_2.x, 94610u), 17503u), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(0u, 33176u, arg_1, arg_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(67681u, 29623u, 1u, 0u) << (vec4<u32>(0u, 4294967295u, arg_2.x, 59850u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.a, arg_1, u_input.a), vec4<u32>(0u, arg_2.x, arg_2.x, arg_1))))));
    return max(~arg_2, _wgslsmith_mult_vec2_u32(vec2<u32>(abs(0u), _wgslsmith_add_u32(~61902u, _wgslsmith_add_u32(0u, 44059u))), firstLeadingBit(var_3.xw)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(func_2(arg_3, arg_2.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i) << (vec2<u32>(62684u, arg_1) % vec2<u32>(32u)), ~vec2<i32>(arg_0.x, arg_0.x) << (func_3(Struct_1(vec3<bool>(true, true, arg_2.a.x), arg_2.b), 22468u, vec2<u32>(61952u, u_input.c), Struct_1(vec3<bool>(true, arg_3.a.x, true), 1242f)) % vec2<u32>(32u))) >> ((~firstLeadingBit(vec2<u32>(1u, 4294967295u)) >> (vec2<u32>(20444u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = func_2(Struct_1(select(select(var_0.a.a, select(vec3<bool>(var_0.a.a.x, true, arg_2.a.x), vec3<bool>(arg_3.a.x, var_0.a.a.x, arg_3.a.x), true), arg_2.a), !vec3<bool>(arg_2.a.x, false, var_0.a.a.x), !arg_3.a), _wgslsmith_f_op_f32(sign(-2827f))), false);
    let var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(30633u, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(90544u, 16960u), vec2<u32>(1u, u_input.c)) & arg_1), u_input.b), ~4294967295u, 39366u, ~37641u);
    global0 = array<vec4<bool>, 9>();
    var var_3 = var_0;
    return !select(vec2<bool>(arg_2.a.x, true), !vec2<bool>(arg_2.a.x && true, var_3.a.a.x), _wgslsmith_mult_i32(47366i, arg_0.x) > -57340i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    let var_0 = 0i;
    global0 = array<vec4<bool>, 9>();
    var var_1 = Struct_2(Struct_1(select(vec3<bool>(any(global0[_wgslsmith_index_u32(u_input.a, 9u)]), true, true), vec3<bool>(true, true, true), any(func_1(vec3<i32>(var_0, var_0, var_0), u_input.c, Struct_1(vec3<bool>(true, false, true), 527f), Struct_1(vec3<bool>(true, true, false), -1440f)))), -257f), -vec2<i32>(-max(var_0, -11605i), var_0));
    var_1 = Struct_2(Struct_1(!(!func_2(var_1.a, false).a), 215f), vec2<i32>(_wgslsmith_sub_i32(-2147483647i << (u_input.b % 32u), _wgslsmith_div_i32(var_0, var_1.b.x)) >> (u_input.a % 32u), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_1.a.b, var_1.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1322f, 357f))))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b), -1000f)))), vec2<f32>(-971f, var_1.a.b));
}

