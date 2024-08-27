struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1232f, 1352f);

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(1726f, 1503f, -1000f));

var<private> global2: array<vec2<u32>, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1407f)), _wgslsmith_f_op_f32(max(-988f, _wgslsmith_div_f32(global0.x, global1.b.x))), -2942f) - vec4<f32>(916f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - global1.b.x)))))));
    let var_1 = ((_wgslsmith_add_u32(u_input.e.x, u_input.b.x) >= ~abs(u_input.e.x)) && all(!select(arg_0, vec4<bool>(false, arg_0.x, true, false), global1.a))) && true;
    var var_2 = -min(u_input.a, u_input.a);
    var_2 = ~(u_input.a >> (u_input.d % 32u));
    global0 = vec2<f32>(-294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2622f, -1333f)))))));
    return any(!select(arg_0, arg_0, !select(vec4<bool>(false, false, false, var_1), vec4<bool>(global1.a, arg_0.x, var_1, true), global1.a)));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(1287f * _wgslsmith_f_op_f32(global0.x - global0.x));
    var var_1 = Struct_5(Struct_4(global1.b.x), Struct_2(Struct_1(global1.b.x > global1.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 368f, global1.b.x) - vec3<f32>(-182f, global1.b.x, global1.b.x)))), (u_input.e.x >> (abs(u_input.b.x) % 32u)) >> (46851u % 32u), vec3<u32>(4294967295u, ~28800u, ~0u) >> (~(~u_input.c.zxw) % vec3<u32>(32u)), Struct_1(func_3(select(vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(true, global1.a, global1.a, global1.a), vec4<bool>(false, true, global1.a, global1.a))), _wgslsmith_f_op_vec3_f32(-global1.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, global1.b.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-206f, global1.b.x, global0.x, global0.x), vec4<f32>(global1.b.x, global1.b.x, 1112f, -230f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), -465f, _wgslsmith_f_op_f32(max(-166f, -927f)), _wgslsmith_f_op_f32(max(global1.b.x, -301f))))), _wgslsmith_sub_vec4_i32(~(vec4<i32>(-845i, u_input.a, u_input.a, u_input.a) ^ (vec4<i32>(-2147483647i, 2869i, u_input.a, 14528i) ^ vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), ~(~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, global1.a))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.d.b.x + var_1.b.e.x) + var_1.a.a)) - 636f));
    var var_2 = _wgslsmith_clamp_vec4_u32(u_input.c, max(vec4<u32>(firstLeadingBit(var_1.b.c.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 5788u), var_1.b.b), _wgslsmith_mult_u32(0u, u_input.d), firstTrailingBit(_wgslsmith_sub_u32(var_1.b.c.x, var_1.b.c.x))), vec4<u32>(abs(11856u), ~var_1.b.c.x, var_1.b.b, u_input.c.x)), vec4<u32>(var_1.b.c.x >> (var_1.b.c.x % 32u), ~_wgslsmith_div_u32(4294967295u, u_input.c.x), ~1u, 1u));
    global2 = array<vec2<u32>, 15>();
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(global1.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1504f))));
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<u32>, 15>();
    var var_0 = firstLeadingBit(_wgslsmith_mult_i32(~u_input.a, u_input.a));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(global1.b.x * global1.b.x), !(_wgslsmith_add_i32(u_input.a, -51453i) > u_input.a))) - global0.x);
    var var_2 = func_2();
    var_2 = func_2();
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.b)) - _wgslsmith_f_op_vec3_f32(-global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = global1.b.yz;
    global2 = array<vec2<u32>, 15>();
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(-1282f)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1052f), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(~42802u, u_input.b.x), vec2<u32>(14600u << (0u % 32u), 1u)), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(1i, u_input.a)), max(vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, 2147483647i)))), countOneBits(vec2<i32>(u_input.a, -1i))), 46901u);
}

