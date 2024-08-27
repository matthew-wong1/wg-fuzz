struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: array<i32, 11> = array<i32, 11>(0i, 2629i, i32(-2147483648), -40818i, -56826i, 0i, 14871i, -57252i, -1i, 0i, i32(-2147483648));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<i32>(0i, 0i, 19831i, 2147483647i), Struct_1(29128i, vec2<f32>(548f, -2437f)), 2551f, 2076f), vec3<f32>(-525f, -392f, 2526f), true, true, 769f);

var<private> global3: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<f32> {
    var var_0 = global2.d;
    let var_1 = global2.a.b;
    var var_2 = global3.e.x;
    let var_3 = vec4<i32>(-8961i, 1222i, 1i, abs(u_input.b.x));
    var_2 = _wgslsmith_div_u32(1u, countOneBits(u_input.c)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(~12851u, _wgslsmith_add_u32(54336u, _wgslsmith_mult_u32(4294967295u, global3.a.x)), global3.a.x), vec3<u32>(56442u, u_input.c, 27026u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1922f, global3.d.b.x, 1054f)))) + arg_1);
    var_0 = global2.b;
    let var_1 = Struct_4(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~global3.a, ~global3.a), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global3.a.zy, vec2<u32>(4294967295u, u_input.c), vec2<u32>(global3.a.x, global3.a.x)), global3.a.xx), ~(~107653u)), _wgslsmith_div_u32(~(~global3.a.x), global3.a.x)), _wgslsmith_dot_vec2_i32(u_input.a.yz << (~min(global3.a.yy, global3.a.zz) % vec2<u32>(32u)), vec2<i32>(arg_0.x, 0i)), u_input.a.x, global3.d, select(global3.e, !select(vec2<bool>(true, global2.c), select(global3.e, global3.e, global3.e), true), true));
    var var_2 = !(!(!all(select(global3.e, var_1.e, var_1.e))));
    let var_3 = global3.e;
    return Struct_3(global2.a, _wgslsmith_f_op_vec3_f32(-arg_1), global2.d, all(select(vec3<bool>(!global3.e.x, !var_3.x, any(vec3<bool>(global3.e.x, false, var_1.e.x))), vec3<bool>(var_3.x, any(vec3<bool>(global2.d, false, false)), any(vec4<bool>(global2.c, true, false, false))), all(select(vec4<bool>(false, true, false, true), vec4<bool>(global3.e.x, false, false, var_3.x), vec4<bool>(var_1.e.x, global3.e.x, global3.e.x, var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - var_0.x))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = !(!select(select(vec3<bool>(arg_2.c, true, false), select(vec3<bool>(false, true, arg_2.c), vec3<bool>(arg_2.d, false, global3.e.x), arg_0.c), vec3<bool>(global2.c, arg_0.c, true)), !(!vec3<bool>(false, false, global2.d)), true));
    var var_1 = _wgslsmith_f_op_f32(588f - -2436f);
    var var_2 = func_3(u_input.b.zxx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(186f, global2.a.d), _wgslsmith_f_op_f32(abs(1445f)), 283f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-610f, global3.d.b.x, arg_2.a.d), vec3<f32>(1106f, global2.e, arg_2.b.x))))), _wgslsmith_f_op_vec3_f32(func_2())), global3.d.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e)), global2.a.b.b.x, global2.e), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(58944u, u_input.c, 97338u), vec3<u32>(1u, u_input.c, 37105u), vec3<bool>(arg_3.x, false, global2.d)), ~vec3<u32>(11906u, u_input.c, u_input.c)), 27u)])), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(10895u, _wgslsmith_clamp_u32(16264u, u_input.c, 32658u), 0u), ~(vec3<u32>(14008u, 3585u, 0u) & global3.a))), 27u)]));
    var var_4 = func_3(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(arg_2.a.a.zyy, vec3<i32>(global1[_wgslsmith_index_u32(0u, 11u)], arg_2.a.a.x, 1i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a.a.x, u_input.a.x, u_input.a.x), vec3<i32>(arg_0.a.b.a, u_input.b.x, -23313i)), ~var_2.a.a.zww)), -var_2.a.a.zxw), vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(max(-841f, arg_2.e))), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.b.b)) + _wgslsmith_f_op_vec2_f32(sign(arg_0.a.b.b))))).d;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.b.x, -913f) - arg_0.a.b.b), _wgslsmith_f_op_vec2_f32(-arg_2.b.xy)))))), var_3.yw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = global2.a;
    var var_2 = u_input.b.x >> (0u % 32u);
    var var_3 = var_1.b;
    var_1 = global2.a;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.b.x, 962f), _wgslsmith_f_op_f32(-var_3.b.x))))), _wgslsmith_f_op_f32(-global2.b.x));
    let var_5 = var_1.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, min(-13466i, var_1.b.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global3.d.b, _wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(vec4<i32>(1i, 44953i, -2147483647i, u_input.a.x), Struct_1(global3.b, vec2<f32>(var_3.b.x, -1492f)), -1000f, var_3.b.x), vec3<f32>(410f, -640f, var_4.x), global2.c, false, 1023f), global3.e, Struct_3(Struct_2(vec4<i32>(global3.b, var_3.a, 2147483647i, u_input.b.x), global2.a.b, -271f, var_4.x), global2.b, false, global2.d, 785f), vec2<bool>(global3.e.x, false))))) - _wgslsmith_f_op_vec2_f32(var_1.b.b * _wgslsmith_div_vec2_f32(var_4.zw, vec2<f32>(-1365f, -1857f)))) + vec2<f32>(-201f, _wgslsmith_f_op_f32(round(global3.d.b.x)))));
}

