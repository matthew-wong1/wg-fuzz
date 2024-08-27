struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4294967295u, 81781u, 12773u, 1u, 4294967295u, 0u, 11600u, 19609u, 42475u, 4294967295u, 1u, 1u, 64668u, 11720u, 48259u, 4294967295u, 0u, 0u, 1u, 4294967295u, 55036u, 9217u, 74994u, 10743u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    global0 = array<u32, 24>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f + arg_1.a))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1083f)))) * 579f) - arg_1.c));
    let var_1 = select(select(vec2<bool>(arg_1.b, var_0.b), vec2<bool>((arg_1.b || false) & arg_1.b, var_0.b), var_0.b), select(vec2<bool>(true, true), vec2<bool>(var_0.b, true), !(!select(vec2<bool>(arg_1.b, var_0.b), vec2<bool>(false, var_0.b), arg_1.b))), !select(vec2<bool>(any(vec4<bool>(arg_1.b, true, true, arg_1.b)), false), vec2<bool>(true, true), any(!vec4<bool>(false, arg_1.b, false, true))));
    let var_2 = true;
    global0 = array<u32, 24>();
    return ~(u_input.a.yz | vec2<u32>(~1u, ~(~u_input.a.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(arg_0.a, arg_0, ~(~_wgslsmith_add_u32(5545u, 19325u) << ((1u ^ _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37560u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)])) % 32u)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, 261f)));
    let var_3 = arg_0.b;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1023f, _wgslsmith_f_op_f32(max(-487f, _wgslsmith_f_op_f32(f32(-1f) * -1128f))))) * _wgslsmith_f_op_f32(abs(319f)));
    return Struct_1(443f, any(!vec3<bool>(true, true, !var_3)), 1205f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_0.c));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(-476f, 1000f)), any(!select(vec4<bool>(arg_1.b, arg_1.b, arg_0.b, false), vec4<bool>(arg_2.b, arg_1.b, arg_1.b, false), vec4<bool>(false, true, false, false))) & arg_2.b, _wgslsmith_f_op_f32(round(arg_0.c)));
    var var_2 = arg_2;
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-749f)) * 1000f))), true, _wgslsmith_f_op_f32(ceil(835f)));
    return select(u_input.a.x ^ (select(19733u, 12046u, false) ^ reverseBits(global0[_wgslsmith_index_u32(1u, 24u)])), 0u, arg_0.b) >> (_wgslsmith_add_u32(17908u, global0[_wgslsmith_index_u32(4294967295u, 24u)]) % 32u);
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = abs(firstLeadingBit(arg_2.yx));
    let var_1 = min(~(-2147483647i), firstTrailingBit(min(_wgslsmith_div_i32(i32(-1i) * -1i, firstTrailingBit(22792i)), 0i)));
    global0 = array<u32, 24>();
    var_0 = vec2<u32>(func_4(Struct_1(1f, false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(_wgslsmith_f_op_f32(ceil(arg_1.x)), !(441f == arg_1.x), 102f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(abs(arg_1.x))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, all(vec4<bool>(false, false, true, false)))))), max(70223u, 0u));
    var var_2 = true;
    return Struct_1(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-1155f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(348f * -308f))))), true, _wgslsmith_f_op_f32(floor(arg_1.x)));
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = func_2(func_2(arg_2));
    let var_1 = ~firstTrailingBit(-reverseBits(vec3<i32>(arg_0, 1i, 36242i))) & min(_wgslsmith_clamp_vec3_i32(-max(vec3<i32>(arg_0, -1i, arg_0), vec3<i32>(40680i, 0i, arg_0)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, 6551i) << (u_input.a % vec3<u32>(32u)), vec3<i32>(arg_0, 45396i, 83655i)), ~countOneBits(vec3<i32>(-2147483647i, arg_0, arg_0))), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(0i, arg_0, -64245i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(1000f, any(vec2<bool>(var_0.b, true)), -1244f)).c));
    return func_5(arg_0, arg_1, vec3<u32>(0u, global0[_wgslsmith_index_u32(~4294967295u, 24u)], func_4(var_0, arg_2, Struct_1(220f, true, -1000f)) ^ u_input.a.x), abs(firstLeadingBit(-392i)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = !(-205f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1245f * arg_0) * _wgslsmith_div_f32(-493f, -695f))) || true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - -1198f) - arg_0)), arg_1.x < arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-385f * 500f) + -220f) + arg_0));
    var var_2 = func_6(~(-countOneBits(firstTrailingBit(-1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, -121f, 266f))))), func_5((1i & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 33236i, 54386i), vec3<i32>(24790i, -3202i, 1738i))) >> (func_4(Struct_1(-366f, var_1.b, -635f), func_2(Struct_1(1450f, var_1.b, -186f)), Struct_1(1314f, var_1.b, -702f)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -354f, var_1.a) - vec3<f32>(arg_0, -623f, -1752f)))), u_input.a >> (u_input.a % vec3<u32>(32u)), -firstLeadingBit(26482i)), !select(vec4<bool>(false, any(vec3<bool>(false, var_1.b, false)), !var_1.b, var_1.b), select(!vec4<bool>(false, var_1.b, true, var_1.b), vec4<bool>(var_1.b, var_1.b, true, true), !vec4<bool>(var_1.b, var_1.b, var_1.b, true)), _wgslsmith_f_op_f32(381f - var_1.c) < _wgslsmith_f_op_f32(max(1499f, var_1.a))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1204f, _wgslsmith_f_op_f32(arg_0 - var_1.c)))), true, func_6(_wgslsmith_mod_i32(-3807i, -14089i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-835f, _wgslsmith_f_op_f32(var_2.a * var_1.c), -1260f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_1.c, arg_0) * vec3<f32>(1829f, 436f, var_2.c))), !all(vec2<bool>(var_2.b, var_1.b)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.c)), true, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-1290f * var_2.a))), !select(vec4<bool>(false, var_1.b, var_1.b, false), vec4<bool>(var_2.b, true, true, var_1.b), select(vec4<bool>(true, true, true, var_2.b), vec4<bool>(var_1.b, true, var_2.b, true), vec4<bool>(true, true, var_2.b, true)))).c);
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 925f) - vec2<f32>(-1031f, 1336f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -885f)))))));
    return Struct_1(func_6(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.x, -676f, 293f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-869f, var_2.c, 1581f), vec3<f32>(arg_0, var_2.a, 1342f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(170f, -798f, var_2.c) + vec3<f32>(-322f, -547f, -1596f)) + vec3<f32>(var_2.a, var_3.c, -1326f))), Struct_1(var_3.a, select(true, !var_2.b, var_3.b), _wgslsmith_f_op_f32(-var_3.c)), !vec4<bool>(!var_1.b, var_2.b, false, !var_3.b)).c, var_2.b, -796f);
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 24>();
    var var_0 = arg_0;
    let var_1 = arg_0;
    return Struct_1(var_0.a, false, _wgslsmith_div_f32(-1567f, 456f));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = arg_1;
    var_0 = arg_1;
    global0 = array<u32, 24>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2150f, 723f)) - vec2<f32>(arg_2.a, arg_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_8(func_7(func_1(1087f, (vec2<u32>(u_input.a.x, 1u) << (u_input.a.zy % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.yz))), func_2(func_5(~1i, vec3<f32>(139f, -2685f, _wgslsmith_f_op_f32(max(-430f, -1388f))), max(vec3<u32>(global0[_wgslsmith_index_u32(1u, 24u)], 47859u, 0u), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22473u, 24u)], 24u)], 24u)], 0u)) << (select(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 1u, u_input.a.x), false) % vec3<u32>(32u)), _wgslsmith_clamp_i32(~(-25833i), _wgslsmith_dot_vec4_i32(vec4<i32>(7672i, 1i, 2147483647i, 26836i), vec4<i32>(2147483647i, 0i, 1070i, -2147483647i)), -2147483647i))), func_5(~1i ^ -select(-39400i, 18691i, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1036f, -1008f, 245f), vec3<f32>(-1056f, -1575f, -731f)))), _wgslsmith_mult_vec3_u32(~u_input.a | u_input.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(3363u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), u_input.a)), -28370i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-642i, _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(-1i, -2147483647i, -10609i))));
}

