struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_3,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-313f, -1360f, -758f);

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec4<bool>(false, false, false, true), vec2<bool>(false, false), Struct_3(vec4<bool>(true, true, true, true)), 31817i, vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_4(vec4<bool>(false, false, true, true), vec2<bool>(true, false), Struct_3(vec4<bool>(true, false, false, false)), -1i, vec3<i32>(-1i, 2147483647i, 1i)), Struct_4(vec4<bool>(true, false, false, true), vec2<bool>(true, true), Struct_3(vec4<bool>(true, false, true, true)), 745i, vec3<i32>(6126i, 31199i, -6240i)), Struct_4(vec4<bool>(false, false, false, false), vec2<bool>(true, false), Struct_3(vec4<bool>(true, true, false, false)), 14972i, vec3<i32>(-60164i, 1i, -1i)), Struct_4(vec4<bool>(true, false, false, true), vec2<bool>(false, true), Struct_3(vec4<bool>(false, false, false, false)), 2147483647i, vec3<i32>(0i, i32(-2147483648), -6350i)), Struct_4(vec4<bool>(true, false, false, false), vec2<bool>(true, false), Struct_3(vec4<bool>(false, true, true, true)), 2147483647i, vec3<i32>(21566i, 2147483647i, 1i)), Struct_4(vec4<bool>(false, false, true, true), vec2<bool>(false, true), Struct_3(vec4<bool>(true, true, false, false)), 6811i, vec3<i32>(2147483647i, 27748i, 1i)), Struct_4(vec4<bool>(true, false, true, true), vec2<bool>(false, false), Struct_3(vec4<bool>(false, true, true, false)), -1i, vec3<i32>(0i, -15407i, 545i)), Struct_4(vec4<bool>(true, true, false, true), vec2<bool>(false, false), Struct_3(vec4<bool>(false, true, true, false)), 28404i, vec3<i32>(12232i, 27276i, 6773i)), Struct_4(vec4<bool>(false, false, false, false), vec2<bool>(true, true), Struct_3(vec4<bool>(true, false, false, true)), -29803i, vec3<i32>(-36660i, -8959i, 0i)), Struct_4(vec4<bool>(false, false, true, false), vec2<bool>(true, false), Struct_3(vec4<bool>(true, true, false, false)), 8902i, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648))), Struct_4(vec4<bool>(true, false, false, false), vec2<bool>(true, false), Struct_3(vec4<bool>(false, false, false, false)), 23348i, vec3<i32>(422i, i32(-2147483648), -31120i)), Struct_4(vec4<bool>(false, true, false, false), vec2<bool>(true, false), Struct_3(vec4<bool>(false, false, false, false)), -1i, vec3<i32>(1i, -1i, -15956i)), Struct_4(vec4<bool>(false, true, true, false), vec2<bool>(true, true), Struct_3(vec4<bool>(true, true, true, false)), -25009i, vec3<i32>(1i, -51328i, 18568i)), Struct_4(vec4<bool>(false, false, true, true), vec2<bool>(true, false), Struct_3(vec4<bool>(false, false, false, false)), 2147483647i, vec3<i32>(-1i, -1i, -27095i)), Struct_4(vec4<bool>(true, true, false, false), vec2<bool>(true, false), Struct_3(vec4<bool>(true, true, false, false)), -3558i, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_4(vec4<bool>(false, false, true, false), vec2<bool>(true, true), Struct_3(vec4<bool>(false, false, true, true)), 1i, vec3<i32>(-1i, 2147483647i, -1i)), Struct_4(vec4<bool>(false, true, true, true), vec2<bool>(false, false), Struct_3(vec4<bool>(false, false, false, false)), 12640i, vec3<i32>(1i, -4148i, -24212i)), Struct_4(vec4<bool>(true, true, true, false), vec2<bool>(true, false), Struct_3(vec4<bool>(false, true, false, true)), 2147483647i, vec3<i32>(2147483647i, 63946i, i32(-2147483648))), Struct_4(vec4<bool>(true, true, true, true), vec2<bool>(false, true), Struct_3(vec4<bool>(false, true, false, true)), -28675i, vec3<i32>(26785i, i32(-2147483648), -42973i)), Struct_4(vec4<bool>(true, true, true, false), vec2<bool>(false, false), Struct_3(vec4<bool>(false, true, false, true)), 0i, vec3<i32>(-46774i, 13467i, 53539i)), Struct_4(vec4<bool>(false, true, true, true), vec2<bool>(false, true), Struct_3(vec4<bool>(false, false, true, false)), -37255i, vec3<i32>(i32(-2147483648), -14513i, 14587i)), Struct_4(vec4<bool>(true, false, false, false), vec2<bool>(true, false), Struct_3(vec4<bool>(true, false, true, false)), i32(-2147483648), vec3<i32>(-28268i, 40033i, 0i)), Struct_4(vec4<bool>(false, true, false, false), vec2<bool>(false, true), Struct_3(vec4<bool>(true, true, false, false)), -23553i, vec3<i32>(-14322i, 2147483647i, 1i)), Struct_4(vec4<bool>(false, false, true, true), vec2<bool>(false, false), Struct_3(vec4<bool>(false, true, true, false)), -28254i, vec3<i32>(2147483647i, -3715i, 482i)));

var<private> global3: i32 = 61326i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn func_3(arg_0: vec4<f32>) -> i32 {
    global0 = array<f32, 3>();
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), _wgslsmith_f_op_f32(310f * arg_0.x), _wgslsmith_f_op_f32(abs(arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, 1000f, 1552f)))));
    global1 = array<Struct_1, 31>();
    var var_2 = select(~(~vec4<u32>(17456u, u_input.a.x, ~u_input.b, 1u)), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 9652u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b)), ~(vec4<u32>(1u, u_input.b, u_input.b, 57292u) << (vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b) % vec4<u32>(32u))))), !all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false)));
    return _wgslsmith_mult_i32(firstTrailingBit(~1i), 1i) | _wgslsmith_dot_vec3_i32(min(vec3<i32>(1i >> (var_2.x % 32u), 0i, _wgslsmith_clamp_i32(9080i, -11318i, -2147483647i)), vec3<i32>(~1i, 2147483647i, i32(-1i) * -2147483647i)), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(17572i, -18029i, -1293i), vec3<i32>(-57096i, -1i, -37728i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_3(vec4<bool>(!all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)) | all(vec2<bool>(false, false)), firstTrailingBit(_wgslsmith_sub_u32(arg_1.x, 4294967295u)) >= _wgslsmith_mult_u32(countOneBits(u_input.b), arg_1.x), _wgslsmith_mod_i32(func_3(arg_0), 5954i) > 1061i));
    let var_1 = arg_0.x;
    var var_2 = arg_1;
    let var_3 = -(~_wgslsmith_mod_i32(15690i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-14372i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(2147483647i, -1i)), 1i)));
    let var_4 = Struct_3(!vec4<bool>(true, var_0.a.x, true, select(true, true, var_0.a.x)));
    return 4294967295u >> (1u % 32u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = !vec4<bool>(false, true, !(func_2(vec4<f32>(-2224f, -586f, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(45573u, 3u)]), vec2<u32>(u_input.b, u_input.b)) >= 48426u), all(vec4<bool>(true, false, true, false)) & (-185f >= global0[_wgslsmith_index_u32(~u_input.b, 3u)]));
    global1 = array<Struct_1, 31>();
    var var_1 = vec4<bool>(false != var_0.x, true, var_0.x, any(!(!var_0)));
    let var_2 = Struct_3(!vec4<bool>(!var_0.x | true, var_1.x, min(arg_0.x, arg_0.x) >= -arg_0.x, var_0.x));
    var var_3 = -vec2<i32>(arg_0.x, ~countOneBits(~26490i));
    return Struct_3(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 25>();
    let var_0 = 0u;
    global3 = -29273i;
    var var_1 = func_1(vec4<i32>(_wgslsmith_sub_i32(1i, 0i), ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, countOneBits(0i), i32(-1i) * -9360i, 43268i), vec4<i32>(1i, 1i, 1i, 1i)), countOneBits(abs(-34480i))));
    global2 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, u_input.b, u_input.a.x, 0u), ~vec4<u32>(var_0, 1u, 81540u, u_input.a.x)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 39223u), min(vec4<u32>(6895u, u_input.b, 56143u, 1u), vec4<u32>(65337u, u_input.b, u_input.b, var_0))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(3175u, u_input.b, 100141u, u_input.a.x)), vec4<u32>(u_input.b, 49386u, 4294967295u, 0u) & vec4<u32>(13804u, var_0, 34589u, u_input.b), vec4<u32>(21185u, 1u, 21607u, u_input.a.x) ^ vec4<u32>(var_0, u_input.a.x, 51247u, u_input.b)) << (min(~vec4<u32>(4294967295u, var_0, 18306u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) % vec4<u32>(32u))));
}

