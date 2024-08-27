struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<bool, 5>;

var<private> global3: array<vec2<f32>, 19>;

var<private> global4: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, reverseBits(14793u) ^ ~max(arg_0 >> (global4.x % 32u), global4.x | 3809u)), 4u)];
    global3 = array<vec2<f32>, 19>();
    var var_1 = Struct_4(2784f, Struct_3(Struct_2(select(arg_2, ~vec3<u32>(var_0.d.x, 39984u, var_0.a), false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -1000f, arg_3) - vec3<f32>(arg_3, 651f, 223f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, -1991f, 133f))))), global1[_wgslsmith_index_u32(46952u, 4u)], arg_3), arg_1.b);
    let var_2 = 0i;
    let var_3 = !select(select(select(vec3<bool>(var_0.c, true, true), vec3<bool>(arg_1.c, var_0.c, arg_1.c), select(vec3<bool>(true, false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(15740u, 5u)], true), global2[_wgslsmith_index_u32(arg_2.x, 5u)])), !vec3<bool>(var_0.c, true, true), select(!vec3<bool>(var_0.c, false, var_1.b.c.c), select(vec3<bool>(var_1.b.c.c, arg_1.c, var_0.c), vec3<bool>(false, false, false), vec3<bool>(true, false, var_1.b.c.c)), select(vec3<bool>(true, true, var_0.c), vec3<bool>(global2[_wgslsmith_index_u32(7393u, 5u)], var_0.c, true), vec3<bool>(var_1.b.c.c, arg_1.c, true)))), select(vec3<bool>(global2[_wgslsmith_index_u32(18666u << (arg_1.a % 32u), 5u)], all(vec3<bool>(arg_1.c, var_0.c, true)), !var_1.b.c.c), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_1.b.a.a.x, 5u)]), !vec3<bool>(true, arg_1.c, false), true), true), !(!(!vec3<bool>(false, false, arg_1.c))));
    return vec3<u32>(firstTrailingBit(17065u), 50024u, arg_1.d.x);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 4>();
    let var_0 = !(!(!(true || arg_3.c)));
    global2 = array<bool, 5>();
    global3 = array<vec2<f32>, 19>();
    var var_1 = vec4<i32>(-2147483647i, -58069i, -global0[_wgslsmith_index_u32(~global4.x, 26u)], 43835i);
    return Struct_2((firstTrailingBit(~arg_1.a.a) ^ func_3(1u, Struct_1(global4.x, arg_1.c.b, true, vec2<u32>(arg_1.c.d.x, arg_3.d.x)), arg_1.a.a, _wgslsmith_f_op_f32(345f * arg_1.b.x))) << (arg_1.a.a % vec3<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1522f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 355f))))))));
    return func_2(true, Struct_3(Struct_2(vec3<u32>(select(global4.x, 22634u, global2[_wgslsmith_index_u32(8714u, 5u)]), global4.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, 356f, -244f)))), global1[_wgslsmith_index_u32(global4.x, 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(178f, -1185f) - _wgslsmith_div_f32(-1862f, -1000f)))), -(_wgslsmith_add_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global4.x, 26u)], u_input.a.x), u_input.a.x) & (i32(-1i) * -u_input.a.x)), global1[_wgslsmith_index_u32(11506u, 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 540f;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f), -252f) + -784f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-428f + 113f), _wgslsmith_f_op_f32(floor(249f)))))));
    var var_4 = select(_wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), _wgslsmith_mod_i32(4565i, u_input.a.x), var_2.x, global0[_wgslsmith_index_u32(0u >> (0u % 32u), 26u)]), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(1i, 2147483647i, var_2.x, -476i), u_input.a), var_2 >> (vec4<u32>(1u, 71707u, var_0.a.x, global4.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(global0[_wgslsmith_index_u32(global4.x, 26u)], -2147483647i, global0[_wgslsmith_index_u32(0u, 26u)], -15759i)), -(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 26u)], var_2.x, var_2.x) | vec4<i32>(2669i, var_2.x, 0i, -1i)))), var_2, select(!vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28665u, 1499u, var_0.a.x, var_0.a.x), vec4<u32>(0u, 4294967295u, var_0.a.x, global4.x)), 5u)], 1u >= var_0.a.x, select(global2[_wgslsmith_index_u32(0u, 5u)], true, false), global2[_wgslsmith_index_u32(var_0.a.x, 5u)]), vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 5u)], global2[_wgslsmith_index_u32(24156u, 5u)])), any(select(vec4<bool>(global2[_wgslsmith_index_u32(25027u, 5u)], false, true, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(var_0.a.x, 5u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 5u)], true, global2[_wgslsmith_index_u32(var_0.a.x, 5u)], true))), !any(vec2<bool>(true, false)), true), select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(2424u, 5u)], global2[_wgslsmith_index_u32(global4.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), !select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 5u)], true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(43310u, 5u)], global2[_wgslsmith_index_u32(18649u, 5u)], global2[_wgslsmith_index_u32(global4.x, 5u)], false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(var_0.a.x, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(37928u, 5u)])), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 5u)], true, global2[_wgslsmith_index_u32(var_0.a.x, 5u)]), vec4<bool>(global2[_wgslsmith_index_u32(36416u, 5u)], false, global2[_wgslsmith_index_u32(global4.x, 5u)], global2[_wgslsmith_index_u32(var_0.a.x, 5u)]), true))));
    var var_5 = Struct_4(var_3, Struct_3(Struct_2(vec3<u32>(func_3(var_0.a.x, global1[_wgslsmith_index_u32(var_0.a.x, 4u)], var_0.a, var_3).x, 0u, _wgslsmith_sub_u32(1u, global4.x))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1339f, 1000f, global2[_wgslsmith_index_u32(var_0.a.x, 5u)])), _wgslsmith_f_op_f32(-363f + -301f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f * -1017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2140f * var_3) * _wgslsmith_f_op_f32(f32(-1f) * -1015f))), global1[_wgslsmith_index_u32(~24492u, 4u)], var_3), _wgslsmith_add_i32(-2147483647i ^ select(abs(0i), var_2.x, true), -(~(~var_2.x))));
    let var_6 = Struct_4(_wgslsmith_f_op_f32(max(434f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.b.d, 2431f) + -343f), var_5.a)))), Struct_3(func_1(), var_5.b.b, var_5.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.a))) + var_3)), -9805i);
    var var_7 = func_1();
    var var_8 = !select(select(!select(vec4<bool>(var_6.b.c.c, true, var_5.b.c.c, false), vec4<bool>(false, var_5.b.c.c, global2[_wgslsmith_index_u32(17351u, 5u)], var_6.b.c.c), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 5u)], true, true)), !select(vec4<bool>(var_6.b.c.c, true, true, var_5.b.c.c), vec4<bool>(var_6.b.c.c, true, var_6.b.c.c, true), global2[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(var_5.b.c.c, true, true, var_6.b.c.c)), select(select(!vec4<bool>(true, var_5.b.c.c, global2[_wgslsmith_index_u32(var_0.a.x, 5u)], false), !vec4<bool>(var_5.b.c.c, false, var_5.b.c.c, var_5.b.c.c), vec4<bool>(global2[_wgslsmith_index_u32(88804u, 5u)], var_6.b.c.c, true, global2[_wgslsmith_index_u32(0u, 5u)])), !vec4<bool>(global2[_wgslsmith_index_u32(24248u, 5u)], true, true, global2[_wgslsmith_index_u32(0u, 5u)]), false), (1u >> (var_7.a.x % 32u)) <= 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~var_5.b.a.a.x, global0[_wgslsmith_index_u32(~global4.x, 26u)]);
}

