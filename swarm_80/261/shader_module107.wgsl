struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(25503i, vec4<i32>(-12900i, 1i, -37701i, 2147483647i), false);

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(-1i, vec4<i32>(2147483647i, 9571i, 1i, 30394i), true), Struct_2(-25633i, vec4<i32>(2147483647i, -2487i, -13504i, 33010i), true), Struct_2(-26341i, vec4<i32>(28034i, 2147483647i, 1i, 3969i), true), Struct_2(i32(-2147483648), vec4<i32>(9338i, 0i, 0i, -21949i), false), Struct_2(2147483647i, vec4<i32>(45467i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), false), Struct_2(40976i, vec4<i32>(1i, -17684i, i32(-2147483648), -1i), true), Struct_2(i32(-2147483648), vec4<i32>(-26555i, -22820i, -1i, -1i), true), Struct_2(7378i, vec4<i32>(i32(-2147483648), 6772i, 51080i, 19616i), false), Struct_2(-13834i, vec4<i32>(i32(-2147483648), -35116i, -1i, -9042i), true), Struct_2(i32(-2147483648), vec4<i32>(-60444i, 39422i, -7580i, 11966i), false), Struct_2(2147483647i, vec4<i32>(-33957i, -1i, 2147483647i, i32(-2147483648)), true), Struct_2(0i, vec4<i32>(-18289i, 1i, -1i, 1i), true), Struct_2(-6356i, vec4<i32>(5140i, 0i, 1i, -1i), true));

var<private> global4: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    global4 = i32(-1i) * -83970i;
    let var_0 = ~(~vec2<u32>(~(arg_1 | u_input.b), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), select(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(5274u, u_input.b, arg_1)) | vec3<u32>(~4153u, abs(u_input.b), min(u_input.b, 57536u))), reverseBits(~reverseBits(vec3<u32>(5166u, u_input.b, 1u))));
    return 2147483647i;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = 876f;
    var var_1 = Struct_4(Struct_2(max(~global0.a, 1i), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(16746i, arg_3.b.b.x, 11941i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-18938i, global0.a, global0.a, 4213i), vec4<i32>(40603i, global0.a, 1i, u_input.a.x))), all(!arg_1.a.zw) | arg_1.a.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(-global0.a, -1i), reverseBits(-1i)) << (arg_3.c % 32u));
    let var_2 = 2147483647i < -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_1.a.b.zyy, vec3<i32>(u_input.a.x, -17213i, u_input.a.x), global0.b.zwz), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(arg_3.a.b.xzy, vec3<i32>(-76851i, arg_3.b.a, var_1.a.b.x)), firstTrailingBit(arg_3.b.b.xzx)));
    var var_3 = ~abs(global0.b.zw);
    var_3 = ~(~_wgslsmith_mult_vec2_i32(~vec2<i32>(-13762i, -39411i), -arg_3.a.b.xy)) << (vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~14091u, u_input.b), u_input.b), ~0u) % vec2<u32>(32u));
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec3<f32> {
    let var_0 = vec2<i32>(2147483647i, global0.b.x) | vec2<i32>(arg_0.x, 0i >> (func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, -131f)), global2[_wgslsmith_index_u32(u_input.b, 24u)], _wgslsmith_f_op_f32(-195f * 220f), Struct_3(global3[_wgslsmith_index_u32(1u, 13u)], Struct_2(-1i, vec4<i32>(2147483647i, u_input.a.x, global0.b.x, arg_0.x), true), u_input.b)) % 32u));
    let var_1 = select(vec2<bool>(global0.c, _wgslsmith_f_op_f32(1046f - _wgslsmith_f_op_f32(trunc(387f))) != -879f), select(!select(select(vec2<bool>(global0.c, arg_1), vec2<bool>(false, true), false), vec2<bool>(global0.c, false), !vec2<bool>(arg_1, arg_1)), select(vec2<bool>(global0.c, true || arg_1), select(!vec2<bool>(global0.c, false), !vec2<bool>(true, arg_1), true), vec2<bool>(true, true)), !select(select(vec2<bool>(global0.c, true), vec2<bool>(arg_1, global0.c), vec2<bool>(global0.c, true)), vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, global0.c))), any(vec4<bool>(global0.c, !(!arg_1), all(vec4<bool>(arg_1, true, arg_1, global0.c)), false)));
    global1 = array<vec2<f32>, 25>();
    var var_2 = u_input.a.x & ~(-2147483647i);
    global1 = array<vec2<f32>, 25>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f - 1f))), -475f, _wgslsmith_f_op_f32(min(259f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f * 346f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_3 {
    global2 = array<Struct_1, 24>();
    let var_0 = arg_1;
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_mult_vec2_i32(global0.b.yw, select(vec2<i32>(countOneBits(u_input.a.x), 22108i), -(~_wgslsmith_div_vec2_i32(vec2<i32>(-20113i, global0.b.x), u_input.a.ww)), select(vec2<bool>(-1102f > arg_0.x, any(vec2<bool>(false, true))), vec2<bool>(select(global0.c, global0.c, global0.c), true), vec2<bool>(true, true))));
    return Struct_3(global3[_wgslsmith_index_u32(abs(firstLeadingBit(28332u)), 13u)], global3[_wgslsmith_index_u32(~14158u, 13u)], arg_1.x);
}

fn func_5(arg_0: Struct_3) -> i32 {
    let var_0 = ~vec2<u32>(3424u, 0u);
    global3 = array<Struct_2, 13>();
    global0 = Struct_2(u_input.a.x, select(u_input.a | vec4<i32>(func_1(arg_0.a.b.zww, u_input.b), min(arg_0.b.b.x, -2147483647i), _wgslsmith_div_i32(global0.b.x, 1i), abs(u_input.a.x)), -u_input.a, select(select(true, arg_0.a.c || false, !global0.c), (true | arg_0.b.c) & all(vec3<bool>(false, global0.c, false)), any(select(vec2<bool>(true, global0.c), vec2<bool>(arg_0.a.c, true), false)))), func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, -2512f, -1155f))))), firstLeadingBit(~abs(vec4<u32>(12028u, u_input.b, 4294967295u, 1u)))).b.c);
    let var_1 = vec2<i32>(global0.a, ~_wgslsmith_dot_vec3_i32(min(reverseBits(global0.b.xxy), vec3<i32>(global0.a, global0.a, arg_0.a.b.x)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, 10730i), -5479i, ~global0.b.x)));
    global3 = array<Struct_2, 13>();
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_1(u_input.a.yzz, _wgslsmith_div_u32(5159u, u_input.b)), firstLeadingBit(func_5(func_4(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(u_input.a.x, -34438i), false)), vec4<u32>(79175u, 50320u, u_input.b, u_input.b) << (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))), _wgslsmith_dot_vec3_i32(u_input.a.wxz, vec3<i32>(29510i, global0.a, u_input.a.x)), 45004i);
    global4 = select(_wgslsmith_mod_i32(~_wgslsmith_add_i32(countOneBits(global0.a), var_0.x), _wgslsmith_clamp_i32(u_input.a.x, -35692i, _wgslsmith_add_i32(-68523i, var_0.x) | _wgslsmith_div_i32(-1i, 6518i))), 1i, global0.c && any(select(vec2<bool>(false, global0.c), vec2<bool>(global0.c, false), all(vec2<bool>(false, true)))));
    let var_1 = vec4<bool>(global0.c, true, global0.c, all(vec3<bool>(global0.c, global0.b.x == 2147483647i, true)) && false);
    global0 = func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), ~select(vec4<u32>(~0u, ~u_input.b, 1u, max(40587u, u_input.b)), select(~vec4<u32>(77595u, 4294967295u, 6811u, 40248u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 10698u), !var_1), var_1.x)).b;
    global2 = array<Struct_1, 24>();
    let var_2 = vec3<bool>(global0.c, false, func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1087f, -2244f, -2627f))), _wgslsmith_f_op_vec3_f32(func_2(-u_input.a.wy, !global0.c)), !any(var_1.zx))), vec4<u32>(u_input.b, u_input.b, ~u_input.b, 0u | u_input.b)).b.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f - -468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1360f, -206f))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1145f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(round(2090f))) + 148f));
    var var_5 = select(30047u, _wgslsmith_add_u32(u_input.b, 24548u), -1299f > _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-621f * var_3.x), _wgslsmith_f_op_f32(min(var_3.x, 963f))))));
    let x = u_input.a;
    s_output = StorageBuffer(13126i, -1751f, _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.a.x, -5095i, var_0.x) >> (vec3<u32>(33979u, 102633u, u_input.b) % vec3<u32>(32u)), vec3<i32>(-1i) * -var_0.xzz), -(~select(vec3<i32>(1i, 0i, var_0.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), true))));
}

