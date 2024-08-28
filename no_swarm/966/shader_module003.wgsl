struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(true, vec3<bool>(false, false, false), true), Struct_1(true, vec3<bool>(false, true, false), false), 1178f, vec3<f32>(-1873f, -2256f, 1244f));

var<private> global1: i32 = -32005i;

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, true, false, false, false, false, false, true, false, true, true, false, true, true, true, false, true, true, false, false, true, true, true, false, false);

var<private> global3: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(500f, 1173f), vec2<f32>(-144f, 825f), vec2<f32>(-1647f, 1000f));

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = u_input.a;
    global4 = Struct_1(false, !vec3<bool>(true, true, (i32(-1i) * -1i) > var_0), ~(-_wgslsmith_clamp_i32(5032i, var_0, 2147483647i)) == var_0);
    var var_1 = Struct_2(true, Struct_1(false, global4.b, false), global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d))), global0.e.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, 1465f, -1316f), _wgslsmith_f_op_vec3_f32(global0.e * global0.e), true)))), global0.e, true)));
    var var_2 = Struct_1(true && !global2[_wgslsmith_index_u32(max(~arg_1.x, 1u), 26u)], !select(global0.c.b, global4.b, true), false);
    global2 = array<bool, 26>();
    return 1f;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(global4.a, arg_1.b, global0.c, _wgslsmith_f_op_f32(arg_1.e.x + -620f), vec3<f32>(_wgslsmith_div_f32(-1342f, 1000f), _wgslsmith_f_op_f32(func_3(~vec3<i32>(u_input.a, -29105i, 38674i) << (vec3<u32>(u_input.c, u_input.b.x, 4294967295u) % vec3<u32>(32u)), u_input.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(387f, _wgslsmith_div_f32(1073f, arg_1.e.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.e));
    var var_2 = _wgslsmith_clamp_vec2_i32(~(~(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, u_input.a)) | -vec2<i32>(9126i, 4231i))), min(select(min(vec2<i32>(-45239i, 1i) & vec2<i32>(u_input.a, arg_0), vec2<i32>(-33797i, arg_0)), vec2<i32>(-61752i, -16224i), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 26u)]), vec2<bool>(false, true), vec2<bool>(true, global0.a))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(arg_0, -5725i)), _wgslsmith_div_vec2_i32(vec2<i32>(40698i, 0i), vec2<i32>(-17472i, 1i))), -firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)))), vec2<i32>(-1i) * -min(~vec2<i32>(arg_0, u_input.a), countOneBits(vec2<i32>(arg_0, 0i))));
    global3 = array<vec2<f32>, 3>();
    let var_3 = ~countOneBits(_wgslsmith_div_u32(~u_input.c, ~u_input.b.x));
    return select(!select(vec4<bool>(0u > u_input.b.x, false == var_0.c.c, false, all(vec4<bool>(global4.a, global2[_wgslsmith_index_u32(u_input.c, 26u)], true, arg_1.b.b.x))), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 26u)], false), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 26u)], false), true), !vec4<bool>(arg_1.b.a, false, false, global4.b.x)), vec4<bool>((-2147483647i & select(var_2.x, 2147483647i, global0.c.b.x)) > _wgslsmith_div_i32(-12474i, -2147483647i), global4.c, false && (global0.d > _wgslsmith_f_op_f32(1415f * 621f)), true), !(!all(select(vec4<bool>(global0.a, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(var_3, 26u)], arg_1.a, true, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.c, 26u)])))));
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_2(any(!func_2(_wgslsmith_add_i32(u_input.a, 2147483647i), Struct_2(global4.b.x, Struct_1(false, global0.c.b, global0.b.c), global0.b, 536f, vec3<f32>(-492f, -1724f, 813f)))), Struct_1(true, select(global0.c.b, vec3<bool>(true, !global0.b.a, false), false), global4.c), global0.c, _wgslsmith_f_op_f32(round(global0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-375f)) + _wgslsmith_f_op_f32(982f - global0.d)), _wgslsmith_f_op_f32(-global0.d), -1000f) + _wgslsmith_f_op_vec3_f32(exp2(global0.e))));
    global4 = var_0.c;
    global3 = array<vec2<f32>, 3>();
    var var_1 = vec3<i32>(u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1394i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(1i, 1i, 1i)), u_input.a) ^ u_input.a, u_input.a);
    global3 = array<vec2<f32>, 3>();
    return vec4<u32>(u_input.c, 48187u, 0u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(22417u, 59722u, 25822u, 1u) << (vec4<u32>(u_input.b.x, 55484u, u_input.b.x, 19213u) % vec4<u32>(32u)), abs(vec4<u32>(116677u, u_input.c, 77258u, 61237u))) >> (~u_input.b.x % 32u), ~u_input.b.x, !any(var_0.c.b.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.b;
    let var_0 = firstLeadingBit(~(~func_1()));
    global0 = Struct_2(global2[_wgslsmith_index_u32(u_input.b.x << (min(31331u >> (_wgslsmith_div_u32(var_0.x, u_input.c) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(79856u, 0u), var_0.x, 32889u)) % 32u), 26u)], Struct_1(any(!func_2(2147483647i, Struct_2(global4.b.x, global0.c, global0.c, 1120f, global0.e))), !select(global0.c.b, global4.b, !global0.b.b), select(all(func_2(u_input.a, Struct_2(global4.c, Struct_1(false, global0.c.b, global2[_wgslsmith_index_u32(66233u, 26u)]), global0.c, -457f, vec3<f32>(global0.e.x, global0.e.x, 1328f))).wzw), true, any(vec4<bool>(true, true, false, true)))), global0.b, global0.e.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global0.e, global0.e, global4.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.d, global0.e.x, global0.e.x))) - vec3<f32>(global0.e.x, -474f, -307f))))));
    global4 = Struct_1(global4.c, vec3<bool>(global4.b.x, all(!vec2<bool>(global4.c, global4.c)), !(!(!global0.b.a))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(14253u, u_input.b.x) ^ _wgslsmith_mod_u32(10876u, 29921u), ~(~20679u) & var_0.x), 26u)]);
    global2 = array<bool, 26>();
    var var_1 = Struct_2(!global2[_wgslsmith_index_u32(select(1u, ~abs(6348u), global0.a), 26u)], global0.c, Struct_1(global4.c, global4.b, !any(select(vec3<bool>(global4.b.x, true, global0.a), global0.b.b, true))), -604f, global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(28442i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x << (~(~49160u) % 32u), _wgslsmith_add_u32(~(~4294967295u), var_0.x)), 3u)]);
}

