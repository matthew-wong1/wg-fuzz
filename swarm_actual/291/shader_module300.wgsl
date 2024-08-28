struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-1i, -41517i, 0i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(-56275i, 11374i, i32(-2147483648)), vec3<i32>(-46160i, 1i, 21438i), vec3<i32>(12997i, 3551i, 52708i), vec3<i32>(1i, -1164i, 34044i), vec3<i32>(-21875i, 9452i, 73289i), vec3<i32>(4699i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 6340i, -37987i), vec3<i32>(1i, 11494i, -18613i), vec3<i32>(i32(-2147483648), -8628i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -10265i, 2147483647i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(i32(-2147483648), 1i, 5313i), vec3<i32>(1i, 29738i, 2147483647i), vec3<i32>(2147483647i, 12897i, -26606i), vec3<i32>(-16059i, 1i, 2147483647i), vec3<i32>(-37197i, 1i, -66470i), vec3<i32>(-10749i, 0i, -1i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-10472i, 29510i, 1539i), vec3<i32>(-34285i, -31131i, 2147483647i), vec3<i32>(-1i, -19037i, 2147483647i), vec3<i32>(1i, 1i, 17449i), vec3<i32>(-35220i, -15473i, 1i), vec3<i32>(55271i, 35760i, -24363i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 20233i, -13591i), vec3<i32>(1i, -35264i, -18273i));

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec2<i32>, 30>;

var<private> global3: Struct_2 = Struct_2(vec4<f32>(-1475f, 370f, -232f, -1555f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(round(global3.a.x)), !(_wgslsmith_f_op_f32(global3.a.x * global3.a.x) <= -1269f))));
    let var_1 = any(!(!vec3<bool>(any(vec2<bool>(false, false)), true, true)));
    let var_2 = Struct_3((-_wgslsmith_sub_i32(51192i, u_input.a.x) | (_wgslsmith_div_i32(u_input.a.x, 18035i) << (abs(u_input.d.x) % 32u))) << (u_input.b.x % 32u), _wgslsmith_f_op_f32(select(684f, _wgslsmith_f_op_f32(select(-596f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-216f, -219f)), var_1)), any(vec4<bool>(false, false, true, var_1)))));
    var var_3 = global3.a.zyz;
    global0 = array<vec3<i32>, 29>();
    return !(!(!(!(!vec3<bool>(var_1, false, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_3(u_input.c, 559f);
    return u_input.d.wz;
}

fn func_2() -> vec2<i32> {
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    let var_0 = vec2<i32>(-32923i << (_wgslsmith_dot_vec2_u32(u_input.d.xy, func_4(_wgslsmith_f_op_vec3_f32(-global3.a.xxy), func_3())) % 32u), firstTrailingBit(2147483647i));
    let var_1 = Struct_3(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + 352f)));
    global2 = array<vec2<i32>, 30>();
    return ~global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.zzw, u_input.d.xzz), select(u_input.b, vec3<u32>(29713u, 0u, 4294967295u), vec3<bool>(true, true, false)))), 30u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-global3.a.x);
    let var_1 = -_wgslsmith_sub_vec2_i32(func_2(), _wgslsmith_add_vec2_i32(select(u_input.a.zy, max(vec2<i32>(2147483647i, -20325i), vec2<i32>(u_input.c, -13751i)), true), firstLeadingBit(-global2[_wgslsmith_index_u32(12788u, 30u)])));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a.x)))))), _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.a.x)))), true)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.b.x), vec4<u32>(7189u, u_input.d.x, 54478u, u_input.d.x), false), _wgslsmith_sub_vec4_u32(u_input.d, u_input.d)), arg_0.x));
    let var_3 = var_2;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(arg_0.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~arg_0.x, _wgslsmith_div_u32(var_3.c, ~var_3.c), firstLeadingBit(arg_0.x >> (var_2.c % 32u))), u_input.d)), 19u)];
    return Struct_4(Struct_3(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(862f, 2760f))))), global1[_wgslsmith_index_u32(1u, 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b.x), ~56003u, _wgslsmith_mult_u32(17724u, 4587u), 1u), vec4<u32>(u_input.b.x, 53939u >> (u_input.d.x % 32u), u_input.b.x, u_input.d.x)));
    var var_1 = 1u;
    let var_2 = func_1(var_0.zw);
    var var_3 = !((_wgslsmith_f_op_f32(step(var_2.b.a.x, global3.a.x)) != 913f) || any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.a.x, var_2.b.a.x)), _wgslsmith_f_op_f32(global3.a.x - -1102f))) - _wgslsmith_f_op_f32(var_2.b.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(round(var_2.a.b))))), 746f);
    let var_5 = var_0.xz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(min(vec3<u32>(var_5.x, 20147u, var_0.x), vec3<u32>(59136u, var_0.x, 2894u))), var_0.wyx ^ u_input.d.yyy)), vec2<f32>(-1241f, _wgslsmith_f_op_f32(step(var_2.b.a.x, _wgslsmith_f_op_f32(-var_2.a.b)))));
}

