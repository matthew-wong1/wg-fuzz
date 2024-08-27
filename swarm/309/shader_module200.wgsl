struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(69209u, 0u, 13319u, 73164u), vec4<i32>(-1i, -35943i, 2147483647i, 0i), Struct_1(vec3<i32>(i32(-2147483648), 57826i, -18664i), 0u, vec3<bool>(false, false, false), 46500i, 47512u), Struct_1(vec3<i32>(i32(-2147483648), 1i, -52904i), 16554u, vec3<bool>(true, true, false), 34735i, 4294967295u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = global1.c;
    var_0 = Struct_1(_wgslsmith_mult_vec3_i32(-(~_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(46567i, 32490i, global1.d.a.x))), _wgslsmith_mod_vec3_i32(var_0.a, abs(-global1.d.a))), u_input.b.x, vec3<bool>((global0[_wgslsmith_index_u32(_wgslsmith_add_u32(130363u, 5216u), 27u)] & all(vec3<bool>(global1.d.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global1.d.c.x))) | global1.d.c.x, true, var_0.c.x || true), var_0.d, 1u);
    let var_1 = -(~_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global1.c.d, 80565i, var_0.d, -1i), global1.b), ~global1.b));
    return !vec2<bool>(_wgslsmith_dot_vec4_i32(min(global1.b, vec4<i32>(-53077i, 2147483647i, -9796i, 0i)), -global1.b) > 2147483647i, false);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    let var_0 = arg_1.c;
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global1 = Struct_2(~arg_1.a, _wgslsmith_div_vec4_i32(vec4<i32>(-5475i, -1i, _wgslsmith_add_i32(0i, -1i), global1.d.d), _wgslsmith_mult_vec4_i32(min(vec4<i32>(14992i, -39440i, var_0.a.x, -11253i), arg_1.b), vec4<i32>(1i, 1i, arg_2.x, var_0.a.x) | global1.b)) | ~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, -27142i, var_0.d, 39675i), vec4<i32>(arg_1.b.x, 1i, -1i, -1i), global1.b), vec4<i32>(-1i, u_input.d, arg_2.x, arg_1.c.a.x)), arg_1.c, Struct_1(vec3<i32>(_wgslsmith_mod_i32(1i, arg_2.x) ^ ~global1.c.a.x, _wgslsmith_add_i32(u_input.d, _wgslsmith_div_i32(arg_1.d.a.x, 27964i)), global1.d.a.x), ~min(1u, var_0.e & global1.a.x), !arg_1.d.c, u_input.c, 81321u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(108f, 922f, _wgslsmith_div_f32(1220f, -649f), 142f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(545f, 1000f, -340f, -499f)))))));
    return ~(~0u) >> (1u % 32u);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec3<i32> {
    global0 = array<bool, 27>();
    let var_0 = !select(select(!select(vec2<bool>(global1.c.c.x, false), global1.c.c.xz, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), global1.c.c.yx, select(global1.d.c.yx, select(global1.d.c.yz, global1.c.c.yy, true), !global1.c.c.zz)), vec2<bool>(all(func_2(20333u)), (true || global1.d.c.x) && global1.c.c.x), vec2<bool>(true, select(any(vec3<bool>(true, false, true)), false, false)));
    global1 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(54416u, 37224u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.b, select(arg_3, 4294967295u, global1.d.c.x), 1u, ~u_input.a), global1.a), 10069u, min(~func_3(global1.a, Struct_2(global1.a, vec4<i32>(48589i, global1.b.x, global1.b.x, 20794i), global1.c, global1.d), vec4<i32>(arg_2.a, global1.c.a.x, arg_2.a, -9955i)), arg_3)), global1.b, global1.d, Struct_1(_wgslsmith_mult_vec3_i32(global1.c.a & _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a, global1.b.x, global1.c.a.x), global1.d.a), global1.b.xyz), arg_3, vec3<bool>(true, true, any(vec3<bool>(true, true, true))), min(arg_2.a, -2147483647i), global1.a.x));
    let var_1 = Struct_2(vec4<u32>(63683u, _wgslsmith_dot_vec4_u32(max(global1.a, vec4<u32>(arg_3, global1.c.e, u_input.a, 0u)) & ~global1.a, vec4<u32>(45024u, 4294967295u, u_input.a, 0u) | vec4<u32>(global1.a.x, 84434u, arg_3, 1u)), ~1u, abs(~(arg_3 ^ 69871u))), vec4<i32>(2147483647i, -_wgslsmith_mult_i32(global1.b.x, firstTrailingBit(arg_2.a)), ~0i, ~countOneBits(1i)), global1.d, Struct_1(global1.d.a, 11255u, select(vec3<bool>(false, !global0[_wgslsmith_index_u32(arg_3, 27u)], var_0.x | false), select(select(vec3<bool>(true, true, false), global1.d.c, global1.d.c.x), select(global1.c.c, global1.d.c, global1.d.c), vec3<bool>(global1.d.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global1.c.c.x)), !global1.d.c), -5163i, countOneBits(reverseBits(13148u))));
    let var_2 = global1.d.c;
    return -global1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -25417i;
    global1 = Struct_2(vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.yy), u_input.b.x, firstTrailingBit(~global1.c.e), 76409u) | ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, u_input.b.x, global1.c.b, u_input.a), vec4<u32>(195u, global1.c.e, u_input.a, 9901u)), _wgslsmith_div_vec4_u32(vec4<u32>(11034u, 32065u, 21853u, u_input.b.x), global1.a)), -(~(~global1.b)) | global1.b, Struct_1(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, u_input.c, -2147483647i), global1.b.wxx), func_1(vec4<f32>(-1820f, 1461f, -697f, -483f), Struct_3(global1.b.x, vec3<f32>(-767f, -426f, -974f)), Struct_3(16894i, vec3<f32>(-460f, 600f, 127f)), 4899u))), 1u, global1.d.c, -11780i, abs(~(~24491u))), global1.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1549f, -970f, 163f) - vec3<f32>(-451f, 720f, -475f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1986f, -571f, -424f), vec3<f32>(-1037f, 1646f, 715f), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global1.c.c.x, global1.d.c.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, -1000f, 1151f) - vec3<f32>(-2101f, -733f, 1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1011f, 1350f), vec3<f32>(103f, -1086f, -869f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, -1038f, -450f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-738f, 1683f, var_1.x), vec3<f32>(var_1.x, var_1.x, -603f), global1.c.c))))))));
    var var_3 = true;
    let var_4 = Struct_2(countOneBits(global1.a << (_wgslsmith_add_vec4_u32(global1.a, global1.a | global1.a) % vec4<u32>(32u))), global1.b, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 38507i, global1.c.a.x), vec3<i32>(reverseBits(global1.d.d), _wgslsmith_div_i32(-2782i, u_input.c), u_input.d)), abs(u_input.b.x | 26925u), vec3<bool>(true, true, true), reverseBits(_wgslsmith_dot_vec2_i32(abs(global1.c.a.yz), global1.d.a.xx)), u_input.b.x), global1.d);
    let var_5 = var_2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(19781u, _wgslsmith_add_u32(countOneBits(u_input.a), _wgslsmith_div_u32(u_input.b.x, global1.c.b)), min(u_input.a, var_4.a.x) >> (max(4294967295u, 44624u) % 32u))), _wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(-1000f - var_2.x))))), firstTrailingBit(global1.b.ww), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1467f, var_2.x, -1000f)))), _wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_5.x + var_5.x))))));
}

