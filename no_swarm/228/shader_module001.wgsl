struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(66776u, 3240u), vec2<u32>(1u, 37167u), vec2<u32>(1392u, 4294967295u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global1 = array<vec2<u32>, 3>();
    let var_0 = Struct_2(any(vec4<bool>(!all(vec4<bool>(false, false, arg_2.c.x, true)), false, !(!arg_2.c.x), true)), Struct_1(arg_1.a, vec2<u32>(4294967295u, arg_2.b.x), arg_1.c), -716f);
    global0 = array<i32, 21>();
    let var_1 = Struct_1(u_input.a.x, arg_1.b >> (_wgslsmith_clamp_vec2_u32(arg_1.b, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.x, 0u), ~vec2<u32>(arg_1.b.x, arg_1.b.x)), arg_2.b) % vec2<u32>(32u)), arg_2.c);
    let var_2 = true;
    return _wgslsmith_div_vec2_u32(var_0.b.b, arg_2.b ^ _wgslsmith_add_vec2_u32(arg_2.b, arg_1.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    global1 = array<vec2<u32>, 3>();
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-424f, _wgslsmith_f_op_f32(-1000f * arg_3.c)))) * vec2<f32>(_wgslsmith_div_f32(arg_3.c, arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.c)))))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_3.b.b, func_3(select(arg_3.b.c, select(arg_3.b.c, arg_3.b.c, arg_3.b.c), true), arg_3.b, arg_3.b)), ~arg_1 << (arg_0.x % 32u));
    return arg_3.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_3);
    var var_1 = arg_0.b;
    var var_2 = arg_0;
    let var_3 = arg_0;
    global1 = array<vec2<u32>, 3>();
    return arg_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<i32, 21>();
    let var_0 = func_4(Struct_2(all(arg_2.b.c), func_2(select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, 78355u, arg_0.b.x), vec4<u32>(0u, arg_0.b.x, 21475u, 68978u)), vec4<u32>(arg_2.b.b.x, arg_0.b.x, 0u, arg_0.b.x), vec4<bool>(true, true, arg_2.b.c.x, false)), _wgslsmith_div_u32(arg_2.b.b.x, arg_0.b.x), vec3<f32>(-502f, _wgslsmith_f_op_f32(874f * 144f), _wgslsmith_f_op_f32(max(arg_2.c, 222f))), arg_2), 247f), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.a, u_input.a.x, u_input.a.x, 10288i), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -12645i, global0[_wgslsmith_index_u32(1u, 21u)], u_input.a.x), vec4<i32>(u_input.a.x, -77571i, global0[_wgslsmith_index_u32(48969u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])))), vec4<i32>(24335i, arg_0.a, _wgslsmith_mod_i32(min(29203i, 2147483647i), -1i), _wgslsmith_mult_i32(u_input.a.x, -1i) << (_wgslsmith_mult_u32(arg_2.b.b.x, arg_0.b.x) % 32u))), _wgslsmith_f_op_f32(131f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.c)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(689f, 388f, -1129f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_2.c))))), !any(func_2(vec4<u32>(1u, arg_0.b.x, 1u, 33u), arg_2.b.b.x, vec3<f32>(arg_1.x, arg_2.c, arg_1.x), arg_2).c.yx))));
    global0 = array<i32, 21>();
    var var_1 = select(true, all(!arg_2.b.c.zww), arg_0.c.x);
    global0 = array<i32, 21>();
    return arg_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 66760u), vec2<u32>(8310u, 0u)), func_1(Struct_1(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(true, true, false, false)), vec2<f32>(-756f, -220f), Struct_2(false, Struct_1(2147483647i, vec2<u32>(1u, 3633u), vec4<bool>(false, true, false, false)), 641f)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(25358u, 4294967295u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(8641u, 4349u, 45633u, 1u), vec4<u32>(7378u, 0u, 1u, 7736u), false), firstTrailingBit(vec4<u32>(12439u, 64324u, 12325u, 3613u))), 3u)])), vec4<bool>(true, -1652f >= _wgslsmith_f_op_f32(trunc(1533f)), func_4(Struct_2(true, func_4(Struct_2(true, Struct_1(0i, vec2<u32>(1u, 0u), vec4<bool>(false, true, true, false)), 1109f), 29072i, 981f, vec3<f32>(1310f, 174f, -412f)), _wgslsmith_div_f32(194f, -446f)), countOneBits(-1i), _wgslsmith_f_op_f32(floor(-301f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1065f, 1176f, -525f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1626f, 701f, -1053f), vec3<f32>(-1442f, -249f, -288f), vec3<bool>(true, false, true)))))).c.x, any(vec2<bool>(true, true))));
    var var_1 = -(vec2<i32>(_wgslsmith_mult_i32(-2147483647i ^ global0[_wgslsmith_index_u32(var_0.b.x, 21u)], 44968i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 53383i, global0[_wgslsmith_index_u32(5760u, 21u)]), vec4<i32>(u_input.a.x, 0i, 2147483647i, -30886i))) << (func_4(Struct_2(var_0.c.x, func_2(vec4<u32>(99779u, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x, vec3<f32>(1603f, -560f, 526f), Struct_2(false, Struct_1(60747i, global1[_wgslsmith_index_u32(var_0.b.x, 3u)], var_0.c), -899f)), -1068f), ~global0[_wgslsmith_index_u32(var_0.b.x, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -601f), vec3<f32>(1f, 1f, 1f)).b % vec2<u32>(32u)));
    var_0 = func_2(~vec4<u32>(~var_0.b.x & 0u, ~1u, 53159u, func_1(Struct_1(0i, vec2<u32>(var_0.b.x, 1u), var_0.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(880f, -2095f))), Struct_2(var_0.c.x, Struct_1(1i, vec2<u32>(var_0.b.x, 4294967295u), vec4<bool>(true, true, var_0.c.x, true)), 545f)).x), 0u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-263f, 1832f, -781f), vec3<f32>(-1961f, 1686f, 181f), !var_0.c.zyx)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -628f), -479f, _wgslsmith_f_op_f32(f32(-1f) * -1909f))))), Struct_2(all(vec2<bool>(!var_0.c.x, true)), func_2(min(vec4<u32>(4294967295u, var_0.b.x, 1u, 15176u), vec4<u32>(1u, 0u, var_0.b.x, var_0.b.x)) ^ (vec4<u32>(17407u, var_0.b.x, var_0.b.x, var_0.b.x) >> (vec4<u32>(var_0.b.x, 142005u, var_0.b.x, 2018u) % vec4<u32>(32u))), var_0.b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(560f, -670f, -1835f)))), Struct_2(any(var_0.c), Struct_1(var_1.x, global1[_wgslsmith_index_u32(var_0.b.x, 3u)], var_0.c), 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f))))));
    let var_2 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 52489u, var_0.b.x) >> (abs(vec4<u32>(var_0.b.x, 1u, var_0.b.x, var_0.b.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, var_0.b.x), vec4<u32>(var_0.b.x, 12116u, 9964u, var_0.b.x))) << (~((var_0.b.x >> (var_0.b.x % 32u)) | var_0.b.x) % 32u), 27277u);
    var var_3 = Struct_2(select(true, any(var_0.c), true), func_4(Struct_2(true, func_2(min(vec4<u32>(var_0.b.x, 72824u, var_2, var_0.b.x), vec4<u32>(var_0.b.x, var_0.b.x, 18159u, 1u)), 4294967295u, vec3<f32>(-556f, -1691f, 328f), Struct_2(var_0.c.x, Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(var_0.b.x, 3u)], vec4<bool>(false, var_0.c.x, var_0.c.x, true)), 760f)), _wgslsmith_div_f32(363f, _wgslsmith_f_op_f32(-274f + 551f))), -global0[_wgslsmith_index_u32(var_2, 21u)], _wgslsmith_f_op_f32(abs(-2127f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1659f, 464f, 202f))))))), _wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(sign(-226f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 1u), var_2 | 4294967295u), 6258u << (_wgslsmith_sub_u32(0u, var_0.b.x) % 32u)), var_0.b.x, 0u, 1u), ~(~(~(~vec3<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 21u)], var_0.a, -1i)))), var_3.b.a);
}

