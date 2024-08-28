struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, -849i), vec2<i32>(-24996i, -27642i), vec2<i32>(48744i, i32(-2147483648)), vec2<i32>(-62806i, 527i), vec2<i32>(i32(-2147483648), 38878i), vec2<i32>(-1i, 31308i), vec2<i32>(-15674i, -45404i));

var<private> global1: u32 = 1u;

var<private> global2: Struct_1 = Struct_1(false, vec3<bool>(true, false, true), -593f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-597f + 760f);
    var var_1 = Struct_2(~vec4<u32>(~u_input.c, ~max(u_input.d.x, 43913u), u_input.b, 36403u), -_wgslsmith_mod_vec4_i32(min(select(vec4<i32>(58187i, 2949i, -48169i, 2147483647i), vec4<i32>(1i, 53289i, 24066i, u_input.a), vec4<bool>(false, false, true, global2.a)), vec4<i32>(-1i, 10862i, -26001i, u_input.a) << (vec4<u32>(4294967295u, 1u, u_input.d.x, 26453u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(19075i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, -1i, -2147483647i)) << (vec4<u32>(u_input.b, 4294967295u, 9535u, u_input.c) % vec4<u32>(32u))), !(-_wgslsmith_mod_i32(u_input.a, -2147483647i) != -2147483647i), 628f);
    let var_2 = ~min(-31042i, firstTrailingBit(-(~u_input.a)));
    var var_3 = !(!global2.b.x);
    var var_4 = global2.b.x;
    return !select(vec4<bool>(!(var_1.d >= 1396f), all(select(vec2<bool>(global2.a, var_1.c), vec2<bool>(var_1.c, true), false)), any(vec4<bool>(var_1.c, var_1.c, global2.b.x, true)), !(var_1.c | false)), vec4<bool>(true, (var_1.a.x >= var_1.a.x) | true, select(false, all(vec3<bool>(global2.b.x, global2.a, var_1.c)), var_1.d > 258f), !any(vec3<bool>(true, true, var_1.c))), !select(!vec4<bool>(true, true, global2.b.x, var_1.c), select(vec4<bool>(true, var_1.c, true, true), vec4<bool>(false, true, false, global2.b.x), vec4<bool>(false, var_1.c, global2.a, var_1.c)), !vec4<bool>(global2.b.x, var_1.c, global2.a, false)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_u32(arg_0, 68375u);
    global0 = array<vec2<i32>, 11>();
    var var_1 = u_input.a;
    let var_2 = Struct_1(!all(select(func_3(arg_1.c), !vec4<bool>(true, arg_1.a, global2.a, arg_1.a), func_3(-1000f))), vec3<bool>(true, !global2.b.x, all(select(func_3(arg_1.c), select(vec4<bool>(global2.a, false, true, true), vec4<bool>(global2.a, true, global2.a, true), global2.a), true))), global2.c);
    global0 = array<vec2<i32>, 11>();
    return select(!(!((4294967295u & u_input.d.x) <= ~u_input.c)), any(global2.b), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.c * global2.c)))).x);
}

fn func_1() -> Struct_1 {
    let var_0 = abs(u_input.d.xx);
    let var_1 = true;
    var var_2 = Struct_1(all(vec3<bool>(any(select(global2.b, vec3<bool>(true, global2.a, false), vec3<bool>(global2.a, global2.b.x, false))), true, false)), vec3<bool>(func_2(var_0.x, Struct_1(!global2.a, !global2.b, global2.c)), (u_input.a ^ u_input.a) <= -23566i, !any(!vec4<bool>(global2.b.x, true, var_1, false))), _wgslsmith_f_op_f32(-1f));
    global2 = Struct_1(var_0.x <= abs(select(firstLeadingBit(4294967295u), firstLeadingBit(u_input.b), false)), vec3<bool>(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.c)))) == _wgslsmith_f_op_f32(ceil(-549f)), ~var_0.x <= (~1u | (85793u << (u_input.d.x % 32u)))), _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, 363f)))));
    let var_3 = func_3(772f);
    return Struct_1(true && var_2.b.x, vec3<bool>(!(true | var_1), global2.b.x, true), -521f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 479f;
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(105f)), 752f, var_0)))));
    global0 = array<vec2<i32>, 11>();
    global1 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.c)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) * global2.c));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, select(select(_wgslsmith_mult_vec2_i32(min(global0[_wgslsmith_index_u32(u_input.c, 11u)], vec2<i32>(u_input.a, var_1)), ~global0[_wgslsmith_index_u32(25757u, 11u)]), _wgslsmith_mult_vec2_i32(~global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.c, 11u)]), global2.a), ~_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(var_1, -20967i)) | -global0[_wgslsmith_index_u32(4294967295u << (u_input.b % 32u), 11u)], var_4.a), var_0);
}

