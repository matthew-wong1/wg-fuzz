struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<i32, 13> = array<i32, 13>(-1i, 1i, 3734i, 2147483647i, -10916i, 0i, 41678i, 0i, 44712i, 28066i, 1i, 1i, -1i);

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec3<bool>(false, false, false), -1349f, vec2<i32>(1i, 41851i), 33917i, 15084u), vec4<bool>(false, false, true, true)), Struct_3(Struct_1(vec3<bool>(false, false, false), -1000f, vec2<i32>(94390i, -24354i), i32(-2147483648), 0u), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec3<bool>(true, false, false), -1112f, vec2<i32>(2147483647i, 2147483647i), -10806i, 18069u), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(false, true, true), -309f, vec2<i32>(-39705i, 4250i), -30866i, 30919u), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec3<bool>(true, false, true), -135f, vec2<i32>(-1767i, 19616i), 0i, 23536u), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(false, false, false), 855f, vec2<i32>(22914i, 2147483647i), -34477i, 20791u), vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec3<bool>(false, true, false), -575f, vec2<i32>(45632i, 2147483647i), i32(-2147483648), 4294967295u), vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec3<bool>(true, true, false), -397f, vec2<i32>(0i, 1i), 0i, 4294967295u), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec3<bool>(false, true, true), -550f, vec2<i32>(-7144i, i32(-2147483648)), i32(-2147483648), 1u), vec4<bool>(false, false, true, true)), Struct_3(Struct_1(vec3<bool>(false, true, false), 236f, vec2<i32>(-43938i, i32(-2147483648)), 18490i, 59945u), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec3<bool>(false, false, true), 394f, vec2<i32>(-4443i, 12114i), 2147483647i, 114603u), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec3<bool>(false, false, false), -981f, vec2<i32>(-68932i, -4112i), -1i, 25718u), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec3<bool>(false, true, false), -1000f, vec2<i32>(2147483647i, 24076i), 6982i, 87752u), vec4<bool>(false, false, false, false)), Struct_3(Struct_1(vec3<bool>(false, false, false), 912f, vec2<i32>(1i, -23460i), 24099i, 477u), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(false, true, true), -211f, vec2<i32>(i32(-2147483648), 0i), 0i, 0u), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(false, true, true), 785f, vec2<i32>(-80i, 2147483647i), 0i, 1u), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec3<bool>(true, false, false), 599f, vec2<i32>(16305i, -15940i), -31431i, 4294967295u), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec3<bool>(false, false, true), 762f, vec2<i32>(23057i, -7293i), 1i, 1u), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec3<bool>(true, false, true), -1750f, vec2<i32>(28827i, -26249i), -30451i, 0u), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec3<bool>(false, true, true), -320f, vec2<i32>(-43835i, 0i), -77033i, 10801u), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(true, false, false), -1000f, vec2<i32>(1i, 2147483647i), -29281i, 11937u), vec4<bool>(true, true, true, false)));

var<private> global4: array<Struct_3, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(global2.zw + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(global2.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 1345f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.ww))))));
    var var_1 = global4[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 30u)];
    var var_2 = var_1.a.d;
    var var_3 = 0i;
    var_1 = Struct_3(var_1.a, var_1.b);
    return max(~u_input.b.wz, max(vec2<i32>(global1[_wgslsmith_index_u32(1u, 13u)] << (53084u % 32u), 26788i) & -max(var_1.a.c, vec2<i32>(-1i, 22834i)), ~(~countOneBits(u_input.b.zw))));
}

fn func_2() -> Struct_2 {
    let var_0 = any(vec4<bool>(true, true, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), (true | select(false, true, false)) | any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(vec3<bool>(var_0, true, !(_wgslsmith_mult_u32(15457u, u_input.d) < (u_input.c.x << (89774u % 32u)))), global2.x, vec2<i32>(abs(u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_3(-1148f, Struct_1(vec3<bool>(var_0, true, var_0), -435f, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.d, 13u)]), 24875i, global0[_wgslsmith_index_u32(122529u, 13u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 11727u, 0u)), u_input.b.zx), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(9081u, 13u)], 2147483647i, 36580i), vec3<i32>(-19418i, u_input.b.x, 58188i)), u_input.b.yzy))), -_wgslsmith_mult_i32(-2147483647i, u_input.b.x), 20580u);
    global4 = array<Struct_3, 30>();
    global2 = vec4<f32>(global2.x, 164f, global2.x, var_1.b);
    var var_2 = vec3<bool>(true, var_1.a.x == var_1.a.x, ~global0[_wgslsmith_index_u32(var_1.e, 13u)] < _wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.c.x, 80716u), abs(u_input.e)), ~vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(var_1.e, 13u)]) | ~vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(31516u, 13u)])));
    return Struct_2(Struct_1(var_1.a, global2.x, vec2<i32>(_wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(var_1.d, u_input.b.x))), 25249i), -global1[_wgslsmith_index_u32(16867u, 13u)], var_1.e), 145248u, Struct_1(!(!select(var_1.a, var_1.a, vec3<bool>(var_1.a.x, var_2.x, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 828f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), -u_input.b.xw, ~0i, ~1u));
}

fn func_1() -> f32 {
    global1 = array<i32, 13>();
    var var_0 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), any(vec3<bool>(true, true, false))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), false), vec3<bool>(!all(vec4<bool>(false, true, true, false)), !(u_input.b.x > global1[_wgslsmith_index_u32(1u, 13u)]), any(vec2<bool>(false, false))), !vec3<bool>(true, true, u_input.b.x <= 47979i)), vec3<bool>(true, true, true), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), global2.x != global2.x)));
    let var_1 = func_2();
    var var_2 = false;
    global1 = array<i32, 13>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.c.b)), -1086f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3293f - global2.x) * _wgslsmith_f_op_f32(abs(1510f))), -293f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global2.x * global2.x)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1871f, -279f, 1000f, 2168f) + vec4<f32>(global2.x, -627f, -430f, global2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1250f, -1138f, 192f, -545f) + vec4<f32>(global2.x, 996f, 1000f, -783f)))))));
    let var_1 = u_input.b.x;
    let var_2 = -48437i;
    let var_3 = !any(func_2().a.a);
    global1 = array<i32, 13>();
    var var_4 = Struct_4(~(10815i >> (u_input.d % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_vec3_f32(var_0.xyw + _wgslsmith_f_op_vec3_f32(-var_0.xww)));
}

