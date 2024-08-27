struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec4<f32> = vec4<f32>(310f, -356f, 1000f, 1638f);

var<private> global2: vec2<i32> = vec2<i32>(38564i, 18397i);

var<private> global3: array<u32, 29>;

var<private> global4: array<Struct_4, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> vec4<f32> {
    let var_0 = !vec3<bool>(arg_0, arg_0, !arg_1.x);
    let var_1 = vec3<i32>(-1i) * -(-(vec3<i32>(u_input.c.x, u_input.c.x, 0i) << (vec3<u32>(0u, u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55993u, 29u)], 29u)]) % vec3<u32>(32u))) | ~_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, 6564i, 40762i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) + _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-559f)))), -1693f));
    var var_3 = Struct_1(max(~14747i, -2147483647i), var_1.xy, -1i, _wgslsmith_dot_vec3_u32(countOneBits(~_wgslsmith_div_vec3_u32(u_input.b, u_input.b)), firstTrailingBit(u_input.b)), global2.x);
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * arg_2.x), _wgslsmith_f_op_f32(-1005f - 784f))) * arg_3)), var_2));
    return vec4<f32>(global1.x, _wgslsmith_f_op_f32(var_2 + -1561f), 741f, _wgslsmith_f_op_f32(-global1.x));
}

fn func_2() -> u32 {
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    let var_0 = ~4294967295u;
    global2 = reverseBits(vec2<i32>(_wgslsmith_clamp_i32(-46487i, -36679i, 1i), select(13744i, global2.x ^ u_input.a, !any(vec2<bool>(false, false)))));
    global1 = _wgslsmith_f_op_vec4_f32(func_3(true, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(global1.zz + vec2<f32>(_wgslsmith_f_op_f32(min(1f, 1210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f * -189f)))), 422f));
    return 15397u;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    global2 = -(~countOneBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(19287i, arg_2.x), vec2<i32>(0i, global2.x))));
    var var_0 = ~_wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(func_2(), min(~20501u, u_input.b.x)), u_input.b.zy);
    let var_1 = vec3<i32>(_wgslsmith_add_i32(global2.x, 1i), arg_2.x, countOneBits(abs(u_input.c.x) >> (u_input.b.x % 32u)));
    let var_2 = Struct_3(arg_1, _wgslsmith_sub_i32(i32(-1i) * -arg_2.x, firstLeadingBit(var_1.x)), Struct_1(-2147483647i, -(arg_2 | vec2<i32>(var_1.x, arg_2.x)), arg_2.x, _wgslsmith_add_u32(abs(4294967295u), 1u >> (1u % 32u)) >> (~reverseBits(global3[_wgslsmith_index_u32(u_input.b.x, 29u)]) % 32u), ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-22295i, 2147483647i, 0i), vec3<i32>(-13566i, arg_2.x, -22523i)))));
    let var_3 = Struct_4(global2.x >> (var_2.c.d % 32u), Struct_3(_wgslsmith_f_op_f32(-var_2.a), var_2.c.c, Struct_1(2147483647i, -u_input.c, select(0i, _wgslsmith_add_i32(global2.x, var_2.c.a), true), abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 29u)] ^ 96157u, 29u)], 29u)]), u_input.c.x)), var_2);
    return var_3.b.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    global0 = array<Struct_2, 26>();
    let var_0 = vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, global2.x, u_input.c.x, arg_1.a.e), vec4<i32>(global2.x, arg_0.a.c, 37361i, -7338i)), -52576i), 0i), ~firstTrailingBit(_wgslsmith_sub_i32(~(-1i), firstTrailingBit(arg_1.a.a))), u_input.c.x);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(-107f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f * global1.x) + global1.x))))), -76500i, func_1(_wgslsmith_f_op_vec2_f32(-global1.yw), _wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, -271f)), _wgslsmith_f_op_f32(max(global1.x, global1.x)))), -vec2<i32>(0i, -1i)));
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), global1.x, var_1.a, 1000f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(366f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(floor(var_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, 696f, 324f, var_1.a) + vec4<f32>(global1.x, -1506f, -950f, 151f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1324f, global1.x, 937f)) * vec4<f32>(778f, -231f, var_1.a, global1.x))))));
    global0 = array<Struct_2, 26>();
    return Struct_3(122f, ~(-14059i), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, arg_1.b, vec2<f32>(741f, var_1.a), global1.x)).xw), _wgslsmith_f_op_vec2_f32(select(global1.zz, global1.zx, !vec2<bool>(arg_1.b.x, false)))), global1.x, -vec2<i32>(var_1.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.e, arg_1.a.c, u_input.c.x), var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = func_4(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(abs(global1.wz)), _wgslsmith_div_f32(-985f, 492f), ~u_input.c), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true)), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.yx))), _wgslsmith_f_op_f32(sign(-1000f)), vec2<i32>(u_input.a, select(-2147483647i, global2.x, false))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), false)));
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + var_1.a))) + var_1.a), 590f, _wgslsmith_f_op_f32(round(global1.x)), var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, global1.x, global1.x, 776f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -1173f, global1.x, -313f), vec4<f32>(-136f, global1.x, var_1.a, global1.x), true))) - vec4<f32>(-1283f, 468f, var_1.a, global1.x))), vec4<bool>(all(vec3<bool>(true, true, true)), false, _wgslsmith_div_f32(-1512f, _wgslsmith_f_op_f32(global1.x + var_1.a)) > _wgslsmith_f_op_f32(sign(-1362f)), !all(vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(countOneBits(var_0 | 11192u) >> (~_wgslsmith_clamp_u32(33804u, 85253u, 23115u) % 32u), ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(17165u, global3[_wgslsmith_index_u32(var_0, 29u)]))), var_0, _wgslsmith_mod_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(var_0, 29u)], 31851u, var_0) ^ min(~vec3<u32>(16047u, u_input.b.x, var_1.c.d), vec3<u32>(var_0, global3[_wgslsmith_index_u32(var_1.c.d, 29u)], 47922u)), u_input.b));
}

