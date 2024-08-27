struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, true));

var<private> global3: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(7674i, 0i), vec2<i32>(6295i, 583i), vec2<i32>(20872i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(1i, -21826i), vec2<i32>(i32(-2147483648), 3566i), vec2<i32>(2147483647i, -41995i), vec2<i32>(8010i, 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> vec3<i32> {
    global3 = array<vec2<i32>, 8>();
    var var_0 = Struct_4(_wgslsmith_clamp_i32(arg_2.a, arg_0.a & ~(arg_2.a << (1u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, arg_1.b.a) & vec2<i32>(u_input.b, -29902i), ~global3[_wgslsmith_index_u32(0u, 8u)]) | arg_0.c.a), arg_2);
    global0 = array<Struct_3, 13>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(~(~u_input.a.x), ~25885u), u_input.c.x), 1u)];
    global2 = array<vec2<bool>, 1>();
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b, vec3<i32>(reverseBits(u_input.b) << (~u_input.c.x % 32u), arg_2.a, arg_0.b.x)), vec3<i32>(-u_input.b, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-54910i, arg_1.a, arg_1.b.a)), arg_0.b >> (u_input.c % vec3<u32>(32u))), vec3<i32>(~29674i, firstLeadingBit(1i), 1i))), -(~_wgslsmith_mod_vec3_i32(~arg_0.b, countOneBits(vec3<i32>(-2147483647i, u_input.b, 30726i)))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(u_input.b, _wgslsmith_mult_vec3_i32(countOneBits(func_3(Struct_2(u_input.b, vec3<i32>(19071i, u_input.b, 0i), Struct_1(-30929i, false)), Struct_4(u_input.b, Struct_1(15426i, false)), Struct_1(-1i, true)) >> (vec3<u32>(u_input.c.x, u_input.a.x, 57444u) % vec3<u32>(32u))), vec3<i32>(-1i, u_input.b, -1i) | _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, -17018i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -6730i, u_input.b), vec3<i32>(-2680i, -1i, u_input.b)))), Struct_1(u_input.b, true));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1406f, -658f, global1.x, 867f), vec4<f32>(global1.x, 360f, -114f, 904f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1755f, -1000f, 1522f), vec4<f32>(global1.x, global1.x, 173f, global1.x))))))));
    let var_1 = var_0.c;
    var var_2 = Struct_3(Struct_1(4973i, true), var_0.c, var_0.c, ~abs(var_0.a));
    let var_3 = Struct_4(var_0.c.a, var_0.c);
    return _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(var_2.c.a, var_0.c.a, u_input.b, var_3.b.a)) ^ vec4<i32>(var_1.a, -53404i, -1i, var_2.b.a)), reverseBits(vec4<i32>(var_2.a.a, ~var_3.a, var_1.a, abs(0i))) ^ vec4<i32>(-12471i, select(2147483647i, _wgslsmith_sub_i32(-33035i, var_2.a.a), true), _wgslsmith_mod_i32(var_0.b.x, var_2.c.a), var_0.c.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4, arg_3: vec3<bool>) -> bool {
    global1 = vec4<f32>(-1577f, -295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))))), _wgslsmith_f_op_f32(abs(-457f)));
    global2 = array<vec2<bool>, 1>();
    var var_0 = arg_3.xx;
    var var_1 = Struct_4(-37418i, Struct_1(-25034i << (~_wgslsmith_mult_u32(u_input.a.x, 18670u) % 32u), select(false, var_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x) > _wgslsmith_div_f32(global1.x, global1.x))));
    let var_2 = ~vec2<u32>(min(_wgslsmith_dot_vec3_u32(~u_input.c, u_input.c), 4294967295u), ~45871u);
    return select(!(!select(true, false, arg_3.x)) & false, arg_3.x, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> i32 {
    global0 = array<Struct_3, 13>();
    var var_0 = 4294967295u;
    let var_1 = select(vec3<bool>(!arg_3, !arg_2.b.b, true || func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, 235f) * vec2<f32>(1461f, 1226f)), func_2(), Struct_4(1i, Struct_1(arg_1, false)), !vec3<bool>(arg_3, arg_3, true))), !vec3<bool>(!(arg_1 > -1i), any(vec2<bool>(arg_3, arg_2.b.b)), arg_2.b.b), !vec3<bool>(abs(arg_0.x) == arg_0.x, arg_2.b.b, _wgslsmith_f_op_f32(global1.x + global1.x) != _wgslsmith_f_op_f32(f32(-1f) * -377f)));
    var var_2 = Struct_2(~abs(arg_2.a), vec3<i32>(-26929i, _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i | u_input.b, _wgslsmith_div_i32(arg_1, -6684i)), u_input.b), -31084i), arg_2.b);
    var var_3 = Struct_1(func_3(Struct_2(-2147483647i, vec3<i32>(arg_1, 0i, 1i), arg_2.b), arg_2, var_2.c).x, !all(!var_1));
    return min(~countOneBits(~var_2.a << (~u_input.a.x % 32u)), arg_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 1>();
    var var_0 = u_input.b;
    var var_1 = abs(-2147483647i);
    let var_2 = firstLeadingBit(vec3<i32>(-2147483647i, u_input.b, firstTrailingBit(func_1(~vec2<u32>(u_input.c.x, 1u), u_input.b, Struct_4(27174i, Struct_1(-2147483647i, false)), select(true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(var_2.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_2.x, 12035i), _wgslsmith_dot_vec3_i32(vec3<i32>(-7770i, u_input.b, var_2.x), var_2))), ~(36141i >> (1u % 32u))));
}

