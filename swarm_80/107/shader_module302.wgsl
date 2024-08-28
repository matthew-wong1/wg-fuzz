struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 769f;

var<private> global1: f32 = -568f;

var<private> global2: Struct_3;

var<private> global3: array<u32, 11>;

var<private> global4: array<vec3<bool>, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = 0i;
    global0 = global2.b.a.x;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.a.x, 772f, -997f), vec3<f32>(_wgslsmith_div_f32(global2.b.a.x, -1446f), global2.b.a.x, _wgslsmith_f_op_f32(abs(global2.b.a.x))));
    let var_2 = vec3<u32>(1u >> (abs(~u_input.a) % 32u), global3[_wgslsmith_index_u32(8744u, 11u)], ((global3[_wgslsmith_index_u32(15884u, 11u)] & 4294967295u) >> ((_wgslsmith_sub_u32(46597u, 0u) & firstTrailingBit(4294967295u)) % 32u)) ^ select(_wgslsmith_clamp_u32(global2.a, _wgslsmith_sub_u32(52367u, global2.a), ~94058u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.a, global2.a, u_input.b), vec3<u32>(u_input.b, 14611u, 4294967295u)), ~vec3<u32>(global2.a, 31912u, 4294967295u)), true));
    var_0 = u_input.c.x;
    return global3[_wgslsmith_index_u32(50304u, 11u)];
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = min(-(23183i >> ((func_3() << (global2.a % 32u)) % 32u)), 0i);
    var var_1 = (-vec3<i32>(arg_0 | -6648i, -var_0, ~725i) << (~vec3<u32>(u_input.b, _wgslsmith_div_u32(41827u, global2.a), 1u << (u_input.b % 32u)) % vec3<u32>(32u))) & vec3<i32>(1i, firstLeadingBit(~0i), arg_0 & -(~arg_1));
    global4 = array<vec3<bool>, 27>();
    var var_2 = !(!any(vec4<bool>(global2.b.a.x != -912f, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)), true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b.a.x, global2.b.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(400f, global2.b.a.x), vec2<f32>(global2.b.a.x, global2.b.a.x), vec2<bool>(true, false))), u_input.a > global2.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b.a.x, global2.b.a.x))), global2.b.a, true))))));
    return global2.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -448f) * _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))) < 1483f), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), ((~4294967295u < ~global2.a) | select(true, true, true)) || all(vec4<bool>(true, true, true, all(vec2<bool>(true, false)))));
    var var_1 = firstLeadingBit((~arg_2 | arg_2) ^ arg_0) << (vec4<u32>(307u, 72640u, 11326u, ~min(~arg_2.x, arg_0.x ^ 105228u)) % vec4<u32>(32u));
    var var_2 = Struct_1(arg_1.a);
    var_1 = vec4<u32>(~(~28551u), arg_0.x, ~abs(0u | (4294967295u << (u_input.b % 32u))), _wgslsmith_mult_u32(firstLeadingBit(countOneBits(var_1.x | arg_0.x)), 1u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f - global2.b.a.x));
    return Struct_3(0u, func_2(_wgslsmith_mod_i32(u_input.c.x, firstLeadingBit(3044i)), -1i));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<f32> {
    var var_0 = global2.a;
    global0 = _wgslsmith_f_op_f32(arg_2 * -392f);
    var var_1 = func_4(~firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(132870u, 36176u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 20351u, global2.a, global2.a))), func_2(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -1i, 0i), vec3<i32>(-233i, -1i, arg_1.x) >> (~vec3<u32>(u_input.b, global2.a, 1u) % vec3<u32>(32u)))), abs(vec4<u32>(35282u, ~global2.a >> ((u_input.a << (global2.a % 32u)) % 32u), _wgslsmith_mod_u32(countOneBits(0u), abs(global2.a)), u_input.b)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.x + -189f) * _wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_f_op_f32(-func_2(-1i, ~(-2147483647i)).a.x)));
    let var_2 = func_4(~(vec4<u32>(8001u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(15155u, 11u)], 0u, 46096u), vec3<u32>(global2.a, 22401u, u_input.a)), 0u) | vec4<u32>(global3[_wgslsmith_index_u32(0u, 11u)], ~global2.a, 38743u, var_1.a)), global2.b, _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(62252u, 3643u), vec2<u32>(37152u, 57022u)), 4294967295u, u_input.b), vec4<u32>(~u_input.b, ~u_input.a, 4294967295u, ~countOneBits(73646u))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2069f, var_1.b.a.x, 1499f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(544f, arg_2, 266f, var_2.b.a.x) * arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-291f, 1451f, var_0.a.x, -620f), vec4<f32>(168f, -892f, var_0.a.x, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, -1221f, _wgslsmith_f_op_f32(505f - global2.b.a.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, 232f, -465f, global2.b.a.x) * vec4<f32>(global2.b.a.x, var_0.a.x, -938f, -1448f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b.a.x, var_0.a.x, 644f, global2.b.a.x), vec4<f32>(var_0.a.x, -593f, -1063f, -707f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-103f, 355f, -1000f, global2.b.a.x))))))), u_input.c ^ _wgslsmith_mod_vec3_i32(~(~u_input.c), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a.x, global2.b.a.x)))), global2.b.a.x)) - 1106f)));
    let var_2 = ~min(~vec2<u32>(global3[_wgslsmith_index_u32(global2.a, 11u)], global3[_wgslsmith_index_u32(1u, 11u)]) << ((~vec2<u32>(23946u, u_input.b) ^ vec2<u32>(22380u, global3[_wgslsmith_index_u32(1u, 11u)])) % vec2<u32>(32u)), ~(select(vec2<u32>(1u, global2.a), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], u_input.a), false) ^ (vec2<u32>(4294967295u, 19090u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))));
    var var_3 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.x, global3[_wgslsmith_index_u32(1u, 11u)], global2.a), 11u)], global2.b);
    var var_4 = ~_wgslsmith_clamp_vec3_i32(reverseBits(u_input.c), u_input.c, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec3<u32>(20790u, func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a, u_input.b, 52260u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(global2.a, u_input.a, global2.a, var_3.a), vec4<u32>(75005u, 0u, var_2.x, global3[_wgslsmith_index_u32(1u, 11u)]))), func_2(_wgslsmith_mult_i32(0i, u_input.c.x), var_4.x), vec4<u32>(29617u, var_2.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58798u, 1u, global3[_wgslsmith_index_u32(1u, 11u)]), 11u)], var_2.x ^ 2582u)).a, _wgslsmith_mod_u32(reverseBits(abs(var_3.a)), ~(~1u))), var_1.x, countOneBits(reverseBits(~(vec2<u32>(18184u, 1u) ^ var_2))));
}

