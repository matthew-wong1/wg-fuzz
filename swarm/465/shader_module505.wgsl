struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 426f;

var<private> global1: array<Struct_2, 27>;

var<private> global2: i32 = 20876i;

var<private> global3: f32;

var<private> global4: vec4<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(252f, _wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(-1319f * global4.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2213f, -1139f, global4.x) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, global4.x, global4.x)))), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)))), vec3<f32>(987f, global4.x, _wgslsmith_f_op_f32(-global4.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2149f))) * _wgslsmith_f_op_f32(round(1000f))), -633f, -489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = Struct_5(Struct_4(any(vec4<bool>(true, true, true, true)), Struct_2(select(~u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -2147483647i, u_input.c.x), u_input.c), true), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 8759u, u_input.a.x), min(vec3<u32>(u_input.a.x, 9340u, 51984u), vec3<u32>(0u, u_input.a.x, 4294967295u))), Struct_1(-u_input.b, -1i, vec4<u32>(1u, u_input.a.x, 33048u, u_input.a.x) << (vec4<u32>(u_input.a.x, 82324u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), u_input.a.x > u_input.a.x), Struct_1(-vec2<i32>(arg_0, 25845i), -arg_0, ~vec4<u32>(u_input.a.x, 1u, 46801u, 1u), any(vec2<bool>(true, false))))));
    let var_3 = abs(vec3<i32>(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, arg_0, -2147483647i)), vec3<i32>(var_2.a.b.a.x, 2147483647i, -1i)), -2147483647i, -2147483647i));
    var var_4 = vec3<u32>(_wgslsmith_add_u32(4294967295u, var_2.a.b.b.x), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_2.a.b.d.c.x, var_2.a.b.d.c.x), u_input.a, vec2<bool>(true, var_2.a.a)), var_2.a.b.b.xz), _wgslsmith_clamp_u32(1u & _wgslsmith_mult_u32(1u & var_2.a.b.b.x, 1u), _wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(var_2.a.b.d.c.yxw, vec3<u32>(u_input.a.x, 4294967295u, 1u)))), u_input.a.x << ((_wgslsmith_dot_vec2_u32(u_input.a, var_2.a.b.d.c.zz) ^ u_input.a.x) % 32u)));
    return ~_wgslsmith_dot_vec4_u32(firstTrailingBit(abs(countOneBits(var_2.a.b.c.c))), min(var_2.a.b.d.c, vec4<u32>(4294967295u, var_2.a.b.c.c.x, ~var_2.a.b.b.x, min(45705u, 27263u))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = Struct_3(arg_0, Struct_1(abs(~select(arg_0.a, vec2<i32>(-34587i, arg_1), vec2<bool>(arg_0.d, true))), -countOneBits(abs(1i)), _wgslsmith_mult_vec4_u32(~max(vec4<u32>(42386u, 0u, arg_0.c.x, 44616u), arg_0.c), vec4<u32>(func_3(-1i), ~820u, 4294967295u >> (u_input.a.x % 32u), ~19800u)), !all(vec3<bool>(arg_0.d, arg_0.d, arg_0.d))), global1[_wgslsmith_index_u32(select(arg_0.c.x, u_input.a.x, true), 27u)], arg_0);
    var var_1 = !select(select(select(vec3<bool>(true, true, var_0.b.d), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec2<bool>(var_0.b.d, arg_0.d)), true), !vec3<bool>(false, true, var_0.d.d)), !select(!vec3<bool>(true, var_0.c.c.d, var_0.b.d), select(vec3<bool>(var_0.b.d, var_0.d.d, arg_0.d), vec3<bool>(false, arg_0.d, var_0.c.c.d), vec3<bool>(arg_0.d, true, arg_0.d)), vec3<bool>(false, true, true)), vec3<bool>(true, all(vec2<bool>(arg_0.d, arg_0.d)), _wgslsmith_clamp_i32(-1i, arg_1, arg_1) != (i32(-1i) * -21004i)));
    global1 = array<Struct_2, 27>();
    let var_2 = var_0.d;
    global2 = u_input.b.x;
    return _wgslsmith_dot_vec4_i32(~(-vec4<i32>(arg_1, ~u_input.b.x, -2147483647i, -20385i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-(15441i >> (u_input.a.x % 32u)), -select(var_0.a.a.x, u_input.b.x, var_2.d), reverseBits(arg_0.b) | -var_2.a.x, -6280i | ~var_2.a.x), min(vec4<i32>(27779i, u_input.b.x, 78210i, -2147483647i), -vec4<i32>(arg_0.b, -2147483647i, var_2.a.x, -1i)) >> (~(vec4<u32>(1u, var_0.a.c.x, 27386u, arg_0.c.x) >> (var_2.c % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~func_2(Struct_1(u_input.b, 7892i, vec4<u32>(62717u, u_input.a.x, u_input.a.x, u_input.a.x), false), -2147483647i, -491f, -937f), 13054i, 833i), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, -9437i), u_input.c) ^ vec3<i32>(u_input.b.x, -329i, 610i))), abs(~(~(~vec4<u32>(1595u, 72817u, 83896u, 6789u)))), any(vec4<bool>(true, true, true, true)));
    global3 = _wgslsmith_f_op_f32(-global4.x);
    let var_1 = !(!vec3<bool>(global4.x > 466f, false, !var_0.d));
    var var_2 = Struct_5(Struct_4(any(vec4<bool>(!var_0.d, any(vec4<bool>(false, var_0.d, false, var_1.x)), true, any(var_1))), Struct_2(vec3<i32>(28671i, abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 27386i, 1i, var_0.a.x), vec4<i32>(var_0.a.x, 2537i, 47209i, var_0.a.x))), select(var_0.c.zzz, min(vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x), var_0.c.zzx), true), Struct_1(vec2<i32>(2147483647i, -34748i), select(-1i, -2147483647i, var_1.x), select(vec4<u32>(var_0.c.x, 0u, u_input.a.x, 95451u), var_0.c, vec4<bool>(var_1.x, true, var_0.d, false)), all(vec4<bool>(false, true, false, var_0.d))), Struct_1(vec2<i32>(38853i, u_input.b.x), _wgslsmith_mod_i32(17812i, u_input.b.x), vec4<u32>(17242u, u_input.a.x, 50017u, var_0.c.x), var_1.x))));
    var var_3 = var_2.a.b.d;
    return !vec4<bool>(~1u > max(select(u_input.a.x, 6428u, true), 26716u), all(select(var_1.xy, !var_1.yy, var_2.a.b.a.x == -2885i)), all(vec4<bool>(var_0.d, var_1.x, var_2.a.a, var_3.d)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_5 {
    var var_0 = arg_0;
    global1 = array<Struct_2, 27>();
    var var_1 = Struct_4(!all(vec3<bool>(true, true, true)), arg_1);
    var_1 = Struct_4(true, global1[_wgslsmith_index_u32(69726u, 27u)]);
    global0 = _wgslsmith_f_op_f32(exp2(global4.x));
    return Struct_5(Struct_4(arg_0.x, global1[_wgslsmith_index_u32((~1u | u_input.a.x) | 1u, 27u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), select(~u_input.a.x, min(4294967295u, 0u), u_input.a.x > u_input.a.x), u_input.a.x));
    let var_1 = 307f;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)))), _wgslsmith_f_op_vec2_f32(abs(global4.yx)));
    var var_3 = func_4(func_1(), Struct_2(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a), select(4294967295u, 86153u, true), 4294967295u), ~select(var_0.xwx, vec3<u32>(var_0.x, 55117u, u_input.a.x), true)), Struct_1(vec2<i32>(-1i, _wgslsmith_div_i32(u_input.b.x, -62458i)), select(27455i, u_input.c.x, any(vec3<bool>(false, false, false))), var_0, select(true, all(vec2<bool>(false, true)), true)), Struct_1(u_input.c.xz, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, u_input.b.x), 45128i), vec4<u32>(~32032u, firstLeadingBit(u_input.a.x), 0u, var_0.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.c.c.yyy);
}

