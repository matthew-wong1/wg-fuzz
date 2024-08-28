struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_4,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 23007i, 0i, -8773i);

var<private> global1: array<Struct_3, 27>;

var<private> global2: array<Struct_5, 29>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec2<i32> {
    return vec2<i32>(i32(-1i) * -45948i, global0.x);
}

fn func_4(arg_0: vec2<i32>) -> vec3<bool> {
    global2 = array<Struct_5, 29>();
    let var_0 = u_input.a.x;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(step(-101f, 1f));
    var var_3 = -vec3<i32>(_wgslsmith_clamp_i32(0i, 1i, 44132i) >> (~0u % 32u), 5868i, _wgslsmith_sub_i32(~global0.x, i32(-1i) * -17855i)) | -(~(-vec3<i32>(global0.x, arg_0.x, global0.x)));
    return !select(vec3<bool>(select(any(vec4<bool>(true, true, var_1, true)), var_1 | false, false), any(!vec4<bool>(true, false, var_1, true)), var_1), select(select(!vec3<bool>(var_1, true, var_1), !vec3<bool>(false, var_1, var_1), select(vec3<bool>(var_1, false, false), vec3<bool>(false, false, false), vec3<bool>(var_1, var_1, true))), !(!vec3<bool>(var_1, true, var_1)), !(!vec3<bool>(var_1, var_1, true))), vec3<bool>(!var_1, var_1, false));
}

fn func_2() -> Struct_4 {
    let var_0 = !func_4(func_3(Struct_2(Struct_1(vec3<bool>(true, false, true), false)), vec3<f32>(_wgslsmith_f_op_f32(134f * -863f), _wgslsmith_f_op_f32(round(145f)), _wgslsmith_f_op_f32(ceil(1076f)))));
    var var_1 = countOneBits(-19329i);
    var var_2 = -vec4<i32>(firstTrailingBit(~63395i), global0.x, 46856i, ~16069i);
    var var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.xy, -vec2<i32>(_wgslsmith_sub_i32(-47187i, var_2.x), abs(var_2.x))), -var_2.x, -56628i, ~(var_2.x & 32016i));
    var_2 = vec4<i32>(-69966i, ~1i, var_3.x, firstTrailingBit(global0.x));
    return Struct_4(Struct_1(vec3<bool>(~var_3.x <= abs(global0.x), !var_0.x, var_0.x), var_0.x), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), false)), var_0.x, 1u >> (u_input.a.x % 32u), Struct_1(!(!var_0), var_0.x), 1471f));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_2.b.e * arg_2.b.e)), -1282f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(288f + arg_0.b.e), _wgslsmith_f_op_f32(-806f + arg_0.b.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.e - arg_0.b.e))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, arg_0.b.e, -768f, arg_2.b.e))) * vec4<f32>(arg_0.b.e, _wgslsmith_f_op_f32(1070f - -328f), _wgslsmith_f_op_f32(-arg_0.b.e), _wgslsmith_f_op_f32(f32(-1f) * -546f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(336f, 1314f, 1000f, -618f) - vec4<f32>(173f, arg_2.b.e, -561f, arg_2.b.e))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-577f, 818f), arg_2.b.e, func_2().b.e, _wgslsmith_f_op_f32(-arg_0.b.e)))), arg_1.x));
    global0 = vec4<i32>(select(1i, global0.x | _wgslsmith_dot_vec2_i32(~global0.wx, -vec2<i32>(18023i, 2147483647i)), arg_2.a.b), _wgslsmith_sub_i32(global0.x, -global0.x), global0.x, global0.x);
    var var_1 = global0.wxz >> (_wgslsmith_mod_vec3_u32(~u_input.a.yxx, ~select(vec3<u32>(0u, arg_2.b.c, arg_2.b.c) >> (u_input.a.wwz % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_0.b.c, arg_2.b.c), vec3<u32>(4294967295u, 3742u, 4294967295u)), !arg_0.a.b)) % vec3<u32>(32u));
    let var_2 = ~2147483647i;
    return func_2().a;
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> Struct_1 {
    let var_0 = ~(~arg_0.a.c);
    return func_5(func_2(), arg_0.c.a.a.xx, Struct_4(func_2().a, func_2().b));
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = global0.x;
    var var_1 = global0.ywx;
    var_1 = firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), global0.x, abs(var_1.x)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(global0.yzw, global0.zzy), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.xwy, vec3<i32>(global0.x, var_1.x, -21525i), global0.wxx), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 0i, -32934i), global0.yzz, vec3<i32>(-43893i, 13750i, -51137i))))));
    global2 = array<Struct_5, 29>();
    let var_2 = vec3<u32>(~reverseBits(_wgslsmith_clamp_u32(arg_1, ~u_input.a.x, u_input.a.x)), u_input.a.x, 76u);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-495f, 1f, select(arg_0.x, arg_0.x && (arg_0.x && true), any(vec4<bool>(true, true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xz;
    global0 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(-87956i, -(~(-2147483647i)), ~(-1i), global0.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(global0.x, 1i, global0.x, global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, 39088i, 0i), vec4<i32>(global0.x, -16633i, 31840i, global0.x))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -52757i, global0.x, global0.x), vec4<i32>(-1i, -8490i, global0.x, 40886i)), max(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(31027i, global0.x, 2147483647i, 45241i))), _wgslsmith_f_op_f32(func_6(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), firstLeadingBit(u_input.a.x), func_1(Struct_5(global1[_wgslsmith_index_u32(22057u, 27u)], global0.zw, Struct_4(Struct_1(vec3<bool>(true, true, false), false), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), true)), false, var_0.x, Struct_1(vec3<bool>(false, true, false), true), -956f)), 319f, vec3<u32>(47319u, 5846u, 36455u)), global0.x))) <= -903f), _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec3_i32(global0.wwy, vec3<i32>(global0.x, -2147483647i, global0.x)), countOneBits(reverseBits(global0.x)), 2147483647i, func_3(Struct_2(Struct_1(vec3<bool>(false, false, true), false)), vec3<f32>(1599f, 1217f, -848f)).x), -(~_wgslsmith_add_vec4_i32(vec4<i32>(-31956i, global0.x, 1i, global0.x), vec4<i32>(global0.x, global0.x, -41705i, -1i)))));
    var var_1 = 7985u;
    var var_2 = 2626u;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(vec3<bool>(func_1(global2[_wgslsmith_index_u32(4294967295u, 29u)], 2147483647i).a.x, any(vec3<bool>(true, true, false)), true), ~(~u_input.a.x), func_1(global2[_wgslsmith_index_u32(var_0.x, 29u)], ~1i)))), 515f));
    let var_4 = global2[_wgslsmith_index_u32(max((func_2().b.c | ~0u) >> (27165u % 32u), ~var_0.x), 29u)];
    var var_5 = all(func_4(max(~_wgslsmith_sub_vec2_i32(var_4.b, global0.yw), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_4.b.x), _wgslsmith_clamp_vec2_i32(global0.yy, vec2<i32>(global0.x, 32388i), vec2<i32>(global0.x, -25797i))))).zy);
    var var_6 = var_4.c.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0.xxw, abs(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(var_0.x, 97502u) >> (u_input.a.zy % vec2<u32>(32u))), u_input.a.x, 3151u)), ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(var_4.e.zz), vec2<u32>(u_input.a.x << (49229u % 32u), u_input.a.x << (var_0.x % 32u)), u_input.a.wx));
}

