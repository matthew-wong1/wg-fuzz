struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec2<i32>(3898i, 20849i), 1u, false);

var<private> global2: array<vec3<u32>, 13>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(-17677i, -48268i), 14095u, true), 1u, Struct_1(vec2<bool>(true, false), vec2<i32>(35582i, -10575i), 85587u, true));

var<private> global4: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(f32(-1f) * -125f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1175f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -296f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1579f) * -235f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-134f, -615f)), 944f) - vec4<f32>(_wgslsmith_f_op_f32(-387f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-854f)), _wgslsmith_f_op_f32(max(886f, -1168f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1582f)))))), 1f, _wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(ceil(-240f)))));
    let var_1 = ~(~vec3<u32>(global1.c, 30770u, ~select(0u, arg_3.c, false)));
    var var_2 = vec4<bool>(false, global3.a.a.x, any(global3.c.a), global3.c.d);
    global2 = array<vec3<u32>, 13>();
    let var_3 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(false, arg_3.a.x), true), arg_3.a, global3.a.a), -global0[_wgslsmith_index_u32(max(~(global3.b << (4294967295u % 32u)), 0u), 5u)], _wgslsmith_div_u32(~(~_wgslsmith_mod_u32(59735u, 1u)), ~global3.b), !global3.c.a.x);
    return ~1u;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(15603i, -2147483647i), vec2<i32>(global3.c.b.x, 15641i), true), vec2<i32>(u_input.e.x, 38864i)), -2147483647i), 1i);
    global1 = global3.c;
    global3 = Struct_2(Struct_1(!global3.a.a, _wgslsmith_clamp_vec2_i32(~firstTrailingBit(vec2<i32>(1i, global3.c.b.x)), vec2<i32>(~var_0, countOneBits(1i)), ~vec2<i32>(global3.a.b.x, 1i)), 44148u, select(global3.c.d, false, select(any(vec2<bool>(global3.a.d, global3.a.d)), 12179i < global1.b.x, global1.d))), ~func_3(_wgslsmith_mult_u32(74265u, global3.b), global1.a.x, _wgslsmith_mod_u32(global1.c, u_input.c.x), global3.a) >> (0u % 32u), Struct_1(select(!vec2<bool>(global3.c.d, global3.c.d), global4[_wgslsmith_index_u32(505u, 27u)], select(global3.c.a, vec2<bool>(true, global1.d), global1.d)), max(-vec2<i32>(global1.b.x, -97530i), -_wgslsmith_add_vec2_i32(u_input.e.zw, u_input.e.ww)), 1u, false));
    let var_1 = _wgslsmith_sub_vec3_i32(max(_wgslsmith_div_vec3_i32(-abs(vec3<i32>(var_0, -2147483647i, var_0)), u_input.e.xyw), vec3<i32>(_wgslsmith_mod_i32(~u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, -5198i, -13509i), u_input.e.yww)), u_input.e.x, countOneBits(global1.b.x))), ~(~firstLeadingBit(vec3<i32>(var_0, u_input.e.x, var_0))));
    var var_2 = select(!vec4<bool>(global3.a.d, true, global1.d, global3.a.a.x), !vec4<bool>(!(!global1.d), all(global3.a.a), !global1.d, (global1.c ^ global1.c) > u_input.a), select(global1.a.x, any(global4[_wgslsmith_index_u32(1u, 27u)]), any(select(vec4<bool>(global3.c.d, true, false, false), select(vec4<bool>(global1.a.x, false, false, global3.c.d), vec4<bool>(false, true, true, true), vec4<bool>(global3.c.d, global3.c.d, true, global3.a.a.x)), true))));
    return u_input.d;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(global3.a.a, ~(~select(vec2<i32>(-2147483647i, 2147483647i), global3.c.b, global4[_wgslsmith_index_u32(u_input.d, 27u)]) << (vec2<u32>(15564u, global1.c) % vec2<u32>(32u))), ~firstTrailingBit(~(global1.c >> (u_input.b % 32u))), true);
    global0 = array<vec2<i32>, 5>();
    let var_1 = vec2<bool>(true, false);
    global1 = var_0;
    let var_2 = vec4<u32>(1u, u_input.a, global3.a.c, 22540u);
    return Struct_2(var_0, func_2(), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    let var_0 = func_1();
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, firstLeadingBit(22214u), global3.b, global3.a.c ^ 2999u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 26407u, var_0.b, global1.c) ^ vec4<u32>(global1.c, 14160u, u_input.b, u_input.a), vec4<u32>(8926u, var_0.a.c, 73992u, global3.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 73077u, global1.c, 1u), vec4<u32>(1u, var_0.c.c, var_0.c.c, 0u))) % vec4<u32>(32u)), ~((vec4<u32>(1u, 29508u, 35791u, 4294967295u) & vec4<u32>(global1.c, var_0.a.c, 69441u, 4294967295u)) << ((vec4<u32>(u_input.c.x, 1944u, var_0.a.c, global3.c.c) >> (vec4<u32>(70198u, 0u, 0u, 21483u) % vec4<u32>(32u))) % vec4<u32>(32u)))), ~(~vec4<u32>(global3.a.c, global3.b, var_0.a.c, 52421u) | ~countOneBits(vec4<u32>(101876u, global3.a.c, 4294967295u, global1.c))));
    global4 = array<vec2<bool>, 27>();
    global2 = array<vec3<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(754f)), _wgslsmith_f_op_f32(2121f - 334f))), _wgslsmith_f_op_f32(ceil(-1087f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-205f, 520f, var_0.a.d)), _wgslsmith_f_op_f32(floor(-160f)), 0u >= var_1.x))))));
}

