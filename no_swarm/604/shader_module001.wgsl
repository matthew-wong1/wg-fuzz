struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<bool>;

var<private> global2: i32;

var<private> global3: u32 = 89400u;

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-620f, 907f)));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1109f)), 1f), global0.c, _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(min(1395f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(331f, _wgslsmith_f_op_f32(var_0 * var_0)))))));
    global0 = Struct_3(Struct_2(Struct_1(global0.a.d), vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(1430f * 346f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -497f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(step(-1397f, var_0)), u_input.a.x == global0.a.c.x))), vec4<i32>(min(-5094i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1283i, 1i, u_input.a.x), u_input.a)), min(-global0.a.c.x, u_input.a.x), reverseBits(1i), global0.a.c.x), ~global0.a.a.a, global0.b), !vec4<bool>(1i <= (global0.a.c.x ^ global0.a.c.x), any(global0.a.e.xw), any(!global0.a.e), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), global0.a.a.a.zz);
    return -u_input.a.x;
}

fn func_3() -> vec2<u32> {
    global4 = array<Struct_2, 24>();
    var var_0 = Struct_2(global0.a.a, vec3<f32>(global0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.c, true))))), _wgslsmith_f_op_f32(-3359f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2262f)) - _wgslsmith_f_op_f32(global0.c + global0.c)))), countOneBits(abs(u_input.a)), vec4<u32>(global0.a.d.x, ((global0.a.a.a.x | 0u) | ~5656u) >> (_wgslsmith_div_u32(~global0.d.x, global0.a.a.a.x) % 32u), max(global0.a.d.x, firstLeadingBit(~21868u)), _wgslsmith_dot_vec4_u32(~global0.a.d, ~global0.a.d)), select(vec4<bool>(false, true, global1.x, all(global0.b.zwz)), !select(global0.b, global0.b, select(global0.a.e, vec4<bool>(global1.x, global0.b.x, false, false), global0.a.e)), !global0.a.e));
    var var_1 = var_0.e.wzx;
    var var_2 = _wgslsmith_mult_vec3_i32(~u_input.a.zwz, var_0.c.yyz);
    var var_3 = vec2<u32>(4294967295u, ~(~(~global0.d.x) >> ((~global0.a.a.a.x & global0.a.d.x) % 32u)));
    return ~select(select(abs(firstLeadingBit(vec2<u32>(var_0.d.x, var_3.x))), var_0.a.a.zw, var_0.e.zz), vec2<u32>(select(19761u, _wgslsmith_div_u32(global0.d.x, 14318u), 17927i == var_2.x), 0u), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global0.b.x, true)), vec2<bool>(true, true), vec2<bool>(false, global0.a.e.x)), select(!vec2<bool>(global0.a.e.x, true), !vec2<bool>(global0.a.e.x, var_0.e.x), true), select(!var_1.xy, !vec2<bool>(global1.x, var_0.e.x), !var_1.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = 76193u;
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(130273u, 4294967295u, 2749u, 44743u), global0.a.d) | ~vec4<u32>(4294967295u, arg_3.d.x, 0u, arg_3.a.a.x)), vec3<f32>(-903f, _wgslsmith_f_op_f32(660f - arg_3.b.x), arg_3.b.x), vec4<i32>(~(-9941i), ~(~arg_3.c.x), arg_1.x, -19386i), vec4<u32>(arg_0, 10056u, 1u, 1u), global0.b), vec4<bool>((1365f > _wgslsmith_f_op_f32(max(global0.c, 343f))) || true, false, true, false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1407f * -1000f)))), arg_3.a.a.wz);
    var var_1 = _wgslsmith_mod_i32(2914i, -(~(1i ^ arg_3.c.x) | func_2()));
    var_0 = firstTrailingBit(reverseBits(0u));
    var var_2 = Struct_3(arg_3, arg_3.e, _wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))))), _wgslsmith_clamp_vec2_u32(~arg_3.a.a.zx, ~(~global0.a.a.a.xz), arg_3.a.a.xz) & arg_2);
    return Struct_3(global4[_wgslsmith_index_u32(var_2.a.a.a.x, 24u)], select(global0.b, !(!vec4<bool>(global0.b.x, false, true, true)), false), _wgslsmith_f_op_f32(ceil(790f)), _wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(arg_3.d.x, 82061u)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(10027u, var_2.a.a.a.x), vec2<u32>(arg_2.x, 4294967295u), vec2<u32>(5041u, global0.d.x)), _wgslsmith_div_vec2_u32(var_2.a.a.a.ww, global0.a.d.xz), min(vec2<u32>(1u, arg_0), vec2<u32>(global0.d.x, arg_3.d.x))) % vec2<u32>(32u)), firstTrailingBit(arg_3.d.wx ^ arg_2)));
}

fn func_1(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = global0.a.b.zy;
    global2 = _wgslsmith_clamp_i32(countOneBits(-2147483647i), 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.xzw | abs(vec3<i32>(global0.a.c.x, -2147483647i, u_input.a.x)), min(global0.a.c.zwz, _wgslsmith_clamp_vec3_i32(global0.a.c.xyz, vec3<i32>(-55743i, global0.a.c.x, -2147483647i), global0.a.c.wxy)), ~u_input.a.xyz), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.c.x, -3006i, 2147483647i) << (global0.a.d.xwy % vec3<u32>(32u)), vec3<i32>(global0.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a.c.x, 2147483647i, global0.a.c.x), vec4<i32>(u_input.a.x, global0.a.c.x, -81168i, global0.a.c.x)), abs(-6046i)))));
    let var_1 = func_4(~global0.a.d.x >> (global0.a.a.a.x % 32u), _wgslsmith_div_vec2_i32(vec2<i32>(func_2(), 14510i), vec2<i32>(u_input.a.x, global0.a.c.x)), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.d.x, 16655u), vec2<u32>(global0.a.d.x, global0.a.a.a.x), global0.a.d.zw | global0.d), func_3(), global1.x), global4[_wgslsmith_index_u32(4294967295u, 24u)]);
    let var_2 = var_1;
    var var_3 = global4[_wgslsmith_index_u32(var_2.d.x, 24u)];
    return _wgslsmith_f_op_f32(sign(2005f));
}

fn func_5(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(18167u), 1u), _wgslsmith_add_u32(global0.d.x, reverseBits(1u)));
    return Struct_3(global4[_wgslsmith_index_u32(5763u, 24u)], vec4<bool>(!(!global0.b.x), global1.x & (true | (var_0 >= 353f)), true, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -743f), vec2<u32>(global0.a.a.a.x, ~(var_1 >> (~4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1269f, global0.a.b.x, global0.a.b.x, -129f), vec4<f32>(1389f, 740f, global0.c, -616f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 947f, global0.a.b.x, global0.c) * vec4<f32>(-1193f, -256f, 1507f, global0.a.b.x))), vec4<f32>(global0.c, _wgslsmith_f_op_f32(func_1(global0.a.b.x, 371f)), _wgslsmith_f_op_f32(global0.a.b.x * global0.a.b.x), _wgslsmith_f_op_f32(sign(global0.a.b.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(162f)), -1264f, _wgslsmith_f_op_f32(global0.a.b.x + global0.a.b.x), _wgslsmith_f_op_f32(global0.a.b.x + -546f)) * vec4<f32>(166f, _wgslsmith_f_op_f32(-global0.a.b.x), -231f, _wgslsmith_f_op_f32(global0.c * 180f)))));
    global2 = 16701i;
    let var_0 = vec3<i32>(u_input.a.x, -firstTrailingBit(abs(-2147483647i) ^ global0.a.c.x), select(1i, abs(countOneBits(abs(25661i))), !(-205f > global0.c) || false));
    var var_1 = Struct_1(global0.a.a.a);
    global4 = array<Struct_2, 24>();
    let var_2 = func_4(abs(~reverseBits(~4294967295u)), vec2<i32>(1i, -1i), min(vec2<u32>(~4294967295u >> (var_1.a.x % 32u), firstLeadingBit(_wgslsmith_add_u32(global0.d.x, var_1.a.x))), func_4(global0.a.a.a.x, firstLeadingBit(var_0.yz ^ vec2<i32>(-2147483647i, -2147483647i)), ~(vec2<u32>(global0.d.x, global0.a.d.x) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_2(global0.a.a, vec3<f32>(global0.c, global0.a.b.x, -454f), -global0.a.c, ~vec4<u32>(var_1.a.x, 0u, global0.d.x, global0.d.x), global0.a.e)).a.a.a.zy), func_4(22065u, func_5(vec4<f32>(294f, _wgslsmith_f_op_f32(f32(-1f) * -1914f), 666f, global0.a.b.x)).a.c.yw, vec2<u32>(var_1.a.x, var_1.a.x), Struct_2(Struct_1(global0.a.d), global0.a.b, _wgslsmith_mult_vec4_i32(u_input.a, u_input.a), ~global0.a.d, vec4<bool>(any(global0.a.e), global0.a.b.x == -197f, true, true))).a).a;
    global4 = array<Struct_2, 24>();
    var var_3 = func_4(0u, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(2232f)), _wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(f32(-1f) * -170f), 404f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, 1000f, global0.c, 614f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(750f, global0.c, var_2.b.x, var_2.b.x) + vec4<f32>(var_2.b.x, 335f, global0.c, -567f))))).a.c.wx, var_1.a.yx, Struct_2(global0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1049f, var_2.b.x, -1017f), vec3<f32>(var_2.b.x, var_2.b.x, global0.a.b.x))))), -vec4<i32>(_wgslsmith_sub_i32(-1i, 0i), var_2.c.x << (4294967295u % 32u), var_0.x, -var_0.x), _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(global0.a.a.a, var_1.a), vec4<u32>(1u, abs(7724u), 0u << (var_2.d.x % 32u), var_2.d.x)), var_2.e)).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b.x, -529f, -404f, var_2.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, global0.c, var_2.b.x, var_2.b.x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.c, -1226f, 269f) * vec4<f32>(191f, global0.c, -122f, var_2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1380f, global0.c, var_2.b.x, global0.c)))))), vec3<u32>(_wgslsmith_mult_u32(60234u, ~global0.d.x << (~var_3.a.x % 32u)), 2431u, abs(var_3.a.x)), _wgslsmith_sub_u32(global0.a.a.a.x, _wgslsmith_add_u32(global0.a.d.x, ~var_1.a.x)), 2951f);
}

