struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(33082u, 23241u, 50371u), vec3<u32>(4294967295u, 36532u, 6532u), vec3<u32>(8901u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u));

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), -1232f)))));
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, u_input.c, 4508i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, -38778i, 14666i))), u_input.a);
    global1 = array<vec3<u32>, 4>();
    var var_1 = ~vec3<u32>(0u, ~countOneBits(u_input.b), ~u_input.d.x);
    global1 = array<vec3<u32>, 4>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1272f, arg_1.x, global0.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, 673f, arg_1.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0, 143f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, 742f), vec4<f32>(1620f, global0.x, 922f, arg_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, global0.x, -693f, arg_1.x), vec4<f32>(-459f, -179f, -582f, arg_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -428f, global0.x, 2899f) - vec4<f32>(arg_1.x, global0.x, -739f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2509f, 1206f, global0.x, arg_1.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -714f, -702f), vec4<f32>(global0.x, 809f, global0.x, arg_1.x))))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, -270f))));
    global2 = _wgslsmith_f_op_f32(floor(global0.x));
    let var_1 = Struct_3(true, 0i, ~abs(_wgslsmith_sub_vec2_u32(u_input.e, min(u_input.e, u_input.e))), u_input.c, Struct_1(!select(!vec4<bool>(arg_0.x, true, false, false), select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(false, false, false, arg_0.x), vec4<bool>(true, true, true, false)), all(vec2<bool>(arg_0.x, true))), 0u));
    let var_2 = Struct_3(any(var_1.e.a.ww), -(~(-2147483647i)), firstTrailingBit(min(_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(var_1.c.x, var_1.c.x) << (vec2<u32>(var_1.e.b, u_input.b) % vec2<u32>(32u))), var_1.c)), ~_wgslsmith_sub_i32(25826i, reverseBits(0i)), var_1.e);
    var var_3 = _wgslsmith_div_vec2_i32((vec2<i32>(_wgslsmith_mod_i32(var_2.b, u_input.a), var_2.b) << (~(~u_input.e) % vec2<u32>(32u))) ^ arg_1.zy, _wgslsmith_div_vec2_i32(countOneBits(countOneBits(reverseBits(arg_1.xy))), -_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(49791i, var_1.d))));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<bool> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -1731f), _wgslsmith_f_op_vec2_f32(global0.xz - global0.yx))).x);
    var var_0 = ~(~((~vec4<u32>(1203u, 45965u, 0u, 51459u) | (vec4<u32>(1u, 4294967295u, arg_3.e.b, arg_3.e.b) | vec4<u32>(arg_0.c.x, 24930u, 4294967295u, 4294967295u))) & (vec4<u32>(u_input.d.x, 19354u, u_input.e.x, 24701u) << (vec4<u32>(57993u, arg_0.e.b, u_input.e.x, 0u) % vec4<u32>(32u)))));
    var var_1 = Struct_3(all(arg_2), u_input.a, arg_3.c, _wgslsmith_clamp_i32(51442i, 2147483647i, (u_input.a >> (_wgslsmith_mod_u32(42903u, 12490u) % 32u)) & (-2147483647i >> (~u_input.b % 32u))), arg_3.e);
    let var_2 = _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(~firstTrailingBit(4294967295u), arg_3.c.x) >> (49580u % 32u));
    let var_3 = 570f;
    return vec2<bool>(arg_3.e.a.x, true);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: bool) -> vec2<bool> {
    let var_0 = any(vec3<bool>(false, arg_2, arg_2));
    var var_1 = 55106u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let var_3 = 26828u;
    return !(!select(func_4(func_2(vec2<bool>(var_0, var_0), vec3<i32>(arg_0.x, u_input.a, u_input.a)), -1000f, select(vec2<bool>(var_0, false), vec2<bool>(arg_2, var_0), vec2<bool>(true, var_0)), func_2(vec2<bool>(false, arg_2), vec3<i32>(6913i, u_input.c, 2147483647i))), vec2<bool>(true, true), !var_0));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = !(!select(!func_2(arg_3, vec3<i32>(2147483647i, 1i, 0i)).e.a, vec4<bool>(!arg_3.x, false, !arg_3.x, true), select(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), func_2(vec2<bool>(arg_3.x, arg_3.x), vec3<i32>(u_input.a, u_input.c, u_input.c)).e.a, !vec4<bool>(true, arg_3.x, true, arg_3.x))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 294f) * _wgslsmith_f_op_vec4_f32(func_3(arg_0, vec2<f32>(398f, arg_2.x))).x) * arg_0), _wgslsmith_f_op_f32(-1338f + -286f)));
    var var_1 = arg_1;
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(u_input.d.x, 4294967295u)), ~_wgslsmith_clamp_u32(1u, firstLeadingBit(4294967295u), ~u_input.e.x)), 1u ^ (u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, 90710u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(27199u, u_input.d.x), 4u)]) % 32u)), u_input.d.x, u_input.b);
    var_1 = 1i;
    return vec4<u32>(u_input.b, 1u, ~var_2.x, abs(u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 4>();
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f * global0.x) + _wgslsmith_f_op_f32(-global0.x)), -1255f)), ~((-u_input.c | u_input.a) << (u_input.d.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, global0.x, global0.x, 1595f)))) + vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(1503f * -160f)), _wgslsmith_f_op_f32(f32(-1f) * -443f), 1041f, _wgslsmith_f_op_f32(-1f))), func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, 1i)) << (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 0u)), ~vec2<u32>(u_input.d.x, 1u)) % vec2<u32>(32u)), u_input.a, true));
    global2 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, -1553f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-447f, 2590f), _wgslsmith_f_op_f32(-2437f * -386f))))));
    let var_1 = select(func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec3<i32>(-1i, u_input.c, ~1i)).d, select(u_input.c, u_input.a, func_2(vec2<bool>(true, true), firstLeadingBit(vec3<i32>(-39432i, u_input.c, u_input.a))).e.a.x), 0i <= u_input.c) > abs(_wgslsmith_sub_i32(abs(0i), abs(reverseBits(u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(u_input.a | _wgslsmith_clamp_i32(21803i, u_input.a, u_input.c)), u_input.c, u_input.c, abs(countOneBits(u_input.a) | ~u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.x, 1000f), _wgslsmith_f_op_f32(max(global0.x, global0.x))) - global3[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(799f, global0.x)))))));
}

