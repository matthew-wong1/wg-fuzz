struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 4> = array<u32, 4>(61237u, 53091u, 26074u, 1u);

var<private> global2: array<bool, 25>;

var<private> global3: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_4(u_input.a, !arg_1);
    global3 = array<vec4<bool>, 25>();
    let var_1 = Struct_1(false);
    var var_2 = select(u_input.c.x, 2147483647i ^ _wgslsmith_div_i32(u_input.c.x, _wgslsmith_add_i32(0i << (0u % 32u), 2147483647i)), select(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.xz, vec2<u32>(u_input.d.x, 1u)), _wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80459u, 4u)], 4u)]))) == _wgslsmith_add_u32(u_input.b, 4294967295u), true, !(countOneBits(u_input.c.x) != -arg_0.x)));
    return 37752u << (_wgslsmith_div_u32(~global0.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.x, u_input.d.x), 1u) >> (22346u % 32u)) % 32u);
}

fn func_3() -> vec2<u32> {
    global2 = array<bool, 25>();
    return ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~max(u_input.a.yx, u_input.a.zx), vec2<u32>(1u >> (global1[_wgslsmith_index_u32(1u, 4u)] % 32u), 4294967295u)), firstTrailingBit(u_input.d));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = arg_2.a.x;
    var var_1 = _wgslsmith_mod_u32(func_3().x, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 4u)]), ~global1[_wgslsmith_index_u32(global0.x, 4u)], ~u_input.a.x), u_input.a)), 4u)]);
    var_1 = ~u_input.a.x;
    var var_2 = !vec4<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(u_input.b, 4u)], 24985u), 25u)], all(vec2<bool>(false, global2[_wgslsmith_index_u32(21686u, 25u)])))), global1[_wgslsmith_index_u32(~u_input.a.x << (~u_input.d.x % 32u), 4u)] > max(0u, ~4294967295u), all(vec2<bool>(true, true)), any(select(vec2<bool>(true, arg_1.a), !vec2<bool>(false, global2[_wgslsmith_index_u32(51431u, 25u)]), vec2<bool>(global2[_wgslsmith_index_u32(26727u, 25u)], true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 364f, arg_2.a.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), -1252f, _wgslsmith_f_op_f32(ceil(525f))));
    return 51198u;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    let var_0 = arg_2;
    return vec4<u32>(func_2(max(arg_1, u_input.c), _wgslsmith_f_op_f32(-var_0.a.x) == var_0.a.x, vec2<f32>(882f, var_0.a.x)), global1[_wgslsmith_index_u32(0u << (~global0.x % 32u), 4u)], func_4(select(u_input.a.xx, func_3(), !vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 25u)])), Struct_1(false), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(435f, _wgslsmith_f_op_f32(1410f + arg_2.a.x), false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.x)) + _wgslsmith_f_op_f32(-arg_2.a.x)))), ~(~global1[_wgslsmith_index_u32(~max(0u, global0.x), 4u)]));
}

fn func_5(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1693f, -345f), vec2<f32>(1099f, -2667f), vec2<bool>(true, false))), vec2<f32>(2392f, -182f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(404f, -106f) * vec2<f32>(1113f, -658f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(235f)))), 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1316f)), _wgslsmith_div_f32(-1693f, 604f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-105f, _wgslsmith_f_op_f32(var_0.x * var_0.x), global2[_wgslsmith_index_u32(10335u, 25u)])), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-812f, var_0.x))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a.yy)));
    global0 = u_input.d;
    global3 = array<vec4<bool>, 25>();
    return Struct_4(vec3<u32>(global0.x, global0.x, min(39199u >> (1u % 32u), _wgslsmith_div_u32(1u, 44039u))), true & any(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 25u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 25u)], global2[_wgslsmith_index_u32(arg_0.x, 25u)]), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 25u)], global2[_wgslsmith_index_u32(76390u, 25u)], true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(global0.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(global0.x, 25u)]))));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = Struct_1(true);
    var var_1 = Struct_1(var_0.a);
    global0 = firstTrailingBit(vec2<u32>(~arg_2.a.x | ~global1[_wgslsmith_index_u32(103902u, 4u)], 4294967295u) << (u_input.a.xz % vec2<u32>(32u)));
    var var_2 = Struct_3(vec2<bool>(arg_1.x, var_0.a), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), -vec3<i32>(u_input.c.x, u_input.c.x, -29407i)), firstLeadingBit(~vec3<i32>(1i, u_input.c.x, 0i)))), vec4<bool>(all(vec3<bool>(any(arg_1.zy), false, true == global2[_wgslsmith_index_u32(arg_2.a.x, 25u)])), !arg_1.x, arg_1.x, !any(!arg_1.zz)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1056f, -2532f))));
    global0 = firstLeadingBit(vec2<u32>(0u, 1u));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~global0.x, vec3<bool>(any(!vec3<bool>(global2[_wgslsmith_index_u32(23089u, 25u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71733u, 4u)], 25u)])), true, true), func_5(select(~vec4<u32>(55536u, 4294967295u, 6540u, global1[_wgslsmith_index_u32(11087u, 4u)]) | func_1(true, u_input.c, Struct_2(vec3<f32>(-1000f, -578f, -388f)), 925f), ~vec4<u32>(global0.x, global1[_wgslsmith_index_u32(107271u, 4u)], 4294967295u, 0u), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)] < 52156u, !global2[_wgslsmith_index_u32(35796u, 25u)], true))));
    let var_1 = Struct_1(all(vec3<bool>(false, true, true)));
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    global0 = reverseBits(u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -339f))), _wgslsmith_f_op_f32(step(505f, -804f)))), u_input.c.x & -16217i, ~(~(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(48205u, 4u)], u_input.d.x))), vec3<u32>(~0u, var_0.a.x, ~1u), 27515i);
}

