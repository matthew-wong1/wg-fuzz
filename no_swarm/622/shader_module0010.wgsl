struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false, vec2<i32>(2147483647i, 13398i), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, 2147483647i, -1i, -31102i))), Struct_2(false, vec2<i32>(0i, -32845i), Struct_1(vec2<bool>(true, false), vec4<i32>(10365i, -30756i, 32653i, 2147483647i))), Struct_2(false, vec2<i32>(16175i, -24401i), Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 28052i))), Struct_2(false, vec2<i32>(2147483647i, 7179i), Struct_1(vec2<bool>(true, false), vec4<i32>(-10892i, 8723i, 0i, -12089i))), Struct_2(true, vec2<i32>(i32(-2147483648), -26903i), Struct_1(vec2<bool>(true, true), vec4<i32>(-19403i, -22079i, 1i, -1i))));

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(false, vec2<i32>(54853i, -8673i), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, 38310i, -1i, 25897i))), Struct_2(true, vec2<i32>(1i, 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, -1i, 45115i, 0i))), Struct_2(true, vec2<i32>(-3035i, -84245i), Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -1309i, -37645i, 4924i))), Struct_2(true, vec2<i32>(-1i, -9879i), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 0i, 42693i, i32(-2147483648)))), Struct_2(false, vec2<i32>(-1i, 7415i), Struct_1(vec2<bool>(false, false), vec4<i32>(-14457i, 1i, -40473i, 1i))), Struct_2(true, vec2<i32>(-51744i, 0i), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, -17271i, -36913i, -1i))), Struct_2(true, vec2<i32>(1i, -66078i), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, -1i, -11090i))), Struct_2(false, vec2<i32>(-19658i, 51160i), Struct_1(vec2<bool>(false, true), vec4<i32>(-51892i, 0i, 2147483647i, -3518i))), Struct_2(false, vec2<i32>(29062i, 0i), Struct_1(vec2<bool>(true, false), vec4<i32>(4767i, i32(-2147483648), 62218i, 2147483647i))), Struct_2(true, vec2<i32>(46474i, 0i), Struct_1(vec2<bool>(true, false), vec4<i32>(-1115i, 0i, 0i, 1i))), Struct_2(true, vec2<i32>(21108i, -26494i), Struct_1(vec2<bool>(false, true), vec4<i32>(879i, i32(-2147483648), 1i, 24539i))), Struct_2(false, vec2<i32>(2147483647i, -15389i), Struct_1(vec2<bool>(false, true), vec4<i32>(32492i, -21761i, i32(-2147483648), i32(-2147483648)))), Struct_2(true, vec2<i32>(-1i, -1i), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, -29477i, -16405i, 0i))), Struct_2(false, vec2<i32>(-1i, 12143i), Struct_1(vec2<bool>(true, false), vec4<i32>(-43592i, -1i, 0i, -1i))));

var<private> global2: array<f32, 29> = array<f32, 29>(1957f, 1547f, -566f, 636f, -303f, -475f, 611f, -680f, -139f, 1000f, 486f, -683f, 1141f, 260f, -1789f, -513f, 1998f, -1304f, 588f, -1000f, -119f, -185f, -1452f, 2188f, 1113f, -530f, -1164f, -454f, -1699f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_2, 14>();
    var var_0 = false;
    var var_1 = 1u;
    global0 = array<Struct_2, 5>();
    var var_2 = true;
    return vec3<bool>(true, false, true);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 5>();
    let var_0 = max(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a | 0u, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a, 1u)), vec2<u32>(33335u, 44250u) ^ vec2<u32>(u_input.a, 89686u)), ~vec2<u32>(u_input.a, u_input.a) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(29609u, u_input.a), vec2<u32>(1u, 0u))), 25195u), u_input.a);
    global0 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(47203u, 17741u), vec2<u32>(u_input.a, 5975u))) | (~vec2<u32>(52473u, 25945u) & select(vec2<u32>(38887u, u_input.a), vec2<u32>(var_0, 59612u), vec2<bool>(true, arg_2.a.x))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(var_0, 22331u)), ~vec2<u32>(var_0, 0u)), vec2<u32>(~4294967295u, 4294967295u))) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 0u) >> (firstTrailingBit(vec2<u32>(1u, 0u)) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 67123u), vec2<u32>(~u_input.a, 1u >> (u_input.a % 32u)));
    global0 = array<Struct_2, 5>();
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~func_3(global2[_wgslsmith_index_u32(1u, 29u)], select(u_input.b, -u_input.b, true), Struct_1(vec2<bool>(false, true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -6325i, 12272i), vec4<i32>(-11463i, u_input.b.x, -2147483647i, -2147483647i))), global1[_wgslsmith_index_u32(4294967295u, 14u)]), 29u)] + _wgslsmith_f_op_f32(f32(-1f) * -1494f));
    global1 = array<Struct_2, 14>();
    let var_1 = all(!vec3<bool>(u_input.a > ~u_input.a, !any(vec3<bool>(true, true, true)), (1i << (arg_1 % 32u)) == u_input.b.x));
    var var_2 = Struct_1(vec2<bool>(all(select(vec4<bool>(var_1, false, var_1, false), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, var_1, var_1, var_1), false), var_1 && var_1)), any(vec2<bool>(var_1, true))), ~(~(abs(vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.b.x)) ^ vec4<i32>(2511i, 1i, 1i, 22896i))));
    var_2 = Struct_1(var_2.a, _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_2.b.x, u_input.b.x, var_2.b.x, -13617i)), ~select(var_2.b, var_2.b, var_1)) << (abs(~vec4<u32>(41830u, arg_1, 11707u, arg_1)) % vec4<u32>(32u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(select(74543u, u_input.a, true), 0u)));
    global2 = array<f32, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2383f, 1000f, global2[_wgslsmith_index_u32(u_input.a, 29u)])) * _wgslsmith_div_vec3_f32(vec3<f32>(813f, global2[_wgslsmith_index_u32(65199u, 29u)], global2[_wgslsmith_index_u32(var_0.x, 29u)]), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 295f, 1000f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(var_0.x, 29u)])) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1018f, 1171f, global2[_wgslsmith_index_u32(4294967295u, 29u)]) - vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], -195f, global2[_wgslsmith_index_u32(0u, 29u)])), vec3<bool>(true, false, true)))), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, u_input.a), u_input.a), 29u)], _wgslsmith_f_op_f32(-837f - -1149f), global2[_wgslsmith_index_u32(u_input.a, 29u)]), func_1())));
    global0 = array<Struct_2, 5>();
    var var_2 = select(select(!vec3<bool>(select(false, false, false), func_2(0u, var_0.x, var_1), true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)) || true), func_1(), !vec3<bool>(false, _wgslsmith_clamp_u32(var_0.x, u_input.a, u_input.a) < (var_0.x << (var_0.x % 32u)), func_1().x));
    let var_3 = Struct_2(u_input.a == (49418u | u_input.a), u_input.b, Struct_1(!(!select(vec2<bool>(true, false), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, -1i, u_input.b.x, 4857i), vec4<i32>(0i, u_input.b.x, 9004i, 0i)) >> (((vec4<u32>(var_0.x, 1u, var_0.x, 44402u) & vec4<u32>(var_0.x, u_input.a, 4294967295u, u_input.a)) ^ vec4<u32>(17881u, 627u, 4294967295u, 6563u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, ~firstTrailingBit(var_0.x) ^ 95799u), vec3<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(countOneBits(u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 56795i), u_input.b)), select(var_3.c.b.x, 1i, var_2.x) & (_wgslsmith_clamp_i32(var_3.c.b.x, var_3.c.b.x, var_3.c.b.x) << (~1u % 32u))), abs(vec3<u32>(u_input.a, var_0.x, var_0.x)), 45640u, 1u);
}

