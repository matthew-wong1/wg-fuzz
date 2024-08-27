struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: Struct_5;

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<u32>(4294967295u, 78637u, 4294967295u), -1i, vec4<i32>(-16127i, -22641i, -12380i, 15975i), Struct_3(9152i, Struct_1(vec3<f32>(620f, 490f, -354f), vec3<bool>(true, true, true)), vec2<bool>(true, false))), Struct_4(vec3<u32>(1996u, 4621u, 44838u), -3214i, vec4<i32>(10964i, -48194i, -4033i, 38089i), Struct_3(1i, Struct_1(vec3<f32>(383f, -1181f, -275f), vec3<bool>(false, false, false)), vec2<bool>(false, false))), Struct_4(vec3<u32>(51238u, 1u, 13497u), i32(-2147483648), vec4<i32>(24556i, i32(-2147483648), 65204i, -1i), Struct_3(41617i, Struct_1(vec3<f32>(-204f, 909f, -192f), vec3<bool>(false, true, false)), vec2<bool>(false, true))), Struct_4(vec3<u32>(1u, 0u, 51015u), 0i, vec4<i32>(-1i, 2147483647i, 12194i, 0i), Struct_3(-53434i, Struct_1(vec3<f32>(957f, -428f, -1000f), vec3<bool>(false, false, false)), vec2<bool>(true, true))), Struct_4(vec3<u32>(34934u, 1u, 4294967295u), -1i, vec4<i32>(i32(-2147483648), 0i, -19560i, 0i), Struct_3(-22825i, Struct_1(vec3<f32>(721f, -1430f, 491f), vec3<bool>(true, false, false)), vec2<bool>(false, true))), Struct_4(vec3<u32>(0u, 1u, 0u), -68345i, vec4<i32>(-49710i, -1i, 1i, -44002i), Struct_3(1i, Struct_1(vec3<f32>(-1546f, 1264f, 241f), vec3<bool>(false, true, true)), vec2<bool>(false, false))), Struct_4(vec3<u32>(4294967295u, 1u, 0u), -1i, vec4<i32>(2147483647i, -25570i, -39268i, 12028i), Struct_3(21257i, Struct_1(vec3<f32>(1000f, -1000f, -462f), vec3<bool>(true, true, true)), vec2<bool>(true, true))), Struct_4(vec3<u32>(1u, 0u, 98682u), 2147483647i, vec4<i32>(45765i, -1i, 2147483647i, i32(-2147483648)), Struct_3(0i, Struct_1(vec3<f32>(1111f, 1649f, -1380f), vec3<bool>(false, false, false)), vec2<bool>(true, false))), Struct_4(vec3<u32>(6506u, 1u, 47365u), 0i, vec4<i32>(i32(-2147483648), i32(-2147483648), -39585i, 18028i), Struct_3(1i, Struct_1(vec3<f32>(200f, 619f, 1286f), vec3<bool>(false, true, false)), vec2<bool>(false, true))), Struct_4(vec3<u32>(19242u, 10756u, 4294967295u), 2147483647i, vec4<i32>(0i, -1i, -65298i, 21842i), Struct_3(67286i, Struct_1(vec3<f32>(634f, -297f, -1032f), vec3<bool>(false, true, false)), vec2<bool>(false, true))), Struct_4(vec3<u32>(72212u, 1u, 12147u), 2147483647i, vec4<i32>(-32202i, 87652i, -16995i, 17631i), Struct_3(1i, Struct_1(vec3<f32>(752f, -1814f, 466f), vec3<bool>(true, true, false)), vec2<bool>(true, true))), Struct_4(vec3<u32>(75859u, 4294967295u, 0u), 28034i, vec4<i32>(2147483647i, -36074i, 1i, 6833i), Struct_3(-18235i, Struct_1(vec3<f32>(-1033f, 197f, -1493f), vec3<bool>(true, false, false)), vec2<bool>(false, false))), Struct_4(vec3<u32>(41137u, 1u, 1u), 23324i, vec4<i32>(0i, -30643i, -30873i, 66962i), Struct_3(-4463i, Struct_1(vec3<f32>(-459f, -787f, -500f), vec3<bool>(true, false, true)), vec2<bool>(false, false))), Struct_4(vec3<u32>(16732u, 0u, 1743u), 1i, vec4<i32>(-16823i, 37193i, 1i, -18600i), Struct_3(-1i, Struct_1(vec3<f32>(-500f, 1328f, 1018f), vec3<bool>(false, true, true)), vec2<bool>(true, false))), Struct_4(vec3<u32>(38669u, 97737u, 18517u), 1i, vec4<i32>(i32(-2147483648), -17337i, i32(-2147483648), 1i), Struct_3(-15632i, Struct_1(vec3<f32>(611f, 290f, -599f), vec3<bool>(true, false, true)), vec2<bool>(false, true))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = ~(~min(min(vec3<u32>(arg_0.c, 22057u, 30327u), vec3<u32>(53443u, u_input.d, arg_0.b)) << (vec3<u32>(67886u, u_input.a.x, 32609u) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(arg_0.b, u_input.a.x, 40107u))));
    let var_1 = global3[_wgslsmith_index_u32(global0.a.a.x, 15u)];
    let var_2 = _wgslsmith_div_i32(~_wgslsmith_sub_i32(1i, 2147483647i), -abs(_wgslsmith_add_i32(var_1.b, u_input.c.x)));
    var var_3 = any(vec3<bool>(arg_0.a.b.x, var_1.d.c.x, true));
    var var_4 = global0.a.d.b.a.x;
    return vec4<bool>(_wgslsmith_div_f32(-1000f, 392f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f)))), u_input.c.x < global0.a.b, true, select(~max(0u, arg_0.b), _wgslsmith_dot_vec2_u32(~var_0.zy, vec2<u32>(u_input.d, 4294967295u)), var_1.b > _wgslsmith_div_i32(-1i, global0.a.b)) == _wgslsmith_div_u32(7329u, _wgslsmith_sub_u32(~var_0.x, u_input.a.x)));
}

fn func_2() -> i32 {
    global0 = Struct_5(global0.a);
    var var_0 = -1633f;
    var var_1 = global0.a.d;
    var var_2 = any(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a.d.b.a), !vec3<bool>(true, var_1.c.x, true)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.a.a.x, 4249u), 0u >> (u_input.a.x % 32u)))));
    var var_3 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global0.a.c, abs(-global0.a.c)), global0.a.c);
    return firstTrailingBit(u_input.c.x);
}

fn func_1() -> StorageBuffer {
    global2 = global0.a.d.b.a;
    global3 = array<Struct_4, 15>();
    var var_0 = ~abs(vec3<i32>(1i, func_2() >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 0u), global0.a.a) % 32u), _wgslsmith_mult_i32(firstTrailingBit(global0.a.d.a), _wgslsmith_sub_i32(-1i, global0.a.b))));
    var var_1 = global0.a.d.c.x;
    global1 = array<vec3<bool>, 16>();
    return StorageBuffer(var_0.x, _wgslsmith_add_u32(~u_input.b, _wgslsmith_add_u32(~(~global0.a.a.x), ~(u_input.a.x >> (global0.a.a.x % 32u)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(-320f, global2.x, -894f), vec3<bool>(any(select(global0.a.d.b.b.zx, select(vec2<bool>(true, false), global0.a.d.c, vec2<bool>(false, false)), vec2<bool>(true, global0.a.d.c.x))), any(global0.a.d.b.b.zy), any(!select(global0.a.d.b.b, global0.a.d.b.b, global0.a.d.b.b.x))));
    let x = u_input.a;
    s_output = func_1();
}

