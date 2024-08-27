struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~(~(~u_input.a.x)), 43161u), -1i);
    return Struct_1(abs(u_input.a), select(-2147483647i, firstLeadingBit(var_0.b), _wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(step(arg_0.x, arg_1.x))) >= _wgslsmith_f_op_f32(abs(1031f))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global1 = !(76579u > select(2584u, ~(~4294967295u), true));
    global0 = select(select(select(select(!vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, true), !vec3<bool>(arg_1.b, false, arg_1.b)), vec3<bool>(true, global0.x, true), select(select(vec3<bool>(global0.x, false, false), vec3<bool>(true, false, global0.x), false), select(vec3<bool>(false, false, true), vec3<bool>(arg_1.b, global0.x, false), true), arg_1.a != arg_1.c.a.x)), !(!select(vec3<bool>(arg_1.b, arg_1.b, global0.x), vec3<bool>(global0.x, false, true), true)), select(!(!vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, global0.x), arg_1.b || false), all(!vec4<bool>(false, arg_1.b, false, false)))), vec3<bool>(global0.x, any(vec3<bool>(true && arg_1.b, arg_1.b || true, true)), !global0.x & true), global0.x);
    global1 = arg_1.b;
    var var_0 = vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 85672u, arg_1.a, countOneBits(u_input.a.x)), ~(~vec4<u32>(arg_1.a, 1u, 4354u, 0u))), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 79689u), 5875u, 0u, countOneBits(12963u))));
    global1 = false & any(!(!(!vec4<bool>(true, arg_1.b, false, arg_1.b))));
    return Struct_1(arg_1.c.a, _wgslsmith_add_i32(-2147483647i ^ func_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1021f, arg_0, arg_0), vec4<f32>(985f, arg_0, 2461f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, -657f, arg_0)), arg_1.c.b).b, -max(-6936i, abs(arg_1.c.b))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1278f, 1466f, 1000f, -199f))));
    var var_1 = Struct_2(firstTrailingBit(u_input.a.x), any(global0.yy), Struct_1(~_wgslsmith_clamp_vec2_u32(arg_0.a << (vec2<u32>(arg_0.a.x, 20800u) % vec2<u32>(32u)), u_input.a, select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, arg_0.a.x), global0.zy)), -1i));
    global1 = (global0.x | global0.x) & any(!select(global0.xy, !global0.xx, vec2<bool>(false, global0.x)));
    global0 = select(vec3<bool>(true, true, false), vec3<bool>(select(any(vec3<bool>(global0.x, var_1.b, global0.x)), true, !any(vec4<bool>(global0.x, global0.x, global0.x, var_1.b))), true, false), true);
    return Struct_2(4294967295u, var_1.b, Struct_1(arg_0.a, 23377i));
}

fn func_1() -> f32 {
    let var_0 = 1i;
    var var_1 = vec2<i32>(firstLeadingBit(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(63723i, -16186i), vec2<i32>(var_0, 34857i)), ~var_0)), var_0);
    var var_2 = func_4(func_3(-640f, Struct_2(1u, all(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x))), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-363f, 1947f, 624f, -340f))), vec3<f32>(-1230f, -185f, 840f), _wgslsmith_div_i32(var_0, var_0)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(295f + -1888f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -569f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 170f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1460f, 929f))))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_2 = Struct_2(28407u << (~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), ~u_input.a.x, ~u_input.a.x) % 32u), all(select(select(vec4<bool>(global0.x, true, false, false), !vec4<bool>(false, global0.x, true, true), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, false, false, true))), vec4<bool>(any(global0.zz), all(vec2<bool>(global0.x, global0.x)), true, true), !select(vec4<bool>(false, true, true, global0.x), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, global0.x, false, false)))), func_3(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.x)), func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, 493f, var_1, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1722f, var_0.x) - vec3<f32>(var_1, 537f, var_1)), -1i))));
    var_2 = Struct_2(~25767u, select(true, any(select(vec4<bool>(var_2.b, false, var_2.b, global0.x), vec4<bool>(true, false, true, var_2.b), true)), all(select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, true, var_2.b), global0.x && var_2.b))), var_2.c);
    let var_3 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.a.x, var_2.c.a.x, 45463u, 5638u) | vec4<u32>(0u, var_2.c.a.x, u_input.a.x, 10046u))), _wgslsmith_sub_vec4_u32(vec4<u32>(24232u, 57500u, var_2.c.a.x, var_2.c.a.x), vec4<u32>(0u, var_2.a, var_2.a, var_2.a)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, 43783u, 4294967295u, 49347u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 27781u, 4294967295u), vec4<u32>(16602u, var_2.c.a.x, 0u, u_input.a.x)))), u_input.a.x);
    global1 = var_2.b | !all(vec4<bool>(global0.x, all(vec3<bool>(var_2.b, false, true)), any(vec2<bool>(global0.x, false)), var_2.b == true));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(-1000f, func_4(Struct_1(_wgslsmith_div_vec2_u32(var_2.c.a, var_3.xy), _wgslsmith_mult_i32(-9762i, var_2.c.b)))).a.x, 839f, vec4<i32>(1i >> (var_3.x % 32u), _wgslsmith_mod_i32(1i, -var_2.c.b), max(var_2.c.b, -var_2.c.b), var_2.c.b) << (~reverseBits(~vec4<u32>(var_3.x, var_2.a, 4294967295u, 0u)) % vec4<u32>(32u)), select(~vec3<i32>(var_2.c.b, _wgslsmith_div_i32(-17764i, var_2.c.b), var_2.c.b), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_2.c.b, var_2.c.b, 32725i) << (vec3<u32>(var_2.a, 8099u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(~vec3<i32>(0i, 4248i, 34371i), -vec3<i32>(var_2.c.b, 44617i, 44688i))), select(select(vec3<bool>(global0.x, global0.x, false), !vec3<bool>(true, global0.x, var_2.b), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, var_2.b), vec3<bool>(global0.x, var_2.b, global0.x))), select(vec3<bool>(false, false, true), vec3<bool>(false, var_2.b, true), !var_2.b), var_2.b)));
}

