struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(830f, 273f, 3149f, -809f);

var<private> global1: array<i32, 5> = array<i32, 5>(0i, 10196i, -56306i, -1i, -1i);

var<private> global2: Struct_3 = Struct_3(false);

var<private> global3: i32 = 1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global3 = _wgslsmith_mod_i32(firstLeadingBit(global1[_wgslsmith_index_u32(~21806u, 5u)] | global1[_wgslsmith_index_u32(reverseBits(4294967295u), 5u)]) >> (arg_0.c % 32u), _wgslsmith_mod_i32(~u_input.a, ~reverseBits(-1i)));
    var var_0 = arg_0.a.x;
    var var_1 = vec4<bool>(false, global2.a, (arg_1 ^ min(arg_0.c, 11923u)) <= 63334u, arg_0.a.x || all(select(select(arg_0.a, arg_0.a, global2.a), !arg_0.a, any(vec4<bool>(global2.a, true, global2.a, false)))));
    let var_2 = 24063u;
    var var_3 = select(vec4<bool>(true, true, arg_0.a.x, select(select(false, any(var_1.zwy), any(vec4<bool>(var_1.x, var_1.x, global2.a, var_1.x))), true, var_1.x)), vec4<bool>(true & arg_0.a.x, arg_0.a.x, !(!(!var_1.x)), true), any(select(var_1.zx, select(select(vec2<bool>(arg_0.a.x, var_1.x), var_1.wz, false), var_1.yw, var_1.zy), true & arg_0.a.x)));
    return -_wgslsmith_mult_i32((firstTrailingBit(u_input.b.x) ^ global1[_wgslsmith_index_u32(countOneBits(arg_0.c), 5u)]) ^ u_input.b.x, -min(u_input.a << (var_2 % 32u), -74342i | u_input.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global3 = func_3(arg_2, arg_1);
    let var_0 = true;
    let var_1 = var_0;
    global0 = array<f32, 4>();
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 674f, -349f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b, arg_2.b, global0[_wgslsmith_index_u32(arg_1, 4u)]), vec3<f32>(-1036f, 1286f, arg_2.b), vec3<bool>(var_0, arg_2.a.x, var_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1406f, arg_2.b, arg_2.b) + vec3<f32>(global0[_wgslsmith_index_u32(arg_2.c, 4u)], arg_2.b, 1204f)))))), vec3<u32>(~12742u, 96818u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, arg_1, arg_1) & vec3<u32>(24943u, 1u, arg_2.c))), all(select(arg_2.a, vec2<bool>(global2.a, var_0), arg_2.a)), vec2<bool>(false, all(select(vec4<bool>(true, true, arg_2.a.x, global2.a), vec4<bool>(false, global2.a, true, false), var_0))), arg_2);
    return false;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 4u)];
    var var_1 = -2147483647i;
    global3 = arg_0 << (5305u % 32u);
    var var_2 = -(~vec4<i32>(1i, 1i, 1i, 1i)) | _wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, arg_0, arg_0, arg_0) & vec4<i32>(52419i, u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(arg_1, 5u)]), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(115623u, 5u)], -1i, global1[_wgslsmith_index_u32(arg_1, 5u)]) | vec4<i32>(arg_0, u_input.b.x, 1i, global1[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0, global1[_wgslsmith_index_u32(arg_1, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 5u)], arg_0, -21973i, 55956i))), ~abs(vec4<i32>(u_input.b.x, -7941i, u_input.a, global1[_wgslsmith_index_u32(arg_1, 5u)]))));
    var var_3 = global2.a & func_2(vec4<i32>(-44558i, -abs(global1[_wgslsmith_index_u32(55019u, 5u)]), 1i, -2147483647i), _wgslsmith_mult_u32(arg_1, 1u ^ _wgslsmith_sub_u32(0u, arg_1)), Struct_1(vec2<bool>(any(vec4<bool>(global2.a, false, global2.a, false)), 515f != global0[_wgslsmith_index_u32(arg_1, 4u)]), -1157f, ~(arg_1 ^ arg_1)));
    return Struct_3(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    global2 = func_1(-(-_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(24876u, 5u)]), vec2<i32>(0i, -1i)) & u_input.b.x), 1u);
    global1 = array<i32, 5>();
    global3 = ~1i;
    var var_0 = _wgslsmith_f_op_f32(203f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(120349u, 4u)] + 244f))) + 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(f32(-1f) * -1764f))))));
    let var_1 = all(vec3<bool>(all(select(!vec4<bool>(global2.a, global2.a, global2.a, true), select(vec4<bool>(false, false, global2.a, global2.a), vec4<bool>(false, global2.a, global2.a, false), global2.a), select(vec4<bool>(true, global2.a, global2.a, false), vec4<bool>(global2.a, global2.a, global2.a, global2.a), global2.a))), 1120f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30729u, 4u)])), global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -1i, 1i, -2147483647i)), vec4<i32>(24686i, -1i, global1[_wgslsmith_index_u32(80747u, 5u)], -2147483647i), -vec4<i32>(-5403i, 44588i, u_input.b.x, u_input.b.x)), select(vec4<i32>(global1[_wgslsmith_index_u32(1u, 5u)], -2147483647i, u_input.a, global1[_wgslsmith_index_u32(0u, 5u)]) & vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 5u)]), abs(vec4<i32>(global1[_wgslsmith_index_u32(64060u, 5u)], -2147483647i, -1i, 16564i)), select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(false, true, false, false), var_1)))), u_input.a, 1u);
}

