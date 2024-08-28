struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<u32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-314f)) - _wgslsmith_f_op_f32(f32(-1f) * -1089f)))));
    global0 = vec2<bool>(-766f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(exp2(var_0))), false);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~reverseBits(firstTrailingBit(vec2<u32>(34038u, u_input.b)))), ~reverseBits(~select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(27936u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13690u, 31u)], 31u)]), vec2<bool>(global0.x, arg_0.x)))), 30u)];
    global1 = array<Struct_2, 30>();
    var var_2 = abs(abs(abs(vec4<i32>(firstTrailingBit(u_input.a), u_input.a, _wgslsmith_dot_vec2_i32(var_1.c.yy, var_1.c.xz), u_input.a))));
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_3(arg_1.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23434u, 31u)], 31u)] % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(-429f - arg_0), 331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1241f * _wgslsmith_f_op_f32(max(747f, arg_0))))), vec4<i32>(~20841i, u_input.a, u_input.a & 2147483647i, _wgslsmith_add_i32(firstTrailingBit(1i), arg_1.x)) >> (firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 31u)], u_input.b, u_input.b), vec4<u32>(552u, u_input.b, u_input.b, 2155u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_clamp_u32(121048u, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(3430u), u_input.b), 31u)], ~(~u_input.b)), vec3<bool>(true, true, true), arg_1.x != abs(0i)));
    var var_1 = _wgslsmith_mult_u32(3205u, min(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 31u)]) >> ((~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(106696u, 31u)], 0u) & func_3(vec4<bool>(global0.x, global0.x, true, false))) % 32u));
    var var_2 = Struct_2(Struct_1(34338u, vec3<bool>(all(!vec3<bool>(false, global0.x, var_0.d.c)), all(!var_0.d.b), global0.x), arg_0 != var_0.b.x), Struct_1(~13096u, var_0.d.b, var_0.d.b.x), var_0.c.yyx);
    let var_3 = 150f;
    var var_4 = _wgslsmith_mod_vec2_i32((vec2<i32>(-arg_1.x, 1i) & var_2.c.yx) & _wgslsmith_mult_vec2_i32(arg_1.zz, vec2<i32>(0i, _wgslsmith_clamp_i32(var_0.c.x, 60033i, var_2.c.x))), _wgslsmith_clamp_vec2_i32(var_2.c.zz, reverseBits(reverseBits(arg_1.zy)), select(vec2<i32>(arg_1.x, -2147483647i), var_0.c.xx, vec2<bool>(arg_0 > var_0.b.x, !var_0.d.b.x))));
    return _wgslsmith_clamp_i32(-(i32(-1i) * -33725i), arg_1.x | var_0.c.x, max(countOneBits(-35546i) & ~(arg_1.x ^ 41506i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-var_0.c.wyw, abs(var_0.c.wzz)), -arg_1)));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = ~(~vec2<u32>(_wgslsmith_mult_u32(14723u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<u32>(21999u, global2[_wgslsmith_index_u32(0u, 31u)]))), (1u << (arg_0 % 32u)) & 0u));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(1035f, 1630f)), _wgslsmith_f_op_f32(ceil(-1108f)), _wgslsmith_f_op_f32(1448f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f - 1616f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1774f)))))));
    var var_2 = var_1.zxw;
    var var_3 = max(select(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 25129i), vec4<i32>(-34577i, u_input.a, u_input.a, -42887i)), vec4<i32>(u_input.a, u_input.a, u_input.a, -15712i) << (vec4<u32>(60152u, 0u, u_input.b, arg_0) % vec4<u32>(32u))), !arg_1) ^ _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 17569i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(27962i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 26331i, -2147483647i)))), vec4<i32>(func_2(-762f, _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a, 21471i, 2147483647i), vec3<i32>(1i, 2147483647i, 0i), true), vec3<i32>(1i, u_input.a, -2147483647i) << (vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(0u, 31u)]) % vec3<u32>(32u)))), -27929i, u_input.a, 1i));
    var_3 = abs(~(vec4<i32>(var_3.x, var_3.x, -1i, 18683i) | ~vec4<i32>(-24968i, var_3.x, var_3.x, 21988i))) & -_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x ^ var_3.x, u_input.a, firstTrailingBit(var_3.x), var_3.x), ~(-vec4<i32>(u_input.a, var_3.x, u_input.a, u_input.a)));
    return Struct_1(62920u, vec3<bool>(arg_1.x, any(vec4<bool>(arg_1.x, global0.x, false, true)), arg_1.x), global0.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<bool> {
    return vec4<bool>(true, true | (any(vec3<bool>(global0.x, arg_1.d.c, false)) != !global0.x), any(!vec4<bool>(false, true, any(arg_1.d.b), !global0.x)), !all(vec2<bool>(any(vec3<bool>(true, arg_1.d.c, global0.x)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    let var_0 = !(!func_4(vec3<i32>(u_input.a, -4074i, 0i), Struct_3(_wgslsmith_mult_i32(52149i, 1i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(858f, -468f, -1016f, 262f), vec4<f32>(-394f, 633f, -1214f, 339f))), -vec4<i32>(u_input.a, 38307i, 1i, 41480i), func_1(global2[_wgslsmith_index_u32(0u, 31u)], vec4<bool>(false, global0.x, true, true)))));
    global1 = array<Struct_2, 30>();
    let var_1 = 525f;
    var var_2 = Struct_3(0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1353f * -329f), 862f, var_1, var_1)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(sign(1518f)), -901f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-488f, -769f, -729f, var_1) - vec4<f32>(355f, var_1, 1111f, -938f))))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, u_input.a, 8455i), vec3<i32>(2567i, u_input.a, 5667i)), -vec3<i32>(u_input.a, -57568i, u_input.a)), -29511i & (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, -17911i), vec4<i32>(-2147483647i, u_input.a, u_input.a, 45281i)) << (~u_input.b % 32u)), _wgslsmith_div_i32(u_input.a, ~1i), ~18465i), Struct_1(_wgslsmith_div_u32(u_input.b, u_input.b), var_0.yyz, ((true & global0.x) && global0.x) || true));
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.a);
}

