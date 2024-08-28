struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.d.x))), 1513f)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.d.x), 1015f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.a.d.x)))), 373f, all(vec2<bool>(false, true)))), 992f));
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_1 = arg_0;
    var_1 = arg_0;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1.b.c, countOneBits(arg_0.a.c))), _wgslsmith_add_vec2_u32(arg_0.b.e >> (~var_1.b.e % vec2<u32>(32u)), (vec2<u32>(u_input.c, arg_1) << (var_1.b.e % vec2<u32>(32u))) | arg_0.a.e)), u_input.c);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-51145i, -39001i, arg_1.x, -40420i) << (vec4<u32>(u_input.c, arg_0, arg_0, arg_0) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(9798i, arg_1.x, global0[_wgslsmith_index_u32(arg_0, 14u)], arg_1.x), vec4<i32>(arg_1.x, -1i, -16518i, u_input.b))), global0[_wgslsmith_index_u32(arg_0, 14u)], ~(~57921u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-551f, 2041f) - vec2<f32>(-385f, -1329f))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, 1u), vec2<u32>(arg_0, u_input.c) << (vec2<u32>(u_input.c, arg_0) % vec2<u32>(32u)), func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(18812u, 14u)], u_input.a, 0u, vec2<f32>(-1681f, -346f), vec2<u32>(u_input.c, 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 14u)], -8082i, 4294967295u, vec2<f32>(-990f, -907f), vec2<u32>(arg_0, arg_0)), -460f), 21326u))), Struct_1(global0[_wgslsmith_index_u32(~1u, 14u)], arg_1.x, reverseBits(_wgslsmith_mult_u32(0u, u_input.c)), vec2<f32>(1917f, _wgslsmith_f_op_f32(ceil(961f))), func_3(Struct_2(Struct_1(2147483647i, 1i, u_input.c, vec2<f32>(-1170f, -611f), vec2<u32>(u_input.c, 1u)), Struct_1(u_input.a, global0[_wgslsmith_index_u32(u_input.c, 14u)], 4294967295u, vec2<f32>(1643f, 1237f), vec2<u32>(arg_0, 95917u)), 1531f), min(1u, 1u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1238f, _wgslsmith_f_op_f32(f32(-1f) * -169f))))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(~u_input.c ^ (u_input.c >> (arg_0 % 32u)), 14u)], -firstLeadingBit(2147483647i), 46937u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-809f, 394f), vec2<f32>(252f, 133f)))), _wgslsmith_div_vec2_u32(~vec2<u32>(3352u, 22471u), ~vec2<u32>(50455u, u_input.c))), Struct_1(-55549i, 7951i, arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-959f, 388f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, 458f))), vec2<u32>(_wgslsmith_div_u32(u_input.c, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.c, 4294967295u), vec3<u32>(4294967295u, 1u, arg_0)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(trunc(2031f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(201f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3980f * -3569f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1232f, -681f)))))));
    var var_1 = Struct_5(Struct_4(~(~vec4<u32>(u_input.c, 6543u, var_0.a.b.e.x, u_input.c) & ~vec4<u32>(75169u, u_input.c, 0u, u_input.c)), 490f));
    global0 = array<i32, 14>();
    let var_2 = arg_2;
    let var_3 = Struct_2(Struct_1(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-6021i, -2491i, u_input.a), global0[_wgslsmith_index_u32(var_0.b.a.e.x, 14u)]), arg_1.yy), select(u_input.c, ~0u, true), _wgslsmith_f_op_vec2_f32(-var_0.b.b.d), firstLeadingBit(~var_1.a.a.xw | ~var_0.b.b.e)), var_0.a.b, -612f);
    return vec4<bool>(true, var_2, false, false);
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = all(select(vec4<bool>(true, true, true, true), func_2(56659u, vec3<i32>(arg_0, u_input.b, 0i), true), vec4<bool>(false, any(func_2(1u, vec3<i32>(arg_0, arg_0, u_input.b), false).xw), false, select(true, true, false))));
    let var_1 = Struct_5(Struct_4(min(~reverseBits(vec4<u32>(0u, u_input.c, u_input.c, u_input.c)), ~vec4<u32>(0u, u_input.c, u_input.c, u_input.c) & (vec4<u32>(56549u, u_input.c, u_input.c, 57203u) ^ vec4<u32>(68960u, u_input.c, u_input.c, 56277u))), _wgslsmith_f_op_f32(round(1034f))));
    global0 = array<i32, 14>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(step(-2053f, 2059f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.b, var_1.a.b), var_1.a.b, u_input.c > var_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * -653f)), _wgslsmith_f_op_f32(trunc(var_1.a.b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1126f, var_1.a.b, 1323f, -248f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.b, var_1.a.b, 741f, 2483f), vec4<f32>(583f, var_1.a.b, var_1.a.b, var_1.a.b))))))));
    let var_3 = i32(-1i) * -1i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-max(-(~(-38581i)), -60209i));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c & 0u, firstTrailingBit(u_input.c)), 14u)];
    let var_2 = -vec3<i32>(firstLeadingBit(countOneBits(~u_input.b)), _wgslsmith_sub_i32(firstTrailingBit(-26490i), _wgslsmith_mod_i32(-1i, 2147483647i)) >> (select(func_1(2147483647i).a.a.x, ~var_0.a.a.x, select(true, true, false)) % 32u), global0[_wgslsmith_index_u32(~min(32506u, 1u) ^ ~var_0.a.a.x, 14u)]);
    var var_3 = Struct_2(Struct_1(var_2.x, -14396i, max(_wgslsmith_dot_vec2_u32(vec2<u32>(16725u, 1u) & vec2<u32>(u_input.c, 61474u), ~vec2<u32>(1u, 1u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(104332u, u_input.c), _wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1284f, var_0.a.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, -1132f))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), -618f)), ~select(_wgslsmith_div_vec2_u32(vec2<u32>(15952u, 27506u), vec2<u32>(1u, 4294967295u)), countOneBits(vec2<u32>(var_0.a.a.x, var_0.a.a.x)), true)), Struct_1(-13485i, -1326i, var_0.a.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1663f, var_0.a.b))) + vec2<f32>(var_0.a.b, 429f))), _wgslsmith_sub_vec2_u32(select(var_0.a.a.zw, vec2<u32>(1u, u_input.c) << (var_0.a.a.wz % vec2<u32>(32u)), true), vec2<u32>(~30191u, firstTrailingBit(2507u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)))));
    var_0 = Struct_5(func_1(var_2.x).a);
    var_0 = Struct_5(Struct_4(min(var_0.a.a, var_0.a.a), var_3.b.d.x));
    let var_4 = vec4<bool>(true, 4294967295u <= _wgslsmith_add_u32(u_input.c, u_input.c), all(vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), !all(vec4<bool>(false, true, true, false)))), select(true, true, func_2(u_input.c, vec3<i32>(u_input.a, 1i, ~var_2.x), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))).x));
    var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(50037i, -1i), ~_wgslsmith_sub_i32(countOneBits(select(0i, var_2.x, var_4.x)), var_3.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * func_1(i32(-1i) * -10889i).a.b), -848f, -737f), vec4<u32>(var_3.a.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.a.a.zx | vec2<u32>(0u, 0u), _wgslsmith_div_vec2_u32(var_3.a.e, var_0.a.a.wz)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.a.x, var_3.a.e.x, var_0.a.a.x), vec3<u32>(var_0.a.a.x, var_0.a.a.x, 4294967295u))), _wgslsmith_mult_u32(0u, func_3(Struct_2(var_3.a, Struct_1(var_2.x, 52055i, var_3.a.c, vec2<f32>(var_3.c, -1824f), var_3.b.e), 307f), var_0.a.a.x).x), 37296u));
}

