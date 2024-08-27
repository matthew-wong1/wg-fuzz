struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, true, false, false, false);

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-3823i, 2147483647i, -19907i, 2147483647i), vec4<i32>(50035i, 27694i, 70153i, 41636i), vec4<i32>(1i, -40697i, i32(-2147483648), 23931i), vec4<i32>(1i, 2147483647i, -3153i, 2147483647i), vec4<i32>(6409i, 1i, 5823i, 60362i), vec4<i32>(1i, 10087i, -5464i, 2147483647i), vec4<i32>(2770i, i32(-2147483648), -1i, -5700i), vec4<i32>(0i, -18880i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_0 = 0u;
    var var_1 = Struct_1(!global0[_wgslsmith_index_u32(var_0, 6u)], max(-5996i, firstTrailingBit(~(-1i))));
    global0 = array<bool, 6>();
    return var_0;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = !(_wgslsmith_add_u32(~(~arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(51903u, arg_2), _wgslsmith_sub_vec2_u32(vec2<u32>(51658u, 64717u), vec2<u32>(arg_0, arg_2)))) > func_3());
    let var_1 = !select(select(arg_1, !vec4<bool>(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(40661u, 6u)], true), select(vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(0u, 6u)], false, arg_1.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 6u)], arg_1.x), select(global0[_wgslsmith_index_u32(37153u, 6u)], arg_1.x, true))), select(!select(arg_1, vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false, false, global0[_wgslsmith_index_u32(arg_2, 6u)]), global0[_wgslsmith_index_u32(27177u, 6u)]), arg_1, !arg_1.x), global0[_wgslsmith_index_u32(16135u, 6u)]);
    var var_2 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21082u, 70628u), vec2<u32>(9104u, 4294967295u)), 0u), 4294967295u | (arg_0 | 1u), func_3()) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, arg_0, arg_0, 4294967295u), abs(min(vec4<u32>(arg_2, arg_2, arg_2, 1u), vec4<u32>(arg_2, 33456u, arg_0, 0u)))), countOneBits(reverseBits(~select(vec2<u32>(arg_2, 4294967295u), vec2<u32>(0u, arg_2), true))), -arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2322f * _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-135f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-160f, -884f)))) + 708f)));
    let var_3 = 1248f;
    let var_4 = Struct_2(_wgslsmith_dot_vec3_u32(((vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x) & vec3<u32>(84271u, 0u, 25073u)) | vec3<u32>(6199u, arg_0, 1u)) << (vec3<u32>(var_2.b.x, var_2.a << (var_2.b.x % 32u), ~arg_0) % vec3<u32>(32u)), vec3<u32>(countOneBits(1u), 14851u, _wgslsmith_add_u32(max(16136u, arg_0), 4294967295u))), _wgslsmith_mult_vec2_u32(~(~firstTrailingBit(var_2.b)), firstLeadingBit((var_2.b & vec2<u32>(var_2.b.x, 51750u)) & var_2.b)), ~var_2.c, _wgslsmith_f_op_f32(ceil(515f)));
    return Struct_1(arg_1.x, _wgslsmith_dot_vec2_i32(select(-vec2<i32>(-35921i, 0i), u_input.a.xx, select(vec2<bool>(var_1.x, true), select(arg_1.zw, var_1.zw, false), select(arg_1.xw, vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(var_4.a, 6u)]), true))), vec2<i32>(~(~2147483647i), abs(65178i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = array<vec4<i32>, 8>();
    global1 = array<vec4<i32>, 8>();
    global1 = array<vec4<i32>, 8>();
    let var_0 = arg_1.b.b.x;
    return _wgslsmith_f_op_f32(round(1000f));
}

fn func_1() -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1442f - -252f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(647f)) * 1211f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(766f)) + _wgslsmith_f_op_f32(ceil(123f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-285f, 488f)), _wgslsmith_f_op_f32(select(-831f, -220f, false)))) + -706f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-266f, _wgslsmith_f_op_f32(550f + -420f))), _wgslsmith_f_op_f32(func_4(func_2(23386u, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(60849u, 6u)], false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), 31525u, vec4<i32>(6066i, 39869i, u_input.a.x, u_input.b)), Struct_3(-176f, Struct_2(25961u, vec2<u32>(4294967295u, 0u), vec4<i32>(u_input.d, u_input.a.x, u_input.b, u_input.a.x), 1747f), vec4<i32>(-1i, 1i, 28332i, 0i), Struct_2(26806u, vec2<u32>(4294967295u, 38060u), global1[_wgslsmith_index_u32(23428u, 8u)], -372f)), func_2(4294967295u, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, false, false), 0u, vec4<i32>(-1i, u_input.c.x, u_input.d, -2147483647i)))), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false, global0[_wgslsmith_index_u32(4294967295u, 6u)]))))), 825f);
    var var_1 = var_0.x;
    var var_2 = false;
    global0 = array<bool, 6>();
    return !(!select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(6877u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 6u)]), global0[_wgslsmith_index_u32(60382u, 6u)]), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(53626u, 6u)], global0[_wgslsmith_index_u32(9729u, 6u)])), select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 6u)], true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(60163u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(1125u, 6u)], true, global0[_wgslsmith_index_u32(10072u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(13068u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(24470u, 6u)], global0[_wgslsmith_index_u32(39133u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, global0[_wgslsmith_index_u32(1u, 6u)], false), global0[_wgslsmith_index_u32(27910u, 6u)]), func_1(), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 6u)], true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-220f, 147f, -1308f, -895f), vec4<f32>(1454f, 406f, 162f, -1301f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 219f, -1917f, -2431f)))))))) - vec4<f32>(-1286f, _wgslsmith_div_f32(_wgslsmith_div_f32(-798f, 1194f), _wgslsmith_div_f32(-458f, 306f)), _wgslsmith_f_op_f32(f32(-1f) * -466f), -1495f));
    global1 = array<vec4<i32>, 8>();
    let var_2 = i32(-1i) * -18717i;
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3 >> (var_3 % 32u)), u_input.d, firstTrailingBit(var_2), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.c.wx, u_input.a.yy)), _wgslsmith_div_i32(-7540i, func_2(4394u, vec4<bool>(global0[_wgslsmith_index_u32(90931u, 6u)], var_0, global0[_wgslsmith_index_u32(21295u, 6u)], global0[_wgslsmith_index_u32(var_3, 6u)]), var_3, u_input.c).b)), 2147483647i, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, 33527i, 9978i), u_input.d), 0i));
}

