struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 28>;

var<private> global3: Struct_5 = Struct_5(Struct_2(vec3<f32>(798f, -2215f, -573f), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(false, false, false, true), -438f), Struct_1(vec4<bool>(false, false, false, false), 1817f), Struct_1(vec4<bool>(false, false, false, false), -477f)), Struct_4(vec4<f32>(257f, -107f, -345f, -505f), 35472u, false), 0u);

var<private> global4: array<vec4<i32>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = global3.a;
    var var_1 = global1.c.x;
    let var_2 = vec4<u32>(4294967295u, 1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(13925u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, u_input.a.x), vec4<u32>(19650u, 0u, 33622u, global1.e.x)) & _wgslsmith_mod_u32(arg_0.x, global3.b.b)), firstLeadingBit(global1.e.x | _wgslsmith_dot_vec2_u32(global1.e.yy, u_input.a.zw))), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(global3.b.b, arg_0.x)), firstTrailingBit(arg_0.x)) << (_wgslsmith_mod_u32(global1.e.x, arg_0.x) % 32u));
    var var_3 = !select(false, any(global1.d.b), _wgslsmith_add_i32(global1.c.x, i32(-1i) * -46339i) != ~global1.c.x);
    var var_4 = Struct_5(global3.a, Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.e.b), 1f, _wgslsmith_f_op_f32(var_0.c.b - 1947f), _wgslsmith_f_op_f32(f32(-1f) * -1242f)))), ~global3.b.b, global1.d.b.x), 1u);
    return !vec4<bool>(true, global3.b.c, any(vec2<bool>(true, select(global3.b.c, true, var_0.d.a.x))), any(vec2<bool>(any(global3.a.e.a), global1.c.x < global1.a.x)));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    var var_0 = select(vec2<i32>(_wgslsmith_div_i32(global1.c.x, -27576i), -1i), ~vec2<i32>(abs(global1.a.x) ^ -global1.a.x, abs(2147483647i)), global1.b.yx);
    return select(global3.a.c.a, !select(global1.d.c.a, vec4<bool>(false, global1.d.e.a.x, global1.d.c.a.x || true, false), select(true, global3.b.b < u_input.a.x, false)), !select(!vec4<bool>(false, global3.b.c, arg_0, global3.b.c), select(func_3(vec3<u32>(5920u, global1.e.x, global1.e.x)), global1.d.c.a, vec4<bool>(false, global1.b.x, true, global1.b.x)), !all(global3.a.c.a)));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    global1 = Struct_3(global1.a, global3.a.e.a, select(global1.c | global1.c, max(global1.c, vec3<i32>(global1.a.x & 12557i, _wgslsmith_clamp_i32(2147483647i, global1.a.x, global1.a.x), 1i)), ((global1.c.x >= global1.a.x) || !global3.a.b.x) || true), global3.a, vec3<u32>(~u_input.a.x, 0u, 18664u));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_sub_u32(1u, u_input.a.x)), 1u, firstTrailingBit(global1.e.x), u_input.a.x), u_input.a);
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(global1.e.zy), ~vec2<u32>(global1.e.x, global1.e.x)), vec2<u32>(~global3.b.b, global1.e.x)), vec2<u32>(firstTrailingBit(0u), ~(~(global1.e.x ^ 38179u)))), 28u)];
    global2 = array<Struct_4, 28>();
    global2 = array<Struct_4, 28>();
    return Struct_3(global4[_wgslsmith_index_u32(~global3.b.b, 11u)], arg_1, global1.c, Struct_2(_wgslsmith_f_op_vec3_f32(round(global3.b.a.xwx)), !vec4<bool>(false, true && global1.d.c.a.x, true, all(arg_1.yzw)), global1.d.e, Struct_1(!(!arg_1), -858f), global1.d.e), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xyy, select(vec3<u32>(global3.c, 3717u, u_input.a.x), global1.e, -722f >= global1.d.e.b)), abs(u_input.a.xwy)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = global1.e;
    global1 = func_4(arg_1.a.x, select(vec4<bool>(global3.a.d.a.x, any(vec2<bool>(false, false)), true, !(!arg_0)), !(!func_2(true)), global1.c.x < countOneBits(-2147483647i)), -726f);
    let var_1 = global1.e.x;
    let var_2 = func_2(false).zxz;
    global4 = array<vec4<i32>, 11>();
    return global3.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-global1.a.x | firstLeadingBit(-6538i), global1.a.x, global1.c.x);
    let var_1 = global1.d.d.a.yx;
    var var_2 = -228f;
    let var_3 = ~reverseBits(vec3<u32>(1u, global1.e.x, func_1(global1.d.d.a.x, global1.d.c)));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.x + -1315f) - 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_mod_vec3_i32(global1.a.yxy, var_0)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, global3.a.d.b, global1.d.c.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, global3.b.a.x, -871f))))), vec2<u32>(_wgslsmith_mult_u32(~23222u, _wgslsmith_add_u32(var_3.x, countOneBits(0u))), 0u), _wgslsmith_f_op_f32(-988f - -1000f));
}

