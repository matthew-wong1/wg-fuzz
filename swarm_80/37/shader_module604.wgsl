struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-3422i, vec4<i32>(i32(-2147483648), 14843i, i32(-2147483648), 15961i)), Struct_2(-32466i, vec4<i32>(-1i, 2147483647i, 0i, -1i)), Struct_2(5267i, vec4<i32>(13398i, 16222i, 62524i, 0i)), Struct_2(2147483647i, vec4<i32>(-4230i, -1i, i32(-2147483648), 30753i)), Struct_2(-1i, vec4<i32>(-1i, 36226i, 2147483647i, 23652i)), Struct_2(0i, vec4<i32>(1i, i32(-2147483648), 1i, -68286i)), Struct_2(8248i, vec4<i32>(-15574i, 30331i, 1i, 7250i)), Struct_2(24435i, vec4<i32>(-1i, 20736i, 19114i, -39239i)), Struct_2(16952i, vec4<i32>(2147483647i, 2147483647i, 2147483647i, -35885i)), Struct_2(-1i, vec4<i32>(-9305i, -1i, -37470i, 2147483647i)), Struct_2(2147483647i, vec4<i32>(-32954i, 1i, 45863i, 823i)), Struct_2(-1i, vec4<i32>(-44024i, 14870i, 29618i, 21221i)), Struct_2(-36659i, vec4<i32>(10439i, i32(-2147483648), 5047i, 18734i)), Struct_2(-23396i, vec4<i32>(48695i, 1i, -7133i, 21121i)), Struct_2(1i, vec4<i32>(-9340i, i32(-2147483648), 23523i, -1i)));

var<private> global1: vec2<f32> = vec2<f32>(-1022f, -1903f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(-507f - -447f)));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(~arg_2, ~min(~92152u, ~4294967295u)), _wgslsmith_mult_u32(min(arg_2 << (min(arg_1.x, arg_2) % 32u), arg_1.x), ~firstTrailingBit(269u)), 900u);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(161f, arg_0.c.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) * global1.x), firstTrailingBit(u_input.b), -845f, -_wgslsmith_mult_vec4_i32(vec4<i32>(36996i, 1i, 406i, -u_input.d), arg_0.b.b));
    var var_4 = (!any(vec3<bool>(true, true, true)) & false) | !(!all(vec3<bool>(true, true, true)));
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = select(true, 29733u > ~_wgslsmith_div_u32(18187u, u_input.c.x), func_3(Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(~u_input.b, 15u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, global1.x))), ~min(u_input.c, u_input.c), _wgslsmith_mult_u32(u_input.b, ~u_input.b), u_input.a)) & (all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)) && any(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, all(vec3<bool>(false, true, false)))));
    let var_1 = (vec4<i32>(u_input.d | u_input.d, 0i, u_input.a.x, -10344i) & ~vec4<i32>(u_input.d, -u_input.d, ~1i, 2147483647i)) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(25970u, 29526u, 14274u, abs(u_input.c.x)), vec4<u32>(abs(4294967295u), _wgslsmith_sub_u32(u_input.b, u_input.c.x), u_input.c.x, u_input.c.x))) % vec4<u32>(32u));
    let var_2 = ~(-2147483647i);
    global0 = array<Struct_2, 15>();
    var var_3 = !vec3<bool>(var_0, var_0, false);
    return global0[_wgslsmith_index_u32(~(~12754u), 15u)];
}

fn func_1() -> f32 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(min(u_input.b, _wgslsmith_mult_u32(~19650u, abs(0u))) >> (firstLeadingBit(u_input.c.x) % 32u), 15u)], global0[_wgslsmith_index_u32(69664u, 15u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))) - _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-220f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_sub_vec4_i32(var_0.b.b, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, i32(-1i) * -2147483647i, 2147483647i, 1i)), vec4<i32>(var_1.a & 7971i, 0i, 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b.x, u_input.a.x, -47985i, var_1.a), var_0.b.b))));
    let var_3 = ~_wgslsmith_add_i32(~func_2().b.x >> (u_input.b % 32u), -1i);
    let var_4 = var_0.b;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_1())));
    global0 = array<Struct_2, 15>();
    let var_0 = Struct_2(~u_input.d, vec4<i32>(max(u_input.d, _wgslsmith_dot_vec3_i32(u_input.a & u_input.a, vec3<i32>(u_input.d, 0i, u_input.d))), -(u_input.a.x | -65745i), -2147483647i, 1i));
    let var_1 = _wgslsmith_f_op_f32(func_1());
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(130f, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(f32(-1f) * -183f)))), _wgslsmith_f_op_f32(select(global1.x, 1306f, _wgslsmith_sub_i32(u_input.d, reverseBits(var_2.a)) >= 39853i)));
}

