struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(199f), Struct_1(176f), Struct_1(-482f), Struct_1(1236f), Struct_1(-1000f), Struct_1(432f), Struct_1(-1000f), Struct_1(-2038f), Struct_1(1814f), Struct_1(817f), Struct_1(-1654f), Struct_1(-766f));

var<private> global1: Struct_3 = Struct_3(vec4<u32>(1009u, 1u, 4151u, 1u), -537f, 1u, vec4<f32>(819f, 1395f, -643f, 172f), 16408u);

var<private> global2: i32 = 58395i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 12>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-578f - arg_1.a.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-618f * arg_0.a.a)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(243f))))));
    return firstTrailingBit(u_input.b);
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_u32(12522u, max(5268u, ~_wgslsmith_mult_u32(arg_0, 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, global1.b)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d.xw))));
    var var_2 = global0[_wgslsmith_index_u32(13927u, 12u)];
    global1 = Struct_3(_wgslsmith_mod_vec4_u32(~vec4<u32>(7373u, 4294967295u, 30338u, var_0), select(~global1.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, var_0, 1u, 0u), global1.a, global1.a), vec4<bool>(true, true, true, true))) | abs(global1.a), -169f, ~(~func_3(Struct_2(Struct_1(835f), global0[_wgslsmith_index_u32(0u, 12u)], Struct_1(global1.b), vec3<bool>(true, true, false), 1585f), Struct_2(global0[_wgslsmith_index_u32(var_0, 12u)], Struct_1(var_1.x), Struct_1(var_2.a), vec3<bool>(true, false, true), 1307f))), global1.d, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~79635u, select(u_input.b, var_0, true), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, var_0, 4294967295u), vec3<u32>(4294967295u, 1u, u_input.a))), ~global1.a), 1u));
    return vec3<bool>(20142u > _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global1.a.yz, vec2<u32>(27628u, 0u)), ~arg_0), true | (_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * 347f) - var_1.x)), true);
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> u32 {
    let var_0 = !func_2(89809u);
    global2 = 1i;
    global0 = array<Struct_1, 12>();
    let var_1 = global0[_wgslsmith_index_u32(~(~51788u | ~_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.a.yyz), ~arg_1.a.yyy)), 12u)];
    let var_2 = global0[_wgslsmith_index_u32(56138u, 12u)];
    return countOneBits(u_input.a ^ 0u);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    global2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(-(~(-1i))), 2147483647i, _wgslsmith_add_i32(reverseBits(5802i), ~(-42589i))), firstTrailingBit(0i));
    global2 = 1i;
    global2 = min(0i, -(~abs(-1i)));
    let var_0 = Struct_1(global1.d.x);
    var var_1 = _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(countOneBits(27326i), select(11100i, -527i, false)) | max(1i, min(-2147483647i, 27620i))) >> (global1.a.x % 32u);
    return Struct_3(global1.a, var_0.a, global1.c, global1.d, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -3798i;
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * 493f), global1.d.x, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)))))), func_1(true, Struct_3(~(~global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(370f * 2522f) - -560f), 30765u, vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(floor(-278f)), global1.d.x, -1000f), min(countOneBits(global1.e), abs(u_input.a)))));
    var var_1 = true;
    var var_2 = firstTrailingBit(var_0.a.ww);
    let var_3 = var_0.d.x <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b)));
    var var_4 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_clamp_i32(~(-48859i), ~3482i, ~0i), firstLeadingBit(i32(-1i) * -3559i), 0i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -39147i, -13290i), ~vec3<i32>(57511i, -55336i, -24496i)) << (~(~vec3<u32>(0u, u_input.b, 4294967295u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, var_4.x, _wgslsmith_f_op_vec3_f32(ceil(global1.d.yzy)), var_4.x);
}

