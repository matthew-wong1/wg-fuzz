struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -962f;

var<private> global1: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global2: Struct_4;

var<private> global3: f32 = -226f;

var<private> global4: array<i32, 5>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = firstLeadingBit(min(~global2.b, ~global2.b));
    let var_1 = all(select(!vec4<bool>(any(vec3<bool>(global2.d.b.d, global2.a.x, false)), true, select(global2.d.b.d, false, global2.a.x), true), vec4<bool>(global2.d.b.d != all(vec2<bool>(true, global2.a.x)), global2.a.x, true, any(!vec4<bool>(true, true, global2.a.x, global2.a.x))), !select(!vec4<bool>(global2.d.b.d, false, global2.d.b.d, true), vec4<bool>(global2.d.b.d, false, true, global2.a.x), global2.a.x || true)));
    global4 = array<i32, 5>();
    var var_2 = _wgslsmith_div_f32(1028f, 1097f);
    var var_3 = Struct_5(1590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(sign(527f)), var_1))))), (false && (31985u < arg_0.x)) | all(vec4<bool>(all(global2.a), false, any(vec4<bool>(global2.a.x, global2.d.a.d, global2.a.x, global2.d.a.d)), true)));
    return var_0.zy;
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    return _wgslsmith_sub_vec2_i32(-func_3(arg_0.d.b.b.zwx), u_input.a.zx);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(select(-firstTrailingBit(vec2<i32>(2147483647i, 11590i) & vec2<i32>(arg_0, -14806i)), select(_wgslsmith_div_vec2_i32(u_input.b.xy ^ vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-31893i, u_input.a.x)), func_2(Struct_4(global2.a, vec4<i32>(0i, 2147483647i, u_input.a.x, -41132i), global2.c, global2.d)), !global2.a), true), ~(~max(~vec4<u32>(24321u, 16904u, 4294967295u, global2.d.b.b.x), ~vec4<u32>(0u, global2.d.c.x, 1u, 39206u))), vec2<i32>(arg_0, _wgslsmith_div_i32(-26406i, global4[_wgslsmith_index_u32(global2.d.b.b.x, 5u)])) << (global2.d.b.b.wz % vec2<u32>(32u)), global2.a.x);
    global4 = array<i32, 5>();
    global3 = 917f;
    var var_1 = global2.d.b.d;
    var var_2 = vec3<bool>(all(select(global2.a, !select(vec2<bool>(false, var_0.d), vec2<bool>(true, true), global2.d.b.d), 64450u <= global2.c)), false, (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.b.b.x, 36342u, 81033u, 65880u), vec4<u32>(var_0.b.x, 23994u, 1u, global2.d.a.b.x)) | 13161u) != min(var_0.b.x, ~(83907u >> (global2.d.b.b.x % 32u))));
    return !(!(global2.d.a.d | true));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = global2.c ^ _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(global2.c, global2.d.b.b.x, 16950u)), global2.d.c.yzx), vec3<u32>(global2.d.c.x, 1u ^ ~global2.c, 5705u));
    global4 = array<i32, 5>();
    var var_1 = Struct_1(~global2.b.wx, vec4<u32>(11337u, 0u, 0u, 1u) | ~reverseBits(global2.d.a.b), vec2<i32>(35981i, firstTrailingBit(_wgslsmith_div_i32(0i, ~global1.x))), true);
    var var_2 = !vec2<bool>(!func_1(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.c, var_1.b.x), 5u)]), arg_0 && !global2.d.b.d);
    var_1 = global2.d.a;
    return Struct_1(~countOneBits(-_wgslsmith_div_vec2_i32(global2.b.wy, global2.b.xw)), abs(select(firstTrailingBit(vec4<u32>(global2.d.b.b.x, 1u, var_1.b.x, 35138u)), vec4<u32>(global2.d.a.b.x, ~4294967295u, abs(1u), ~global2.c), vec4<bool>(true, true, true, true))), ~func_2(Struct_4(vec2<bool>(var_1.d, var_2.x), reverseBits(vec4<i32>(2147483647i, var_1.a.x, var_1.c.x, 84581i)), 0u, global2.d)), !select(true, arg_0, true) != false);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    var var_0 = global2.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_1, -1000f, -123f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, _wgslsmith_f_op_f32(max(arg_1, arg_1)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -825f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), arg_1, -272f, arg_1)));
    global3 = var_1.x;
    var var_2 = ~(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.c.x, var_0.a.b.x, var_0.c.x, 4294967295u), global2.d.a.b ^ global2.d.c), ~(arg_0.b.x & 4543u), _wgslsmith_sub_u32(var_0.a.b.x, arg_0.b.x)));
    global0 = arg_1;
    return _wgslsmith_f_op_f32(-arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_4(func_1(i32(-1i) * -2076i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1107f, 1041f)), _wgslsmith_div_vec2_f32(vec2<f32>(-683f, -761f), vec2<f32>(-488f, 2501f))))), _wgslsmith_f_op_f32(-200f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1137f + -427f), _wgslsmith_f_op_f32(min(487f, 234f))))), vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(1u, 5u)], global2.d.b.a.x, max(-35722i, -1i)), max(global2.b.x | -49727i, reverseBits(2147483647i))), abs(15644i))), -882f);
    let var_0 = !(!vec3<bool>(true, global2.a.x, any(!vec3<bool>(global2.d.b.d, true, global2.a.x))));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(~(~global1.x), global2.d.a.a.x << (_wgslsmith_mult_u32(0u, global2.c) % 32u)), u_input.a.x), firstTrailingBit(vec4<u32>((global2.d.b.b.x & 20638u) >> (1u % 32u), _wgslsmith_sub_u32(firstLeadingBit(global2.c), 1u), 1u, ~92931u)), ~(select(global2.d.b.c, global2.d.a.a, global2.a.x) & firstLeadingBit(global2.d.b.c)) ^ max(vec2<i32>(_wgslsmith_div_i32(-1i, -44336i), _wgslsmith_div_i32(global2.d.a.c.x, global4[_wgslsmith_index_u32(global2.d.c.x, 5u)])), vec2<i32>(_wgslsmith_dot_vec4_i32(global2.b, global2.b), _wgslsmith_div_i32(24169i, -23017i))), max(global2.c, ~(global2.c & global2.d.a.b.x)) > ~global2.c);
    var var_2 = 4294967295u;
    let var_3 = Struct_4(select(select(var_0.xx, global2.a, vec2<bool>(all(var_0.zy), true)), global2.a, global2.a), -_wgslsmith_div_vec4_i32(global2.b, global2.b), global2.d.a.b.x, Struct_2(func_4(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, 1528f))))), func_4(all(vec2<bool>(var_1.d, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(129f, 1002f)) - vec2<f32>(1474f, -1092f))), ~_wgslsmith_add_vec4_u32(vec4<u32>(56841u, var_1.b.x, global2.c, 52145u), vec4<u32>(15775u, var_1.b.x, global2.c, global2.d.b.b.x) >> (global2.d.c % vec4<u32>(32u)))));
    var var_4 = false;
    var var_5 = global2.d.a.b.zz;
    let var_6 = var_3;
    let var_7 = all(vec4<bool>(true, all(vec4<bool>(true, var_6.a.x, var_3.a.x, false)) || true, true, false)) & (all(vec3<bool>(!var_3.a.x, false, var_0.x)) || (false | var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x, global2.d.a.b.xx, global1.x);
}

