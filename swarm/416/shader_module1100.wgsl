struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1506f, 1525f, -946f, -1000f);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<i32>(-7867i, -2670i, 21340i), true, 6681i, -909f, 61118u), Struct_1(vec3<i32>(71935i, 0i, -1i), false, -1i, -1000f, 0u), Struct_1(vec3<i32>(56831i, 0i, -1i), false, i32(-2147483648), 1743f, 0u), Struct_1(vec3<i32>(0i, 833i, 0i), false, -19624i, 646f, 9312u), Struct_1(vec3<i32>(-1i, 2147483647i, 9607i), true, -8495i, 1000f, 27008u), Struct_1(vec3<i32>(-1i, 14540i, 23847i), true, 0i, -322f, 35273u), Struct_1(vec3<i32>(2147483647i, 0i, -9240i), true, 15710i, -1000f, 12759u), Struct_1(vec3<i32>(17051i, 320i, 1i), false, 17985i, 798f, 32530u), Struct_1(vec3<i32>(2147483647i, -1i, -53009i), false, 2147483647i, -1464f, 4294967295u), Struct_1(vec3<i32>(1i, 36042i, 0i), true, -1i, 1045f, 32402u), Struct_1(vec3<i32>(i32(-2147483648), 4257i, i32(-2147483648)), false, 2147483647i, 210f, 0u), Struct_1(vec3<i32>(-22640i, -805i, 2147483647i), true, i32(-2147483648), -982f, 0u), Struct_1(vec3<i32>(69515i, 1i, -36989i), false, -34994i, -795f, 38176u), Struct_1(vec3<i32>(-1i, 0i, -1i), true, -67697i, -214f, 1u), Struct_1(vec3<i32>(-80897i, i32(-2147483648), -1i), true, i32(-2147483648), -797f, 4294967295u), Struct_1(vec3<i32>(-954i, 2147483647i, -1i), true, -16651i, -1000f, 7109u), Struct_1(vec3<i32>(18944i, 7620i, 71711i), true, i32(-2147483648), -308f, 71022u), Struct_1(vec3<i32>(i32(-2147483648), -1i, -3194i), true, -9619i, -1316f, 18304u), Struct_1(vec3<i32>(-16910i, 1i, 1i), false, 16017i, 636f, 4294967295u), Struct_1(vec3<i32>(0i, 2147483647i, 0i), false, 1i, -1096f, 39127u), Struct_1(vec3<i32>(-1067i, -44131i, -37717i), false, -2053i, -224f, 0u), Struct_1(vec3<i32>(1i, 7849i, -14321i), true, -36668i, 2833f, 50306u), Struct_1(vec3<i32>(-28830i, 31681i, -1i), true, i32(-2147483648), 310f, 1u), Struct_1(vec3<i32>(-1i, -25837i, 0i), true, -2102i, -1769f, 3111u), Struct_1(vec3<i32>(1i, -1i, -1i), true, -32307i, -1005f, 43747u), Struct_1(vec3<i32>(i32(-2147483648), 0i, 1i), true, 2147483647i, -1580f, 1u), Struct_1(vec3<i32>(1i, -13877i, 100736i), true, 10833i, 2731f, 0u), Struct_1(vec3<i32>(15272i, 2147483647i, -18897i), false, 24363i, -1000f, 108505u), Struct_1(vec3<i32>(-18316i, i32(-2147483648), -4557i), true, -1i, -1101f, 37658u), Struct_1(vec3<i32>(-62906i, 1i, i32(-2147483648)), false, -25898i, -908f, 41964u));

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(4294967295u, 1u), vec2<u32>(25845u, 49456u), vec2<u32>(9218u, 5907u), vec2<u32>(72514u, 0u), vec2<u32>(0u, 0u), vec2<u32>(38089u, 0u), vec2<u32>(1295u, 52291u), vec2<u32>(1u, 29839u), vec2<u32>(1u, 21610u), vec2<u32>(9384u, 26000u), vec2<u32>(41154u, 14737u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: f32) -> vec2<u32> {
    let var_0 = arg_0.x;
    global2 = array<vec2<u32>, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 237f, -1000f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1577f), global0.x, -321f, _wgslsmith_f_op_f32(sign(arg_3))), all(vec3<bool>(true, false, arg_0.x)) == true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3, -482f, global0.x, arg_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -134f, 1542f, -172f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1221f, arg_3, global0.x) + vec4<f32>(-291f, 463f, global0.x, arg_3)) * vec4<f32>(982f, -2289f, global0.x, global0.x)))));
    let var_2 = global0.ww;
    let var_3 = vec2<f32>(var_1.x, var_1.x);
    return global2[_wgslsmith_index_u32(~arg_1, 11u)];
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-68982i, -1i, -19573i) & arg_0.a, vec3<i32>(-13214i, -9715i, -1i))), vec3<i32>(arg_0.a.x, -1i, u_input.b.x >> (30240u % 32u))), true, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.x)), -495f)))), ~(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16235u, 4294967295u, 0u, 48976u), vec4<u32>(4294967295u, 1u, 0u, 3639u)), ~0u) & (~0u >> (1u % 32u))));
    var var_1 = arg_0;
    global1 = array<Struct_1, 30>();
    let var_2 = 728f;
    let var_3 = ~abs(func_2(vec2<bool>(var_0.b, var_0.b), 1u, var_0.e, -2411f).x | var_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(321f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    global2 = array<vec2<u32>, 11>();
    global2 = array<vec2<u32>, 11>();
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, max(countOneBits(arg_1.x), _wgslsmith_clamp_u32(17441u, arg_1.x, 0u)), _wgslsmith_mod_u32(47058u, 33243u)), ~arg_1.x), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~(arg_1.x ^ 37137u), 11u)] ^ countOneBits(min(global2[_wgslsmith_index_u32(19441u, 11u)], arg_1.zy)), func_2(vec2<bool>(true, select(arg_0.x, true, true)), arg_1.x, min(countOneBits(arg_1.x), ~arg_1.x), -1302f)), _wgslsmith_sub_u32(min(arg_1.x, ~arg_1.x), _wgslsmith_mult_u32(firstTrailingBit(~1u), ~arg_1.x << (_wgslsmith_mod_u32(arg_1.x, 28066u) % 32u))), arg_1.x);
    global2 = array<vec2<u32>, 11>();
    var var_1 = Struct_1(arg_2.a, false | !(true | select(arg_0.x, false, arg_0.x)), _wgslsmith_div_i32(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -74586i, 0i, arg_2.c), vec4<i32>(arg_2.e, arg_2.e, -21002i, arg_2.c))), arg_2.e), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.b.yxx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2044f, arg_2.b.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-322f, 724f), vec2<f32>(162f, -176f), vec2<bool>(arg_0.x, true)))), -1i, ~2147483647i ^ (arg_2.d & u_input.b.x), select(_wgslsmith_clamp_i32(arg_2.d, -2147483647i, 1i), 21052i, true)))), abs(~(~select(0u, 46379u, arg_0.x))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, -1978f, 660f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, 392f, 250f), vec4<f32>(global0.x, -1728f, global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-213f, global0.x, global0.x, global0.x), vec4<f32>(-2207f, 412f, 856f, -1397f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1291f, global0.x, 1592f, 949f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-562f, global0.x), _wgslsmith_f_op_f32(floor(-847f)), global0.x, _wgslsmith_f_op_f32(min(global0.x, -524f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1187f, 1265f, global0.x)))));
    global2 = array<vec2<u32>, 11>();
    var var_2 = vec3<u32>(max(countOneBits(firstLeadingBit(31393u) << (func_1(vec2<bool>(false, true), vec3<u32>(1u, 83417u, 15703u), Struct_2(vec3<i32>(2147483647i, var_0, -21186i), global0.zx, -2147483647i, 1i, var_0)) % 32u)), func_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec3<u32>(1u, 1u, 1u), Struct_2(~u_input.b.wwx, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(976f, global0.x))), u_input.a, var_0, _wgslsmith_add_i32(0i, -1i)))), 1u, abs(_wgslsmith_dot_vec2_u32(max(global2[_wgslsmith_index_u32(~10984u, 11u)], _wgslsmith_mult_vec2_u32(vec2<u32>(49253u, 1u), vec2<u32>(55315u, 1u))), global2[_wgslsmith_index_u32(4294967295u, 11u)])));
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, 4294967295u), vec4<u32>(1u, var_2.x, var_2.x, 40684u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(18917u, var_2.x, 90967u, 69541u), ~vec4<u32>(27864u, var_2.x, 1u, 4294967295u), ~vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)))));
}

