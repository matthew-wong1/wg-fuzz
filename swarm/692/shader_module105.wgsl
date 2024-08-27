struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<vec2<u32>, 3>;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-57094i, 1i), vec2<i32>(-71346i, i32(-2147483648)), vec2<i32>(5548i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-919i, -1i), vec2<i32>(i32(-2147483648), -690i), vec2<i32>(1i, 0i), vec2<i32>(-13239i, 31255i), vec2<i32>(-51637i, -36897i), vec2<i32>(1i, -15651i), vec2<i32>(48376i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(-12258i, -3387i), vec2<i32>(-1i, -38907i), vec2<i32>(55070i, -45405i), vec2<i32>(14157i, i32(-2147483648)), vec2<i32>(28077i, 0i));

var<private> global3: vec2<u32> = vec2<u32>(62903u, 41428u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = ~abs(min(firstTrailingBit(~4294967295u), ~global3.x));
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(~arg_1.a.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(5757i, 5251i)), global2[_wgslsmith_index_u32(global3.x >> (u_input.a % 32u), 20u)])), 2147483647i, -12050i), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.a.x, arg_0.a.x, 46057i, 25660i), min(vec4<i32>(arg_0.a.x, -2147483647i, -3612i, -2147483647i), vec4<i32>(-44965i, arg_0.a.x, -4651i, arg_0.a.x) ^ vec4<i32>(-7071i, 27184i, arg_1.a.x, arg_0.a.x))));
    var var_2 = _wgslsmith_div_i32(-arg_0.a.x, ~_wgslsmith_div_i32(abs(-2147483647i), var_1.x)) <= _wgslsmith_sub_i32(~arg_1.a.x, min(-2147483647i, firstLeadingBit(_wgslsmith_clamp_i32(arg_1.a.x, 1i, 0i))));
    var var_3 = vec2<f32>(-618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(459f - -970f) + global0[_wgslsmith_index_u32(28617u, 20u)])) * 1484f));
    global0 = array<f32, 20>();
    return arg_1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-global2[_wgslsmith_index_u32(global3.x, 20u)]);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-59521i, -1i), func_3(Struct_1(vec2<i32>(-2147483647i, var_0.a.x)), Struct_1(var_0.a)))), -(firstLeadingBit(vec2<i32>(var_0.a.x, var_0.a.x)) ^ -vec2<i32>(-35411i, -1i))));
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(min(u_input.a, u_input.a), 20u)]);
    global3 = firstTrailingBit(~(~select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global3.x), vec2<u32>(u_input.a, u_input.a)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u), 3u)], select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    return Struct_1(abs(~var_0.a));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(var_0.a, firstTrailingBit(var_0.a) & -vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(countOneBits(~var_0.a.x), var_0.a.x & _wgslsmith_add_i32(-2147483647i, var_0.a.x))));
    var var_2 = any(!vec2<bool>((1097f <= global0[_wgslsmith_index_u32(global3.x, 20u)]) && true, true));
    let var_3 = var_0;
    let var_4 = Struct_1(abs(abs(~var_0.a)));
    return abs(vec3<u32>(firstLeadingBit(abs(~global3.x)), 9921u, 52884u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 20>();
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(func_1(), reverseBits(~vec3<u32>(u_input.a, 4346u, u_input.a)), ~select(vec3<u32>(8777u, u_input.a, global3.x), vec3<u32>(73568u, u_input.a, 0u), false)), vec3<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(47926u, 3u)]) & ~global3.x, 0u, global3.x)), 3u)] ^ vec2<u32>(_wgslsmith_clamp_u32(global3.x, _wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_mod_u32(43152u, u_input.a)) >> (~(~11604u) % 32u), _wgslsmith_div_u32(0u, u_input.a));
    global3 = min(reverseBits(~(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(global3.x, 130719u) % vec2<u32>(32u))))), global1[_wgslsmith_index_u32(~(~firstLeadingBit(43661u)), 3u)]);
    let var_0 = abs(4294967295u);
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(~min(0i, -1i), ~(~34651i)), -_wgslsmith_mult_i32(abs(-41961i), 1i)), 1u, 1u, _wgslsmith_mod_u32(global3.x, global3.x), ~vec3<i32>(_wgslsmith_mult_i32(0i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), global2[_wgslsmith_index_u32(43272u, 20u)]), -1i) >> (~firstTrailingBit(vec3<u32>(32368u, global3.x, global3.x) << (vec3<u32>(45990u, 1u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

