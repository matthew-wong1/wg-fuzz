struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec2<f32> = vec2<f32>(955f, 1486f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(0u, 7u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_add_u32(countOneBits(global0.a.x), ~47970u)), u_input.b.x), 7u)];
    let var_2 = var_1.b;
    let var_3 = global1[_wgslsmith_index_u32(var_0.a.x, 7u)];
    var var_4 = var_3.b;
    return select(true, any(!vec2<bool>(false || arg_0.x, any(vec4<bool>(arg_0.x, true, arg_0.x, false)))), all(vec4<bool>(true, ~u_input.a.x == ~(-12632i), true, (3123u & var_3.a.x) != var_0.a.x)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = abs(firstTrailingBit(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_3.b, u_input.a.x, -2147483647i), vec4<i32>(-1i, 11977i, 0i, arg_3.b), vec4<i32>(arg_3.b, arg_3.b, u_input.a.x, -12206i)), vec4<i32>(global0.b, 2147483647i, -1i, arg_2) >> (vec4<u32>(0u, 51608u, 107390u, arg_3.a.x) % vec4<u32>(32u)), all(vec2<bool>(true, arg_1)))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * -776f), _wgslsmith_f_op_f32(-global2.x));
    let var_1 = Struct_1(countOneBits(global0.a), ~_wgslsmith_add_i32(arg_3.b, 100498i));
    var var_2 = _wgslsmith_clamp_i32(-1i, u_input.a.x, ~(i32(-1i) * -2147483647i));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~40771i, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-47120i, 25154i, arg_2, var_0.x)), vec4<i32>(103686i, var_1.b | var_1.b, arg_2 ^ 28900i, global0.b))), -25683i);
    return vec4<i32>(~0i, select(0i, var_3, arg_1), -14069i, ~var_1.b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    let var_0 = func_4(31131u, false || func_3(vec2<bool>(true, true)), arg_0.b, Struct_1(u_input.b, global0.b));
    let var_1 = Struct_1(reverseBits(_wgslsmith_mod_vec3_u32(arg_0.a, ~arg_0.a)), (~36413i << (_wgslsmith_dot_vec3_u32(min(u_input.b, u_input.b), vec3<u32>(global0.a.x, u_input.b.x, 0u)) % 32u)) << (~0u % 32u));
    let var_2 = abs(-firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-36043i, -2147483647i, global0.b), vec3<i32>(global0.b, var_1.b, u_input.a.x))));
    let var_3 = false;
    return Struct_1(global0.a, 8750i);
}

fn func_1() -> vec3<u32> {
    global1 = array<Struct_1, 7>();
    var var_0 = -708i;
    let var_1 = func_2(global1[_wgslsmith_index_u32(u_input.b.x, 7u)]);
    let var_2 = -countOneBits(firstLeadingBit(vec3<i32>(u_input.a.x, -2147483647i, -13410i)) >> (abs(abs(u_input.b)) % vec3<u32>(32u)));
    let var_3 = Struct_1(~(~u_input.b), _wgslsmith_dot_vec2_i32(var_2.xz, vec2<i32>(-var_1.b, -43971i)) | var_1.b);
    return ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~(~u_input.b), ~select(global0.a, global0.a, false)), ~(u_input.b >> (vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(countOneBits(~u_input.b.x), 0u, global0.a.x), func_1(), true), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(36073u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0.a.x, global0.a.x, 0u), vec4<u32>(4294967295u, 56850u, 0u, 0u)), ~38902u), func_2(Struct_1(vec3<u32>(51263u, u_input.b.x, u_input.b.x), -21807i)).a.x)));
    let var_1 = vec2<f32>(368f, _wgslsmith_f_op_f32(sign(-1700f)));
    global2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, -1028f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1146f + 535f))), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(var_1.x + 1252f))) + var_1)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1 - var_1), _wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(-1000f, var_1.x))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(839f, _wgslsmith_f_op_f32(min(2072f, global2.x))) * var_1)));
    var var_2 = func_4(_wgslsmith_mult_u32(0u, ~35090u), any(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), 2147483647i, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(select(var_0, 67925u, false), reverseBits(var_0), func_1().x), 4294967295u, u_input.b.x), u_input.a.x)).x;
    let var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yx) << (min(~(~global0.a.xx), (vec2<u32>(2845u, 10883u) << (vec2<u32>(global0.a.x, u_input.b.x) % vec2<u32>(32u))) ^ (global0.a.xy | vec2<u32>(u_input.b.x, 9740u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.a.zy, select(u_input.a.xx >> (vec2<u32>(1u, global0.a.x) % vec2<u32>(32u)), min(u_input.a.yy, vec2<i32>(u_input.a.x, 2716i)), true) & abs(vec2<i32>(4835i, global0.b) | vec2<i32>(5217i, global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

