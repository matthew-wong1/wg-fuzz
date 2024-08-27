struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: array<Struct_3, 1>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1041f)) - 1830f), 1770f));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(~arg_1.x, 2147483647i), arg_0, -_wgslsmith_div_i32(~arg_1.x, ~(-12367i))), vec3<i32>(arg_1.x | u_input.b, -arg_0, _wgslsmith_mult_i32(u_input.a.x ^ 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -17477i, 17856i), vec3<i32>(u_input.d.x, -42519i, arg_0)))));
    var var_2 = Struct_2(arg_3.x >> (~(~1u) % 32u), vec3<u32>(~arg_3.x, 19024u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(50741u, u_input.e, 50656u, 2153u), vec4<u32>(7522u, 1u, global2.a, u_input.e)), vec4<u32>(0u, 1u, 119772u, u_input.e) ^ vec4<u32>(4294967295u, 1493u, 64461u, 62169u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(44715u, u_input.e, 84803u, arg_3.x)), vec4<u32>(u_input.e, arg_3.x, 1u, global2.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 632f) + 1248f), -vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -24072i, -3944i, var_1.x), vec4<i32>(8006i, 22002i, -1i, arg_0)), arg_1 | vec4<i32>(arg_1.x, arg_1.x, var_1.x, arg_0))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, var_2.c) + vec3<f32>(-105f, 760f, -822f))))))), !global0[_wgslsmith_index_u32(4294967295u, 7u)], select(select(global0[_wgslsmith_index_u32(arg_3.x, 7u)], select(select(vec4<bool>(false, true, true, global2.c), global0[_wgslsmith_index_u32(var_2.b.x, 7u)], global2.c), vec4<bool>(false, global2.c, true, global2.c), true), all(vec4<bool>(global2.c, false, false, true))), select(!(!vec4<bool>(global2.c, true, global2.c, global2.c)), select(global0[_wgslsmith_index_u32(~108649u, 7u)], vec4<bool>(false, false, global2.c, global2.c), vec4<bool>(true, false, global2.c, true)), !global2.c || !global2.c), vec4<bool>((global2.a & 60392u) > _wgslsmith_dot_vec4_u32(vec4<u32>(23692u, var_2.b.x, u_input.e, 0u), vec4<u32>(u_input.e, var_2.b.x, 44939u, 0u)), any(vec4<bool>(global2.c, global2.c, true, false)), any(select(vec3<bool>(false, global2.c, true), vec3<bool>(true, true, true), global2.c)), global2.c)), arg_3.x, 0u);
    let var_4 = countOneBits(var_2.b);
    return _wgslsmith_mod_i32(~abs(u_input.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(27113i), var_1.x, var_2.d.x ^ var_1.x, i32(-1i) * -1i), vec4<i32>(_wgslsmith_sub_i32(arg_0, var_2.d.x), arg_1.x ^ u_input.d.x, -1i, -1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -12274i, 2147483647i), vec4<i32>(-39345i, 1i, 18739i, arg_1.x)), abs(-var_1.x))));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_1(global2.b.wzx, vec4<bool>(true, true, all(arg_0), arg_0.x || (~u_input.b < ~2147483647i)), vec4<bool>(false, true, false, !(!(global2.b.x < global2.b.x))), u_input.e, firstLeadingBit(firstLeadingBit(firstTrailingBit(global2.a))));
    let var_1 = vec4<i32>(2147483647i, _wgslsmith_mod_i32(func_3(u_input.a.x << (4294967295u % 32u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.c, u_input.d.x, 55899i), vec4<i32>(u_input.b, u_input.c, u_input.c, 2147483647i)), _wgslsmith_f_op_f32(-1000f + global2.b.x), ~vec3<u32>(0u, 87705u, 41452u)) << (0u % 32u), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, -30265i)), select(u_input.a, vec2<i32>(-9171i, u_input.c), var_0.b.x)) << (max(_wgslsmith_dot_vec2_u32(vec2<u32>(48816u, u_input.e), vec2<u32>(4294967295u, var_0.e)), u_input.e) % 32u)), ~countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, 7619i & u_input.c, ~u_input.b), firstLeadingBit(-u_input.d | firstLeadingBit(u_input.d))));
    global0 = array<vec4<bool>, 7>();
    var var_2 = Struct_2(abs(0u), vec3<u32>(firstTrailingBit(15592u), global2.a, ~0u), _wgslsmith_f_op_f32(select(-200f, var_0.a.x, true)), u_input.a);
    let var_3 = Struct_2(_wgslsmith_sub_u32(~(~global2.a), ~1u), var_2.b, _wgslsmith_f_op_f32(trunc(-265f)), u_input.a);
    return -firstTrailingBit(27921i) ^ var_3.d.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> i32 {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~countOneBits(global2.a)), 1u)];
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(trunc(1000f))))) - -1220f));
    let var_1 = !vec4<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(3411u, 0u, arg_0), reverseBits(vec3<u32>(arg_0, global2.a, arg_0))) >= (~22777u << ((global2.a ^ 1u) % 32u)), global2.c, global2.c, select(global2.c, false, all(vec2<bool>(global2.c, true))));
    global2 = global1[_wgslsmith_index_u32(u_input.e, 1u)];
    global1 = array<Struct_3, 1>();
    return reverseBits(func_2(global0[_wgslsmith_index_u32(4294967295u, 7u)]));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(~global2.a, arg_1.b, false);
    global2 = arg_1;
    let var_1 = var_0.b.wyw;
    let var_2 = select(vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u) & countOneBits(u_input.e), ~0u, 2967u, 1u) | _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1.a, 1u, 0u, arg_1.a)), vec4<u32>(66734u, 68967u, 1u, arg_1.a) ^ min(vec4<u32>(var_0.a, global2.a, global2.a, 9693u), vec4<u32>(19517u, 4294967295u, 105172u, global2.a))), vec4<u32>(_wgslsmith_mod_u32(~1u, abs(21562u)), _wgslsmith_clamp_u32(43035u, min(32580u, var_0.a), 1u), ~global2.a << (firstTrailingBit(arg_1.a) % 32u), var_0.a) & _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.e, 50840u, u_input.e, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 24058u, 0u, global2.a), vec4<u32>(var_0.a, 15187u, 81154u, var_0.a), vec4<u32>(global2.a, arg_1.a, 4294967295u, global2.a)), any(vec4<bool>(arg_1.c, true, true, arg_1.c))), ~min(vec4<u32>(arg_1.a, u_input.e, 1u, 66498u), vec4<u32>(u_input.e, global2.a, 1u, var_0.a))), vec4<bool>(u_input.c > 2147483647i, !any(vec2<bool>(true, true)), arg_1.c, all(!vec3<bool>(false, global2.c, global2.c)) && !all(vec4<bool>(true, true, false, arg_1.c))));
    var_0 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 1>();
    var var_0 = Struct_3(1u, global2.b, false);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a, 4294967295u) >> (abs(1u) % 32u), 1u)];
    global0 = array<vec4<bool>, 7>();
    var_0 = func_4(firstTrailingBit(-func_1(1u, -1337f)) << (var_1.a % 32u), Struct_3(89638u, vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), -1675f, _wgslsmith_f_op_f32(f32(-1f) * -934f)), (func_1(26482u, 785f) <= _wgslsmith_div_i32(u_input.d.x, 20664i)) | (_wgslsmith_f_op_f32(global2.b.x - var_1.b.x) == 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.yxx, global2.b.yzx);
}

