struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

var<private> global0: array<bool, 13>;

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(-abs(vec2<i32>(abs(-2147483647i), -2147483647i)), Struct_2(vec2<i32>(firstTrailingBit(24753i), -1i)));
    global1 = array<Struct_1, 13>();
    let var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(u_input.b.x, countOneBits(max(u_input.b.x, u_input.a))), 5527u << (1u % 32u)), 13u)];
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    return Struct_3(var_0.b, var_0.a.x, ~(-(vec2<i32>(var_0.b.a.x, var_0.b.a.x) ^ var_0.b.a)) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), ~u_input.b.yz, vec2<u32>(u_input.b.x, 0u) ^ vec2<u32>(9484u, 1u)) % vec2<u32>(32u)), vec4<i32>(-1i) * -reverseBits(~vec4<i32>(16297i, -1i, var_0.b.a.x, var_0.b.a.x)), vec4<bool>(false, var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -445f))) == -2069f, firstLeadingBit(var_0.b.a.x) != ~var_0.a.x));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32) -> Struct_3 {
    let var_0 = firstTrailingBit(arg_0.a.a);
    global0 = array<bool, 13>();
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    global1 = array<Struct_1, 13>();
    let var_0 = !func_2().e.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(602f + _wgslsmith_f_op_f32(ceil(-1348f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-444f)) + _wgslsmith_f_op_f32(f32(-1f) * -299f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) + _wgslsmith_f_op_f32(step(-1000f, -1293f)))), _wgslsmith_f_op_f32(floor(-502f)), global0[_wgslsmith_index_u32(~u_input.a, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1615f))));
    var var_2 = max(-func_3(arg_0, ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a) ^ vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.a), ~35245u).d.yzz, arg_0.d.ywz);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-10360i, arg_0.a.a.x)), arg_0.d.yw), abs(vec2<i32>(-1i) * -arg_0.a.a)), min(func_3(func_2(), _wgslsmith_mult_vec4_u32(vec4<u32>(25271u, 63876u, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.a, 15672u)) >> (abs(vec4<u32>(48298u, u_input.b.x, 34952u, 112138u)) % vec4<u32>(32u)), _wgslsmith_sub_u32(16370u, u_input.a ^ u_input.b.x)).d.x, ~(~(~arg_0.b))));
    return func_3(Struct_3(func_2().a, -var_2.x & (2147483647i << (u_input.b.x % 32u)), arg_0.d.xz & ~abs(arg_0.c), vec4<i32>(_wgslsmith_add_i32(select(arg_0.d.x, 1i, arg_0.e.x), _wgslsmith_mod_i32(arg_1.b.a.x, arg_0.b)), -30613i, var_2.x, ~1i), vec4<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], false, arg_0.e.x, true)) | global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(0u, u_input.a), u_input.a >> (20774u % 32u), arg_0.e.x), 13u)], var_0)), firstTrailingBit(~vec4<u32>(max(u_input.b.x, u_input.b.x), u_input.a, 29387u, select(u_input.a, 60802u, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), ~(~abs(1u | u_input.b.x))).a;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = arg_1.x;
    let var_1 = func_4(func_3(func_2(), vec4<u32>(4294967295u, ~11373u, _wgslsmith_mult_u32(u_input.a, u_input.a), 0u), u_input.a), Struct_4(~_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, arg_1.x), vec2<i32>(arg_1.x, arg_1.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false)), _wgslsmith_mult_vec2_i32(arg_1.zx, arg_1.xx)), func_3(Struct_3(Struct_2(arg_1.yx), _wgslsmith_add_i32(arg_1.x, 39426i), _wgslsmith_add_vec2_i32(vec2<i32>(4857i, 0i), vec2<i32>(-12374i, arg_1.x)), firstLeadingBit(vec4<i32>(-1i, 0i, 30825i, arg_1.x)), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(47721u, 13u)])), vec4<u32>(1u, u_input.b.x, ~u_input.b.x, ~4294967295u), 6u).a));
    var var_2 = vec4<i32>(arg_1.x, ~min(-(~0i), var_1.a.x), 199i, arg_1.x);
    var var_3 = 32466i;
    return 692f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1391f, 782f, -238f, -2626f) * vec4<f32>(-176f, -214f, -229f, 638f))) - vec4<f32>(_wgslsmith_div_f32(642f, -105f), _wgslsmith_f_op_f32(ceil(1098f)), _wgslsmith_f_op_f32(max(-1328f, -942f)), _wgslsmith_f_op_f32(f32(-1f) * -243f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(-1000f, -227f, 1290f, -1000f), vec3<i32>(-1i, 2147483647i, 2147483647i), vec2<f32>(-2003f, -958f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-329f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1209f, 161f, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), _wgslsmith_f_op_f32(-345f * 111f)))))));
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global1 = array<Struct_1, 13>();
    let var_2 = Struct_4(~vec2<i32>(1i, ~min(2147483647i, -11288i)), func_3(func_3(func_2(), firstLeadingBit(vec4<u32>(u_input.a, 0u, 51040u, 65631u) << (vec4<u32>(u_input.b.x, 58026u, u_input.a, u_input.b.x) % vec4<u32>(32u))), 0u), ~(~(~vec4<u32>(20762u, u_input.a, u_input.b.x, 4294967295u))), u_input.a).a);
    global0 = array<bool, 13>();
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~9294u)));
}

