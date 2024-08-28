struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<f32>, 25>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> f32 {
    global0 = 2147483647i;
    global0 = max(~u_input.b << (25397u % 32u), countOneBits(_wgslsmith_dot_vec2_i32(u_input.d, -u_input.d))) & abs(arg_2 & -2147483647i);
    let var_0 = global2.x || select(all(!global2.wy), !arg_0, true);
    global3 = array<vec2<f32>, 25>();
    global3 = array<vec2<f32>, 25>();
    return _wgslsmith_div_f32(arg_1.a.b.x, -1062f);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(423f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1661f, 229f, arg_1)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(134f, arg_1, 590f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -757f, arg_1) + vec3<f32>(arg_1, 1416f, 391f))))), vec3<u32>(4294967295u, 27639u & firstLeadingBit(~u_input.a.x), u_input.a.x ^ (~u_input.a.x << (67323u % 32u))), abs(~(~u_input.a.x)));
    var var_1 = !select(arg_0, select(!select(vec2<bool>(global2.x, false), vec2<bool>(true, true), arg_0.x), !vec2<bool>(global2.x, global2.x), !(-2524i > u_input.b)), arg_0.x);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1021f * _wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_f32(f32(-1f) * -190f)), 1066f), vec3<f32>(arg_1, 701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f + _wgslsmith_f_op_f32(var_0.a.a - 1281f)))));
    global0 = 0i;
    let var_3 = vec3<u32>(max(0u, 4294967295u), _wgslsmith_mult_u32(1u ^ ~var_0.c, var_0.b.x), 4294967295u);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(func_3(false, Struct_3(var_0.a, var_3, var_3.x), -16258i)))), var_2.b), _wgslsmith_clamp_vec3_u32(var_0.b, ~vec3<u32>(4294967295u, 0u, var_0.b.x), var_3 ^ ~(vec3<u32>(4294967295u, 6178u, 106178u) ^ vec3<u32>(var_3.x, 52865u, 1u))), 67775u);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    global3 = array<vec2<f32>, 25>();
    var var_0 = -3903i;
    global3 = array<vec2<f32>, 25>();
    var var_1 = func_2(select(global2.yz, select(vec2<bool>(!arg_0, all(global2.xxw)), !global2.wx, true), vec2<bool>(global2.x, true)), _wgslsmith_f_op_f32(sign(1200f)));
    var var_2 = func_2(vec2<bool>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1165f, -503f)) * 967f) <= arg_2.a.b.x), _wgslsmith_f_op_f32(sign(581f))).a;
    return var_1.a;
}

fn func_1() -> Struct_1 {
    global0 = 47788i;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(198f, -568f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, -2115f, -156f, 724f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1318f, 839f, 1953f, -161f) - vec4<f32>(625f, -1404f, 190f, 2283f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(451f, 1499f, 1000f, 348f), vec4<f32>(-1000f, -809f, 119f, -585f), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1537f, -649f, 160f, 1438f) * vec4<f32>(-237f, 496f, 335f, -1000f)) + vec4<f32>(-1000f, 1000f, -288f, -1000f))))));
    global0 = -(min(u_input.b, countOneBits(_wgslsmith_div_i32(29665i, 3433i))) ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.d.x, -63043i) << (_wgslsmith_mult_u32(1u, 0u) % 32u), firstLeadingBit(1i)));
    let var_2 = Struct_3(func_4(global2.x, min(vec4<i32>(-1i) * -vec4<i32>(u_input.c, -5148i, u_input.c, -54964i), abs(~global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), func_2(global2.zw, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(var_1.x))))), ~abs(u_input.b)), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 37533u, 44071u) & vec3<u32>(0u, u_input.a.x, u_input.a.x))), u_input.a.x, 119146u), firstTrailingBit(4294967295u) << (~func_2(select(global2.zx, global2.zw, global2.x), _wgslsmith_f_op_f32(1000f - var_1.x)).b.x % 32u));
    return Struct_1(_wgslsmith_sub_vec2_i32(u_input.d, u_input.d) >> ((max(vec2<u32>(4294967295u, 1035u), var_2.b.xx) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.b, var_2.b), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 47364u;
    let var_2 = func_1();
    let var_3 = ~vec4<u32>(1u, (27347u << ((1u & u_input.a.x) % 32u)) >> (~reverseBits(49522u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a), 0u), _wgslsmith_mod_vec2_u32(~u_input.a, u_input.a & u_input.a)), abs(45887u));
    let var_4 = !select(select(vec4<bool>(true, any(global2.yyw), all(vec4<bool>(false, false, global2.x, false)), global2.x), vec4<bool>(true, all(vec4<bool>(global2.x, var_0, true, var_0)), true, !global2.x), vec4<bool>(var_0, var_0, !var_0, all(global2.zwy))), vec4<bool>(any(vec4<bool>(false, var_0, var_0, false)), global2.x || all(vec3<bool>(false, global2.x, false)), !(!var_0), global2.x), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(62516u, 1211f);
}

