struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 30329u), vec2<u32>(0u, 5792u), vec2<u32>(0u, 1u), vec2<u32>(5186u, 3392u), vec2<u32>(45269u, 20534u), vec2<u32>(0u, 10451u), vec2<u32>(83056u, 37603u), vec2<u32>(42126u, 36893u), vec2<u32>(64444u, 1u), vec2<u32>(30583u, 0u), vec2<u32>(6570u, 1u), vec2<u32>(82214u, 7195u), vec2<u32>(0u, 30735u), vec2<u32>(21019u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 66105u), vec2<u32>(69544u, 1u));

var<private> global1: bool = false;

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    global1 = !any(select(vec3<bool>(arg_1.c <= arg_1.c, true, true), vec3<bool>(true, true, true), true));
    global2 = arg_1;
    let var_0 = Struct_1(vec3<i32>(select(max(global2.a.x, -1i), _wgslsmith_div_i32(-global2.a.x, u_input.b.x << (8286u % 32u)), true), _wgslsmith_mult_i32((u_input.b.x | arg_0) << (arg_1.b.x % 32u), arg_1.a.x), arg_2), vec4<u32>(~global2.b.x, ~(47231u | _wgslsmith_div_u32(arg_1.b.x, u_input.d)), countOneBits(17988u), _wgslsmith_div_u32(73733u, global2.b.x)), _wgslsmith_f_op_f32(-global2.c));
    global2 = Struct_1(arg_1.a, min(vec4<u32>(abs(firstTrailingBit(arg_1.b.x)), global2.b.x, _wgslsmith_add_u32(u_input.d << (86246u % 32u), u_input.d), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31281u, 4294967295u, var_0.b.x), var_0.b.zyz), ~var_0.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, u_input.d, _wgslsmith_add_u32(arg_1.b.x, 32527u), reverseBits(0u)), firstLeadingBit(vec4<u32>(9417u, 10232u, 0u, 0u)) & vec4<u32>(54540u, var_0.b.x, global2.b.x, 21599u))), var_0.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-220f, -1286f, arg_1.c, global2.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-216f, 1000f, global2.c, 501f), vec4<f32>(var_0.c, -289f, 493f, var_0.c))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.c + -132f), _wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_div_f32(arg_1.c, 634f), true)), 1238f, -1080f), !(global2.b.x <= 0u))));
    return ~select(min(var_0.b.yy, ~vec2<u32>(1u, 1u)), ~arg_1.b.xy, true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global2.a, ~vec4<u32>(global2.b.x, 4294967295u, global2.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d, u_input.d), 10925u)), global2.c);
    let var_1 = select(select(func_3(-30249i ^ (-2147483647i ^ u_input.a), var_0, global2.a.x), global0[_wgslsmith_index_u32(global2.b.x, 17u)], false), global2.b.yz, vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2070f)), global2.c) < 1f, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), select(true, true, false)))));
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    var var_2 = var_0;
    return var_0;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = func_2();
    var var_1 = Struct_1(vec3<i32>(1i, ~_wgslsmith_sub_i32(~(-40142i), arg_1.x), countOneBits(-38964i)), vec4<u32>(_wgslsmith_sub_u32(~32056u, countOneBits(firstLeadingBit(1u))), func_2().b.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.b.yxw, var_0.b.www), var_0.b.xyy << (arg_2.b.ywy % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(global2.b.yz, abs(vec2<u32>(arg_2.b.x, u_input.d))) << (var_0.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(838f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, arg_2.c)) - _wgslsmith_f_op_f32(-var_0.c)))));
    var var_2 = all(vec2<bool>(true, true));
    let var_3 = arg_2;
    let var_4 = arg_2;
    return var_4.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = arg_2;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = 10604u != _wgslsmith_mult_u32(u_input.d, ~_wgslsmith_add_u32(global2.b.x, global2.b.x));
    var var_1 = global2.a.zy;
    var var_2 = func_4(Struct_1(select(vec3<i32>(2147483647i, -1i, global2.a.x), global2.a, global2.b.x != abs(51766u)), global2.b, _wgslsmith_f_op_f32(round(global2.c))), Struct_1(vec3<i32>(-func_1(2147483647i, vec3<i32>(-2147483647i, u_input.a, var_1.x), Struct_1(vec3<i32>(u_input.c, -26533i, -1i), vec4<u32>(0u, 1u, u_input.d, global2.b.x), global2.c), global2.a.x), 50925i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, var_1.x, 70759i, -57140i), vec4<i32>(-2147483647i, var_1.x, global2.a.x, global2.a.x), vec4<bool>(true, true, true, var_0)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.a, -26396i, 9779i), vec4<i32>(-2147483647i, global2.a.x, 21481i, -1i)))), firstLeadingBit(_wgslsmith_sub_vec4_u32(global2.b, global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(534f, 1741f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(f32(-1f) * -729f)))), Struct_1(-vec3<i32>(var_1.x, -2147483647i, ~(-7545i)), _wgslsmith_add_vec4_u32(global2.b, vec4<u32>(func_2().b.x, global2.b.x, u_input.d, ~4889u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c))))), func_2());
    var var_3 = Struct_1(firstLeadingBit(_wgslsmith_add_vec3_i32(-var_2.a, max(var_2.a, _wgslsmith_mod_vec3_i32(global2.a, global2.a)))), ~(countOneBits(firstLeadingBit(global2.b)) >> (func_4(Struct_1(global2.a, var_2.b, var_2.c), func_4(Struct_1(vec3<i32>(-50697i, u_input.c, var_2.a.x), var_2.b, 550f), Struct_1(vec3<i32>(var_2.a.x, -2147483647i, 20892i), vec4<u32>(var_2.b.x, 1u, 31234u, var_2.b.x), var_2.c), Struct_1(vec3<i32>(-22847i, u_input.c, u_input.b.x), vec4<u32>(u_input.d, 27367u, var_2.b.x, var_2.b.x), -330f), Struct_1(vec3<i32>(-1i, global2.a.x, u_input.b.x), global2.b, global2.c)), Struct_1(global2.a, vec4<u32>(1097u, u_input.d, global2.b.x, 1u), -253f), func_2()).b % vec4<u32>(32u))), _wgslsmith_f_op_f32(abs(1335f)));
    var_3 = Struct_1(var_2.a, ~(~(~min(var_2.b, var_2.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, i32(-1i) * -_wgslsmith_sub_i32(5711i, var_1.x), 4294967295u);
}

