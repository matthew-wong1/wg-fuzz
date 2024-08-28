struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1943f, -830f, 513f), vec3<f32>(1000f, 518f, 1000f), false, vec4<f32>(-1931f, 1040f, 774f, 1059f), vec3<bool>(false, false, false));

var<private> global2: array<Struct_2, 25>;

var<private> global3: i32 = 2147483647i;

var<private> global4: array<vec3<u32>, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    let var_0 = Struct_2(reverseBits(u_input.c), Struct_1(vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) + global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d.x, -660f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1363f, -147f, global1.a.x))))), !(all(global1.e.zy) | global1.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d) * _wgslsmith_f_op_vec4_f32(-global1.d)) * global1.d), vec3<bool>(true, true, true)), -1422f);
    let var_1 = vec2<f32>(829f, -416f);
    global4 = array<vec3<u32>, 5>();
    global2 = array<Struct_2, 25>();
    global0 = array<vec4<bool>, 28>();
    return true;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(~(~arg_1), arg_1), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_3.d.yyw)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-116f, arg_3.a.x, global1.b.x), global1.d.zyx, vec3<bool>(global1.c, false, true))))), _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -1293f, global1.a.x) * arg_3.d.xwz)), arg_3.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_3.d))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global1.d + arg_3.d)))), !vec3<bool>(arg_0 == u_input.b.x, select(false, false, false), !global1.e.x)), -345f);
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(min(_wgslsmith_add_i32(u_input.b.x, arg_0), 0i), 11294i, arg_0, 1i);
    var var_2 = !(arg_1 < ~0u);
    var var_3 = arg_3;
    var_3 = Struct_1(arg_3.d.ywz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.b.x)) * _wgslsmith_div_f32(var_3.b.x, -1708f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f - -800f)))), select(!arg_3.e.x, !arg_2.x, true), vec4<f32>(arg_3.d.x, _wgslsmith_f_op_f32(-var_3.b.x), arg_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(arg_3.e, !select(select(vec3<bool>(var_0.b.c, arg_2.x, var_0.b.c), vec3<bool>(true, false, var_3.c), false), arg_3.e, true), vec3<bool>(global1.e.x && all(vec2<bool>(arg_3.e.x, false)), var_0.b.c == var_3.c, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) - _wgslsmith_f_op_f32(-var_0.c));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> u32 {
    global0 = array<vec4<bool>, 28>();
    var var_0 = (select(global1.e.x, true, func_2()) && (arg_0 & (false != global1.c))) && all(global1.e);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1056f, _wgslsmith_f_op_f32(func_3(u_input.b.x, u_input.a.x, global1.e, Struct_1(vec3<f32>(global1.b.x, global1.a.x, global1.b.x), vec3<f32>(1000f, -138f, 407f), arg_0, vec4<f32>(-2259f, -2018f, global1.b.x, global1.b.x), global1.e))), global1.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, -1870f, global1.d.x)))) + global1.d.ywx), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(func_3(1i, 86995u, global1.e, Struct_1(global1.a, vec3<f32>(global1.d.x, global1.d.x, -2290f), false, global1.d, global1.e)))) * _wgslsmith_div_f32(731f, -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * 272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(-global1.d.x)))), func_2(), global1.d, !(!vec3<bool>(true, !global1.e.x, arg_2 > u_input.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) * global1.b) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(global1.d.x, -428f, global1.d.x), false)) - _wgslsmith_f_op_vec3_f32(-global1.b))))), global1.d.wyz, arg_1 < ~u_input.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 477f, 1000f, -418f) + vec4<f32>(215f, 797f, global1.b.x, 1293f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.a.x, 1000f, -2483f)))))), global1.e);
    let var_2 = false;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1823f, global1.a.x, 302f) + vec3<f32>(global1.a.x, 1000f, -1247f)) + _wgslsmith_f_op_vec3_f32(floor(global1.d.zyy))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, global1.b.x, 479f)), vec3<f32>(-833f, global1.d.x, global1.b.x))))) * _wgslsmith_f_op_vec3_f32(min(global1.d.zwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1613f, -804f, global1.b.x))) + global1.a))));
    let var_2 = 365f;
    var_1 = global1.d.wyw;
    let var_3 = reverseBits(abs(u_input.d.x));
    var var_4 = global2[_wgslsmith_index_u32(func_1(all(vec4<bool>(any(global1.e), false, all(vec2<bool>(global1.c, false)), true)) || (global1.d.x > _wgslsmith_f_op_f32(-909f - var_2)), _wgslsmith_div_u32(~48935u, countOneBits(var_3)), -_wgslsmith_mod_i32(i32(-1i) * -17881i, u_input.b.x)), 25u)];
    let var_5 = Struct_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_4.a, _wgslsmith_dot_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(var_3, var_4.a, var_3, var_4.a), vec4<bool>(true, global1.e.x, var_4.b.c, true)))), ~93422u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_4.b.b)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, -1161f, -1577f), global1.b))) - _wgslsmith_f_op_vec3_f32(var_4.b.d.wyw * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1616f, 1093f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2335f, var_2, -1955f) * vec3<f32>(var_4.c, global1.d.x, var_2)) - vec3<f32>(global1.a.x, 1288f, var_1.x))), var_4.b.c, _wgslsmith_f_op_vec4_f32(exp2(var_4.b.d)), var_4.b.e), -907f);
    let x = u_input.a;
    s_output = StorageBuffer(-1819f, _wgslsmith_mult_u32(var_4.a >> (var_4.a % 32u), 7269u));
}

