struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -112f;

var<private> global1: Struct_1 = Struct_1(4294967295u, vec3<u32>(4294967295u, 20014u, 27172u), 39603u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = 753f;
    global0 = -729f;
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 5283u), ~(32110u ^ global1.b.x)), vec3<u32>(~(~u_input.a), 37419u, _wgslsmith_clamp_u32(~50058u, global1.b.x, global1.b.x)), global1.c), 632f, Struct_2(true, 496f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-772f, 1734f, -289f, -372f) * vec4<f32>(2441f, 571f, -1083f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), false, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, u_input.c), -8169i), 0i, i32(-1i) * -1i, ~1247i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-16581i, 1i, 24354i, u_input.d), vec4<i32>(u_input.d, 2147483647i, -2147483647i, -46442i)))));
    let var_1 = vec2<bool>(!(~0u > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, 30934u, 29896u), _wgslsmith_add_vec3_u32(vec3<u32>(8172u, 100671u, 4294967295u), var_0.a.b))), true);
    var_0 = Struct_3(var_0.a, var_0.b, var_0.c);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1166f))) * _wgslsmith_f_op_f32(f32(-1f) * -1133f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> vec3<f32> {
    var var_0 = select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(796f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) - _wgslsmith_f_op_f32(select(945f, -1091f, true)))) == _wgslsmith_f_op_f32(min(205f, _wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)), _wgslsmith_f_op_f32(func_3()))));
    var var_1 = Struct_1(1u, global1.b, _wgslsmith_add_u32(u_input.b | ~_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(0u, arg_0.x)), (global1.a ^ global1.a) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4516u), vec2<u32>(u_input.b, 36962u)) % 32u)));
    var var_2 = global1.b.xz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f));
    var var_4 = 659f != var_3;
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), var_3, _wgslsmith_f_op_f32(698f + 1233f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    var var_0 = ~44670u;
    var var_1 = Struct_2(false, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, arg_0.x, arg_1.c.x, arg_0.x) + arg_1.c))) + vec4<f32>(-868f, 1000f, -459f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !all(!(!vec3<bool>(arg_1.d, false, false))), min(arg_1.e, _wgslsmith_mod_vec4_i32(reverseBits(arg_1.e), vec4<i32>(_wgslsmith_sub_i32(u_input.c, -1i), 18120i, 0i, ~57649i))));
    let var_2 = Struct_1(abs(_wgslsmith_div_u32(u_input.a, 1u)), global1.b, ~51968u & _wgslsmith_add_u32(abs(1u), ~global1.b.x));
    let var_3 = arg_1;
    var var_4 = arg_0.x;
    return !vec4<bool>(select(any(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.d, var_1.a, var_3.a), arg_1.a)), !var_1.d, arg_1.a), true, arg_1.a, !var_3.d);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_2(any(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), func_4(_wgslsmith_f_op_vec3_f32(func_2(global1.b, u_input.d)), Struct_2(true, 988f, vec4<f32>(-364f, 1091f, 1131f, 150f), true, vec4<i32>(19208i, u_input.d, -2147483647i, u_input.d)), 32588i), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f * -523f) + _wgslsmith_div_f32(324f, 1574f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), true, _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.c) << (vec4<u32>(u_input.b, global1.a, global1.a, global1.b.x) % vec4<u32>(32u))), min(-vec4<i32>(2147483647i, u_input.d, 2147483647i, 11943i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -4603i, u_input.c, u_input.d), vec4<i32>(-2147483647i, 2147483647i, u_input.d, 1i))), select(vec4<i32>(u_input.c, u_input.c, u_input.d, u_input.c) << (vec4<u32>(0u, global1.c, 8019u, global1.b.x) % vec4<u32>(32u)), select(vec4<i32>(-36652i, u_input.d, u_input.c, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.c, 52725i), vec4<bool>(false, true, false, false)), true)) & ~abs(firstLeadingBit(vec4<i32>(-27679i, -1i, -1i, u_input.d))));
    let var_1 = var_0.e.xx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.b), -311f)))) - _wgslsmith_f_op_f32(-var_0.b));
    return vec3<bool>(func_4(var_0.c.zxz, Struct_2(select(all(vec3<bool>(var_0.d, true, false)), false, var_0.a), -1580f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.c))), true, abs(abs(vec4<i32>(-2147483647i, 5497i, -19884i, u_input.c)))), -1i).x, all(func_4(var_0.c.zwy, Struct_2(all(vec3<bool>(false, var_0.a, var_0.d)), _wgslsmith_f_op_f32(1000f - var_0.b), _wgslsmith_f_op_vec4_f32(max(var_0.c, var_0.c)), all(vec2<bool>(true, false)), vec4<i32>(var_1.x, 7355i, u_input.d, -2147483647i) >> (vec4<u32>(4294967295u, 1u, 0u, 4306u) % vec4<u32>(32u))), var_0.e.x).zyy), var_0.a | var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(), vec3<bool>(true, true, true), vec3<bool>(!select(false, true, false), (u_input.c == 15635i) & any(vec4<bool>(false, false, true, true)), false));
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(global1.b, ~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(1982u, u_input.a, 54657u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a, 1u >> (firstTrailingBit(4294967295u) % 32u), ~1u), min(global1.b, vec3<u32>(global1.c, _wgslsmith_div_u32(36794u, global1.a), global1.b.x))), abs(1u));
    var_0 = !(!select(func_1(), !func_1(), vec3<bool>(false, true, any(var_0.yy))));
    var var_1 = reverseBits((min(vec4<u32>(u_input.a, 44976u, u_input.a, 0u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.b)) ^ vec4<u32>(u_input.b, ~global1.b.x, firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(global1.b.yy, vec2<u32>(u_input.b, 53313u)))) >> (vec4<u32>(u_input.a, 0u | ~global1.c, global1.b.x, _wgslsmith_add_u32(min(u_input.a, global1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 0u, 0u), vec3<u32>(19020u, 63089u, u_input.a)))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(29152u, var_1.x, u_input.b, 0u) | ~vec4<u32>(0u, 4294967295u, global1.b.x, var_1.x)), ~min(abs(vec4<u32>(var_1.x, 19931u, global1.a, 0u)), vec4<u32>(global1.c, 5557u, global1.b.x, u_input.b) >> (vec4<u32>(1u, global1.a, var_1.x, 4294967295u) % vec4<u32>(32u))), ~((vec4<u32>(u_input.b, 17534u, 1u, u_input.b) | vec4<u32>(6156u, var_1.x, u_input.a, 0u)) ^ ~vec4<u32>(11961u, u_input.a, 0u, 116506u))) & firstTrailingBit(~vec4<u32>(u_input.a, 47946u, u_input.a & u_input.a, _wgslsmith_mod_u32(3486u, global1.b.x)));
    let var_2 = Struct_3(Struct_1(~22554u, ~(~(~var_1.wyz)), ~3046u), _wgslsmith_f_op_f32(-1f), Struct_2(false, _wgslsmith_f_op_f32(993f * -1174f), vec4<f32>(1f, 1f, 1f, 1f), false, reverseBits(vec4<i32>(2147483647i >> (var_1.x % 32u), u_input.d, u_input.c, 24129i))));
    let var_3 = vec3<i32>(~u_input.d, _wgslsmith_div_i32(41620i, i32(-1i) * -1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 46727i), firstTrailingBit(var_2.c.e.xz)), var_2.c.e.x & ~(-10979i)) | var_2.c.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_2.a.c, ~u_input.a), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.x, u_input.a) | vec4<u32>(0u, 4294967295u, u_input.a, 24428u), ~vec4<u32>(38333u, var_2.a.c, 1u, var_1.x)), ~vec4<u32>(u_input.b, 1u, 1u, 74292u)), _wgslsmith_f_op_f32(exp2(var_2.c.c.x)), global1.b.x, _wgslsmith_mult_vec3_u32(var_2.a.b, _wgslsmith_sub_vec3_u32(global1.b, global1.b)));
}

