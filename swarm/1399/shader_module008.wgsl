struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<i32>(9690i, i32(-2147483648)), 89352u), Struct_2(vec2<i32>(-39497i, 20209i), 4294967295u), Struct_2(vec2<i32>(0i, 38202i), 0u), Struct_2(vec2<i32>(-1i, 2147483647i), 83843u), Struct_2(vec2<i32>(12118i, 1i), 4294967295u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = -_wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.a.x, arg_1.a.x) << (1u % 32u), arg_1.a.x);
    let var_1 = select(firstTrailingBit(11285u) >> (arg_1.b % 32u), 14980u, select(~(~arg_1.b) <= _wgslsmith_dot_vec3_u32(min(u_input.e.xwz, u_input.a.xww), ~u_input.a.zzy), all(global0.zz), false));
    global2 = (global0.x | global0.x) || !all(select(select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, arg_2), arg_2), !vec3<bool>(false, arg_2, arg_2), true));
    return ~arg_1.b;
}

fn func_2() -> vec3<bool> {
    global1 = array<Struct_1, 8>();
    let var_0 = select(~10562u, min(~1u, firstLeadingBit(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_div_u32(0u, u_input.d.x)))), _wgslsmith_f_op_f32(-509f - -1393f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1480f, -1062f)))));
    let var_1 = global0.x;
    global3 = array<Struct_2, 5>();
    var var_2 = Struct_2(select(_wgslsmith_mod_vec2_i32(vec2<i32>(min(36607i, -37385i), u_input.b.x), firstTrailingBit(~vec2<i32>(u_input.c, 30133i))), select(u_input.b.zz, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-2147483647i, -50001i)), u_input.b.yy), true), false), ~(var_0 ^ (func_3(u_input.a.x, Struct_2(u_input.b.zw, var_0), global0.x, u_input.b.x) & _wgslsmith_sub_u32(0u, u_input.a.x))));
    return select(select(vec3<bool>(true, (u_input.a.x > var_2.b) && true, false), !select(!vec3<bool>(false, true, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), true), vec3<bool>(global0.x, false, global0.x)), global0.x), select(!select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, true, true), all(vec3<bool>(false, global0.x, global0.x))), vec3<bool>(!(u_input.b.x <= u_input.b.x), !any(global0.zy), true), true), vec3<bool>(true, true, false));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: bool) -> u32 {
    global1 = array<Struct_1, 8>();
    var var_0 = ~((~_wgslsmith_mult_u32(u_input.e.x, arg_1) & 0u) | arg_1);
    var var_1 = 0i;
    let var_2 = u_input.b.xw;
    let var_3 = func_2();
    return _wgslsmith_mod_u32(reverseBits(~arg_2), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(18781u, u_input.d.x), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_2, 20455u), min(arg_1, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32((u_input.d >> (vec4<u32>(4294967295u, 0u, 8411u, 4294967295u) % vec4<u32>(32u))) & (vec4<u32>(26438u, u_input.e.x, u_input.e.x, u_input.e.x) & vec4<u32>(u_input.e.x, 0u, u_input.a.x, u_input.e.x)), countOneBits(firstLeadingBit(u_input.d)))), vec2<u32>(u_input.e.x, 28164u) << (u_input.d.yw % vec2<u32>(32u))), 5u)];
    var var_1 = ~vec3<u32>(49457u, 545u, select(abs(var_0.b), _wgslsmith_mult_u32(firstLeadingBit(0u), func_1(vec2<f32>(741f, 786f), var_0.b, 1u, false)), global0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(114f)), _wgslsmith_f_op_f32(sign(-2357f)), -986f, 745f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1478f, 982f, -595f, -1312f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(263f, -405f, -775f, 1000f), vec4<f32>(-523f, -2049f, -1000f, 599f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, -1000f, -196f, -366f)) * vec4<f32>(-619f, -433f, 1000f, -394f)), vec4<f32>(_wgslsmith_f_op_f32(-569f + -156f), -360f, -2845f, _wgslsmith_f_op_f32(ceil(1942f)))))));
    let var_3 = Struct_2(-vec2<i32>(~(-7690i), _wgslsmith_sub_i32(~(-40500i), u_input.c)), var_0.b);
    let var_4 = select(vec4<bool>(any(vec4<bool>(39536u == var_0.b, all(vec2<bool>(true, global0.x)), -783f == var_2.x, var_2.x == var_2.x)), global0.x, global0.x, all(vec4<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x != true, true, var_0.a.x < var_3.a.x))), !select(!(!vec4<bool>(global0.x, global0.x, false, true)), vec4<bool>(true, global0.x, !global0.x, any(global0.xy)), global0.x || (global0.x | global0.x)), any(!vec2<bool>(false, all(vec3<bool>(global0.x, global0.x, true)))));
    var var_5 = _wgslsmith_f_op_vec2_f32(var_2.yx + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(select(var_2.x, 388f, global0.x))))), _wgslsmith_f_op_f32(1f + -1450f)));
    let var_6 = ~func_1(var_2.xx, 4294967295u, ~func_3(func_1(vec2<f32>(1000f, -300f), u_input.a.x, var_3.b, global0.x), Struct_2(var_3.a, 4294967295u), all(vec2<bool>(var_4.x, global0.x)), 14815i), false);
    let x = u_input.a;
    s_output = StorageBuffer(-169f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.xz), var_2.xw)))));
}

