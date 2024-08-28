struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(413f, -1336f, -515f), vec3<f32>(488f, -1600f, 1095f), vec3<f32>(2120f, 1869f, 730f), vec3<f32>(482f, 240f, -614f), vec3<f32>(289f, 862f, 1897f), vec3<f32>(1000f, -187f, -2354f), vec3<f32>(-803f, -519f, 1334f), vec3<f32>(731f, -792f, 196f), vec3<f32>(1000f, 553f, 192f), vec3<f32>(-619f, -1000f, -951f), vec3<f32>(-442f, -347f, 425f), vec3<f32>(-658f, -106f, 818f), vec3<f32>(-1138f, -856f, -510f));

var<private> global1: array<vec3<bool>, 29>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = -arg_0.x;
    var var_1 = any(vec3<bool>(any(!select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(true, true, arg_1.x, arg_1.x), true)), !all(arg_1.xz), true & arg_1.x));
    let var_2 = ~select(vec2<i32>(~reverseBits(u_input.b), u_input.b), arg_0.xy ^ _wgslsmith_add_vec2_i32(u_input.d, arg_0.zx), all(select(arg_1.yy, !vec2<bool>(arg_1.x, arg_1.x), select(arg_1.zy, vec2<bool>(arg_1.x, false), arg_1.x))));
    var var_3 = Struct_3(vec2<u32>(arg_2.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, u_input.a), u_input.a), 4294967295u)));
    let var_4 = Struct_2(u_input.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - -1589f))))));
}

fn func_2() -> u32 {
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    let var_0 = Struct_3(vec2<u32>(~u_input.a ^ 1u, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.b, u_input.d.x, 2147483647i), vec3<bool>(false, true, true), vec2<u32>(var_0.a.x, 68105u))) * -330f) + -1278f), -733f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-564f, 1289f)), _wgslsmith_f_op_f32(f32(-1f) * -582f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(0u, 13u)] * vec3<f32>(-640f, 342f, 1309f)), vec3<f32>(-596f, -1961f, 148f), all(vec4<bool>(true, false, false, true)))))))));
    return firstLeadingBit(_wgslsmith_mult_u32(abs(var_0.a.x), ~(u_input.a & min(var_0.a.x, 7422u))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = ~(~(~(vec3<u32>(0u, arg_0.a, 16359u) | (vec3<u32>(10182u, arg_0.a, 64342u) << (vec3<u32>(u_input.a, arg_0.a, u_input.a) % vec3<u32>(32u))))));
    var var_1 = var_0.x;
    global1 = array<vec3<bool>, 29>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1771f, -1451f, 292f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(261f, -260f, 768f) + vec3<f32>(-191f, 770f, 853f))))))));
    var var_3 = func_2() >= (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 32828u) << (firstTrailingBit(var_0) % vec3<u32>(32u)), var_0 | (vec3<u32>(u_input.a, 0u, 1u) & var_0)) & ~60789u);
    return Struct_4(~(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 2147483647i), u_input.d))), Struct_3(~(~var_0.yz) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, arg_0.a), var_0.yz) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_3(select(_wgslsmith_add_vec2_u32(vec2<u32>(~arg_0.b.a.x, select(17136u, 5599u, false)), ~(~arg_0.b.a)), arg_0.b.a | _wgslsmith_mult_vec2_u32(arg_0.b.a, _wgslsmith_mult_vec2_u32(vec2<u32>(41479u, u_input.a), arg_0.b.a)), false | ((arg_1.x > -1000f) && (u_input.b >= u_input.d.x))));
    var var_1 = firstTrailingBit(vec3<i32>(2147483647i, _wgslsmith_mult_i32(arg_0.a.x, firstTrailingBit(arg_0.a.x)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b), 41489i, u_input.b)));
    let var_2 = func_1(Struct_1(~(~u_input.a), vec4<bool>(false, true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), select(true, false, true)))).b;
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    return _wgslsmith_dot_vec4_i32(~(select(vec4<i32>(1i, u_input.c, -31910i, -2147483647i), vec4<i32>(0i, 0i, 19678i, -34914i), vec4<bool>(false, true, true, true)) & abs(vec4<i32>(arg_0.a.x, var_1.x, -15345i, arg_0.a.x))), abs(vec4<i32>(firstLeadingBit(u_input.c), u_input.b, arg_0.a.x, -arg_0.a.x))) ^ 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    let var_0 = 13496u;
    var var_1 = ~select(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 2109i, u_input.c, u_input.b), vec4<i32>(-1i, u_input.c, 25113i, -15288i)), vec4<i32>(abs(max(7175i, -3356i)), func_4(func_1(Struct_1(0u, vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1000f)))), ~u_input.d.x, -1i), any(select(select(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], false), vec3<bool>(false, true, true), true)));
    let var_2 = Struct_4(vec2<i32>(-1i, -22419i), Struct_3(vec2<u32>(0u, 56809u)));
    var_1 = vec4<i32>(2147483647i << (~firstTrailingBit(24945u) % 32u), 7518i, _wgslsmith_mult_i32(reverseBits(var_2.a.x >> (13466u % 32u)), _wgslsmith_mult_i32(-var_1.x, var_2.a.x)), -(i32(-1i) * -1i) << (u_input.a % 32u)) << (vec4<u32>(var_0 & abs(var_0), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 77051u), vec2<u32>(u_input.a, 1u) & vec2<u32>(4294967295u, 3179u)), func_1(Struct_1(8374u, vec4<bool>(true, false, false, false))).b.a.x), 0u, _wgslsmith_add_u32(max(var_0, var_0) << (reverseBits(34159u) % 32u), 1u)) % vec4<u32>(32u));
    let var_3 = func_1(Struct_1(u_input.a, !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true))));
    let var_4 = _wgslsmith_div_u32(~firstLeadingBit(max(_wgslsmith_mod_u32(1u, var_2.b.a.x), ~1u)), firstTrailingBit((0u | (var_2.b.a.x | 1u)) & abs(99505u)));
    let var_5 = !(var_3.b.a.x == 5359u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1822f), min(~(~vec3<u32>(var_4, 70507u, 4294967295u)), vec3<u32>(select(~4294967295u, ~var_3.b.a.x, var_5), countOneBits(var_0), var_2.b.a.x)), func_4(func_1(Struct_1(_wgslsmith_mod_u32(var_0, var_3.b.a.x), !vec4<bool>(var_5, var_5, var_5, var_5))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, 596f)))))), _wgslsmith_sub_vec3_u32(~select(vec3<u32>(var_3.b.a.x, 6233u, var_4) << (vec3<u32>(1u, 18020u, var_2.b.a.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b.a.x, 103281u, var_4), vec3<u32>(var_0, u_input.a, var_2.b.a.x)), vec3<bool>(false, var_5, var_5)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, u_input.a, 10753u)), reverseBits(vec3<u32>(1u, 13125u, var_2.b.a.x))), ~(~vec3<u32>(58491u, 14542u, var_2.b.a.x)))), var_0);
}

