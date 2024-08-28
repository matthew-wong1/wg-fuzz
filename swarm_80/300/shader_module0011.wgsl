struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(-95958i, 0i), -12907i, -703f), Struct_1(vec2<i32>(3303i, -8542i), 32907i, 2210f), Struct_1(vec2<i32>(-1i, 1i), 9976i, 453f), Struct_1(vec2<i32>(-53127i, 0i), i32(-2147483648), -1301f), Struct_1(vec2<i32>(2846i, -10007i), 3002i, -1013f), Struct_1(vec2<i32>(29813i, 1i), -35448i, 567f), Struct_1(vec2<i32>(17442i, -1i), 6133i, -1119f), Struct_1(vec2<i32>(57589i, i32(-2147483648)), -1i, 1303f), Struct_1(vec2<i32>(1i, -1i), 19210i, 797f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return global2[_wgslsmith_index_u32(min(31853u, u_input.a), 9u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>) -> f32 {
    global2 = array<Struct_1, 9>();
    var var_0 = vec2<u32>(~40645u ^ u_input.c.x, u_input.a);
    global1 = array<Struct_2, 29>();
    let var_1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), 2075f);
    global0 = arg_0.a;
    return _wgslsmith_f_op_f32(round(arg_0.c));
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = array<Struct_2, 29>();
    var var_0 = 1i;
    var var_1 = func_2();
    let var_2 = Struct_1(func_2().a, _wgslsmith_sub_i32(arg_0.b, arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(global0.x, -1i), 2147483647i, arg_0.c), vec3<f32>(arg_0.c, var_1.c, -1338f), vec3<f32>(-210f, var_1.c, -411f))), var_1.c)))) - _wgslsmith_f_op_f32(step(-635f, _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(arg_0.c - 1747f)))))));
    let var_3 = _wgslsmith_div_f32(arg_0.c, arg_0.c);
    return (1i > _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 13911i, 0i), vec3<i32>(2147483647i, -2147483647i, 1i)), select(vec3<i32>(var_1.b, global0.x, var_1.a.x), vec3<i32>(var_1.a.x, 2147483647i, var_2.b), false)), ~select(vec3<i32>(var_2.a.x, arg_0.a.x, 58753i), vec3<i32>(-1i, -2147483647i, -24962i), false))) && true;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(func_2(), vec4<bool>(_wgslsmith_add_i32(~(-28774i), ~arg_3.a.x) >= ((-2147483647i ^ arg_3.a.x) << (44543u % 32u)), false, arg_0, !arg_0), ~u_input.c);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(firstLeadingBit(arg_3.a), vec2<i32>(_wgslsmith_clamp_i32(var_0.a.b, -global0.x, global0.x), _wgslsmith_dot_vec2_i32(arg_3.a, _wgslsmith_sub_vec2_i32(vec2<i32>(62797i, arg_3.a.x), arg_3.a)))), -((global0.x | _wgslsmith_div_i32(1i, global0.x)) ^ firstLeadingBit(~var_0.a.a.x)), -2172f);
    var var_2 = func_2().a.x;
    var var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, var_0.c.x, 1u), vec3<u32>(4294967295u, var_0.c.x, var_0.c.x)), abs(var_0.c.x)), ~_wgslsmith_mult_u32(var_0.c.x, 1u)) ^ 16581u), 29u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    let var_0 = Struct_2(Struct_1(vec2<i32>(-_wgslsmith_clamp_i32(47475i, 60811i, 38254i), global0.x), -select(global0.x >> (43987u % 32u), ~0i, true), 343f), vec4<bool>(select(func_4(func_1(global2[_wgslsmith_index_u32(u_input.c.x, 9u)]), 1u, 18961u, func_2()), true, !any(vec4<bool>(false, true, true, true))), true, true, true), max(vec3<u32>(~4294967295u, u_input.b << (firstTrailingBit(u_input.a) % 32u), u_input.c.x), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~var_0.c.x) << (~min(var_0.c.x, var_0.c.x) % 32u), _wgslsmith_add_u32(u_input.c.x, u_input.b), ~(~firstTrailingBit(var_0.c.x)), ~reverseBits(_wgslsmith_mod_u32(56577u, u_input.c.x))), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(165f, -444f, var_0.a.c) * vec3<f32>(var_0.a.c, -687f, var_0.a.c)) * vec3<f32>(var_0.a.c, var_0.a.c, -947f)), _wgslsmith_div_vec3_f32(vec3<f32>(-126f, var_0.a.c, 401f), vec3<f32>(var_0.a.c, var_0.a.c, var_0.a.c))))));
}

