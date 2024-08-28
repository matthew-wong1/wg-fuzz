struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global1: array<f32, 21>;

var<private> global2: Struct_1;

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_3, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<u32> {
    global3 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, ~10699u), ~(~arg_2.b.c.x)), ~(~global2.c.zy)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, select(arg_2.c, global2.c.x, true)), ~vec2<u32>(1u, ~33994u)));
    let var_0 = select(arg_3.x, _wgslsmith_sub_i32(-abs(2147483647i), -(~36049i >> (firstLeadingBit(global2.c.x) % 32u))), true);
    global3 = select(vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(global2.c.x), ~0u), ~(~21944u)) >> (abs(vec2<u32>(_wgslsmith_mult_u32(arg_1, global3.x), 4294967295u)) % vec2<u32>(32u)), firstLeadingBit(global2.c.yx), false);
    var var_1 = select(max(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, arg_0.b, 22266u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(arg_0.a.xwz), arg_2.a.c)), arg_0.a.zyz), ~firstLeadingBit(vec3<u32>(firstLeadingBit(1u), 131635u, u_input.a & arg_0.a.x)), arg_2.a.e);
    global0 = array<vec3<bool>, 11>();
    return ~(~(arg_0.a & _wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a, arg_0.a.x, u_input.a, arg_1), vec4<u32>(1u, 30618u, 3851u, global3.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(35614u, global2.c.x, var_1.x, u_input.a), vec4<u32>(global3.x, 0u, arg_0.a.x, arg_1)))));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(11027u, countOneBits(global2.c.x)), 28u)], 66714u, Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a, 21u)])), global2.b, global2.c, select(vec2<bool>(global2.d.x, global2.e), vec2<bool>(global2.b.x, false), global2.b.zy), false), Struct_1(global1[_wgslsmith_index_u32(global3.x >> (0u % 32u), 21u)], vec4<bool>(true, global2.b.x, global2.b.x, false), firstTrailingBit(vec3<u32>(6119u, 70801u, 5025u)), !global2.b.zy, global2.b.x & true), _wgslsmith_mult_u32(44262u, 12614u) & _wgslsmith_dot_vec3_u32(global2.c, vec3<u32>(2078u, 0u, 51583u))), _wgslsmith_div_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.b, -10455i)), firstLeadingBit(vec2<i32>(u_input.b, u_input.b)))) & reverseBits(~abs(max(vec4<u32>(global3.x, 16619u, 91341u, 66861u), vec4<u32>(34965u, global2.c.x, 4294967295u, global2.c.x))));
    let var_1 = Struct_3(vec4<u32>(76606u, max(~(~4294967295u), ~global3.x), var_0.x << (31776u % 32u), ~0u), global2.c.x);
    let var_2 = abs(firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_1.a, firstTrailingBit(vec4<u32>(var_1.b, global3.x, 36282u, 4294967295u)), var_1.a), _wgslsmith_mult_vec4_u32(~var_1.a, vec4<u32>(global2.c.x, global3.x, u_input.a, 1u)))));
    var var_3 = var_2.zz;
    let var_4 = 4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1604f * _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(736f - -1185f))))), !(!select(select(vec4<bool>(true, global2.b.x, false, false), vec4<bool>(false, global2.b.x, true, global2.b.x), vec4<bool>(false, true, global2.b.x, false)), global2.b, !global2.b)), min(~vec3<u32>(abs(0u), abs(var_1.a.x), var_3.x), func_3(global4[_wgslsmith_index_u32(~var_3.x, 28u)], ~0u, Struct_2(Struct_1(-370f, vec4<bool>(true, global2.e, global2.e, global2.b.x), vec3<u32>(var_0.x, global2.c.x, var_4), global2.d, global2.d.x), Struct_1(548f, vec4<bool>(global2.e, true, false, false), var_0.ywy, vec2<bool>(false, global2.d.x), global2.d.x), 1u), select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 2147483647i), global1[_wgslsmith_index_u32(35433u, 21u)] <= -147f)).yzz), select(vec2<bool>(true, true), global2.d, select(!vec2<bool>(global2.b.x, true), vec2<bool>(!global2.e, global2.d.x), !global2.e)), global2.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    global2 = func_2();
    let var_0 = global4[_wgslsmith_index_u32(max(global3.x, firstTrailingBit(arg_1.a.x)), 28u)];
    global0 = array<vec3<bool>, 11>();
    var var_1 = u_input.b;
    global4 = array<Struct_3, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.a, -609f, true)))) - global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 28>();
    let var_0 = vec2<i32>(max(~_wgslsmith_sub_i32(firstLeadingBit(-11287i), 1i), select(abs(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b))), true)), 0i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1205f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, global2.a))))), _wgslsmith_f_op_f32(sign(232f)), 379f));
    var var_2 = select(vec4<bool>(global2.e == (_wgslsmith_f_op_f32(abs(-119f)) < _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(740f, global2.b, global2.c, vec2<bool>(false, global2.e), global2.e), Struct_1(global1[_wgslsmith_index_u32(global2.c.x, 21u)], global2.b, global2.c, global2.d, global2.e), global2.c.x), Struct_3(vec4<u32>(global3.x, global2.c.x, global2.c.x, u_input.a), global3.x)))), true, global2.b.x, !(!global2.d.x)), select(func_2().b, vec4<bool>(false, !global2.b.x, (var_1.x == global2.a) | !global2.d.x, false), vec4<bool>(any(func_2().d), select(true, global2.b.x, global2.d.x), all(global2.b.ywz), global2.b.x)), global2.b);
    global0 = array<vec3<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(select(global2.c.x, 1u, var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 29511u, 4294967295u, global2.c.x), vec4<u32>(u_input.a, global2.c.x, global2.c.x, global3.x)), _wgslsmith_dot_vec3_u32(global2.c, vec3<u32>(global3.x, 4294967295u, 0u)), firstLeadingBit(1u))), _wgslsmith_f_op_f32(func_1(Struct_2(func_2(), Struct_1(178f, global2.b, global2.c, !var_2.xz, false), _wgslsmith_sub_u32(u_input.a, u_input.a) & (global3.x ^ 1u)), Struct_3(~(~vec4<u32>(62888u, 0u, global3.x, 0u)), reverseBits(global2.c.x)))), ~vec4<i32>(~(~u_input.b), 1i, -2147483647i, u_input.b));
}

