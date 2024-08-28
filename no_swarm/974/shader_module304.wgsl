struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1653f, 1198f, 495f, 757f), vec4<f32>(386f, -154f, -1000f, -1352f), vec4<f32>(-1744f, 552f, -1000f, -825f), vec4<f32>(-226f, 1000f, -873f, -1000f), vec4<f32>(-1000f, 1021f, -351f, 621f), vec4<f32>(1895f, 2551f, -219f, 821f), vec4<f32>(366f, -1063f, -1035f, -565f), vec4<f32>(-1356f, 1435f, -1404f, 100f), vec4<f32>(394f, 1248f, -462f, 595f), vec4<f32>(-1000f, 1051f, -1397f, 233f), vec4<f32>(505f, -1000f, -848f, 340f), vec4<f32>(-309f, -827f, -1000f, -506f), vec4<f32>(906f, -248f, -2209f, 1000f), vec4<f32>(-766f, 564f, -809f, -295f), vec4<f32>(-950f, -592f, -473f, 1000f), vec4<f32>(-594f, 867f, 2302f, -427f), vec4<f32>(-124f, -1242f, 1776f, 700f), vec4<f32>(991f, 1000f, 1058f, 384f), vec4<f32>(-1000f, 382f, 1116f, -374f), vec4<f32>(-473f, -336f, -574f, -1083f), vec4<f32>(-572f, -491f, 634f, 310f), vec4<f32>(-416f, -625f, -803f, -1065f));

var<private> global2: array<f32, 7>;

var<private> global3: Struct_2 = Struct_2(vec4<u32>(1u, 85405u, 21798u, 1u), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(864f, -1291f, -344f), 797f), 1000f, true);

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    global1 = array<vec4<f32>, 22>();
    let var_0 = max(-vec2<i32>(~0i, reverseBits(16013i)) & vec2<i32>(-6319i, -firstTrailingBit(-12850i)), reverseBits(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(31313i, 5844i), 0i))));
    global2 = array<f32, 7>();
    global3 = Struct_2(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.a, ~vec4<u32>(global4.x, 1u, 1102u, 0u)), _wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(arg_0.a.x, 0u, u_input.a.x, arg_0.a.x))), global3.b, global2[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yy), ~_wgslsmith_sub_u32(arg_2.x, arg_0.b.a.x), all(select(vec4<bool>(false, false, true, global3.d), vec4<bool>(true, false, arg_0.d, arg_0.d), false))) >> (arg_2.x % 32u), 7u)], !(!global3.d));
    global2 = array<f32, 7>();
    return _wgslsmith_f_op_f32(arg_1.x - 262f);
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 7>();
    global4 = u_input.a.yz;
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(min(abs(vec3<u32>(59486u, global3.b.a.x, 31261u)), u_input.a), _wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global3.a.x, global3.a.x, global4.x), vec3<u32>(1u, 1u, 0u))), global3.a.yzw)), global3.a.xyz);
    var var_1 = Struct_2(abs(vec4<u32>(_wgslsmith_clamp_u32(2087u, 71705u, var_0.x), 1u, ~(~u_input.a.x), ~u_input.a.x | abs(global4.x))), global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 7u)]), -368f)), _wgslsmith_f_op_f32(func_3(Struct_2(global3.a, global0[_wgslsmith_index_u32(global3.b.a.x, 22u)], _wgslsmith_div_f32(global3.b.c, global2[_wgslsmith_index_u32(4294967295u, 7u)]), !global3.d), global3.b.b.yx, countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(70689u, 0u), vec2<u32>(0u, global4.x)))))), true);
    var var_2 = Struct_1(~vec2<u32>(select(var_1.a.x, global4.x, all(vec4<bool>(true, true, var_1.d, false))), 1u), global3.b.b, var_1.c);
    return global0[_wgslsmith_index_u32(u_input.a.x | 0u, 22u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_u32(global3.a, vec4<u32>(global3.a.x, abs(global4.x), 26374u, global4.x)) << ((_wgslsmith_add_vec4_u32(~vec4<u32>(global3.a.x, u_input.a.x, global4.x, 4294967295u), vec4<u32>(global4.x, 76093u, global3.b.a.x, global3.b.a.x)) ^ vec4<u32>(global3.b.a.x, global4.x, 30185u, 1u)) % vec4<u32>(32u)), func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1137f, global3.c, true))))), _wgslsmith_f_op_f32(-625f - global3.c) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(220f - func_2().c))));
    let var_1 = 1u;
    var var_2 = Struct_1(vec2<u32>(4294967295u, _wgslsmith_sub_u32(var_1 | 14332u, 1u << (global3.b.a.x % 32u)) ^ ~func_2().a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-1143f, 770f)), _wgslsmith_f_op_f32(var_0.b.c - -524f), global3.b.c), _wgslsmith_f_op_vec3_f32(func_2().b * vec3<f32>(620f, -1603f, var_0.b.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - global3.c));
    global1 = array<vec4<f32>, 22>();
    var var_3 = var_2.b.yz;
    return select(arg_0.yy, vec2<bool>(2147483647i != arg_1.x, any(vec4<bool>(arg_0.x, true, all(arg_0), any(arg_0)))), arg_0.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.a.x;
    var var_1 = true;
    global0 = array<Struct_1, 22>();
    var var_2 = 37024i;
    var var_3 = vec4<u32>(1u, global4.x, 78048u, ~global4.x);
    let var_4 = func_1(vec3<bool>(global3.d, true, all(vec2<bool>(global3.d, true))), vec4<i32>(max(-32411i, -1i), -(~1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(-7647i), 1i >> (global4.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 25016i), _wgslsmith_div_vec2_i32(vec2<i32>(-34686i, -28193i), vec2<i32>(-35365i, 1i)))), abs(~1i)));
    var var_5 = 376f;
    let var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, 1i)), vec2<i32>(i32(-1i) * -1i, -43477i)), -2147483647i | -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(29129i, 38799i, 2147483647i))), reverseBits(abs(~(~4294967295u))), 17095i);
}

