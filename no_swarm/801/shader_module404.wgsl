struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec3<f32>(1111f, 676f, -362f), vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<f32>(-250f, -526f, -2792f, 136f), vec2<f32>(550f, 1551f), 8184u, vec2<i32>(-1i, 1i))), 88989u));

var<private> global1: Struct_5;

var<private> global2: Struct_4;

var<private> global3: Struct_4 = Struct_4(vec3<f32>(465f, 170f, 1516f), vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<f32>(-1000f, -1480f, -439f, -1793f), vec2<f32>(675f, 318f), 1u, vec2<i32>(-44172i, -1i))), 1u);

var<private> global4: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec2<i32> {
    let var_0 = ~vec4<i32>(_wgslsmith_sub_i32(global1.a, global3.c.a.d.x) ^ max(-u_input.b, -6531i), -2147483647i, -44272i, 1i);
    return ~(-vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global3.c.a.d.x, 0i, global2.c.a.d.x), var_0.wxx, global3.b), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.a.d.x, global2.c.a.d.x, 17879i), var_0.zzy)), 33115i));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec4<u32>(58647u >> (_wgslsmith_div_u32(global1.b.x, firstTrailingBit(u_input.a.x)) % 32u), 4294967295u, global1.b.x, 4926u);
    let var_1 = global1.a;
    global0 = array<Struct_4, 1>();
    let var_2 = reverseBits(reverseBits(_wgslsmith_mult_i32(-56310i, ~arg_0.x)));
    return global2.c;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = vec4<bool>(1i > global3.c.a.d.x, !any(global3.b), global2.b.x, true);
    var var_1 = Struct_5(_wgslsmith_mult_i32(reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(974i, 16086i, global3.c.a.d.x, global3.c.a.d.x), vec4<i32>(1i, -16228i, 0i, 9160i))), global1.a), vec4<u32>(func_2((global2.c.a.d | u_input.c) << (vec2<u32>(u_input.a.x, 76244u) % vec2<u32>(32u))).a.c, ~(~global3.d), u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.d, global2.d), 4294967295u)), vec3<f32>(global3.c.a.a.x, _wgslsmith_f_op_f32(global3.c.a.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) - _wgslsmith_f_op_f32(sign(global2.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(-global3.a.x))))));
    let var_2 = global3.c.a.a.yzw;
    var var_3 = !(!select(select(select(var_0, vec4<bool>(global3.b.x, global2.b.x, true, false), vec4<bool>(true, global3.b.x, var_0.x, false)), vec4<bool>(true, global3.b.x, var_0.x, true), !var_0.x), select(select(vec4<bool>(global2.b.x, false, var_0.x, false), vec4<bool>(false, global3.b.x, global2.b.x, global3.b.x), vec4<bool>(global2.b.x, global2.b.x, true, false)), var_0, var_0), !select(vec4<bool>(global2.b.x, global3.b.x, global3.b.x, var_0.x), vec4<bool>(false, false, var_0.x, true), var_0)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.x)));
    return firstTrailingBit(_wgslsmith_mult_u32(35951u, ~_wgslsmith_add_u32(~8121u, ~global3.c.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global1.c, !vec3<bool>(global3.b.x, global3.b.x, true), Struct_2(global3.c.a), 0u);
    global2 = global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_div_u32(0u, 4294967295u))), 1u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.c.a.a))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), -(77883i >> (global2.c.a.c % 32u)) < ~51425i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.x), var_1.x)))), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1823f) * global3.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.c.a.a.wxy);
    var var_3 = func_2(_wgslsmith_add_vec2_i32(vec2<i32>(global1.a, min(global3.c.a.d.x, 28217i) ^ countOneBits(global2.c.a.d.x)), func_1(global2.b.x, vec3<u32>(global3.d, global2.c.a.c, _wgslsmith_dot_vec2_u32(global1.b.xx, vec2<u32>(global1.b.x, global2.c.a.c))), global1.b.xzy)));
    var var_4 = 1u < _wgslsmith_add_u32(var_3.a.c, ~(~1u));
    global3 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, 340f, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1107f, global3.c.a.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.a.b.x, global1.c.x, -476f)))))), var_0.b, global3.c, var_0.c.a.c);
    let var_5 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~var_0.d, ~4294967295u, func_3(vec2<i32>(-17358i, 1i))), ~4294967295u, 4294967295u), global1.b.xzy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c.a.a)), _wgslsmith_div_u32(var_3.a.c >> (71755u % 32u), _wgslsmith_sub_u32(~0u, 4294967295u)), u_input.a);
}

