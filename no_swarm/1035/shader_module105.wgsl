struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec4<bool>(true, true, true, true), vec2<u32>(1u, 4294967295u)), Struct_3(vec4<bool>(false, true, true, true), vec2<u32>(37519u, 1u)), Struct_3(vec4<bool>(false, false, true, false), vec2<u32>(54976u, 71063u)), Struct_3(vec4<bool>(false, true, true, false), vec2<u32>(84468u, 0u)), Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(6811u, 4294967295u)));

var<private> global1: array<vec3<bool>, 25>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1684f))))), 1000f, 643f, -1458f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(269f, _wgslsmith_f_op_f32(497f - 912f), _wgslsmith_f_op_f32(548f * 413f), -846f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-148f, -448f, -265f, 1005f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2694f, -367f, -1232f, -239f) - vec4<f32>(1000f, 622f, 1333f, 258f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, -1382f, -554f, -290f)))))));
    var var_2 = !select(vec4<bool>(arg_1, _wgslsmith_div_u32(0u, 1u) <= ~arg_2.a.a.x, arg_1 | arg_1, arg_1), !select(!vec4<bool>(arg_1, true, arg_1, arg_1), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, true, true, arg_1), arg_1), vec4<bool>(arg_1, false, arg_1, arg_1)), select(!(!vec4<bool>(false, false, true, arg_1)), select(select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(true, false, arg_1, false), vec4<bool>(arg_1, arg_1, false, true)), vec4<bool>(arg_1, arg_1, arg_1, arg_1), var_1.x >= var_1.x), arg_1));
    var var_3 = var_0.b.x;
    var var_4 = Struct_1(select(abs(firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.a.x, 0u, arg_2.a.a.x)))), var_0.a.a, var_2.x));
    return !global1[_wgslsmith_index_u32(~var_4.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, reverseBits(arg_2.a.a.x), var_4.a.x ^ 0u), ~vec3<u32>(arg_3, 4294967295u, 65849u)), 25u)];
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<u32>(1u, 1u, u_input.e, _wgslsmith_add_u32(~1u, ~(~_wgslsmith_mult_u32(0u, u_input.b.x))));
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1461f, _wgslsmith_f_op_f32(-627f * 1147f), true))) >= _wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1014f)) - _wgslsmith_f_op_f32(f32(-1f) * -588f))));
    let var_2 = select(!select(func_3(Struct_2(Struct_1(vec3<u32>(60897u, 0u, u_input.e)), vec4<i32>(-39035i, u_input.c, u_input.c, 2500i)), all(vec4<bool>(true, true, false, true)), Struct_2(Struct_1(var_0.xyz), vec4<i32>(u_input.d.x, u_input.c, 14919i, u_input.c)), _wgslsmith_mult_u32(u_input.e, var_0.x)), vec3<bool>(all(vec2<bool>(true, false)), true, false), !select(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], false)), select(select(!func_3(Struct_2(Struct_1(u_input.a), vec4<i32>(u_input.c, u_input.c, u_input.c, 10125i)), true, Struct_2(Struct_1(vec3<u32>(var_0.x, var_0.x, 0u)), vec4<i32>(-4919i, u_input.d.x, 32502i, u_input.d.x)), u_input.a.x), global1[_wgslsmith_index_u32(31792u, 25u)], select(false, true, 4294967295u >= var_0.x)), vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(5280u, 25u)]), true);
    let var_3 = !(!vec4<bool>(true, true, select(true, false, var_0.x <= 34870u), !var_2.x == true));
    let var_4 = reverseBits(var_0);
    return Struct_2(Struct_1(min(vec3<u32>(0u, 28620u, 4294967295u), u_input.a) >> (var_0.wxw % vec3<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, u_input.d.x, _wgslsmith_add_i32(9200i, 0i)), select(~vec4<i32>(u_input.d.x, 20973i, 1i, 0i), countOneBits(vec4<i32>(u_input.c, 1i, u_input.c, u_input.c)), vec4<bool>(true, var_2.x, false, var_2.x)), vec4<i32>(-u_input.c, u_input.c & 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 1i), vec3<i32>(u_input.c, u_input.d.x, u_input.c)), -1i)) << (~(~abs(var_0)) % vec4<u32>(32u)));
}

fn func_1() -> vec4<bool> {
    global1 = array<vec3<bool>, 25>();
    var var_0 = func_2();
    global0 = array<Struct_3, 5>();
    let var_1 = func_2().a;
    let var_2 = Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, select(true, true, 2147483647i < var_0.b.x), true), func_3(Struct_2(var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, 1i, u_input.c, u_input.c), var_0.b)), any(!global1[_wgslsmith_index_u32(4294967295u, 25u)]), Struct_2(func_2().a, vec4<i32>(u_input.d.x, 536i, 58884i, 0i) >> (vec4<u32>(u_input.e, 4294967295u, 28190u, 97818u) % vec4<u32>(32u))), var_0.a.a.x).x), var_1.a.xy);
    return select(select(!var_2.a, var_2.a, true), select(var_2.a, select(!select(vec4<bool>(var_2.a.x, false, var_2.a.x, true), vec4<bool>(var_2.a.x, true, true, true), var_2.a), select(!var_2.a, var_2.a, vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x)), true), vec4<bool>(true, true, true, var_2.a.x)), vec4<bool>(var_2.a.x, true, var_2.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1521f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) * 556f))) * 1f), _wgslsmith_f_op_f32(-545f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(337f))));
    var var_1 = any(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true), select(func_1(), vec4<bool>(true, true, true, true), func_1()), any(vec2<bool>(true, true)))) && all(vec4<bool>(all(func_1().xx), any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)), 1411f > _wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_2 = _wgslsmith_div_vec3_u32(~(_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.a), vec3<u32>(4294967295u, 36716u, u_input.a.x) >> (vec3<u32>(25478u, 0u, u_input.a.x) % vec3<u32>(32u))) ^ u_input.a), u_input.a);
    global0 = array<Struct_3, 5>();
    var var_3 = Struct_2(Struct_1(u_input.a), _wgslsmith_mod_vec4_i32(-vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(6822i, -6206i), ~(-44101i), u_input.d.x << (4294967295u % 32u)), func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(~vec3<u32>(u_input.e, 5904u, u_input.a.x)) ^ u_input.a), -vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_3.b.x, 2147483647i), vec3<i32>(var_3.b.x, u_input.c, -2147483647i)), var_3.b.x, ~(2147483647i & var_3.b.x)), var_3.a.a, 1u);
}

