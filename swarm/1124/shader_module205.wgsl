struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-231f, -1379f), vec2<f32>(235f, 409f), vec2<f32>(240f, 1294f), vec2<f32>(1384f, -419f), vec2<f32>(-1110f, 370f), vec2<f32>(-842f, -188f), vec2<f32>(-867f, -1337f), vec2<f32>(-1482f, -954f), vec2<f32>(-1022f, 411f), vec2<f32>(-1171f, -384f), vec2<f32>(-1424f, 1405f), vec2<f32>(1000f, 1359f), vec2<f32>(812f, 552f), vec2<f32>(-1119f, -1510f), vec2<f32>(-908f, -1000f), vec2<f32>(-472f, -500f), vec2<f32>(-787f, 487f), vec2<f32>(991f, -278f), vec2<f32>(-234f, -1783f), vec2<f32>(1269f, -238f), vec2<f32>(1102f, 137f), vec2<f32>(1000f, -595f), vec2<f32>(-915f, 417f), vec2<f32>(-621f, -1442f), vec2<f32>(-840f, 717f), vec2<f32>(1208f, 425f));

var<private> global2: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global3: f32 = -2053f;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    var var_0 = max(_wgslsmith_add_u32(~(abs(arg_1.a) ^ 4294967295u), ~0u), firstTrailingBit(select(62912u, select(~10357u, ~arg_1.a, any(vec2<bool>(false, false))), true)));
    var var_1 = !global0.x;
    var_0 = ~0u;
    let var_2 = !global0.x;
    global2 = array<vec3<bool>, 26>();
    return vec2<u32>(~arg_1.a, _wgslsmith_add_u32(arg_1.a, _wgslsmith_add_u32(26716u << (arg_1.a % 32u), arg_1.a)) & arg_1.a);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(abs(vec2<u32>(1u, 1u)) & select(func_3(vec3<i32>(-17026i, -1i, u_input.a), Struct_2(0u), _wgslsmith_f_op_f32(f32(-1f) * -383f)), vec2<u32>(_wgslsmith_div_u32(120u, 4294967295u), _wgslsmith_clamp_u32(1u, 4294967295u, 0u)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, true))));
    var var_1 = ~(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(18868i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1632f);
    let var_2 = Struct_1(vec4<u32>(var_0.x, 1u, ~var_0.x, ~_wgslsmith_div_u32(var_0.x, countOneBits(59226u))), var_1.wz, true, u_input.a);
    let var_3 = select(select(global2[_wgslsmith_index_u32(0u, 26u)], vec3<bool>(!var_2.c, !all(vec4<bool>(false, var_2.c, global0.x, var_2.c)), global0.x), !global2[_wgslsmith_index_u32(~23484u, 26u)]), select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, var_2.c, false), true), global2[_wgslsmith_index_u32(var_2.a.x, 26u)]), global2[_wgslsmith_index_u32(var_2.a.x, 26u)], global0.x), !vec3<bool>(true, var_2.c, !var_2.c), global0.x), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(var_2.c, true)), false), vec3<bool>(!(!var_2.c), all(vec3<bool>(false, true, false)) || any(vec4<bool>(var_2.c, false, true, false)), ~var_2.a.x <= var_0.x), vec3<bool>(true, !all(vec2<bool>(false, true)), any(!vec4<bool>(var_2.c, false, global0.x, var_2.c)))));
    return Struct_1(~_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(var_2.a.x, ~var_0.x, _wgslsmith_clamp_u32(1u, var_2.a.x, var_2.a.x), var_2.a.x)), -(~(-var_2.b >> (vec2<u32>(var_2.a.x, 66617u) % vec2<u32>(32u)))), select(var_3.x, true, true), ~(-countOneBits(var_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    return arg_2;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(func_2(), _wgslsmith_add_u32(~select(min(0u, 0u), 1u, true), firstLeadingBit(1u)), Struct_2(4294967295u), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(10046u, 1u, 26434u, 54305u))) ^ vec4<u32>(1u, 1u, 1u, 1u), vec2<i32>(-1i) * -vec2<i32>(-1i, -2147483647i), global0.x, u_input.a));
    var var_1 = func_4(func_2(), ~var_0.a, func_4(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, var_0.a, 4294967295u, 1u), vec4<u32>(var_0.a, var_0.a, var_0.a, 42260u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(46955u, var_0.a, 3986u, 57058u), vec4<u32>(var_0.a, 87975u, 66518u, 37230u)), select(vec2<i32>(-59083i, 1i), vec2<i32>(-1i, -2147483647i), vec2<bool>(global0.x, global0.x)), global0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(28932i, u_input.a, u_input.a, -31610i))), 38430u, func_4(Struct_1(firstTrailingBit(vec4<u32>(var_0.a, 1u, 53853u, var_0.a)), vec2<i32>(u_input.a, u_input.a), global0.x, u_input.a), 48393u, var_0, Struct_1(~vec4<u32>(var_0.a, var_0.a, 63901u, var_0.a), ~vec2<i32>(-2147483647i, u_input.a), select(true, global0.x, false), -u_input.a)), func_2()), func_2());
    let var_2 = -692f;
    var var_3 = reverseBits(vec3<u32>(max(var_0.a, 0u), firstTrailingBit(63351u), var_1.a));
    var_1 = func_4(global4[_wgslsmith_index_u32(0u, 23u)], 0u, Struct_2(0u), func_2());
    return Struct_3(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(var_0.a.a.x, var_0.a.a.x) | var_0.a.a.x), 26u)]), var_0.a.a.x ^ (var_0.a.a.x ^ 5494u), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_0.a.a.x, 26u)]));
}

