struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 31>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 0u, 0u);

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<f32>(1386f, -1530f), vec4<i32>(4293i, -22283i, 0i, -86909i), 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(737f, 768f), vec4<i32>(-61010i, 0i, 3704i, 57935i), 0u, vec4<bool>(false, false, true, false)), Struct_1(vec2<f32>(2227f, -1949f), vec4<i32>(-2074i, -1i, i32(-2147483648), 3713i), 30113u, vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(440f, -1776f), vec4<i32>(-1i, i32(-2147483648), 0i, 9197i), 1u, vec4<bool>(false, true, false, false)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    var var_1 = !arg_0.d.x;
    var var_2 = global3[_wgslsmith_index_u32(select(~global2.x, 1u, arg_0.d.x), 4u)];
    let var_3 = 4294967295u;
    var var_4 = arg_0;
    return _wgslsmith_mult_u32(global2.x, global2.x) << (~_wgslsmith_dot_vec2_u32(~(~global2.yx), vec2<u32>(arg_0.c, var_4.c)) % 32u);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(42631u, 4u)];
    var var_1 = global1[_wgslsmith_index_u32(33752u, 31u)];
    var var_2 = _wgslsmith_sub_u32(~(func_3(Struct_1(vec2<f32>(var_1.a.x, -1000f), vec4<i32>(u_input.a, arg_0, var_0.b.x, -32910i), 51019u, arg_1), _wgslsmith_f_op_f32(-var_0.a.x)) << (var_0.c % 32u)), global2.x);
    var var_3 = vec3<u32>(~_wgslsmith_div_u32(22379u, abs(~0u)), _wgslsmith_div_u32(global2.x, ~1u), 98804u | ~_wgslsmith_mult_u32(abs(var_0.c), var_1.c));
    var_2 = ~(~var_1.c);
    return Struct_1(var_1.a, var_1.b, ~abs(536u), vec4<bool>(true, any(vec3<bool>(any(vec2<bool>(false, false)), 0i <= u_input.a, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1422f, var_1.a.x) - _wgslsmith_f_op_f32(-var_0.a.x)) >= _wgslsmith_f_op_f32(-var_1.a.x), any(select(select(vec2<bool>(var_1.d.x, arg_1.x), vec2<bool>(var_1.d.x, var_1.d.x), vec2<bool>(false, var_0.d.x)), !var_1.d.yx, !vec2<bool>(true, arg_1.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_0.c;
    let var_1 = func_2(u_input.b, vec4<bool>(arg_2.x, true, !(!arg_0.d.x), true));
    var_0 = var_1.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.x)), var_1.a.x))), func_2(~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b.x, 23962i, -1i), arg_0.b.xwx), var_1.d).b, firstTrailingBit(~_wgslsmith_mult_u32(21271u, abs(28046u))), arg_2);
    let var_3 = 42135u;
    return 4447u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f * _wgslsmith_f_op_f32(1099f - 980f)))), vec4<i32>(_wgslsmith_mult_i32(74707i ^ u_input.b, 4268i), -abs(-39402i), _wgslsmith_add_i32(1i, u_input.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 33241i), select(vec2<i32>(u_input.a, -1i), vec2<i32>(8477i, -8417i), true))) >> (~vec4<u32>(_wgslsmith_sub_u32(22096u, global2.x), 1u, global2.x, _wgslsmith_mult_u32(0u, global2.x)) % vec4<u32>(32u)), _wgslsmith_mult_u32(25052u, ~global2.x << (4294967295u % 32u)), !vec4<bool>(_wgslsmith_div_u32(25162u, global2.x) > global2.x, !(u_input.b >= u_input.b), any(vec3<bool>(true, true, true)), false));
    let var_1 = Struct_1(var_0.a, vec4<i32>(var_0.b.x, u_input.b, _wgslsmith_div_i32(abs(~u_input.a), 2147483647i), 1i), ~(~(25959u | func_1(Struct_1(vec2<f32>(1233f, 1052f), vec4<i32>(u_input.b, u_input.a, var_0.b.x, var_0.b.x), var_0.c, vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false)), vec3<f32>(var_0.a.x, 578f, 734f), var_0.d))), vec4<bool>(true, select(var_0.d.x, var_0.d.x, false), var_0.d.x, 1968f == var_0.a.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_0.b.x, var_0.b.x, var_1.b.x, -692i)), _wgslsmith_mult_vec4_i32(select(var_0.b, vec4<i32>(var_1.b.x, var_1.b.x, u_input.a, var_0.b.x), true), vec4<i32>(0i, var_0.b.x, var_1.b.x, 1i))) ^ reverseBits(vec4<i32>(var_0.b.x | var_1.b.x, -2147483647i, 1i, ~u_input.b)), 31873u, func_2(_wgslsmith_mult_i32(1i, var_1.b.x), !vec4<bool>(!var_0.d.x, all(vec3<bool>(var_0.d.x, false, false)), var_0.d.x, !var_1.d.x)).d);
    var var_2 = var_0.a.x;
    let var_3 = vec4<u32>(func_1(func_2(~var_1.b.x, vec4<bool>(all(vec4<bool>(false, false, false, var_0.d.x)), false & var_0.d.x, var_0.d.x, true)), vec3<f32>(_wgslsmith_f_op_f32(max(3108f, -995f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1436f, 1000f))), select(vec4<bool>(true, true, !var_0.d.x, var_0.d.x && true), var_1.d, var_1.d.x)), func_3(global1[_wgslsmith_index_u32(0u, 31u)], var_1.a.x), 1u, (global2.x << (0u % 32u)) << (~var_1.c % 32u));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-321f + -609f) + _wgslsmith_f_op_f32(min(1321f, var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x * 1000f))), 692f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), -191f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 1639f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, 1220f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, var_1.a.x, -2112f), vec3<f32>(791f, 944f, 1036f)))))));
    var var_5 = countOneBits(max(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_3, vec4<u32>(0u, 20874u, 0u, 0u)), var_3), vec4<u32>(var_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(51002u, 16359u, 21898u), vec3<u32>(var_1.c, var_1.c, var_1.c)) | _wgslsmith_mult_u32(var_1.c, var_1.c), firstLeadingBit(var_0.c) << (1u % 32u), (var_1.c | 21469u) | 41539u)));
    var var_6 = func_2(-9996i, !(!vec4<bool>(var_0.d.x, any(var_1.d.zwy), 79715u >= global2.x, all(vec3<bool>(true, true, var_0.d.x)))));
    global2 = _wgslsmith_mult_vec4_u32(var_3, _wgslsmith_add_vec4_u32(var_3, vec4<u32>(countOneBits(var_1.c), abs(var_5.x), var_5.x, ~1u) ^ ~vec4<u32>(global2.x, 48082u, 54038u, 77319u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

