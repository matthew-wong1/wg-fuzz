struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false));

var<private> global1: u32 = 56173u;

var<private> global2: array<i32, 2> = array<i32, 2>(-1i, -13207i);

var<private> global3: array<vec4<f32>, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = array<vec4<f32>, 24>();
    var var_0 = -1265f;
    var var_1 = arg_0.a.zx;
    global1 = 68514u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, 148f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1117f, arg_0.b, 927f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-291f, -334f, arg_0.b) * vec3<f32>(arg_0.b, arg_0.b, -1075f)))))));
    return Struct_1(arg_0.a, var_2.x, select(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(4294967295u, ~1u)), max(~(u_input.a.x >> (arg_0.c % 32u)), min(u_input.a.x, 50969u)), true), u_input.b & u_input.d.x);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    var var_0 = ~vec4<u32>(~0u, ~4294967295u, select(4294967295u, min(u_input.a.x, u_input.a.x), true), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x, u_input.a.x), arg_0.x)) << (max(vec4<u32>(4294967295u, arg_0.x, abs(arg_0.x) | 0u, ~4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 10375u, ~4294967295u, u_input.a.x), ~countOneBits(vec4<u32>(u_input.a.x, arg_0.x, 2547u, 11325u)))) % vec4<u32>(32u));
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    let var_1 = vec4<i32>(_wgslsmith_add_i32(countOneBits(~23938i), u_input.c), -global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, max(arg_0.x & arg_0.x, u_input.a.x)), 2u)], -global2[_wgslsmith_index_u32(abs(u_input.a.x), 2u)], select(min(25563i, global2[_wgslsmith_index_u32(~32211u, 2u)]), -16944i, !arg_2.x && true));
    var var_2 = vec4<bool>(true, arg_1, arg_1, false);
    return func_2(func_2(func_2(func_2(Struct_1(vec3<bool>(false, false, var_2.x), arg_3, arg_0.x, -2938i))))).c;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = max(countOneBits(~(~arg_1.c << (_wgslsmith_div_u32(0u, arg_1.c) % 32u))), 4294967295u);
    global1 = abs(~abs((23139u ^ u_input.a.x) | u_input.a.x));
    let var_1 = func_2(Struct_1(vec3<bool>(arg_0, arg_1.a.x && arg_0, !(16738u == arg_1.c)), _wgslsmith_f_op_f32(-arg_1.b), ~(~arg_1.c ^ firstTrailingBit(1u)), -2147483647i));
    global1 = _wgslsmith_add_u32(0u, ~(~(func_3(vec3<u32>(var_1.c, var_1.c, u_input.a.x), var_1.a.x, vec4<bool>(arg_1.a.x, true, true, var_1.a.x), arg_1.b) ^ ~20577u)));
    let var_2 = Struct_1(select(!(!arg_1.a), select(vec3<bool>(select(false, false, true), var_1.a.x, true), arg_1.a, 4294967295u != (arg_1.c << (0u % 32u))), vec3<bool>(var_1.c < u_input.a.x, all(global0[_wgslsmith_index_u32(arg_1.c ^ u_input.a.x, 25u)]), any(arg_1.a))), 1400f, ~func_3(u_input.a, ~u_input.a.x >= _wgslsmith_mult_u32(u_input.a.x, 33320u), vec4<bool>(false, arg_0, arg_0, arg_1.c >= var_1.c), -461f), 10827i);
    return select(select(vec4<bool>(false, !var_2.a.x, func_2(var_1).a.x, var_1.a.x), !select(vec4<bool>(false, var_2.a.x, false, var_1.a.x), global0[_wgslsmith_index_u32(15458u | var_2.c, 25u)], select(global0[_wgslsmith_index_u32(var_2.c, 25u)], global0[_wgslsmith_index_u32(22454u, 25u)], true)), vec4<bool>(select(all(global0[_wgslsmith_index_u32(arg_1.c, 25u)]), !var_2.a.x, false), all(var_2.a.yy) & true, true, !arg_0)), select(vec4<bool>(true, false, _wgslsmith_div_f32(-1489f, var_1.b) >= -1122f, _wgslsmith_f_op_f32(-256f * var_2.b) >= _wgslsmith_f_op_f32(min(685f, arg_1.b))), !global0[_wgslsmith_index_u32(~0u, 25u)], !global0[_wgslsmith_index_u32(var_2.c | 4294967295u, 25u)]), all(select(var_2.a.zx, !func_2(Struct_1(var_1.a, arg_1.b, var_1.c, 34596i)).a.yy, func_2(var_2).a.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(any(func_1(any(vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), -1083f, u_input.a.x, 29693i))) != (~_wgslsmith_mod_i32(u_input.d.x, u_input.b) != u_input.c));
    var var_1 = min(firstLeadingBit(~(~vec3<i32>(1i, -8703i, u_input.c) ^ vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.c))), vec3<i32>(~u_input.d.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(219i, global2[_wgslsmith_index_u32(15708u, 2u)], -2147483647i), vec3<i32>(-2147483647i, 3630i, 0i)), 0i), 0i));
    var var_2 = reverseBits(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(67526u, 13985u), vec2<u32>(u_input.a.x, u_input.a.x)), 146235u, 8722u)) >> (u_input.a % vec3<u32>(32u));
    global2 = array<i32, 2>();
    let var_3 = vec4<bool>(any(func_2(func_2(Struct_1(vec3<bool>(false, var_0, var_0), -1485f, var_2.x, 4755i))).a), !var_0, !var_0, var_0);
    let var_4 = ~54635u;
    var var_5 = 92202i;
    var_5 = var_1.x;
    global0 = array<vec4<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~min(min(reverseBits(vec3<i32>(-1293i, 1i, 2147483647i)), select(vec3<i32>(var_1.x, 47461i, u_input.b), vec3<i32>(0i, var_1.x, u_input.b), var_3.yzz)), select(vec3<i32>(-26188i, -2147483647i, 29119i), vec3<i32>(-2147483647i, 1i, 3050i), var_3.wzz)));
}

