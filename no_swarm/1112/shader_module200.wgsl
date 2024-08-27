struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_4,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(1u, i32(-2147483648), Struct_2(vec2<bool>(true, false), 1614f, false, Struct_1(458f))), vec4<bool>(true, false, true, false), Struct_4(1u, 4841i, Struct_2(vec2<bool>(false, false), 655f, true, Struct_1(1087f))), -2447f, Struct_1(-661f));

var<private> global1: Struct_5;

var<private> global2: array<vec3<i32>, 25>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = vec4<u32>(global1.a.a, 1u, abs(firstLeadingBit(min(~1u, global0.c.a))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(34303u, 54427u), ~u_input.b)));
    var var_1 = global1.c.c.d;
    let var_2 = global0.a.c;
    var var_3 = global0.c.c.a.x;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f * -911f) - var_2.b)))));
    return -160f;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<vec3<i32>, 25>();
    let var_0 = Struct_5(Struct_4(_wgslsmith_mult_u32(10891u, ~u_input.b.x), 38452i, global1.c.c), vec4<bool>(false, global1.b.x, true, (arg_0.x << (~38505u % 32u)) >= global1.a.b), Struct_4(global0.c.a, 14102i, global0.a.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)))), Struct_1(_wgslsmith_f_op_f32(func_3())));
    var var_1 = Struct_3(-408f);
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(select(-808f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.a)), 765f)))), (!global0.a.c.c | (_wgslsmith_clamp_u32(u_input.b.x, global1.a.a, 4444u) >= global0.a.a)) & !arg_0.c));
    var_0 = _wgslsmith_f_op_f32(sign(488f));
    let var_1 = _wgslsmith_f_op_f32(-695f * global1.a.c.b);
    var var_2 = ~(~arg_1);
    global0 = Struct_5(global0.c, select(vec4<bool>(all(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.c)), arg_0.c, -1000f < _wgslsmith_f_op_f32(arg_0.b + global1.d), true), global1.b, vec4<bool>(!global1.c.c.c, arg_0.a.x, !(!arg_0.c), global0.e.a >= -763f)), global1.a, func_2(max(_wgslsmith_clamp_vec3_i32(firstLeadingBit(global2[_wgslsmith_index_u32(48400u, 25u)]), abs(global2[_wgslsmith_index_u32(52225u, 25u)]), -global2[_wgslsmith_index_u32(global1.c.a, 25u)]), vec3<i32>(-2147483647i, -1i, ~42983i))).a, func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 26255i, -34097i), global2[_wgslsmith_index_u32(abs(u_input.b.x), 25u)]) & max(vec3<i32>(arg_2, -2147483647i, global1.a.b), global2[_wgslsmith_index_u32(u_input.b.x, 25u)])));
    return Struct_5(global0.a, select(vec4<bool>(global0.b.x, all(vec3<bool>(global0.b.x, global1.a.c.c, false)), global0.c.c.c, !arg_0.c), !(!global0.b), vec4<bool>(all(global0.b.yxz), global0.a.c.c, global1.a.c.c, !any(vec2<bool>(arg_0.c, global0.c.c.c)))), global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f - global1.c.c.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.a.c.d.a, arg_0.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.d.a, global0.e.a)), _wgslsmith_f_op_f32(-global0.a.c.b)))), arg_0.d);
}

fn func_1() -> i32 {
    global1 = func_4(Struct_2(global0.c.c.a, _wgslsmith_f_op_f32(498f * _wgslsmith_f_op_f32(select(-594f, _wgslsmith_f_op_f32(sign(global1.a.c.b)), global1.b.x))), global1.b.x, func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.a, global1.a.a, global0.c.a, 4294967295u), ~vec4<u32>(4294967295u, 0u, 4294967295u, 29397u)), 25u)])), _wgslsmith_dot_vec2_i32(~(max(u_input.a, u_input.a) ^ ~u_input.a), abs(vec2<i32>(0i, -12347i))), max(-2147483647i, global1.c.b));
    global2 = array<vec3<i32>, 25>();
    let var_0 = countOneBits((-(global1.c.b << (27463u % 32u)) ^ -(~u_input.a.x)) >> (u_input.b.x % 32u));
    let var_1 = vec2<u32>(4294967295u, firstLeadingBit(0u)) | _wgslsmith_mod_vec2_u32(select(~vec2<u32>(1u, 1u), abs(~vec2<u32>(0u, 4294967295u)), any(global0.b.yyz)), max(~u_input.b, vec2<u32>(27266u, select(27017u, 4294967295u, true))));
    var var_2 = vec2<bool>(global0.a.c.c, false);
    return u_input.a.x;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> Struct_5 {
    global1 = Struct_5(Struct_4(4294967295u, ~global0.a.b, Struct_2(vec2<bool>(false, true), 720f, true, global1.a.c.d)), global1.b, func_4(global0.a.c, -abs(1i), abs(global0.a.b)).a, 581f, global0.a.c.d);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-652f, 1044f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-1098f - global1.d))))));
    var var_1 = vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(arg_1.x, arg_1.x), -2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(global0.e.a, -1000f), global0.d))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -244f)), vec2<f32>(_wgslsmith_f_op_f32(-global1.e.a), func_2(vec3<i32>(u_input.a.x, arg_1.x, -1i)).a)))));
    global0 = Struct_5(global0.c, select(!(!func_4(global0.c.c, 627i, global1.a.b).b), !global1.b, func_4(func_4(func_4(global0.a.c, arg_1.x, -35011i).a.c, var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-24890i, arg_2, 1i, var_1.x), vec4<i32>(global0.a.b, global1.c.b, 1i, global0.a.b))).c.c, i32(-1i) * -11393i, i32(-1i) * -30939i).b), func_4(Struct_2(global1.c.c.a, _wgslsmith_f_op_f32(-global0.e.a), all(vec4<bool>(global0.b.x, true, arg_3, global0.b.x)), Struct_1(_wgslsmith_div_f32(var_2.x, -679f))), ~_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(~40710u, 25u)], arg_1), _wgslsmith_dot_vec3_i32(-arg_1 >> (vec3<u32>(1u, global1.c.a, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, -103231i, arg_1.x)), abs(global2[_wgslsmith_index_u32(u_input.b.x, 25u)])))).c, global1.c.c.b, Struct_1(arg_0));
    return func_4(func_4(Struct_2(!(!global0.a.c.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.c.d.a, var_0.a)), true, global0.c.c.d), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~31404i, global1.a.b, 1i), u_input.a.x), firstTrailingBit(_wgslsmith_mult_i32(global0.c.b, global1.c.b))).c.c, func_4(Struct_2(select(func_4(Struct_2(global1.c.c.a, global0.c.c.d.a, false, global1.e), 1i, u_input.a.x).b.xx, vec2<bool>(false, arg_3), true != global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1338f), true, func_2(-vec3<i32>(u_input.a.x, 1i, 23567i))), _wgslsmith_clamp_i32(select(-arg_1.x, _wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(global1.c.b, 1i)), all(global1.b.yy)), 0i, u_input.a.x), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(arg_1, arg_1), -vec3<i32>(arg_1.x, -1960i, global0.c.b))).a.b, 29567i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(global0.e.a, _wgslsmith_add_vec3_i32(vec3<i32>(global1.c.b, ~(-2147483647i), 9405i), -(~global2[_wgslsmith_index_u32(~28566u, 25u)])), func_1(), all(global1.a.c.a));
    global2 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(0u, global1.a.a, 74923u, 12137u), max(vec4<u32>(4294967295u, global0.c.a, 4294967295u, 4294967295u), vec4<u32>(0u, 21571u, u_input.b.x, 0u)), func_4(Struct_2(global1.a.c.a, global0.a.c.d.a, global1.b.x, global1.a.c.d), -59432i, u_input.a.x).b)), _wgslsmith_div_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.a, u_input.b.x, global0.c.a, 11414u), vec4<u32>(global0.c.a, global1.c.a, 4294967295u, u_input.b.x)), ~vec4<u32>(u_input.b.x, 0u, global0.c.a, 4294967295u)), max(vec4<u32>(40334u, 4294967295u, 4294967295u, global1.a.a), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 2830u))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(1226u, 44220u, global1.c.a, 0u) & firstLeadingBit(vec4<u32>(46807u, 0u, u_input.b.x, 30819u)), reverseBits(vec4<u32>(36729u, global1.a.a, global1.c.a, global0.a.a))) % vec4<u32>(32u)));
    global2 = array<vec3<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))));
}

