struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(29950i, vec3<bool>(false, true, true), -26123i);

var<private> global1: Struct_3;

var<private> global2: array<u32, 28>;

var<private> global3: array<i32, 10> = array<i32, 10>(-51108i, 64182i, 1i, 5898i, i32(-2147483648), 0i, 2940i, 0i, 15646i, -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global1.b.a - vec4<f32>(global1.b.a.x, -606f, -1117f, global1.b.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global1.b.a.x)), global1.b.a.x, global1.b.a.x, global1.b.a.x)) - vec4<f32>(-1384f, global1.b.a.x, 262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x + global1.b.a.x) - -187f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, 1000f, var_0.x, 286f) - vec4<f32>(global1.b.a.x, var_0.x, var_0.x, var_0.x)))))));
    var var_2 = !(false && !(any(vec4<bool>(global0.b.x, false, false, global0.b.x)) && (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 28u)], 28u)] >= 32637u)));
    let var_3 = ~_wgslsmith_sub_u32(u_input.b, (global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(30084u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]), 28u)] | abs(global2[_wgslsmith_index_u32(u_input.b, 28u)])) ^ _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(34221u, 28u)]), vec2<u32>(global2[_wgslsmith_index_u32(55659u, 28u)], u_input.b)), select(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)]), vec2<u32>(global2[_wgslsmith_index_u32(37002u, 28u)], u_input.b), true)));
    let var_4 = vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(global2[_wgslsmith_index_u32(1u, 28u)] ^ u_input.b), u_input.b), 28u)], var_3, 15120u) ^ (vec3<u32>(~(29134u & u_input.b), min(~u_input.b, 37667u), 1u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(select(1u, 25010u, false), firstLeadingBit(21240u), 48013u), vec3<u32>(33309u, global2[_wgslsmith_index_u32(firstTrailingBit(var_3), 28u)], 1u)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.yxz, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -121f), var_0.x, _wgslsmith_f_op_f32(-401f + 243f)))) - vec3<f32>(_wgslsmith_f_op_f32(1287f + -469f), var_1.x, -674f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1272f, 336f, global1.b.a.x)) + global1.b.a.zzx)), false));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec2<bool> {
    global3 = array<i32, 10>();
    let var_0 = -1732f;
    var var_1 = global1.b;
    var var_2 = global1.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_1.a, var_2.b, -24677i, 34387i)) >> (vec4<u32>(4294967295u, ~12431u, 3873u, firstLeadingBit(u_input.b)) % vec4<u32>(32u)), vec4<i32>(arg_0, 21173i, i32(-1i) * -27180i, global0.c))));
    return !arg_1.b.yy;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(select(_wgslsmith_sub_i32(arg_0.x, -11610i), min(-3873i, 79770i), false || global0.b.x), -global1.b.b), 5899i), select(vec3<bool>(all(global1.a.b) || !arg_1.b.x, global1.c, global1.c), vec3<bool>(false, (arg_1.b.x & true) != (true || arg_1.b.x), !arg_1.b.x), all(!select(vec4<bool>(global0.b.x, false, false, arg_1.b.x), vec4<bool>(global0.b.x, global1.a.b.x, true, true), false))), arg_1.a);
    var var_0 = global0.c;
    var var_1 = Struct_3(Struct_1(-2687i, select(!select(vec3<bool>(global1.a.b.x, global0.b.x, global1.c), vec3<bool>(false, global0.b.x, false), false), select(vec3<bool>(true, false, false), vec3<bool>(global1.c, false, arg_1.b.x), global1.a.b.x), vec3<bool>(false, false, true)), _wgslsmith_clamp_i32(min(global0.c, 0i) & ~24613i, -2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20293u, 28u)] << (79937u % 32u), 28u)], global2[_wgslsmith_index_u32(max(u_input.b, 1u), 28u)]), 10u)])), global1.b, any(func_2(arg_0.x, Struct_1(arg_1.a, global1.a.b, -1i), -1000f, arg_1.b.x)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -201f);
    let var_3 = ~(~vec3<u32>(_wgslsmith_add_u32(~0u, global2[_wgslsmith_index_u32(177246u, 28u)] << (global2[_wgslsmith_index_u32(u_input.b, 28u)] % 32u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(66145u, u_input.b, 4294967295u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], u_input.b, 4294967295u, 24598u))), ~_wgslsmith_clamp_u32(0u, 59532u, 24532u)));
    return !vec3<bool>(max(~74526u, u_input.b) != 1u, true, global1.c | any(global0.b.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(global1.b.b >> (~1u % 32u)), !select(!global0.b, select(func_1(vec2<i32>(global0.c, 0i), global1.a), vec3<bool>(global0.b.x, global1.c, false), !global1.a.b.x), vec3<bool>(true & global1.a.b.x, !global0.b.x, global1.a.b.x)), -u_input.a);
    let var_0 = select(select(vec3<bool>((global3[_wgslsmith_index_u32(0u, 10u)] >= -1i) & true, global1.c, global0.b.x), !global1.a.b, global0.b), !global0.b, vec3<bool>(!(!global1.a.b.x) | global0.b.x, !global0.b.x, false));
    var var_1 = 1u;
    let var_2 = global1.a.b;
    global2 = array<u32, 28>();
    let var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~global1.b.b, -1i << (~(~u_input.b) % 32u)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(var_3.a, -2147483647i, u_input.a, 50047i)), vec4<i32>(i32(-1i) * -2147483647i, u_input.a, -33029i, ~38911i)), ~(-vec4<i32>(-8063i, u_input.a, -2147483647i, 1i))), vec4<u32>(u_input.b, _wgslsmith_mult_u32(abs(global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(u_input.b, 28u)], 1u), 28u)]), firstTrailingBit(countOneBits(0u))), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(7210u, _wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(46328u, 28u)]), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)]), 28u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~32123u, 28u)], ~10943u)), global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.b), 28u)]));
}

