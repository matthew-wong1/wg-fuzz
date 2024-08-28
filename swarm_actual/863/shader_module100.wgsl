struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-2064f, 429f, 1495f, 730f, 295f, -3081f, 913f, 753f, -1993f, -903f, -351f, 467f, 225f, 278f, 271f, 845f, 2457f, -681f, -193f, -265f, 720f, 511f, 1039f, -1671f, 822f, -1043f);

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: i32 = -37475i;

var<private> global3: Struct_1 = Struct_1(4294967295u);

var<private> global4: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    var var_0 = firstTrailingBit(_wgslsmith_mult_i32(-30338i, _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-27515i, -4607i, 2147483647i), vec3<i32>(28012i, -33783i, 30694i)))));
    let var_1 = abs(~0u);
    var var_2 = firstLeadingBit(-1047i);
    let var_3 = vec2<bool>(!select(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global3.a), 26u)] == _wgslsmith_f_op_f32(f32(-1f) * -200f), all(vec3<bool>(true, true, true))), true);
    var var_4 = 11202u;
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = -73652i;
    return Struct_1(_wgslsmith_add_u32(48753u, 66571u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(select(true, any(vec3<bool>(true, true, true)), true), true, any(vec3<bool>(true, true, true))), true || !(arg_1.x > reverseBits(arg_1.x)));
    let var_1 = arg_0;
    let var_2 = false;
    let var_3 = func_2(var_2, _wgslsmith_add_i32(arg_1.x, ~48604i));
    global3 = var_1;
    return !(!vec3<bool>(all(vec2<bool>(true, true)), true, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global3 = arg_2;
    var var_0 = vec3<u32>(~1u >> (~abs(global3.a) % 32u), 0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(28390u, u_input.a, arg_1.a, 4294967295u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global3.a, 30952u, arg_1.a, u_input.a), vec4<u32>(39763u, arg_2.a, 0u, 143409u) >> (vec4<u32>(1u, u_input.a, 203u, arg_2.a) % vec4<u32>(32u)))) | 52463u);
    global0 = array<f32, 26>();
    let var_1 = Struct_1(23461u);
    let var_2 = func_2((arg_0.x || arg_0.x) || !any(global1[_wgslsmith_index_u32(select(101206u, var_0.x, true), 15u)]), 17294i);
    return firstTrailingBit(vec2<u32>(var_1.a, countOneBits(global3.a)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec2<bool> {
    global1 = array<vec4<bool>, 15>();
    global0 = array<f32, 26>();
    let var_0 = select(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(~4294967295u, 15u)], any(select(global1[_wgslsmith_index_u32(func_2(false, ~arg_1.x).a, 15u)], vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true)))));
    global4 = array<vec2<bool>, 10>();
    var var_1 = ~vec2<u32>(abs((0u >> (arg_0.x % 32u)) >> (global3.a % 32u)), arg_0.x);
    return vec2<bool>(any(var_0.wwx), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(u_input.a));
    let var_1 = func_2(any(vec2<bool>(true, true)), _wgslsmith_add_i32(firstTrailingBit(~(-7984i)), max(~(-2147483647i), func_1())) | -36787i);
    let var_2 = func_2(false, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(42272i, -30628i, -2147483647i, 2147483647i)), -(vec4<i32>(-1i) * -vec4<i32>(0i, -21921i, 54187i, -1i))));
    var var_3 = func_2(!all(select(select(vec4<bool>(false, false, true, false), global1[_wgslsmith_index_u32(67403u, 15u)], global1[_wgslsmith_index_u32(global3.a, 15u)]), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), 1i);
    let var_4 = -(~_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, 1i), abs(19729i)));
    var var_5 = func_5(func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), true), !func_3(Struct_1(84559u), vec4<i32>(14750i, -1i, -2147483647i, var_4), Struct_1(0u))), Struct_1(firstLeadingBit(1u)), Struct_1(func_2(true, -9051i).a << (~var_3.a % 32u))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~1i, i32(-1i) * -1i, var_4), select(vec4<i32>(-var_4, 16257i | var_4, var_4, var_4 & var_4), vec4<i32>(_wgslsmith_div_i32(var_4, 1i), select(var_4, 0i, false), var_4 ^ -2147483647i, 0i), select(vec4<bool>(true, true, false, false), !global1[_wgslsmith_index_u32(var_1.a, 15u)], global0[_wgslsmith_index_u32(520u, 26u)] >= global0[_wgslsmith_index_u32(51193u, 26u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, reverseBits(4294967295u), _wgslsmith_clamp_u32(1u, 0u, 19878u)), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(42771u, var_3.a, global3.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, var_2.a), vec3<u32>(var_3.a, global3.a, var_3.a)))) | vec3<u32>(max(var_1.a, 1u) & _wgslsmith_add_u32(1u, 7797u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_3.a, var_2.a, 0u), min(4294967295u, 47437u)), max(30152u, var_1.a) << (4294967295u % 32u)), var_1.a);
}

