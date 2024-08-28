struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(26771u, 18384u, 68355u), vec3<u32>(1u, 68341u, 18427u), vec3<u32>(12834u, 1u, 23463u), vec3<u32>(0u, 720u, 4294967295u), vec3<u32>(85724u, 4541u, 1u), vec3<u32>(60071u, 1u, 63705u), vec3<u32>(4294967295u, 48991u, 46228u), vec3<u32>(10238u, 29174u, 4294967295u), vec3<u32>(4294967295u, 130724u, 1u), vec3<u32>(16203u, 43672u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 23559u), vec3<u32>(35314u, 1u, 36293u), vec3<u32>(16898u, 4294967295u, 1u), vec3<u32>(0u, 52009u, 40990u), vec3<u32>(0u, 89850u, 4294967295u), vec3<u32>(5282u, 6792u, 0u), vec3<u32>(17313u, 1u, 4294967295u));

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> i32 {
    return -u_input.a;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = arg_0.a.x ^ -u_input.a;
    global0 = array<vec3<u32>, 18>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(108f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1580f)))), arg_0, select(arg_1.yz, !(!arg_1.zx), !(!all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))));
    var var_2 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(firstLeadingBit(0u >> (1u % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b.x, global1.x), 7u)], firstTrailingBit(_wgslsmith_mod_u32(global1.x, 0u)), countOneBits(~global2[_wgslsmith_index_u32(u_input.c, 7u)]))), abs(reverseBits(vec4<u32>(0u, global1.x, u_input.b.x, global2[_wgslsmith_index_u32(23805u, 7u)]) ^ ~u_input.b)));
    global1 = max(~vec2<u32>(~(~29743u), ~global1.x | (45759u << (1u % 32u))), ~(~_wgslsmith_mod_vec2_u32(var_2.xz, _wgslsmith_div_vec2_u32(vec2<u32>(4860u, global2[_wgslsmith_index_u32(55531u, 7u)]), var_2.wy))));
    return (vec2<u32>(var_2.x, u_input.d) << (~countOneBits(select(u_input.b.zw, u_input.b.yx, arg_1.x)) % vec2<u32>(32u))) | ~var_2.xx;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = -firstTrailingBit(firstLeadingBit(arg_1.a.xzx));
    let var_1 = Struct_1(1i, -select(~(-vec3<i32>(arg_1.a.x, -11490i, arg_1.a.x)), u_input.e, select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true), true)), vec3<u32>(~(~(global2[_wgslsmith_index_u32(41341u, 7u)] & 1u)), global1.x, func_3(arg_1, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)).x | _wgslsmith_dot_vec2_u32(vec2<u32>(93448u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)]), _wgslsmith_mult_vec2_u32(arg_2, vec2<u32>(1u, global1.x)))), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b) - vec4<f32>(arg_1.b, arg_1.b, 409f, -314f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-434f, -579f, arg_1.b, 1024f), vec4<f32>(arg_1.b, 3083f, -1183f, arg_1.b), vec4<bool>(false, false, true, true)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2126f))), arg_1.b)));
    let var_2 = _wgslsmith_f_op_f32(-var_1.e.x);
    var var_3 = _wgslsmith_mod_i32(firstLeadingBit(abs(-38725i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(32753u, 0u), arg_2) % 32u)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_1.b.zx, vec2<i32>(27686i, 16295i)), -vec2<i32>(var_1.a, arg_1.a.x)), arg_1.a.zw), reverseBits(var_1.d));
    var var_4 = select(~(-_wgslsmith_clamp_vec3_i32(-arg_1.a.wyx, ~vec3<i32>(0i, u_input.e.x, u_input.a), select(u_input.e, u_input.e, false))), arg_1.a.yzx, vec3<bool>(true, true, true));
    return vec3<i32>(~_wgslsmith_dot_vec2_i32(-select(vec2<i32>(-2147483647i, 53844i), var_0.yx, vec2<bool>(true, true)), var_0.yy), _wgslsmith_add_i32(var_1.d, _wgslsmith_dot_vec3_i32(arg_1.a.zwx, ~var_1.b)), arg_0);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<vec3<u32>, 18>();
    let var_0 = 26574u;
    global0 = array<vec3<u32>, 18>();
    global2 = array<u32, 7>();
    let var_1 = arg_1.x;
    return Struct_2(false, Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-arg_1.xzz, _wgslsmith_div_vec3_i32(vec3<i32>(-9450i, arg_1.x, arg_1.x), arg_1.xyx)), _wgslsmith_sub_i32(arg_1.x, var_1)), abs(func_4(abs(u_input.e.x), Struct_3(arg_1, -1000f), func_3(Struct_3(vec4<i32>(-27810i, var_1, 54073i, -14320i), -1000f), vec3<bool>(arg_0.x, false, false)))), vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(var_0), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global1.x, 7u)], 1u)), ~global1.x, firstTrailingBit(1u)), ~select(0i, 1i << (1u % 32u), any(vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1772f, -502f, -1000f, 1383f))))))), 4294967295u != reverseBits(global1.x), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(709f, -579f) - vec2<f32>(-476f, -1122f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, -1849f)))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    let var_0 = -arg_3.x <= arg_3.x;
    var var_1 = vec4<f32>(arg_2.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(213f * arg_2.b.e.x))))), arg_2.b.e.x, -287f);
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, 2147483647i), _wgslsmith_div_vec2_i32(~(-_wgslsmith_mult_vec2_i32(arg_0.xx, vec2<i32>(u_input.e.x, -58112i))), arg_2.b.b.yy));
    let var_3 = Struct_4(arg_2.e.x, Struct_3(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_3, arg_3), arg_1.b.d, arg_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.x, 0i, var_2.x), vec3<i32>(arg_0.x, 35079i, -36392i), vec3<i32>(var_2.x, arg_0.x, arg_3.x)), vec3<i32>(arg_1.b.a, arg_0.x, -1i) >> (vec3<u32>(global1.x, 0u, 0u) % vec3<u32>(32u)))), _wgslsmith_div_f32(func_2(vec2<bool>(true, true), vec4<i32>(arg_3.x, arg_0.x, -2147483647i, arg_1.b.b.x)).e.x, -836f)), !(!select(select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), var_0), vec2<bool>(var_0, arg_1.c), vec2<bool>(false, false))));
    let var_4 = Struct_2(var_0, func_2(vec2<bool>(arg_1.b.a >= _wgslsmith_clamp_i32(-4815i, -41259i, arg_2.b.a), u_input.e.x >= (arg_3.x >> (1u % 32u))), var_3.b.a).b, true, select(false == arg_1.a, !all(vec3<bool>(true, true, false)), !(arg_1.c || false) || (!arg_1.d && (var_1.x >= var_3.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.b.e.wz, var_1.zy, var_3.c)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b.e.x * -139f))), _wgslsmith_f_op_f32(ceil(285f)))));
    return 33652i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i);
    var var_1 = !(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_sub_i32(-15419i, u_input.e.x << (6770u % 32u))) <= u_input.e.x);
    var var_2 = Struct_1(u_input.a, vec3<i32>(-func_1(u_input.e.x, Struct_4(-1115f, Struct_3(vec4<i32>(u_input.a, u_input.a, -29455i, 2147483647i), 1197f), vec2<bool>(true, false))), 8872i, u_input.e.x), ~reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(36941u, 7u)] & 1u, global1.x << (global1.x % 32u), 48504u)), firstTrailingBit(_wgslsmith_mult_i32(-(i32(-1i) * -26077i), func_5(min(u_input.e, u_input.e), Struct_2(false, Struct_1(24800i, vec3<i32>(34514i, 1i, u_input.a), vec3<u32>(4294967295u, u_input.b.x, 15244u), -21408i, vec4<f32>(676f, -1185f, 371f, -175f)), false, false, vec2<f32>(-1000f, -461f)), func_2(vec2<bool>(false, false), vec4<i32>(-58705i, u_input.e.x, u_input.a, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(26852i, 0i, 13610i, u_input.e.x), vec4<i32>(0i, -30198i, -3730i, -11227i))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(205f, 513f, 1081f, -1453f) * vec4<f32>(819f, -1157f, 1195f, 1197f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(845f, _wgslsmith_f_op_f32(step(648f, 283f)), 1860f, func_2(vec2<bool>(true, false), vec4<i32>(1i, -2147483647i, u_input.a, u_input.e.x)).b.e.x))))));
    var var_3 = ~_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(firstTrailingBit(u_input.c)), global1.x), max(~_wgslsmith_mult_vec2_u32(u_input.b.zx, u_input.b.yx), var_2.c.zx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1131f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x + var_2.e.x))))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, var_2.c.x), reverseBits(global2[_wgslsmith_index_u32(4294967295u, 7u)])));
}

