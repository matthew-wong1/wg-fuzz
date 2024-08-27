struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

var<private> global1: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-1518f, -911f, 709f), vec3<f32>(-854f, 344f, -176f), vec3<f32>(-119f, -115f, -1103f), vec3<f32>(1440f, 500f, -380f), vec3<f32>(-719f, -974f, 585f), vec3<f32>(-981f, 1000f, -857f), vec3<f32>(442f, -244f, -1195f), vec3<f32>(-382f, 648f, 823f), vec3<f32>(120f, -107f, 590f), vec3<f32>(1652f, -1365f, -780f), vec3<f32>(-1777f, -447f, -1099f), vec3<f32>(1000f, -967f, -465f));

var<private> global2: f32 = 1542f;

var<private> global3: Struct_1;

var<private> global4: array<Struct_3, 8>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_4(global4[_wgslsmith_index_u32(32546u, 8u)]);
    return -1023f;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.a.x * 160f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_2.x, vec3<i32>(-1i, -32792i, -10397i)))))))));
    var var_1 = Struct_3(~vec3<i32>(2147483647i, 1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, arg_3.c.a, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -12764i, -761i), vec3<i32>(-28932i, arg_3.c.a, 25790i)))), Struct_2(-202i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a), global3.a)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = all(select(vec2<bool>(all(vec2<bool>(true, false)) & true, all(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(arg_0.x, 19u)])), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(all(vec3<bool>(false, true, false)), true)), select(vec2<bool>(true, arg_1.a.x < arg_1.a.x), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false)), true)));
    let var_1 = Struct_4(Struct_3(~abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, -1i, 6424i))), Struct_2(-(~12352i))));
    return Struct_2(u_input.a);
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_4(Struct_3(vec3<i32>(u_input.a, -(~u_input.a), select(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a ^ u_input.a, any(vec2<bool>(false, false)))), func_4(~vec4<u32>(u_input.b.x, 66428u, u_input.b.x, 23112u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -406f), ~18350u, vec3<bool>(true, true, true), Struct_5(-1207f, vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x), Struct_2(u_input.a))))));
    global2 = _wgslsmith_f_op_f32(func_3(true, _wgslsmith_sub_vec3_i32(max(var_0.a.a, vec3<i32>(1i, 2147483647i, _wgslsmith_mult_i32(65562i, 0i))), vec3<i32>(u_input.a, 0i, firstTrailingBit(firstTrailingBit(-1i))))));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(!(~u_input.b.x != _wgslsmith_dot_vec2_u32(vec2<u32>(26414u, 35475u), u_input.b.zz)), any(global0[_wgslsmith_index_u32(u_input.b.x, 19u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true))));
    global4 = array<Struct_3, 8>();
    var var_2 = var_0.a.b.a;
    return firstLeadingBit(-select(countOneBits(vec3<i32>(36518i, 0i, 15441i)), -var_0.a.a, true)) << ((u_input.b << ((_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 37364u, 60915u), u_input.b), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b)) & _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 1u, 113993u)))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec4<f32>(global3.a.x, -1060f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global3.a.x))))));
    global4 = array<Struct_3, 8>();
    global4 = array<Struct_3, 8>();
    var var_0 = Struct_4(Struct_3(func_1(), Struct_2(u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global3.a.yx), _wgslsmith_f_op_vec2_f32(select(global3.a.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.wz) - global3.a.zx) - _wgslsmith_f_op_vec2_f32(-global3.a.zx)), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true))))));
    var var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.x, var_0.a.a))) * global3.a.x) - _wgslsmith_f_op_f32(min(global3.a.x, _wgslsmith_f_op_f32(168f * _wgslsmith_f_op_f32(-global3.a.x))))) * -106f);
    var var_4 = vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-27964i, var_0.a.b.a, firstTrailingBit(41288i), select(-65126i, -36739i, false)));
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_5, 1849f, var_5), ~(select(reverseBits(0u), ~u_input.b.x, false) ^ u_input.b.x), u_input.a, -1i ^ var_4.x, select(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(reverseBits(43657u), 41072u & u_input.b.x, u_input.b.x & u_input.b.x)), vec3<u32>(35046u, u_input.b.x, ~36349u) & ~u_input.b, false));
}

