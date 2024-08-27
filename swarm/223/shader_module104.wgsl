struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1485f, -336f, 208f);

var<private> global1: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(vec3<f32>(992f, 2301f, 1031f), 5633i, Struct_4(true, Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 79924u)), 24213u, Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 1u, 1u)), true, -2298f))), Struct_5(vec3<f32>(894f, 782f, -1000f), i32(-2147483648), Struct_4(true, Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(15744u, 1u, 1u)), 0u, Struct_1(vec2<bool>(true, true), vec3<u32>(43984u, 82315u, 1u)), false, -705f))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_4(true, Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec3<u32>(~33605u, 4294967295u, u_input.b.x)), reverseBits(u_input.b.x), Struct_1(vec2<bool>(true, true), abs(u_input.b)), all(vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_f32(-global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)), _wgslsmith_f_op_f32(trunc(var_0.b.e)))), 1687f));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_2 = global0.zx;
    var_1 = global1[_wgslsmith_index_u32(~var_1.c.b.a.b.x & _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.c.b.a.b.xy, ~var_1.c.b.a.b.xz), min(u_input.b.x, 1u)), 2u)];
    return ~(~(var_0.b.a.b & var_1.c.b.a.b) << (vec3<u32>(var_1.c.b.a.b.x, reverseBits(1u), 1916u) % vec3<u32>(32u))) | var_1.c.b.c.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-461f + -569f), -190f)), 1f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, _wgslsmith_div_f32(-385f, 972f), arg_1.e)))));
    let var_1 = 53310i;
    var var_2 = -154f;
    var_2 = var_0.x;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1004f)))), 433f);
    return select(false, true, !arg_1.c.a.x);
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_5, 2>();
    let var_0 = func_4(select(!vec4<bool>(true, true, u_input.a <= 18911i, true), vec4<bool>(true, true, true, true), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true))), Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), func_3(u_input.a), vec3<bool>(true, true, true))), (53495u | (u_input.b.x >> (u_input.b.x % 32u))) | u_input.b.x, Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), u_input.b), true, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 707f), _wgslsmith_f_op_f32(select(500f, _wgslsmith_div_f32(-996f, global0.x), true)))));
    var var_1 = -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, reverseBits(reverseBits(0i))), ~(-vec3<i32>(-2147483647i, 53029i, 38366i)));
    global1 = array<Struct_5, 2>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(103332u, u_input.b.x) | u_input.b.x, 2u)];
    return var_2.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = global0.x;
    let var_1 = func_2();
    global1 = array<Struct_5, 2>();
    let var_2 = vec3<i32>(-22255i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), vec2<i32>(~(-8314i), u_input.a)), u_input.a, ~_wgslsmith_div_i32(u_input.a, -1i) | u_input.a), _wgslsmith_div_i32(reverseBits(u_input.a), 8094i));
    let var_3 = u_input.b.x >> (~13784u % 32u);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(max(min(vec3<i32>(u_input.a, -41975i, 22329i), vec3<i32>(var_2.x, 25920i, -2147483647i)), vec3<i32>(31429i, var_2.x, 2147483647i)), vec3<i32>(var_2.x, -32446i, var_2.x)), min(vec3<i32>(-u_input.a, var_2.x, select(var_2.x, 2147483647i, true)), var_2), var_2), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -515f)))), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), false))), reverseBits(func_1(u_input.b.xx, abs(vec2<u32>(0u, 87650u)), _wgslsmith_add_vec3_u32(u_input.b, u_input.b))) & 23944i, Struct_4(true, Struct_2(func_2().b.c, _wgslsmith_sub_u32(func_2().b.c.b.x, u_input.b.x), Struct_1(vec2<bool>(true, true), vec3<u32>(u_input.b.x, 0u, 47582u)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -332f))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-996f * var_0.c.b.e), global0.x), -336f)))), _wgslsmith_f_op_f32(-1365f * _wgslsmith_f_op_f32(f32(-1f) * -994f)), _wgslsmith_f_op_f32(max(var_0.c.b.e, -1000f)));
    global0 = vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(select(-882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f - global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.e) - var_0.a.x)), var_0.c.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - var_0.c.b.e), _wgslsmith_f_op_f32(1488f * -1000f), u_input.a >= 0i)) - _wgslsmith_f_op_f32(var_0.c.b.e + _wgslsmith_f_op_f32(global0.x - global0.x))))));
    var var_1 = Struct_3(any(!select(vec4<bool>(true, var_0.c.a, var_0.c.a, var_0.c.a), vec4<bool>(var_0.c.a, true, false, var_0.c.b.d), any(vec4<bool>(false, false, true, var_0.c.b.a.a.x)))));
    let var_2 = Struct_3(any(var_0.c.b.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.c.b.e)), var_0.a.x, global0.x, _wgslsmith_f_op_f32(sign(228f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -304f, -1319f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1511f, global0.x, 165f)))))), _wgslsmith_div_i32(u_input.a, ~19426i), var_0.c.b.a.b);
}

