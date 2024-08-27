struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 7>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 61330u);

var<private> global3: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(66144u, 44130u, 97021u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(58740u, 4294967295u, 46996u), vec3<u32>(4294967295u, 57087u, 0u), vec3<u32>(35676u, 13749u, 4294967295u), vec3<u32>(1u, 84500u, 21588u), vec3<u32>(4294967295u, 1164u, 32181u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(24990u, 20858u, 0u), vec3<u32>(26667u, 23372u, 74069u), vec3<u32>(68979u, 0u, 42110u), vec3<u32>(30290u, 1u, 30548u), vec3<u32>(1847u, 0u, 4294967295u), vec3<u32>(3086u, 70247u, 1u), vec3<u32>(21893u, 0u, 2840u));

var<private> global4: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<bool>) -> bool {
    var var_0 = Struct_2(_wgslsmith_sub_i32(-global0.a.a, ~u_input.a.x), Struct_1(~9361u), vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(round(-1000f))));
    var_0 = Struct_2(var_0.a, global0.b.b, global0.b.c);
    let var_1 = !select(vec4<bool>(any(vec3<bool>(false, arg_3.x, arg_1)), !(-313f <= arg_2.x), any(!vec4<bool>(arg_3.x, false, false, arg_1)), any(select(vec3<bool>(arg_3.x, arg_1, false), vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, true)))), vec4<bool>(all(vec4<bool>(true, arg_3.x, arg_1, false)), u_input.b >= u_input.d, global0.a.c.x != global0.a.c.x, true | arg_3.x), all(arg_3));
    var var_2 = Struct_1(~global0.b.b.a);
    global3 = array<vec3<u32>, 15>();
    return false;
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = (true || arg_0) != all(vec4<bool>(-520f > _wgslsmith_div_f32(-2029f, global0.d.c.x), false, any(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, false))), false));
    var var_1 = _wgslsmith_mod_i32(abs(~u_input.b), 0i) < ~_wgslsmith_div_i32(global0.a.a, u_input.b);
    var_0 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(247f, 613f, -720f, global0.a.c.x))))))), vec4<f32>(_wgslsmith_f_op_f32(round(global0.a.c.x)), _wgslsmith_f_op_f32(floor(1431f)), global0.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -473f)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(round(global0.b.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c.x, global0.a.c.x) * _wgslsmith_f_op_f32(sign(1461f))))), global0.a.c.x));
    var var_3 = ~min(~countOneBits(-vec2<i32>(global0.a.a, global0.b.a)), select(u_input.a.zy, vec2<i32>(1i, u_input.d) << (select(u_input.c, global2.yx, arg_0) % vec2<u32>(32u)), !(!vec2<bool>(arg_0, false))));
    return global0.d.a ^ global0.a.a;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(global0.d, Struct_2(1i, Struct_1(~4294967295u), _wgslsmith_f_op_vec2_f32(-global0.d.c)), Struct_1(~(~1u)), global0.d);
    let var_1 = -1000f;
    let var_2 = func_4(!(!func_3(Struct_4(-549f), arg_0, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.c.x, var_0.d.c.x, var_1, var_1))), !vec2<bool>(true, arg_0))));
    return global0.d.b;
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    global4 = func_2(all(vec4<bool>(true, true, true, any(vec2<bool>(true, false)) && true)));
    var var_0 = select(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.zy), _wgslsmith_clamp_vec2_i32(countOneBits(select(vec2<i32>(u_input.b, 49882i) >> (u_input.c % vec2<u32>(32u)), reverseBits(vec2<i32>(arg_0.a.a, arg_0.a.a)), vec2<bool>(true, true))), u_input.a.yx, -abs(vec2<i32>(2147483647i, -2147483647i)) ^ ~(-u_input.a.yx)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(!any(vec2<bool>(true, true)), true), any(vec2<bool>(func_3(Struct_4(global0.d.c.x), true, vec4<f32>(-1153f, 440f, arg_0.b.c.x, -1419f), vec2<bool>(false, true)), global0.d.c.x < arg_0.b.c.x))));
    let var_1 = ~max(vec3<u32>(global4.a | ~global4.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20706u), u_input.e.xz), ~(~u_input.c.x)), u_input.e);
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, true, true)), true), vec2<bool>(true, true)));
    let var_3 = global0.b.c;
    return select(select(vec2<bool>(false, true), var_2, !(!var_2.x) && (all(vec3<bool>(var_2.x, var_2.x, var_2.x)) && (-32049i < global0.a.a))), !vec2<bool>(!any(vec3<bool>(true, false, true)), var_2.x), true);
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(global0.a, Struct_2(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.xy), global0.c, vec2<f32>(_wgslsmith_div_f32(-1000f, -1036f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.c, global0.d);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.c.x))) * -1435f));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-137f)) - -1077f) * -491f)));
    global0 = var_2;
    return Struct_1(_wgslsmith_mult_u32(56388u ^ u_input.c.x, ~var_0.c.a));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.a.c.x) * global0.a.c), global0.d.c));
    global1 = array<vec3<f32>, 7>();
    var var_1 = Struct_1(select(abs(global4.a), _wgslsmith_dot_vec3_u32(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.b.b.a, arg_1.a), 15u)], ~_wgslsmith_mod_vec3_u32(global3[_wgslsmith_index_u32(10218u, 15u)], u_input.e)), any(vec3<bool>(true, true, true))));
    let var_2 = Struct_3(Struct_2(~abs(16920i), Struct_1(_wgslsmith_add_u32(~1u, _wgslsmith_clamp_u32(0u, var_1.a, arg_0.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0.a.c.x) + vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0))))), Struct_2(firstTrailingBit(2147483647i), func_2(false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.c.x, var_0.x)) - vec2<f32>(var_0.x, -222f))), func_5(!vec2<bool>(func_3(Struct_4(var_0.x), false, vec4<f32>(767f, global0.d.c.x, -475f, global0.a.c.x), vec2<bool>(false, true)), true)), global0.a);
    let var_3 = global0.a.b;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_1(~(~global0.d.b.a)), func_5(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_1(Struct_3(Struct_2(u_input.b, Struct_1(21251u), global0.d.c), Struct_2(0i, global0.a.b, vec2<f32>(global0.d.c.x, -1915f)), Struct_1(1u), global0.b)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_sub_i32(6558i, u_input.d << (21846u % 32u)));
    global1 = array<vec3<f32>, 7>();
    global0 = Struct_3(global0.b, global0.a, func_2(true), Struct_2(35544i, func_5(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(218f, _wgslsmith_div_f32(859f, global0.a.c.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.c - global0.a.c)))));
    let var_0 = vec4<f32>(global0.a.c.x, _wgslsmith_f_op_f32(abs(1f)), 1029f, func_6(func_2(true), global0.c, 14106i).b.c.x);
    global1 = array<vec3<f32>, 7>();
    var var_1 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.a, u_input.c.x >> (7723u % 32u), ~1u, ~global4.a), vec4<u32>(reverseBits(4184u), global0.d.b.a, global2.x ^ 1u, _wgslsmith_add_u32(21127u, 1u)), vec4<u32>(0u, 0u, _wgslsmith_sub_u32(4294967295u, global0.a.b.a), ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a.c.x)), -1888f), vec4<f32>(-1287f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + func_6(Struct_1(var_1.x), global0.d.b, global0.b.a).a.c.x))), var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.d.c.x, global0.d.c.x)));
}

