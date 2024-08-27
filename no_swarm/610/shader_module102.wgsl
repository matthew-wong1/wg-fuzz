struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(1i, -11857i, 44888i, 2147483647i, -1i, -2046i, 75073i);

var<private> global1: array<Struct_5, 25>;

var<private> global2: vec4<u32>;

var<private> global3: vec3<f32> = vec3<f32>(1000f, -287f, -465f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~(~u_input.c.x), 25u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f * var_0.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.e, var_0.a.e, var_0.a.a))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1799f - global3.x)))) * vec4<f32>(-1308f, _wgslsmith_f_op_f32(1038f - _wgslsmith_f_op_f32(global3.x - var_0.a.e)), _wgslsmith_f_op_f32(ceil(-367f)), _wgslsmith_f_op_f32(select(777f, -1426f, arg_0.c)))));
    let var_2 = 0u;
    var var_3 = ~firstLeadingBit(global2.x);
    var var_4 = Struct_1(-(~countOneBits(u_input.a)), i32(-1i) * -1i, global3.x != -526f, vec4<i32>(2147483647i, _wgslsmith_mod_i32(~abs(arg_0.d.x), arg_1), arg_1, var_0.a.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + var_1.x));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = 71478i;
    global0 = array<i32, 7>();
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a | u_input.a, arg_0.a.b, true, vec4<i32>(var_0, -1i, arg_1.a.d.x, 2147483647i)), 21329i, -2147483647i | arg_1.a.d.x))), -1085f, -390f);
    let var_1 = Struct_2(Struct_1(vec4<i32>(0i, ~(-arg_1.a.d.x), arg_3.x, ~(-arg_1.a.b)), firstLeadingBit(33882i), !any(select(vec4<bool>(arg_1.a.a, false, arg_1.a.a, arg_1.a.a), vec4<bool>(arg_1.a.a, arg_1.a.a, arg_0.a.a, true), true)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2847i, u_input.b.x, u_input.a.x), vec4<i32>(arg_0.a.b, arg_1.a.d.x, 79056i, -1i)))), arg_0.a.a, Struct_1(~vec4<i32>(arg_0.a.b, global0[_wgslsmith_index_u32(0u, 7u)], arg_3.x, -2147483647i) << (~vec4<u32>(u_input.c.x, arg_1.a.c.x, 0u, 43357u) % vec4<u32>(32u)), u_input.b.x, arg_0.a.a, -_wgslsmith_mod_vec4_i32(u_input.a & vec4<i32>(-1i, arg_3.x, var_0, 17675i), vec4<i32>(-1i, arg_1.a.b, global0[_wgslsmith_index_u32(global2.x, 7u)], arg_2))));
    let var_2 = ~vec4<u32>((_wgslsmith_mod_u32(arg_0.b.x, arg_1.a.c.x) | _wgslsmith_mod_u32(0u, 4294967295u)) << (_wgslsmith_dot_vec4_u32(u_input.c ^ vec4<u32>(arg_0.b.x, 1u, 4294967295u, 0u), vec4<u32>(u_input.c.x, arg_0.a.c.x, arg_1.b.x, 112313u) & u_input.c) % 32u), 4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(min(global2.zy, u_input.c.wy), vec2<u32>(arg_0.b.x, arg_1.b.x) ^ vec2<u32>(u_input.c.x, arg_0.a.c.x))), 196u);
    return -select(vec4<i32>(_wgslsmith_sub_i32(-15485i >> (u_input.c.x % 32u), 32333i), arg_1.a.d.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, u_input.b.x), 1i, abs(arg_0.a.b)), ~arg_2), _wgslsmith_clamp_vec4_i32(min(var_1.c.a, u_input.a), ~(vec4<i32>(var_1.c.d.x, arg_3.x, -2147483647i, u_input.a.x) >> (u_input.c % vec4<u32>(32u))), vec4<i32>(arg_2, _wgslsmith_mult_i32(arg_1.a.d.x, var_1.a.d.x), 14369i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 1i, arg_0.a.d.x), vec4<i32>(u_input.b.x, -3524i, 10883i, 19801i)))), arg_1.a.d.x >= 13807i);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(-vec4<i32>(~1i, ~min(global0[_wgslsmith_index_u32(global2.x, 7u)], arg_1.a.b), _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_3, -1i), select(global0[_wgslsmith_index_u32(69749u, 7u)], 101i, arg_1.a.a)), arg_3), max(arg_2.x, -2147483647i), arg_1.a.a, max(u_input.a, ~vec4<i32>(-u_input.b.x, i32(-1i) * -15617i, ~u_input.b.x, u_input.a.x << (global2.x % 32u))));
    global3 = arg_0;
    global2 = u_input.c;
    return abs(arg_1.b.x);
}

fn func_1() -> Struct_3 {
    let var_0 = select(vec4<bool>(any(vec2<bool>(true, true)), ~(~u_input.c.x) != (global2.x ^ (global2.x & global2.x)), !(!all(vec2<bool>(false, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false))))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), all(vec3<bool>(false, true, true)), true), vec4<bool>(all(vec3<bool>(false, true, false)), true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, -874f < global3.x), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), false));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-596f, global3.x, global3.x), vec3<f32>(1000f, 511f, global3.x))))), global1[_wgslsmith_index_u32(u_input.c.x, 25u)], abs(func_2(global1[_wgslsmith_index_u32(~var_1.x, 25u)], global1[_wgslsmith_index_u32(0u ^ u_input.c.x, 25u)], global0[_wgslsmith_index_u32(var_1.x, 7u)], u_input.b)), -3675i), 29237u | global2.x);
    var var_3 = max(~func_4(vec3<f32>(global3.x, _wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(-global3.x)), global1[_wgslsmith_index_u32(4294967295u, 25u)], vec4<i32>(firstLeadingBit(u_input.b.x), u_input.a.x, _wgslsmith_div_i32(u_input.b.x, global0[_wgslsmith_index_u32(var_1.x, 7u)]), global0[_wgslsmith_index_u32(4294967295u, 7u)] << (4294967295u % 32u)), 1i), ~(~u_input.c.x & ~1u));
    global3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global3.x - 231f), global3.x, global3.x), vec3<f32>(112f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x - global3.x))), _wgslsmith_f_op_f32(ceil(global3.x)))));
    return Struct_3(Struct_2(Struct_1(vec4<i32>(_wgslsmith_mod_i32(-25539i, -1i), u_input.b.x, select(2147483647i, -21923i, var_0.x), abs(u_input.b.x)), max(_wgslsmith_add_i32(32954i, -42891i), u_input.a.x), any(var_0), countOneBits(vec4<i32>(0i, -1i, u_input.b.x, u_input.a.x) << (u_input.c % vec4<u32>(32u)))), false, Struct_1(~firstLeadingBit(vec4<i32>(5763i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 3448i)), _wgslsmith_mult_i32(~1i, abs(global0[_wgslsmith_index_u32(var_2, 7u)])), !(var_0.x || true), abs(u_input.a >> (var_1 % vec4<u32>(32u))))), select(!select(var_0.yw, select(var_0.wz, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), !vec2<bool>(var_0.x, false)), select(select(!var_0.yx, vec2<bool>(var_0.x, var_0.x), !var_0.yz), vec2<bool>(true, true), !(u_input.c.x < 4294967295u)), true), Struct_1(u_input.a, 1i, false, u_input.a), ~_wgslsmith_clamp_i32(2147483647i, u_input.a.x, abs(global0[_wgslsmith_index_u32(1u, 7u)])) <= max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_2, 7835u), _wgslsmith_mod_u32(0u, 566u)), 7u)], -2147483647i));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-757f, global3.x, arg_2.x))), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * 431f)))))));
    global2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, u_input.c.x, u_input.c.x, global2.x), vec4<u32>(global2.x, max(4914u, global2.x), ~4294967295u, ~898u)), u_input.c);
    global2 = ~(~(~u_input.c));
    global0 = array<i32, 7>();
    var var_1 = ~global2.zy;
    return !(!select(arg_2, select(vec4<bool>(arg_0.a.c.c, arg_2.x, true, arg_2.x), !vec4<bool>(arg_2.x, true, true, arg_2.x), arg_0.b.x), select(vec4<bool>(arg_0.b.x, arg_0.a.c.c, false, arg_0.d), !arg_2, select(vec4<bool>(arg_0.c.c, true, arg_0.a.b, arg_0.b.x), arg_2, arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-763f))), vec4<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false, true));
    var var_1 = Struct_4(true, ~(-2147483647i) >> (1u % 32u), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.xy >> (vec2<u32>(21147u, u_input.c.x) % vec2<u32>(32u)), vec2<u32>(u_input.c.x << (u_input.c.x % 32u), 1u)), u_input.c.ww), _wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(u_input.a.wxz, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(45589i, 0i, global0[_wgslsmith_index_u32(global2.x, 7u)]), u_input.a.zzz)), firstTrailingBit(~(-vec3<i32>(19523i, 0i, global0[_wgslsmith_index_u32(global2.x, 7u)])))), 1215f);
    global2 = _wgslsmith_div_vec4_u32(~firstLeadingBit(~(~vec4<u32>(u_input.c.x, u_input.c.x, var_1.c.x, u_input.c.x))), abs(~u_input.c));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1000f));
    global2 = firstTrailingBit(u_input.c);
    var var_3 = Struct_4(!any(!func_5(Struct_3(Struct_2(Struct_1(vec4<i32>(13588i, -16984i, global0[_wgslsmith_index_u32(var_1.c.x, 7u)], -12889i), -25474i, false, u_input.a), false, Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(37216u, 7u)], 1i, global0[_wgslsmith_index_u32(global2.x, 7u)], 1i), var_1.b, var_0.x, u_input.a)), vec2<bool>(var_1.a, true), Struct_1(vec4<i32>(9091i, 3729i, 5400i, u_input.a.x), u_input.b.x, false, vec4<i32>(u_input.b.x, var_1.d.x, -4942i, -12292i)), true), 777f, vec4<bool>(var_1.a, true, var_0.x, var_1.a)).xz), 19492i, vec2<u32>(4294967295u, 1u), ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-54952i, -63227i, 23291i), vec3<i32>(u_input.a.x, 30868i, global0[_wgslsmith_index_u32(global2.x, 7u)])), abs(var_1.d)), vec3<i32>(-26649i, -25167i, 1i)), _wgslsmith_f_op_f32(floor(791f)));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(var_3.b, var_3.b, var_3.d.x, 2147483647i), var_3.d.x, false, u_input.a), u_input.a.x, 1007i)) - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(global2.x, 7u)], 0i, 15860i), var_1.d.x, var_1.a, u_input.a), var_1.b, -2147483647i))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e + var_2) + _wgslsmith_div_f32(var_3.e, -612f)), var_2))), -1304f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) + -1063f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(global3.x)))));
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.e, _wgslsmith_f_op_f32(1316f + _wgslsmith_f_op_f32(f32(-1f) * -996f)), var_3.e)))));
    let var_4 = global1[_wgslsmith_index_u32(~(~0u), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(1u, (3219u >> (var_3.c.x % 32u)) & 73929u)), var_4.a.b, firstLeadingBit(max(_wgslsmith_div_vec4_u32(~u_input.c, u_input.c), countOneBits(min(vec4<u32>(1u, 1u, var_1.c.x, var_4.b.x), u_input.c)))), global0[_wgslsmith_index_u32(~60315u, 7u)]);
}

