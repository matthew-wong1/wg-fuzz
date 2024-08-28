struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(true, -2766f), Struct_1(true, -569f), Struct_1(true, 145f), Struct_1(false, 803f), Struct_1(false, -494f), Struct_1(true, -765f), Struct_1(true, -909f), Struct_1(false, 1200f), Struct_1(false, 1104f), Struct_1(true, -178f), Struct_1(true, -426f), Struct_1(true, 127f), Struct_1(true, -1037f), Struct_1(true, -1567f), Struct_1(false, 2892f), Struct_1(false, -1564f), Struct_1(true, 719f), Struct_1(true, 363f), Struct_1(true, -901f), Struct_1(false, -1000f), Struct_1(true, 483f), Struct_1(false, 775f), Struct_1(false, -690f), Struct_1(false, -1017f), Struct_1(true, 1297f), Struct_1(true, -915f), Struct_1(false, 1165f), Struct_1(false, 1000f));

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false));

var<private> global3: array<u32, 23> = array<u32, 23>(44783u, 4294967295u, 35253u, 1u, 3296u, 76177u, 1u, 86453u, 12614u, 29017u, 7238u, 24546u, 0u, 27707u, 70805u, 1u, 4294967295u, 68354u, 20579u, 4294967295u, 31611u, 30106u, 65588u);

var<private> global4: i32 = 5933i;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    global4 = -u_input.a;
    global2 = array<vec4<bool>, 4>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(~(~38430u), firstLeadingBit(_wgslsmith_div_u32(22998u, 4294967295u))) ^ u_input.b, u_input.b);
    global0 = Struct_2(!(!global0.a), global1[_wgslsmith_index_u32(u_input.b, 28u)]);
    global1 = array<Struct_1, 28>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b, global0.b.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b, -740f)))), vec2<f32>(global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(285f, global0.b.b) - -829f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, -1041f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1101f, -960f)))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~vec3<u32>(70439u, _wgslsmith_clamp_u32(0u >> (u_input.b % 32u), ~(~u_input.b), _wgslsmith_clamp_u32(56032u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)] % 32u), ~global3[_wgslsmith_index_u32(u_input.b, 23u)], ~u_input.b)), 57267u);
    let var_1 = ~vec2<u32>(~98256u, _wgslsmith_sub_u32(u_input.b, 0u));
    let var_2 = Struct_3(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(0u, global3[_wgslsmith_index_u32(52446u, 23u)], var_1.x)), vec3<u32>(var_1.x, ~_wgslsmith_mod_u32(1u, var_0.x), ~11148u), vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.b), global3[_wgslsmith_index_u32(~4294967295u, 23u)]), select(var_1.x, _wgslsmith_div_u32(2964u, global3[_wgslsmith_index_u32(0u, 23u)]), true), ~(31094u & u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(!(!vec4<bool>(false, global0.a.x, global0.a.x, true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.b * global0.b.b), global0.b.b))));
    let var_3 = var_2;
    global2 = array<vec4<bool>, 4>();
    return Struct_2(vec3<bool>(!global0.b.a, !any(!global0.a.xy), !global0.a.x), global0.b);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = ~_wgslsmith_sub_i32(arg_1, ~52237i);
    global4 = arg_1;
    var var_1 = -vec2<i32>(-7519i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, u_input.a, u_input.c, -1i), vec4<i32>(2147483647i, -2147483647i, -10138i, var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -22521i, var_0), vec3<i32>(var_0, var_0, u_input.a))));
    let var_2 = false;
    global0 = func_1();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.b - _wgslsmith_f_op_f32(round(global0.b.b))) + 401f);
    global3 = array<u32, 23>();
    var var_1 = !func_3(vec2<f32>(-369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.b)) * _wgslsmith_f_op_f32(f32(-1f) * -152f))), u_input.c | _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -28902i, u_input.c), vec3<i32>(u_input.a, u_input.a, u_input.c)), vec3<i32>(u_input.c, 22107i, u_input.a) << (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], 61205u, 32224u) % vec3<u32>(32u))), func_1());
    global0 = Struct_2(vec3<bool>(true, global0.b.a, !any(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13172u, 23u)], 4u)])), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(~global3[_wgslsmith_index_u32(~(u_input.b ^ 1u), 23u)], -reverseBits(vec2<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.c, u_input.c)))), 840u);
}

