struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: Struct_1 = Struct_1(0i, vec2<f32>(-208f, 1314f), -2048f, i32(-2147483648), vec4<i32>(18788i, 2147483647i, 1i, 0i));

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<vec2<f32>, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_1.x | _wgslsmith_clamp_u32(40851u, _wgslsmith_dot_vec4_u32(vec4<u32>(111729u >> (arg_1.x % 32u), u_input.d, arg_1.x, 27109u), vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), u_input.c.x, arg_1.x, arg_1.x)), u_input.d >> ((arg_1.x | ~u_input.d) % 32u)), 25u)];
    return var_0.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    global2 = abs(-global1.e.xx);
    var var_0 = abs(vec4<u32>(min((u_input.d ^ 0u) ^ u_input.d, 1u), 1u, ~u_input.d, 4294967295u));
    var var_1 = arg_2;
    let var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_div_vec2_f32(arg_2.a.b, vec2<f32>(global1.c, arg_2.a.b.x))) + global4[_wgslsmith_index_u32(u_input.c.x, 31u)]) * global1.b), _wgslsmith_f_op_f32(1692f - _wgslsmith_div_f32(func_2(arg_2, _wgslsmith_sub_vec2_u32(var_0.zy, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<i32>(u_input.b.x, 2147483647i) | global1.e.wz).c, func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(45375u, u_input.d), 25u)], ~var_0.xz, vec2<i32>(1986i, u_input.b.x)).c)), u_input.a.x, countOneBits(u_input.b));
    let var_3 = Struct_1(u_input.a.x | _wgslsmith_mod_i32(~21667i, _wgslsmith_sub_i32(-arg_2.a.a, func_2(global0[_wgslsmith_index_u32(var_0.x, 25u)], u_input.c, vec2<i32>(arg_2.a.a, 0i)).d)), var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a.b.x, -500f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_dot_vec2_i32(func_2(Struct_2(Struct_1(u_input.a.x, vec2<f32>(var_1.a.c, global1.b.x), 168f, -13214i, arg_2.a.e)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 12945u), u_input.c) << (max(vec2<u32>(var_0.x, u_input.d), vec2<u32>(84757u, 4294967295u)) % vec2<u32>(32u)), select(~u_input.a, select(vec2<i32>(-32945i, 16951i), var_1.a.e.zz, true), vec2<bool>(arg_0.x, arg_0.x))).e.yw, u_input.b.wy), var_2.e);
    return !arg_0.xz;
}

fn func_1() -> i32 {
    global3 = array<Struct_1, 21>();
    let var_0 = Struct_2(func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.c.x, 21u)]), u_input.c, firstTrailingBit(global1.e.yz ^ vec2<i32>(2147483647i, 3820i))));
    let var_1 = Struct_2(Struct_1(global2.x, _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(~57266u >> (~u_input.d % 32u), 31u)]), 195f, _wgslsmith_add_i32(var_0.a.d, global1.a), u_input.b));
    var var_2 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(var_1.a.b.x - global1.b.x))), var_1)), select(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(false, true)), false), vec2<bool>(true, true)), false);
    let var_3 = countOneBits(firstLeadingBit(_wgslsmith_mod_u32(u_input.d ^ ~1792u, _wgslsmith_sub_u32(abs(39364u), 4294967295u << (u_input.c.x % 32u)))));
    return ~max(_wgslsmith_mod_i32(global1.a, ~global2.x), var_0.a.d);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = -_wgslsmith_sub_i32(-57442i & ~(arg_1 | arg_1), _wgslsmith_mod_i32(func_1(), ~12019i ^ arg_3.a.d));
    var var_1 = vec2<u32>(~max(arg_0 | arg_0, _wgslsmith_mod_u32(arg_0, u_input.c.x)), firstLeadingBit(~arg_0)) << (vec2<u32>(53246u, 46526u) % vec2<u32>(32u));
    let var_2 = 296f;
    var var_3 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.c, arg_2.x), _wgslsmith_f_op_f32(arg_2.x * arg_3.a.b.x))), 1772f)), func_2(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(global1.e.zx, vec2<i32>(-6858i, arg_3.a.e.x)), vec2<f32>(global1.b.x, arg_2.x), arg_2.x, _wgslsmith_sub_i32(-1i, global2.x), vec4<i32>(-35447i, arg_1, global1.e.x, u_input.a.x) | vec4<i32>(arg_3.a.a, arg_1, u_input.b.x, global1.e.x))), vec2<u32>(1u, abs(arg_0)), ~u_input.b.wx).b.x, _wgslsmith_mult_i32(global1.d, -4990i) & -1i, vec4<i32>(_wgslsmith_dot_vec2_i32(arg_3.a.e.yw, arg_3.a.e.zz), firstLeadingBit(global1.d), countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.e.x, global1.d, arg_1), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2008i, arg_1), arg_3.a.e.wxw))), ~_wgslsmith_dot_vec4_i32(~arg_3.a.e, -vec4<i32>(global2.x, 7659i, 0i, 25599i))));
    global4 = array<vec2<f32>, 31>();
    return global3[_wgslsmith_index_u32(~u_input.c.x, 21u)];
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global1 = Struct_1(~1i, vec2<f32>(-191f, _wgslsmith_f_op_f32(-arg_1.c)), -1038f, 7347i, _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_1.a, ~global2.x, _wgslsmith_sub_i32(2147483647i, global2.x), 14080i)), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b), select(u_input.b, global1.e, false)))));
    global3 = array<Struct_1, 21>();
    let var_0 = vec3<i32>(global1.a, _wgslsmith_sub_i32(~(~(~u_input.b.x)), -1i), countOneBits(u_input.b.x));
    var var_1 = Struct_1(u_input.b.x, global4[_wgslsmith_index_u32(max(~(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 15579u))), u_input.c.x ^ u_input.c.x), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(f32(-1f) * -261f))), min(global2.x, 1i), -vec4<i32>(-(~global1.a), u_input.a.x, 0i, _wgslsmith_clamp_i32(-var_0.x, _wgslsmith_clamp_i32(arg_1.e.x, u_input.a.x, global1.a), _wgslsmith_sub_i32(arg_0.x, 0i))));
    var var_2 = !((firstTrailingBit(-19489i) < arg_1.a) != false);
    return _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(func_5(u_input.b.zzx, func_4(12804u, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1305f, -426f, global1.b.x) + vec3<f32>(global1.b.x, -295f, 1087f)))), global0[_wgslsmith_index_u32(~abs(~u_input.d), 25u)]), vec4<u32>(5774u, u_input.d, _wgslsmith_dot_vec2_u32(~(~u_input.c), u_input.c), _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mult_u32(abs(u_input.d), 1u), ~u_input.c.x))));
    var var_2 = global1.b.x;
    global3 = array<Struct_1, 21>();
    var var_3 = vec2<bool>(!(!(_wgslsmith_f_op_f32(select(714f, global1.c, false)) >= _wgslsmith_f_op_f32(-global1.c))), false);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(453f, 673f, global1.c, -520f), vec4<f32>(262f, global1.b.x, -296f, global1.c))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, 268f, 576f, global1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 1000f, global1.b.x, -1181f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c, -708f, 2426f, global1.c))))))));
    var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-206f, -1461f, 1137f, var_4.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 1367f, var_4.x, global1.c) * vec4<f32>(global1.b.x, -556f, 1241f, global1.c)) * vec4<f32>(global1.b.x, var_4.x, 341f, global1.b.x)), select(!vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(true, var_3.x, false, true), vec4<bool>(var_3.x, var_3.x, var_3.x, true)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(223f + global1.b.x), _wgslsmith_f_op_f32(sign(-851f)), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-1715f + 2250f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, var_4.x, global1.b.x, var_4.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.x, 1693f, -351f, var_4.x), vec4<f32>(global1.b.x, var_4.x, var_4.x, var_4.x)))) - vec4<f32>(global1.b.x, global1.c, 1989f, _wgslsmith_f_op_f32(-global1.c)))));
    global3 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(~_wgslsmith_clamp_i32(-2147483647i, global1.e.x, -1i), 1i << (u_input.d % 32u)), -vec2<i32>(-20730i, global1.e.x), select(!vec2<bool>(var_3.x, false), select(select(vec2<bool>(true, var_3.x), vec2<bool>(false, var_3.x), var_3.x), select(vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, true), var_3.x), var_4.x != var_4.x), vec2<bool>(true, true))), -34703i, _wgslsmith_sub_vec3_i32(~vec3<i32>(-10491i, -global1.a, 1i), u_input.b.wzz), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-695f, 515f))), u_input.a.x & 40345i);
}

