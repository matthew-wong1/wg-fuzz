struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(false, vec2<f32>(-941f, -776f), true, Struct_2(-11314i, true, Struct_1(-1000f, vec3<i32>(-1i, -1i, -1i)), Struct_1(-129f, vec3<i32>(-1i, 20800i, i32(-2147483648))))), Struct_4(true, vec2<f32>(-1000f, -472f), false, Struct_2(-4508i, true, Struct_1(129f, vec3<i32>(-1i, 32767i, 0i)), Struct_1(229f, vec3<i32>(-9061i, 2147483647i, -26851i)))));

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: vec3<i32> = vec3<i32>(-15003i, 0i, -317i);

var<private> global4: vec4<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 797f)));
    global4 = select(vec4<u32>(~u_input.c.x | u_input.a.x, 37653u, ~39532u, ~_wgslsmith_clamp_u32(global4.x, _wgslsmith_div_u32(u_input.c.x, 33795u), 13248u)), vec4<u32>(global4.x, ~(u_input.c.x ^ ~4294967295u), 4294967295u, ~reverseBits(reverseBits(global4.x))), vec4<bool>(true, true, global2.x, global2.x));
    var var_1 = Struct_2(13423i, !(!(global4.x > global4.x) != true), Struct_1(arg_0.x, u_input.b), Struct_1(-850f, abs(u_input.b)));
    global1 = array<Struct_4, 2>();
    var var_2 = u_input.b.zz;
    return Struct_5(Struct_2(_wgslsmith_mult_i32(1i, firstTrailingBit(u_input.b.x)), var_1.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(334f + global0[_wgslsmith_index_u32(global4.x, 25u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -17228i, -37294i), vec3<i32>(-1i, -18378i, global3.x))), var_1.c), ~_wgslsmith_div_u32(u_input.c.x, u_input.a.x), Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, var_1.a), global3.xy), global2.x, var_1.c, Struct_1(_wgslsmith_div_f32(674f, _wgslsmith_div_f32(978f, 718f)), var_1.c.b)), Struct_4(any(!vec3<bool>(var_1.b, var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(-arg_0.zx), var_1.b, Struct_2(48851i, true, Struct_1(_wgslsmith_f_op_f32(-2326f - -1525f), _wgslsmith_div_vec3_i32(u_input.b, var_1.d.b)), var_1.d)));
}

fn func_1() -> bool {
    var var_0 = vec3<u32>(~u_input.c.x, 11580u, global4.x);
    global0 = array<f32, 25>();
    var var_1 = func_2(vec3<f32>(_wgslsmith_div_f32(126f, _wgslsmith_f_op_f32(295f + global0[_wgslsmith_index_u32(61245u, 25u)])), global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)]));
    var_0 = vec3<u32>(reverseBits(global4.x) & ~countOneBits(22076u), var_1.b, 27570u);
    global2 = vec3<bool>(global2.x, false, global2.x);
    return true;
}

fn func_3() -> Struct_4 {
    global1 = array<Struct_4, 2>();
    global1 = array<Struct_4, 2>();
    var var_0 = -767f;
    var var_1 = func_2(vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, 2859u), 25u)], global0[_wgslsmith_index_u32(~(~0u), 25u)], -1551f)).c;
    var var_2 = all(select(vec4<bool>(!any(vec3<bool>(global2.x, var_1.b, var_1.b)), !(!var_1.b), true, u_input.b.x > _wgslsmith_dot_vec2_i32(var_1.d.b.yz, var_1.c.b.zy)), vec4<bool>(!func_1(), global2.x, any(vec3<bool>(true, true, true)), var_1.b), vec4<bool>(true, !var_1.b, !(u_input.a.x > 27827u), !global2.x)));
    return Struct_4(!select(false, false, var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global4.x, 25u)], 517f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(global4.x, 25u)], -1544f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1620f, -181f) + vec2<f32>(var_1.c.a, global0[_wgslsmith_index_u32(1u, 25u)]))))), true, Struct_2(-(i32(-1i) * -39488i), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(177f, var_1.d.a, global0[_wgslsmith_index_u32(62637u, 25u)]) * vec3<f32>(419f, 1567f, global0[_wgslsmith_index_u32(global4.x, 25u)]))).a.b && var_1.b, var_1.c, var_1.d));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = func_3();
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -1000f)), max(var_0.d.c.b, ~u_input.b)), abs(u_input.a.yx), Struct_2(~(-(var_0.d.d.b.x & global3.x)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 58266u), ~global4.x, arg_1.x) < (~44705u & (arg_1.x | u_input.a.x)), Struct_1(var_0.d.d.a, -(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x) & var_0.d.d.b)), Struct_1(_wgslsmith_f_op_f32(sign(arg_0.b.x)), vec3<i32>(global3.x, _wgslsmith_dot_vec3_i32(var_0.d.d.b, u_input.b), -1i))));
    global3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~reverseBits(-vec3<i32>(1i, -2147483647i, u_input.d)), ~arg_0.d.c.b), abs(select(abs(vec3<i32>(global3.x, 787i, 28161i) ^ var_0.d.d.b), vec3<i32>(-2147483647i, u_input.b.x, var_0.d.d.b.x), (u_input.d << (8367u % 32u)) != _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(var_1.a.b.x, -17010i)))));
    var var_2 = arg_0;
    return abs(u_input.c.x >> (max(12158u, firstLeadingBit(arg_1.x)) % 32u)) & var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~4294967295u, ~17043u);
    global1 = array<Struct_4, 2>();
    var_0 = _wgslsmith_sub_u32(max(_wgslsmith_add_u32(firstLeadingBit(4294967295u), abs(global4.x)), u_input.c.x), global4.x);
    let var_1 = 26001u;
    let var_2 = vec3<bool>(global3.x != _wgslsmith_div_i32(abs(global3.x), ~u_input.b.x), func_1(), true);
    let var_3 = ~global4.x;
    var_0 = _wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_div_u32(1u, var_3) & countOneBits(func_4(func_3(), vec4<u32>(4294967295u, global4.x, global4.x, 50571u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], -1000f, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], -938f)), any(vec2<bool>(var_2.x, global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.b, -vec3<i32>(u_input.d, -25930i, 2147483647i)), global3.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 40871i), global3.yy), u_input.d, firstLeadingBit(-u_input.b.x)), _wgslsmith_add_i32(u_input.d, u_input.d)));
}

