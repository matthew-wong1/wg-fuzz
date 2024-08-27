struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(41215u, 0u, 10201u);

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(i32(-2147483648), 5454u, vec2<f32>(-1000f, -364f), Struct_1(vec4<u32>(1u, 21540u, 1u, 1u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec2<i32>(i32(-2147483648), 1i)), vec2<f32>(1563f, -168f)), Struct_2(-1i, 7822u, vec2<f32>(136f, -953f), Struct_1(vec4<u32>(1u, 4380u, 1u, 194u), vec4<u32>(27278u, 4294967295u, 4294967295u, 28460u), vec2<i32>(1i, -51746i)), vec2<f32>(-1323f, -1000f)), Struct_2(-16479i, 1u, vec2<f32>(926f, -589f), Struct_1(vec4<u32>(48382u, 34414u, 88282u, 1u), vec4<u32>(1u, 4294967295u, 1u, 23464u), vec2<i32>(-1i, 28369i)), vec2<f32>(1000f, -1247f)), Struct_2(-33172i, 1u, vec2<f32>(-958f, -374f), Struct_1(vec4<u32>(656u, 1u, 3573u, 33403u), vec4<u32>(1u, 0u, 27873u, 0u), vec2<i32>(i32(-2147483648), i32(-2147483648))), vec2<f32>(857f, -734f)), Struct_2(2147483647i, 1u, vec2<f32>(191f, 811f), Struct_1(vec4<u32>(14641u, 106838u, 0u, 1u), vec4<u32>(0u, 13857u, 84140u, 43593u), vec2<i32>(0i, 0i)), vec2<f32>(-1776f, 699f)), Struct_2(2173i, 4294967295u, vec2<f32>(-576f, 188f), Struct_1(vec4<u32>(19629u, 1u, 2423u, 20068u), vec4<u32>(39889u, 15558u, 17673u, 10670u), vec2<i32>(23196i, 2147483647i)), vec2<f32>(-1309f, 1989f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = select(abs(~vec3<u32>(arg_0, global0.x, 18227u) >> (vec3<u32>(59728u, 0u, arg_0) % vec3<u32>(32u))) | ~(~vec3<u32>(4294967295u, 4294967295u, 37571u)), ~vec3<u32>(0u, ~3742u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 80460u, 10048u, global0.x), vec4<u32>(35543u, 8267u, arg_0, 4294967295u)), ~(~u_input.b)), select(vec3<bool>(!all(vec3<bool>(true, true, true)), false, true), vec3<bool>(all(vec3<bool>(true, true, true)), ~(-43759i) == -u_input.a.x, true), vec3<bool>(!all(vec2<bool>(false, true)), true, true)));
    var var_0 = ~(-u_input.d.x);
    let var_1 = Struct_3(42503u, Struct_1(select(~(~vec4<u32>(0u, u_input.b, global0.x, u_input.b)), ~(~vec4<u32>(54950u, 4294967295u, global0.x, arg_0)), all(vec2<bool>(false, true)) | true), vec4<u32>(46274u, _wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(19321u, 73638u, 4294967295u)), firstLeadingBit(u_input.b) | _wgslsmith_add_u32(arg_0, u_input.b), global0.x << (~0u % 32u)), -_wgslsmith_add_vec2_i32(countOneBits(u_input.a.yz), abs(vec2<i32>(u_input.c.x, u_input.d.x)))));
    let var_2 = Struct_2(22281i, _wgslsmith_add_u32(u_input.b, arg_0), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-459f + 735f))))), 454f), var_1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), 1514f));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.e.x - -481f)))) - 1000f));
    return _wgslsmith_clamp_vec3_u32(~var_1.b.b.xxx, select(abs(~var_2.d.b.xyz), vec3<u32>(firstTrailingBit(~var_2.b), ~abs(0u), 16221u), global0.x > abs(reverseBits(var_2.d.b.x))), ~reverseBits(var_2.d.b.wyy));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = vec4<bool>(!any(vec3<bool>(arg_0.x, true, true)), true, arg_3.x, !(!any(select(arg_0.yx, vec2<bool>(arg_3.x, arg_3.x), arg_3.x))));
    global0 = vec3<u32>(0u, 1u, firstTrailingBit(0u));
    var var_1 = ~(~(~vec3<u32>(76182u, 4294967295u, 58724u)) & ~vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(global0.x, 13138u, global0.x)), u_input.b));
    var var_2 = var_0.x;
    global1 = array<Struct_2, 6>();
    return func_3(0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> vec4<f32> {
    let var_0 = Struct_2(min(abs(reverseBits(-7049i)), i32(-1i) * -u_input.d.x) | -(~2147483647i << (~u_input.b % 32u)), firstTrailingBit(firstLeadingBit(func_3(arg_0.x).x)) >> ((u_input.b << (1888u % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3, arg_3), vec2<f32>(arg_2.x, arg_2.x))) - _wgslsmith_div_vec2_f32(arg_2, vec2<f32>(-352f, -979f))), vec2<f32>(_wgslsmith_div_f32(1045f, -458f), _wgslsmith_f_op_f32(-1756f + arg_3))), arg_2)), Struct_1(~vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), arg_0.x, arg_0.x, 54650u), abs(vec4<u32>(_wgslsmith_clamp_u32(27070u, 41611u, global0.x), 85960u, _wgslsmith_mult_u32(1u, u_input.b), 68516u)), u_input.d.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -304f)));
    let var_1 = Struct_1(var_0.d.b, var_0.d.a, vec2<i32>(~(-2147483647i), u_input.d.x));
    var var_2 = var_0.d;
    let var_3 = arg_2.x;
    var var_4 = Struct_1(_wgslsmith_mod_vec4_u32(abs(var_1.b), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, arg_0.x, global0.x), vec4<u32>(global0.x, var_0.d.a.x, 1u, u_input.b)), ~u_input.b, firstTrailingBit(93588u), reverseBits(global0.x))), firstTrailingBit(select(~var_0.d.b, min(~var_1.a, vec4<u32>(var_1.a.x, u_input.b, var_0.b, var_1.a.x) | var_1.a), any(select(arg_1, vec2<bool>(arg_1.x, true), arg_1)))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.c.x, 20430i), _wgslsmith_mod_i32(-u_input.d.x, var_2.c.x)), _wgslsmith_dot_vec2_i32(select(var_1.c ^ vec2<i32>(-78982i, var_2.c.x), var_1.c, true), var_1.c)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, arg_3, var_3, -151f)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> u32 {
    global0 = vec3<u32>(1647u, select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_1.b.a, vec4<u32>(global0.x, u_input.b, 20269u, 1u)), ~u_input.b), global0.x, arg_2), firstTrailingBit(4294967295u));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_4(func_2(!vec4<bool>(arg_2, false, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -901f, arg_3, -924f) + vec4<f32>(arg_3, 1000f, -1542f, arg_3)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.d.x), vec2<i32>(-10554i, 20539i)), !vec2<bool>(arg_2, arg_2)), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), 427f), arg_3)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 + 402f))), 482f, -700f, arg_3))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, -1626f, 170f, -267f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -457f, arg_3, arg_3) + vec4<f32>(arg_3, 1000f, arg_3, arg_3)))))));
    var var_1 = _wgslsmith_add_i32(-9934i, -29688i);
    let var_2 = select(select(select(select(!vec4<bool>(false, false, true, arg_2), select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(true, false, arg_2, false), arg_2), arg_2), !(!vec4<bool>(true, true, true, arg_2)), true), vec4<bool>(all(vec2<bool>(true, true)), true && any(vec4<bool>(true, true, false, false)), false, any(!vec4<bool>(arg_2, arg_2, true, false))), !(!(!vec4<bool>(arg_2, false, arg_2, arg_2)))), select(!(!(!vec4<bool>(true, arg_2, arg_2, false))), select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2, false, arg_2, arg_2), select(arg_2, arg_2, arg_2)), !arg_2), all(vec3<bool>(false, arg_2, false)) != !(!arg_2)), select(arg_2, false, true));
    var var_3 = ~(~vec3<u32>(u_input.b, 0u, 25576u));
    return arg_1.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(4190u, 4294967295u, _wgslsmith_div_u32(global0.x, ~(~global0.x)));
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    global0 = ~(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 68848u, 4294967295u) ^ vec3<u32>(global0.x, 1u, 27879u), ~vec3<u32>(0u, 8658u, 49318u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9724u, 36621u, u_input.b), vec3<u32>(global0.x, u_input.b, global0.x)), _wgslsmith_sub_u32(u_input.b, global0.x), func_1(-1i, Struct_3(0u, Struct_1(vec4<u32>(1194u, 1u, u_input.b, global0.x), vec4<u32>(global0.x, global0.x, 4948u, global0.x), vec2<i32>(1i, -2147483647i))), false, -1286f))) & (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global0.x, global0.x), ~vec3<u32>(global0.x, u_input.b, global0.x)) << (_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(18655u, 4294967295u, global0.x)), vec3<u32>(global0.x, 0u, global0.x) ^ vec3<u32>(0u, global0.x, 1u)) % vec3<u32>(32u))));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, u_input.b), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(var_0.d.a.xxz, select(vec3<u32>(45929u, global0.x, 4294967295u), vec3<u32>(global0.x, 4294967295u, 4319u), false)) ^ var_0.d.b.zxw);
}

