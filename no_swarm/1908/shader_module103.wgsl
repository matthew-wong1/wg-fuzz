struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-36828i, -1i, -5234i, -1i));

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global3: bool;

var<private> global4: array<f32, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    let var_0 = arg_2.b;
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b.x, 2u)] * _wgslsmith_f_op_f32(f32(-1f) * -1018f))));
    let var_3 = Struct_2(_wgslsmith_div_vec4_i32(global0.a, ~(-global0.a)));
    global2 = array<vec3<bool>, 25>();
    return var_3;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_3(func_1(_wgslsmith_mult_i32(abs(2147483647i) & (u_input.a.x << (0u % 32u)), global0.a.x), !(u_input.b.x >= u_input.b.x), Struct_4(vec3<i32>(-2147483647i << (u_input.b.x % 32u), _wgslsmith_mult_i32(global0.a.x, global0.a.x), countOneBits(arg_1.x)), Struct_3(Struct_2(vec4<i32>(arg_1.x, -1i, u_input.c, -36000i)), Struct_1(vec4<u32>(23100u, u_input.b.x, 23725u, 18180u), arg_0.xzz), func_1(-2147483647i, false, Struct_4(global0.a.xyy, Struct_3(Struct_2(arg_1), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], Struct_2(global0.a)), Struct_2(vec4<i32>(arg_1.x, -2147483647i, 2147483647i, u_input.c)), global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))), func_1(~global0.a.x, true, Struct_4(vec3<i32>(global0.a.x, arg_1.x, global0.a.x), Struct_3(Struct_2(arg_1), Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 80261u), vec3<bool>(true, false, true)), Struct_2(global0.a)), Struct_2(global0.a), Struct_1(vec4<u32>(u_input.b.x, 0u, 43727u, 4294967295u), vec3<bool>(true, true, false)))), Struct_1(vec4<u32>(8635u, 38660u, u_input.b.x, 4294967295u), global2[_wgslsmith_index_u32(~u_input.b.x, 25u)]))), Struct_1(~vec4<u32>(u_input.b.x, 12440u, 1u, 4294967295u) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 53463u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec3<bool>(true, false, arg_0.x)), func_1(_wgslsmith_clamp_i32(global0.a.x, -1i, 2147483647i), all(vec3<bool>(arg_0.x, arg_0.x, true)), Struct_4(~u_input.a << (min(u_input.b, vec3<u32>(52992u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), Struct_3(Struct_2(vec4<i32>(15164i, 2147483647i, -21726i, global0.a.x)), global1[_wgslsmith_index_u32(4294967295u, 13u)], func_1(global0.a.x, true, Struct_4(vec3<i32>(-7076i, -23635i, 0i), Struct_3(Struct_2(vec4<i32>(arg_1.x, 3725i, -1i, global0.a.x)), Struct_1(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), Struct_2(vec4<i32>(arg_1.x, global0.a.x, global0.a.x, 7168i))), Struct_2(global0.a), Struct_1(vec4<u32>(77085u, 520u, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(u_input.b.x, 25u)])))), func_1(0i, true, Struct_4(vec3<i32>(global0.a.x, -1i, -26486i), Struct_3(Struct_2(arg_1), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], Struct_2(vec4<i32>(arg_1.x, arg_1.x, -4202i, 18922i))), Struct_2(vec4<i32>(arg_1.x, -2147483647i, -1i, 1i)), global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), Struct_1(~vec4<u32>(67361u, 70608u, u_input.b.x, u_input.b.x), arg_0.zwx))));
    global2 = array<vec3<bool>, 25>();
    var var_1 = Struct_2(vec4<i32>(var_0.c.a.x, arg_1.x, _wgslsmith_mod_i32(max(var_0.a.a.x, -2147483647i), firstTrailingBit(u_input.a.x)), _wgslsmith_sub_i32(global0.a.x, ~1i)) & global0.a);
    var var_2 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(21885u, 0u, 4294967295u, u_input.b.x), var_0.b.a), 2u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 2u)]), -1392f)) * -866f)));
    var var_3 = Struct_4(_wgslsmith_add_vec3_i32(var_0.c.a.wxx, ~vec3<i32>(1i, -2147483647i, -2147483647i)), var_0, func_1(~arg_1.x & var_0.a.a.x, false, Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a.x, arg_1.x, 2147483647i), vec3<i32>(var_0.c.a.x, 59158i, 16373i)) & _wgslsmith_sub_vec3_i32(var_1.a.zww, vec3<i32>(global0.a.x, u_input.c, var_1.a.x)), Struct_3(var_0.a, Struct_1(vec4<u32>(65479u, var_0.b.a.x, u_input.b.x, u_input.b.x), var_0.b.b), var_0.a), Struct_2(var_0.c.a), Struct_1(~vec4<u32>(4294967295u, var_0.b.a.x, 16448u, 106356u), select(arg_0.wzx, vec3<bool>(arg_0.x, var_0.b.b.x, false), var_0.b.b.x)))), global1[_wgslsmith_index_u32(u_input.b.x, 13u)]);
    return vec2<bool>(var_3.b.b.b.x, any(arg_0.ww));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_4(u_input.a, Struct_3(arg_1, global1[_wgslsmith_index_u32(0u, 13u)], arg_1), func_1(-1i & u_input.a.x, true, Struct_4(vec3<i32>(1i, 3190i & global0.a.x, global0.a.x), Struct_3(Struct_2(vec4<i32>(-58203i, global0.a.x, u_input.a.x, global0.a.x)), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)], func_1(arg_1.a.x, true, Struct_4(vec3<i32>(global0.a.x, u_input.c, 0i), Struct_3(arg_1, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), global2[_wgslsmith_index_u32(u_input.b.x, 25u)]), arg_1), Struct_2(vec4<i32>(-1i, 19711i, global0.a.x, arg_1.a.x)), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(var_0.x, arg_0.x, arg_0.x))))), func_1(1i, any(vec3<bool>(false, false, arg_0.x)), Struct_4(global0.a.zyx, Struct_3(arg_1, global1[_wgslsmith_index_u32(15599u, 13u)], arg_1), arg_1, global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), Struct_1(select(vec4<u32>(4294967295u, 8213u, u_input.b.x, 21727u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<bool>(true, false, false, true)), global2[_wgslsmith_index_u32(u_input.b.x | 97246u, 25u)]))), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(131200u, 23672u, u_input.b.x, u_input.b.x), abs(vec4<u32>(0u, u_input.b.x, 4294967295u, 1u))), u_input.b.x, ~_wgslsmith_clamp_u32(0u, 23303u, u_input.b.x), _wgslsmith_mod_u32(max(u_input.b.x, 4294967295u), countOneBits(u_input.b.x))), !global2[_wgslsmith_index_u32(u_input.b.x, 25u)]));
    var var_2 = ~var_1.b.b.a.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 36603u, 5419u), vec4<u32>(~_wgslsmith_dot_vec3_u32(var_1.b.b.a.xzw, vec3<u32>(var_1.b.b.a.x, u_input.b.x, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 3081u, 25746u, u_input.b.x), vec4<u32>(0u, 1u, 1u, u_input.b.x)), ~4294967295u, firstLeadingBit(countOneBits(var_1.d.a.x))));
    var var_3 = Struct_2(~(~global0.a));
    let var_4 = var_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(~u_input.b.x, 2u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(344f + global4[_wgslsmith_index_u32(45795u, 2u)]), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(var_4.b.a.x, 2u)], 503f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -517f));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(any(func_3(vec4<bool>(arg_2.b.b.x, false, arg_2.b.b.x, arg_2.b.b.x), global0.a)), true), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.a.x, global0.a.x, 16710i), vec3<i32>(u_input.a.x, 2147483647i, u_input.c)), _wgslsmith_f_op_f32(-arg_3) >= _wgslsmith_f_op_f32(sign(arg_0)), Struct_4(vec3<i32>(3169i, -1i, 36462i) & arg_2.a.a.wwx, Struct_3(Struct_2(global0.a), Struct_1(arg_2.b.a, global2[_wgslsmith_index_u32(arg_2.b.a.x, 25u)]), Struct_2(global0.a)), arg_2.a, Struct_1(arg_2.b.a, arg_2.b.b))))));
    var var_1 = max(firstTrailingBit(-_wgslsmith_sub_vec3_i32(~arg_2.c.a.zzw, _wgslsmith_clamp_vec3_i32(global0.a.zzw, u_input.a, arg_2.c.a.zyy))), ~(vec3<i32>(-1i) * -abs(vec3<i32>(-53432i, arg_2.c.a.x, arg_2.a.a.x))));
    let var_2 = u_input.b.x;
    global3 = any(!arg_2.b.b);
    global4 = array<f32, 2>();
    return Struct_1(~reverseBits(firstTrailingBit(~arg_2.b.a)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b.x >> (4294967295u % 32u)), 25u)]);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = vec2<i32>(-44096i, _wgslsmith_sub_i32(-_wgslsmith_div_i32(1i, ~2147483647i), arg_1.a.a.x));
    let var_1 = reverseBits(-8702i);
    global2 = array<vec3<bool>, 25>();
    var var_2 = arg_0;
    var_2 = arg_0;
    return ~arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)))), vec4<u32>(7982u, u_input.b.x | 5470u, ~u_input.b.x, 30688u)), !global2[_wgslsmith_index_u32(reverseBits(1u), 25u)]);
    let var_1 = Struct_4(~(~u_input.a), Struct_3(func_1(~u_input.a.x, true, Struct_4(firstTrailingBit(vec3<i32>(-3690i, u_input.c, -2147483647i)), Struct_3(Struct_2(global0.a), var_0, Struct_2(global0.a)), Struct_2(vec4<i32>(-1i, global0.a.x, -29724i, -51151i)), Struct_1(var_0.a, global2[_wgslsmith_index_u32(var_0.a.x, 25u)]))), Struct_1(func_5(Struct_3(Struct_2(vec4<i32>(global0.a.x, 72905i, -53810i, 1i)), Struct_1(var_0.a, global2[_wgslsmith_index_u32(1u, 25u)]), Struct_2(vec4<i32>(u_input.a.x, -42123i, u_input.a.x, u_input.c))), Struct_3(Struct_2(vec4<i32>(u_input.a.x, global0.a.x, -32i, 3520i)), Struct_1(var_0.a, global2[_wgslsmith_index_u32(var_0.a.x, 25u)]), Struct_2(vec4<i32>(global0.a.x, 0i, u_input.a.x, 14149i))), min(3290u, 6062u), func_2(-693f, global4[_wgslsmith_index_u32(u_input.b.x, 2u)], Struct_3(Struct_2(global0.a), Struct_1(var_0.a, vec3<bool>(true, false, var_0.b.x)), Struct_2(global0.a)), global4[_wgslsmith_index_u32(var_0.a.x, 2u)])), global2[_wgslsmith_index_u32(~(~71812u), 25u)]), func_1(select(firstTrailingBit(global0.a.x), ~(-34145i), true), all(vec3<bool>(false, true, true)), Struct_4(vec3<i32>(global0.a.x, u_input.a.x, u_input.c), Struct_3(Struct_2(global0.a), var_0, Struct_2(vec4<i32>(u_input.c, global0.a.x, global0.a.x, u_input.c))), func_1(u_input.a.x, var_0.b.x, Struct_4(vec3<i32>(global0.a.x, 19870i, 51997i), Struct_3(Struct_2(global0.a), Struct_1(vec4<u32>(u_input.b.x, var_0.a.x, u_input.b.x, 77430u), var_0.b), Struct_2(global0.a)), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.a.x)), Struct_1(var_0.a, global2[_wgslsmith_index_u32(33839u, 25u)]))), global1[_wgslsmith_index_u32(0u, 13u)]))), func_1(~(-2147483647i), false, Struct_4(global0.a.zxw, Struct_3(Struct_2(global0.a), func_2(global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(var_0.a.x, 2u)], Struct_3(Struct_2(vec4<i32>(8918i, global0.a.x, global0.a.x, u_input.c)), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], Struct_2(vec4<i32>(global0.a.x, u_input.c, -2147483647i, 19523i))), global4[_wgslsmith_index_u32(45306u, 2u)]), Struct_2(global0.a)), func_1(0i, true, Struct_4(vec3<i32>(1i, -2147483647i, u_input.a.x), Struct_3(Struct_2(vec4<i32>(u_input.a.x, -1i, u_input.c, global0.a.x)), Struct_1(vec4<u32>(var_0.a.x, u_input.b.x, var_0.a.x, 16404u), var_0.b), Struct_2(global0.a)), Struct_2(global0.a), Struct_1(vec4<u32>(var_0.a.x, 70364u, 1u, 1u), vec3<bool>(false, var_0.b.x, false)))), Struct_1(~var_0.a, var_0.b))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.a.ywx, ~(~vec3<u32>(var_0.a.x, 1u, var_0.a.x)) ^ select(~vec3<u32>(u_input.b.x, var_0.a.x, u_input.b.x), var_0.a.zzy, !var_0.b.x)), 13u)]);
    global1 = array<Struct_1, 13>();
    let var_2 = 0u;
    var var_3 = true;
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32((vec2<i32>(1i, -2147483647i) ^ vec2<i32>(u_input.a.x, var_1.b.c.a.x)) | (u_input.a.yy ^ var_1.c.a.ww), ~(~var_1.b.a.a.wy)), reverseBits(u_input.a.xx)) ^ _wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(var_1.a.xz, vec2<i32>(-1i, var_1.b.c.a.x)), _wgslsmith_div_i32(-6211i, global0.a.x)) & 13659i, abs(-(u_input.a.x | var_1.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_1.b.b.a.x, 2u)] * global4[_wgslsmith_index_u32(u_input.b.x, 2u)])), ~((vec4<i32>(-1i) * -vec4<i32>(0i, 2147483647i, -2147483647i, 2147483647i)) | ~(var_1.c.a | vec4<i32>(-2147483647i, global0.a.x, var_4, -30221i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(230f + -896f), _wgslsmith_f_op_f32(max(-1341f, 799f)), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(var_2, 2u)], global4[_wgslsmith_index_u32(0u, 2u)])))), 1430f, ~(~(~_wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(1u, var_1.b.b.a.x)))));
}

