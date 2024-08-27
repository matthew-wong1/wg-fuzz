struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, true, true, true, true, true);

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global1 = array<Struct_2, 20>();
    let var_0 = arg_1;
    let var_1 = arg_1.a.d;
    return Struct_2(var_0.a.b, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1897f), -501f)))), any(!vec2<bool>(var_0.a.c.c, any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], true, arg_1.a.c.c)))), arg_1.a.c.d);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = ~_wgslsmith_div_vec2_u32(~select(vec2<u32>(43475u, 19840u), _wgslsmith_div_vec2_u32(vec2<u32>(22448u, 6818u), vec2<u32>(22107u, 18312u)), true), vec2<u32>(1u, 1u));
    global0 = array<bool, 6>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_3.b.a), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_3.a.a.x)), _wgslsmith_div_f32(1000f, arg_3.a.a.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_3.a.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1151f, arg_3.b.a.x))))))), Struct_2(func_2(_wgslsmith_f_op_f32(ceil(arg_3.b.a.x)), Struct_4(Struct_3(arg_3.b.a, Struct_1(vec2<f32>(arg_3.b.a.x, arg_3.b.a.x)), Struct_2(Struct_1(arg_3.a.a), Struct_1(arg_3.b.a), false, arg_2), var_0.x, -461f), vec4<i32>(-1i, u_input.a, arg_1, 1751i), select(vec4<u32>(0u, var_0.x, 4294967295u, 1u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(arg_3.c, true, true, true)), -vec3<i32>(arg_1, arg_1, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.a.a.x, 556f, arg_3.b.a.x), vec3<f32>(arg_3.b.a.x, arg_3.b.a.x, arg_3.a.a.x))))).b, func_2(_wgslsmith_f_op_f32(f32(-1f) * -246f), Struct_4(Struct_3(vec2<f32>(arg_3.a.a.x, -163f), arg_3.a, global1[_wgslsmith_index_u32(var_0.x, 20u)], 87640u, 1579f), vec4<i32>(u_input.a, u_input.a, arg_1, -2147483647i), ~vec4<u32>(62891u, 2636u, 35499u, 6460u), vec3<i32>(arg_1, -1i, arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1842f, 671f, arg_3.b.a.x), vec3<f32>(arg_3.a.a.x, -830f, 299f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.a.x, -931f, arg_3.a.a.x), vec3<f32>(arg_3.a.a.x, arg_3.b.a.x, arg_3.b.a.x)))).a, arg_2, arg_0.x), var_0.x, arg_3.a.a.x);
    global0 = array<bool, 6>();
    let var_2 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~var_0, _wgslsmith_sub_vec2_u32(var_0, vec2<u32>(45054u, var_0.x))), ~firstLeadingBit(var_0) | firstLeadingBit(var_0), vec2<u32>(~(~var_1.d), firstTrailingBit(_wgslsmith_mult_u32(40478u, 0u))));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_i32(u_input.a, min(u_input.a, u_input.a));
    global1 = array<Struct_2, 20>();
    let var_1 = arg_1;
    global0 = array<bool, 6>();
    var var_2 = Struct_4(arg_0, _wgslsmith_mult_vec4_i32(reverseBits(-vec4<i32>(-2147483647i, u_input.a, -20208i, 4980i)), vec4<i32>(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -20373i), firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, var_0))), -abs(1i), -27458i)), ~(abs(~vec4<u32>(2353u, arg_0.d, 1u, arg_0.d)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(5266u, 7835u, arg_0.d, arg_0.d), vec4<u32>(29422u, arg_0.d, 45611u, 0u))), _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(var_0, -38937i), _wgslsmith_sub_i32(var_0, _wgslsmith_add_i32(8516i, u_input.a)), _wgslsmith_mod_i32(reverseBits(var_0), ~u_input.a)), min(_wgslsmith_div_vec3_i32(~vec3<i32>(var_0, 0i, u_input.a), vec3<i32>(-1i, 17594i, u_input.a)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(var_0, 4089i, var_0), vec3<i32>(var_0, 0i, 29923i)))));
    return var_2.c.zwx;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_u32(~func_4(func_3(select(arg_1.wzw, arg_1.wxx, vec3<bool>(true, true, arg_0)), arg_3, global0[_wgslsmith_index_u32(1u, 6u)], func_2(2238f, Struct_4(Struct_3(arg_2.a, arg_2, Struct_2(arg_2, arg_2, true, arg_1.x), 42466u, arg_2.a.x), vec4<i32>(24516i, -49836i, -2147483647i, -2147483647i), vec4<u32>(41055u, 30408u, 21265u, 1u), vec3<i32>(arg_3, 0i, u_input.a)), vec3<f32>(1353f, 150f, arg_2.a.x))), func_3(vec3<bool>(global0[_wgslsmith_index_u32(12946u, 6u)], arg_1.x, global0[_wgslsmith_index_u32(1u, 6u)]), 1i, arg_0, global1[_wgslsmith_index_u32(0u, 20u)]).c.a), _wgslsmith_div_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 57124u, 64088u), vec3<u32>(20866u, 4294967295u, 1u)), ~select(vec3<u32>(1u, 1u, 31781u), vec3<u32>(4294967295u, 4294967295u, 25868u), arg_1.x)), vec3<u32>(1u, ~(~48894u), max(3697u, 1u))));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~abs(~46609i), ~6077i), _wgslsmith_div_vec2_i32(vec2<i32>(-firstLeadingBit(u_input.a), u_input.a), ~(vec2<i32>(-23268i, -1i) & vec2<i32>(arg_3, u_input.a)) & ~vec2<i32>(0i, -1i)));
    global0 = array<bool, 6>();
    let var_2 = false;
    let var_3 = arg_2;
    return func_3(vec3<bool>(!(!all(arg_1.wzz)), arg_0, true), arg_3, any(!arg_1.zwz), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], arg_1.x, arg_0), arg_1.xxx, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, global0[_wgslsmith_index_u32(var_0.x, 6u)])), arg_3, true, Struct_2(func_3(vec3<bool>(true, true, var_2), var_1.x, false, Struct_2(Struct_1(vec2<f32>(var_3.a.x, -1667f)), Struct_1(var_3.a), false, global0[_wgslsmith_index_u32(1u, 6u)])).c.b, Struct_1(vec2<f32>(var_3.a.x, var_3.a.x)), true, all(vec2<bool>(arg_0, true)))).d, countOneBits(var_0.x)), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(global0[_wgslsmith_index_u32(~24266u, 6u)] || true, any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 6u)]))), !(!vec2<bool>(false, !global0[_wgslsmith_index_u32(12215u, 6u)])), global0[_wgslsmith_index_u32(min(34190u, _wgslsmith_clamp_u32(22900u, abs(_wgslsmith_sub_u32(4294967295u, 1u)), ~(~19150u))), 6u)]);
    var var_1 = Struct_4(func_1(var_0.x, vec4<bool>(true, any(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), var_0.x, !all(vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1324f, 240f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-109f, 504f), vec2<f32>(-759f, -2194f)))))), u_input.a), vec4<i32>(firstTrailingBit((u_input.a | u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(56240u, 40834u, 4294967295u, 12484u), vec4<u32>(3617u, 4294967295u, 1u, 1u)) % 32u)), u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.a, -(~u_input.a))), vec4<u32>(~(~52202u), 31279u, firstLeadingBit(1u), _wgslsmith_mod_u32(45265u, ~1u)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(select(select(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(1i, u_input.a, -1i), true), max(vec3<i32>(-45702i, 1i, -16601i), vec3<i32>(-17979i, 24398i, -30398i)), true), firstTrailingBit(vec3<i32>(-42264i, -28585i, 1i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, 8925i, u_input.a)), vec3<i32>(-1i, u_input.a, 1i))), ~(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -70398i, -2147483647i), vec3<i32>(-13372i, -1i, -1i)))));
    var var_2 = var_1.a.a.x;
    global0 = array<bool, 6>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * _wgslsmith_f_op_f32(var_1.a.e * 709f)), var_1.a.a.x)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(153f, 1486f)))))), func_3(vec3<bool>(_wgslsmith_div_f32(var_1.a.e, var_3.a.x) <= _wgslsmith_f_op_f32(-var_3.a.x), true, any(vec3<bool>(false, false, var_1.a.c.d))), var_1.d.x, !(select(var_1.a.d, var_1.a.d, global0[_wgslsmith_index_u32(4294967295u, 6u)]) > ~0u), func_2(var_1.a.c.b.a.x, Struct_4(Struct_3(vec2<f32>(-196f, 1696f), var_1.a.c.a, Struct_2(var_1.a.c.a, Struct_1(vec2<f32>(578f, var_3.a.x)), var_1.a.c.d, var_1.a.c.d), 27616u, var_3.a.x), firstLeadingBit(vec4<i32>(-1i, -1i, var_1.b.x, 13945i)), ~vec4<u32>(41381u, 12973u, var_1.c.x, 32268u), countOneBits(vec3<i32>(var_1.b.x, var_1.d.x, var_1.d.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, 487f, 319f)), _wgslsmith_div_vec3_f32(vec3<f32>(1105f, var_1.a.b.a.x, var_3.a.x), vec3<f32>(-495f, var_1.a.e, var_1.a.a.x))))).c.a, !all(select(vec2<bool>(var_1.a.c.d, false), !vec2<bool>(global0[_wgslsmith_index_u32(39449u, 6u)], true), true)), !global0[_wgslsmith_index_u32(var_1.a.d, 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(vec2<i32>(_wgslsmith_mod_i32(var_1.d.x, u_input.a), ~var_1.b.x))), 1u, select(_wgslsmith_mod_vec4_i32(max(_wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(u_input.a, -23942i, -10073i, -2147483647i)), vec4<i32>(var_1.b.x, 46559i, var_1.b.x, var_1.d.x) << (var_1.c % vec4<u32>(32u))), select(vec4<i32>(var_1.b.x, var_1.d.x, var_1.d.x, u_input.a), ~vec4<i32>(-14098i, u_input.a, var_1.b.x, 2147483647i), true)), -firstLeadingBit(var_1.b) & vec4<i32>(-29172i, _wgslsmith_mult_i32(var_1.b.x, -20667i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), var_1.b.xx), ~2290i), vec4<bool>(false, true != var_0.x, func_2(865f, Struct_4(var_1.a, vec4<i32>(var_1.b.x, -1i, 66071i, var_1.b.x), vec4<u32>(var_1.a.d, var_1.c.x, var_1.c.x, 0u), var_1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-893f, var_1.a.a.x, -224f))).d, true)), u_input.a);
}

