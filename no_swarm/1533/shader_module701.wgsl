struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, 156f, vec4<bool>(false, false, true, false)), Struct_1(true, 1230f, vec4<bool>(false, true, false, true)), Struct_1(false, -1265f, vec4<bool>(true, false, true, false)), Struct_1(false, -1379f, vec4<bool>(true, false, true, true)), Struct_1(false, 1960f, vec4<bool>(true, true, false, true)), Struct_1(true, 1000f, vec4<bool>(true, false, true, false)), Struct_1(true, -194f, vec4<bool>(true, false, false, false)), Struct_1(true, 119f, vec4<bool>(false, true, false, false)), Struct_1(false, -236f, vec4<bool>(true, false, true, true)), Struct_1(true, -1049f, vec4<bool>(true, false, false, true)), Struct_1(false, 569f, vec4<bool>(false, true, true, true)), Struct_1(false, 1049f, vec4<bool>(true, true, true, false)), Struct_1(true, -1273f, vec4<bool>(true, false, true, false)), Struct_1(false, -705f, vec4<bool>(true, true, false, true)), Struct_1(false, 1210f, vec4<bool>(false, false, false, false)), Struct_1(false, 724f, vec4<bool>(true, false, false, true)), Struct_1(true, -530f, vec4<bool>(false, true, true, false)), Struct_1(true, 982f, vec4<bool>(true, true, true, false)), Struct_1(true, -224f, vec4<bool>(true, true, false, false)), Struct_1(true, -591f, vec4<bool>(false, true, true, true)), Struct_1(true, 425f, vec4<bool>(true, true, true, true)), Struct_1(true, -580f, vec4<bool>(false, false, true, true)), Struct_1(true, -1891f, vec4<bool>(true, true, false, true)), Struct_1(true, 2101f, vec4<bool>(false, false, false, true)), Struct_1(false, -1652f, vec4<bool>(false, false, false, true)), Struct_1(true, -1323f, vec4<bool>(false, true, true, false)), Struct_1(true, -787f, vec4<bool>(false, true, true, true)));

var<private> global3: Struct_1 = Struct_1(true, 110f, vec4<bool>(false, true, true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_vec3_i32(reverseBits(u_input.a.wzz), -max(u_input.a.wxw, ~countOneBits(u_input.a.zzx)));
    global3 = global2[_wgslsmith_index_u32(~81084u, 27u)];
    let var_1 = -var_0 ^ select(vec3<i32>(var_0.x, -var_0.x, var_0.x), _wgslsmith_mod_vec3_i32((var_0 ^ var_0) | (vec3<i32>(var_0.x, 24778i, 1i) ^ vec3<i32>(var_0.x, var_0.x, u_input.a.x)), -select(vec3<i32>(-41516i, -2147483647i, 20172i), u_input.a.xwz, vec3<bool>(true, global1.c.x, global1.c.x))), !(true == any(global3.c)));
    global3 = global2[_wgslsmith_index_u32(global1.a.x, 27u)];
    let var_2 = vec2<u32>(abs(max(~u_input.b, 4294967295u)), 0u);
    return reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(min(41258u, 13343u), u_input.b, ~71425u, var_2.x), min(vec4<u32>(1u, 1u, 35036u, 62422u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 54505u, global1.a.x, 1u), vec4<u32>(u_input.c.x, var_2.x, global1.a.x, u_input.b)))) >> (var_2.x % 32u));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_1, 27>();
    var var_0 = max(_wgslsmith_div_u32(func_3(), (u_input.b >> (global1.a.x % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global1.a.x, global1.a.x))), 0u);
    global3 = global2[_wgslsmith_index_u32(67547u, 27u)];
    global3 = global2[_wgslsmith_index_u32(u_input.c.x, 27u)];
    return Struct_3(vec2<bool>(all(select(select(global3.c.wxy, vec3<bool>(global1.d, global3.c.x, global1.c.x), vec3<bool>(global3.c.x, true, true)), vec3<bool>(true, global1.d, global3.a), any(vec3<bool>(true, false, true)))), global3.a));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = global1.b.x;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, 4294967295u), 27u)];
    let var_3 = true;
    var_1 = global1.b.x;
    return Struct_2(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 95735u, u_input.c.x), global1.a) >> (global1.a % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(22104u, global1.a.x, global1.a.x), vec3<u32>(78424u, 1u, global1.a.x)), true) ^ ~vec3<u32>(u_input.b, u_input.c.x, ~global1.a.x), global1.b, !select(vec2<bool>(false & var_3, all(global3.c)), !var_0.a, all(!var_2.c)), func_2().a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -164f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-881f)));
    var var_2 = func_1();
    global3 = Struct_1(var_2.d, _wgslsmith_f_op_f32(-var_1), global3.c);
    var var_3 = func_2();
    var_0 = 555f;
    let var_4 = 55452u;
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1188f);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_4, 8966u), select(var_4, 3967u, true), firstTrailingBit(var_2.a.x)), _wgslsmith_add_u32(firstTrailingBit(53979u), _wgslsmith_div_u32(507u, u_input.c.x)), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(var_4, 1u)), func_3() & 38540u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(778f - _wgslsmith_f_op_f32(621f + 123f)), _wgslsmith_f_op_f32(-806f * _wgslsmith_f_op_f32(select(971f, 2502f, global3.a)))), -179f));
}

