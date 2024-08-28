struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: f32 = -993f;

var<private> global2: array<f32, 12> = array<f32, 12>(709f, -1000f, 461f, 703f, 379f, 161f, -192f, -793f, 322f, 290f, -1000f, -141f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(316f, -125f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(firstLeadingBit(26120u), 12u)]))), vec3<f32>(1f, global2[_wgslsmith_index_u32(47824u, 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f + global2[_wgslsmith_index_u32(u_input.c, 12u)])) * _wgslsmith_div_f32(362f, 724f))));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(u_input.d) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, u_input.d, 20044i, u_input.d), -vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d)), _wgslsmith_sub_i32(-u_input.d, u_input.d)), vec2<i32>(2147483647i, u_input.d));
    let var_3 = Struct_3(2165f, Struct_1(~(~4294967295u), -17212i, countOneBits(0i), global0[_wgslsmith_index_u32(u_input.b.x, 2u)], !all(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, var_0, false), vec3<bool>(arg_0, var_0, arg_0)))), 688f, Struct_2(Struct_1(u_input.c, 57642i >> (_wgslsmith_sub_u32(u_input.b.x, u_input.c) % 32u), ~(-2147483647i), vec4<bool>(!var_0, select(true, true, arg_0), arg_0, arg_0), true), -1i >> (u_input.c % 32u), 348f));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_3.b.a, 12u)], 414f, -643f), vec3<f32>(var_3.d.c, 1411f, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(442f, var_1.x, 1938f), vec3<f32>(var_3.c, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 624f))))))) - vec3<f32>(var_3.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -671f, true)), _wgslsmith_div_f32(-415f, var_1.x))), 464f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, 887f), vec3<f32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(var_3.b.a, 12u)]))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, _wgslsmith_f_op_f32(step(-1335f, 223f)), global2[_wgslsmith_index_u32(~1u, 12u)])))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    global0 = array<vec4<bool>, 2>();
    var var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(arg_0, u_input.c)), _wgslsmith_mod_i32(min(u_input.d | 1i, u_input.d), u_input.d), 2147483647i, !(!vec4<bool>(false, arg_1, arg_1, arg_1)), 1i >= -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(-1i, -10534i))), ~abs(abs(-43730i)), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) >> (arg_0 % 32u), 12u)]);
    global2 = array<f32, 12>();
    var var_1 = all(vec2<bool>(!arg_1, ((0u >> (var_0.a.a % 32u)) > select(27762u, 1u, arg_1)) && true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 268f, -994f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0.a.e | true)))));
    return Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_u32(71555u, u_input.c & 74430u)), firstLeadingBit(u_input.d), -62493i, select(!(!global0[_wgslsmith_index_u32(var_0.a.a, 2u)]), global0[_wgslsmith_index_u32(24295u, 2u)], false), arg_1), -_wgslsmith_sub_i32(-var_0.a.b, 2147483647i), var_2.x);
}

fn func_1() -> f32 {
    let var_0 = func_2(u_input.b.x, true);
    let var_1 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(round(-518f))));
    var var_2 = select(var_0.a.d.xyy, var_0.a.d.xxw, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1726f, 826f, var_0.c, var_0.c))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, -994f, 477f, global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<f32>(var_0.c, global2[_wgslsmith_index_u32(var_0.a.a, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1244f, 1034f, global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]), vec4<f32>(global2[_wgslsmith_index_u32(40763u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], 732f, 556f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(715f, global2[_wgslsmith_index_u32(0u, 12u)], 1000f, 742f), vec4<f32>(1106f, 731f, 1943f, var_0.c))))));
    return 395f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(0u, u_input.d | 1i, -1i, select(vec4<bool>(all(vec2<bool>(true, true)), u_input.d != u_input.d, true, all(vec2<bool>(true, false))), global0[_wgslsmith_index_u32(41668u, 2u)], true), true), countOneBits(~u_input.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), func_2(4294967295u << (u_input.b.x % 32u), true).c)))));
    let var_2 = var_1;
    let var_3 = var_1;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1198f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 12u)], var_1.c), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(var_1.c + var_3.c))))), ~vec2<i32>(-26765i, ~43550i) >> (u_input.b.yz % vec2<u32>(32u)), firstTrailingBit(~reverseBits(vec4<i32>(-2147483647i, -1i, 14914i, -23090i))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(9529u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(13009u, 12u)]) + _wgslsmith_f_op_vec3_f32(vec3<f32>(443f, global2[_wgslsmith_index_u32(var_2.a.a, 12u)], 1050f) + vec3<f32>(var_3.c, var_3.c, var_1.c))))))), vec2<u32>(u_input.a.x, 4294967295u));
}

