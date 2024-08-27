struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: vec2<u32> = vec2<u32>(1u, 45395u);

var<private> global2: vec4<bool>;

var<private> global3: f32 = 1000f;

var<private> global4: Struct_1 = Struct_1(false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 24>();
    var var_0 = ~u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = arg_0;
    global4 = global0[_wgslsmith_index_u32(global1.x, 24u)];
    return ~u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    global1 = ~(~vec2<u32>(_wgslsmith_sub_u32(global1.x, 14675u), global1.x)) >> (~firstLeadingBit(vec2<u32>(33459u, 4294967295u)) % vec2<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1364f);
    let var_1 = global2.zw;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1021f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0)), -189f, true))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(step(var_0, var_0)))))), -340f);
    global3 = _wgslsmith_f_op_f32(ceil(var_0));
    return ~_wgslsmith_clamp_i32(~arg_1, -25629i, max(arg_1, arg_1));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(max(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 28416u, 19088u) ^ vec3<u32>(0u, 0u, arg_1), ~vec3<u32>(48113u, arg_1, global1.x))), firstTrailingBit(arg_1) | _wgslsmith_mult_u32(16452u, 6756u)) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(10486u, 0u, 0u, 4294967295u), vec4<u32>(arg_1, arg_1, 0u, arg_1)) ^ vec4<u32>(_wgslsmith_sub_u32(global1.x, 0u), _wgslsmith_add_u32(3261u, global1.x), ~arg_1, abs(arg_1)), vec4<u32>(_wgslsmith_add_u32(abs(global1.x), ~global1.x), arg_1, reverseBits(global1.x), arg_1)), 24u)];
    let var_1 = select(select(~func_4(global0[_wgslsmith_index_u32(arg_1, 24u)], func_3(Struct_1(var_0.a)), global0[_wgslsmith_index_u32(~53902u, 24u)]), arg_0.x, 1u <= arg_1), _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(u_input.a, abs(vec2<i32>(-59914i, 71925i)))), false);
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, min(global1.x, ~0u)), (_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(global1.x, global1.x)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(5745u, 4294967295u), vec2<u32>(arg_1, arg_1), vec2<u32>(global1.x, global1.x))) & abs(vec2<u32>(global1.x, 29817u))), countOneBits(~(~vec2<u32>(44424u, 0u))), countOneBits(vec2<u32>(global1.x ^ _wgslsmith_div_u32(54728u, global1.x), firstTrailingBit(~arg_1))));
    var var_3 = Struct_1(!(_wgslsmith_add_i32(arg_0.x, 0i) < _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1191i, -64008i, 2147483647i), vec4<i32>(-11374i, 13855i, 0i, -14126i))) && false);
    var var_4 = 0u;
    return true;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global1.x ^ ~52711u;
    global2 = select(!select(vec4<bool>(!global2.x, global1.x > 57254u, true, arg_0), select(vec4<bool>(global2.x, global2.x, false, arg_0), !vec4<bool>(arg_0, global4.a, false, false), !vec4<bool>(false, true, global2.x, true)), true), select(select(select(!vec4<bool>(false, false, true, arg_0), !vec4<bool>(global4.a, global2.x, global2.x, false), false), !(!vec4<bool>(true, global4.a, global2.x, arg_0)), vec4<bool>(func_2(vec2<i32>(u_input.a.x, u_input.a.x), global1.x), any(vec4<bool>(false, global2.x, global2.x, true)), global4.a, select(false, false, false))), select(!vec4<bool>(false, true, arg_0, global4.a), vec4<bool>(any(vec2<bool>(arg_0, false)), true != arg_0, arg_0, !global2.x), all(global2.yw) & !global4.a), any(select(global2.xx, select(global2.xx, vec2<bool>(false, global2.x), true), global2.wx))), global2.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-336f * -357f), 211f, true))))));
    global2 = vec4<bool>(false, false, false, arg_0 & any(select(vec2<bool>(arg_0, true), global2.zy, false)));
    var var_2 = ~vec3<u32>(min(_wgslsmith_mult_u32(16188u, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x) ^ vec3<u32>(global1.x, 19822u, 10158u), abs(vec3<u32>(0u, global1.x, 46050u)))), min(1u, global1.x), global1.x);
    return Struct_1(global4.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    global2 = vec4<bool>(true, !select(all(select(vec3<bool>(false, global2.x, false), vec3<bool>(false, arg_1.x, true), false)), false, global2.x), arg_0.a, false);
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-firstLeadingBit(u_input.a.x), u_input.a.x, ~u_input.a.x), abs(-(vec3<i32>(-2147483647i, 2147483647i, 1i) | vec3<i32>(u_input.a.x, -2147483647i, 1i)))), min(vec3<i32>(min(-46768i, u_input.a.x), u_input.a.x, firstLeadingBit(u_input.a.x & u_input.a.x)), vec3<i32>(~_wgslsmith_div_i32(-11867i, u_input.a.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, 1i, -8377i)), ~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), 0i)));
    var var_1 = Struct_1(false);
    var var_2 = all(vec3<bool>(global1.x <= ~abs(31984u), false, false));
    let var_3 = Struct_1(global2.x);
    return true;
}

fn func_6(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> vec4<f32> {
    global0 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1003f, 220f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-101f, 1875f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-858f, 934f), _wgslsmith_f_op_vec2_f32(vec2<f32>(496f, 343f) * vec2<f32>(-1094f, 391f))))))));
    let var_1 = !(select(~global1.x, firstTrailingBit(1u), arg_2) != 50383u);
    let var_2 = u_input.a.x < u_input.a.x;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.x, 27308u, ~_wgslsmith_add_u32(global1.x, 16451u))), ~(~vec3<u32>(countOneBits(global1.x), ~global1.x, global1.x >> (81491u % 32u)))), 24u)];
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(267f, var_0.x, _wgslsmith_div_f32(var_0.x, -212f), _wgslsmith_f_op_f32(round(var_0.x))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -236f), var_0.x, -1110f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 674f, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(1134f - var_0.x)))), !(!(!vec4<bool>(arg_2, true, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, var_0.x, 1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1055f, var_0.x, var_0.x, var_0.x), vec4<f32>(-681f, -1350f, 1402f, var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_6(~(-vec3<i32>(_wgslsmith_div_i32(-2147483647i, 30353i), i32(-1i) * -10075i, u_input.a.x)), true, !func_5(func_1(global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(global4.a, false), global2.yz)) == true));
    let var_1 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(8778u, global1.x, global1.x) ^ vec3<u32>(41272u, global1.x, 3634u), countOneBits(vec3<u32>(global1.x, 3123u, global1.x)))) & vec3<u32>(global1.x, min(global1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(global1.x, global1.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 11902u, 12937u), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 4294967295u, global1.x), vec3<u32>(41208u, 1u, 4294967295u))) << (4294967295u % 32u));
    var var_2 = ~vec3<u32>(global1.x, 1u & _wgslsmith_mult_u32(~global1.x, global1.x), var_1.x);
    var_0 = vec4<f32>(var_0.x, 248f, _wgslsmith_f_op_f32(-var_0.x), -1300f);
    var var_3 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(max(var_1.xy, var_1.yz), var_1.xz), _wgslsmith_dot_vec2_u32(var_2.xz, firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(var_2.x, var_2.x), var_2.x << (var_2.x % 32u)))));
    var var_4 = ~u_input.a.x;
    var var_5 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_vec4_f32(func_6(vec3<i32>(~u_input.a.x, abs(-21113i), min(u_input.a.x, 20564i)), func_2(vec2<i32>(u_input.a.x, u_input.a.x), abs(59108u)), !any(global2.zw))).x)), var_0.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(step(-1000f, var_0.x))))))));
}

