struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(2610u, 1233u, 0u, 0u), 4294967295u, vec2<i32>(-3123i, 0i), vec4<bool>(false, false, false, false));

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    global3 = array<Struct_1, 22>();
    global1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(130168u, 46887u) << (global2.b % 32u), _wgslsmith_add_u32(u_input.a << (u_input.a % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(63361u, global2.b), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.a, 15502u)), ~_wgslsmith_div_u32(u_input.a, 502u))));
    var var_0 = _wgslsmith_div_u32(4294967295u, global2.a.x);
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~global2.a.x), 1u), 22u)], reverseBits(vec4<i32>(abs(-2147483647i), -7048i, 2147483647i, global2.c.x)), Struct_1(global2.a, 0u, ~vec2<i32>(~(-18694i), 0i), select(!(!vec4<bool>(global2.d.x, false, true, true)), vec4<bool>(true, global2.d.x, true, false), !vec4<bool>(false, false, false, global2.d.x))), global3[_wgslsmith_index_u32(29256u, 22u)], global3[_wgslsmith_index_u32(21178u, 22u)]);
    let var_2 = true;
    return select(vec2<bool>(true, false), select(var_1.e.d.xw, global2.d.wx, !var_1.a.d.wz), var_2);
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(534f, -375f), vec2<f32>(-126f, 1306f)), _wgslsmith_div_vec2_f32(vec2<f32>(597f, -1517f), vec2<f32>(-1087f, 1711f)), !global2.d.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1358f, 237f), vec2<f32>(189f, -503f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1347f))), vec2<f32>(812f, _wgslsmith_f_op_f32(f32(-1f) * -244f)))));
    global1 = global2.a.x & ~global2.a.x;
    global2 = global3[_wgslsmith_index_u32(38201u << (u_input.a % 32u), 22u)];
    let var_1 = -(~(firstTrailingBit(_wgslsmith_mod_vec4_i32(arg_0, vec4<i32>(2147483647i, -2147483647i, arg_0.x, arg_0.x))) & _wgslsmith_add_vec4_i32(countOneBits(arg_0), ~arg_0)));
    let var_2 = Struct_3(func_3(), _wgslsmith_f_op_f32(f32(-1f) * -726f), Struct_2(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2.a.x, firstTrailingBit(1u)), 22u)], arg_0, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, global2.b), global2.a.yz), 22u)], global3[_wgslsmith_index_u32(firstTrailingBit(35991u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, u_input.a, global2.a.x), _wgslsmith_sub_vec3_u32(global2.a.ywx, vec3<u32>(global2.a.x, u_input.a, 0u))) % 32u), 22u)], Struct_1(global2.a, global2.b << (_wgslsmith_clamp_u32(u_input.a, 1u, 0u) % 32u), -vec2<i32>(-26302i, global2.c.x), !vec4<bool>(false, global2.d.x, global2.d.x, false))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(14997u, global2.a.x, 85604u) << (vec3<u32>(0u, 37273u, 39856u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(3132u, global2.b, global2.a.x), vec3<u32>(28125u, u_input.a, global2.a.x))) >> (~_wgslsmith_dot_vec4_u32(global2.a | global2.a, global2.a) % 32u), 22u)], global3[_wgslsmith_index_u32(0u, 22u)]);
    return firstTrailingBit(vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2.e.a, var_2.e.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), _wgslsmith_mult_u32(~global2.b, ~var_2.d.a.x), ~(~4294967295u)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = global2.c.x;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~firstLeadingBit(global2.a.wyz), func_2(vec4<i32>(arg_0, firstTrailingBit(arg_0), 0i, arg_0))), 4u)];
    global0 = array<Struct_4, 4>();
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.x, _wgslsmith_dot_vec2_i32(global2.c, firstTrailingBit(~global2.c)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(global2.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-15337i, arg_0, -2796i), var_1.c.b.yzz)), select(37013i, 16394i, var_1.c.e.d.x) >> (global2.a.x % 32u))), select(_wgslsmith_div_vec3_i32(var_1.c.b.xxw, -abs(var_1.c.b.zxx)), abs(var_1.c.b.zxx), arg_1.zxz));
    global3 = array<Struct_1, 22>();
    return ~min(~vec3<u32>(_wgslsmith_mult_u32(u_input.a, 17518u), 31349u, global2.b), reverseBits(vec3<u32>(var_1.c.d.a.x, select(global2.b, 40093u, true), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 89653u;
    var var_0 = firstLeadingBit(~func_1(-22908i, !(!vec4<bool>(global2.d.x, global2.d.x, true, global2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -888f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(242f * _wgslsmith_f_op_f32(f32(-1f) * -942f))))) + -2894f);
    var var_2 = global2.c.x;
    var_0 = _wgslsmith_mult_vec3_u32(max(_wgslsmith_sub_vec3_u32(global2.a.xwy, _wgslsmith_add_vec3_u32(vec3<u32>(95674u, global2.a.x, 4294967295u), global2.a.yww)) | global2.a.yzz, _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(global2.a.zyx, vec3<u32>(4294967295u, global2.a.x, u_input.a)), global2.a.zww)), global2.a.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(5473u, 4294967295u), _wgslsmith_sub_u32(~18543u, u_input.a), 1u & u_input.a));
}

