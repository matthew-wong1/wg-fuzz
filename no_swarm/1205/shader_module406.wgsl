struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_3, 20>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> i32 {
    global0 = array<Struct_3, 20>();
    let var_0 = Struct_1(-7745i, !any(!(!vec3<bool>(true, arg_2.a.b, arg_2.a.b))), (-_wgslsmith_sub_vec4_i32(arg_2.d, arg_0) & arg_2.a.c) | vec4<i32>(arg_1, -abs(arg_1), -13869i, ~19601i), arg_1);
    var var_1 = true;
    var_1 = false;
    global0 = array<Struct_3, 20>();
    return max(arg_1, -2147483647i);
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    return _wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(1517f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-289f)) - _wgslsmith_f_op_f32(ceil(916f))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    let var_0 = abs(arg_0.d.x);
    global0 = array<Struct_3, 20>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 20u)];
    var_1 = global0[_wgslsmith_index_u32(var_1.a.x, 20u)];
    var var_2 = arg_0.a;
    return any(vec3<bool>(var_2.b, arg_0.a.b, all(select(select(vec2<bool>(arg_0.a.b, arg_1.b), vec2<bool>(false, var_2.b), vec2<bool>(var_1.c, false)), !vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-49578i, _wgslsmith_add_i32(i32(-1i) * -2147483647i, func_2(vec4<i32>(1i, 26168i, -2147483647i, -1i), -1i, Struct_4(Struct_1(-1i, arg_0.x, vec4<i32>(2147483647i, 77549i, -17014i, 19682i), 0i), arg_1.a, -447i, vec4<i32>(-2147483647i, 0i, 31023i, 29148i)), arg_1.a)), firstLeadingBit(max(-35078i, 28105i))) ^ -32147i, func_4(Struct_4(Struct_1(-50763i, true && arg_0.x, select(vec4<i32>(-1i, 57013i, 1i, 66221i), vec4<i32>(0i, -2147483647i, -1i, 21989i), vec4<bool>(false, false, arg_1.b, arg_1.b)), func_2(vec4<i32>(8715i, 14736i, 2147483647i, 2147483647i), -51065i, Struct_4(Struct_1(43596i, true, vec4<i32>(1i, 12156i, -24693i, -554i), -3671i), arg_3, 0i, vec4<i32>(-21071i, 0i, 2147483647i, -9505i)), arg_1.a)), _wgslsmith_f_op_f32(func_3(~u_input.a, ~4294967295u)), select(firstLeadingBit(2147483647i), select(-1i, 8904i, arg_1.b), arg_0.x), vec4<i32>(select(-28092i, 2147483647i, arg_0.x), 1i, _wgslsmith_div_i32(-23817i, -1i), i32(-1i) * -2147483647i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), !arg_1.b)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-min(0i, 42749i), _wgslsmith_sub_i32(-9837i, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-18660i, 14096i), vec2<i32>(-4029i, -158i)), 1i, ~(-2887i)), -1i)), -(_wgslsmith_dot_vec3_i32(-vec3<i32>(-21698i, 2147483647i, -1i), vec3<i32>(-15092i, 1i, -2147483647i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(-39793i, 10307i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(9562i, 1i, 2147483647i), vec3<i32>(-11216i, -53479i, -8856i)))));
    let var_1 = vec4<i32>(-(~1i), 3892i, -93607i, _wgslsmith_mod_i32(~0i, 2147483647i));
    var var_2 = ~var_1.x;
    var_2 = var_1.x;
    var var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.xwy, -(~vec3<i32>(var_0.d, var_0.a, var_1.x) & -var_1.wyy)), _wgslsmith_sub_vec3_i32(-(var_1.zxz ^ var_0.c.wwy) >> ((arg_2.zzw >> (vec3<u32>(79617u, 1u, 25035u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(countOneBits(vec3<i32>(39163i, 0i, 1i)) >> ((vec3<u32>(569u, 47032u, 61562u) | vec3<u32>(u_input.a, 4294967295u, 25150u)) % vec3<u32>(32u)))));
    return Struct_4(Struct_1(func_2(reverseBits(vec4<i32>(-34903i, var_1.x, -1i, -1756i)), abs(func_2(vec4<i32>(var_0.c.x, 12907i, 1i, var_0.c.x), 0i, Struct_4(var_0, 2305f, 2147483647i, vec4<i32>(-2147483647i, -2147483647i, var_3.x, 29089i)), arg_1.a)), Struct_4(var_0, -398f, -2147483647i, -var_0.c), -377f), !func_4(Struct_4(var_0, -478f, var_0.c.x, var_1), arg_1), var_0.c, _wgslsmith_dot_vec3_i32(select(var_0.c.xwx, var_1.xxz, true), _wgslsmith_mult_vec3_i32(vec3<i32>(-14571i, 12673i, -2147483647i), var_1.yxy)) | _wgslsmith_mult_i32(i32(-1i) * -19357i, var_1.x & -52423i)), 533f, -1i, select(vec4<i32>(_wgslsmith_div_i32(-var_3.x, min(-10001i, var_3.x)), select(~(-1i), -49993i, true), func_2(reverseBits(var_0.c), 4179i, Struct_4(var_0, 295f, var_0.a, var_1), _wgslsmith_f_op_f32(687f + arg_3)), abs(firstTrailingBit(var_0.d))), ~abs(var_1) ^ vec4<i32>(var_3.x, -var_1.x, _wgslsmith_mod_i32(var_3.x, -14455i), max(var_3.x, 0i)), !(var_1.x < var_0.d) && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_f32(step(-1504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(177f)) * _wgslsmith_f_op_f32(step(-661f, -677f))))), true), vec4<u32>(_wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a))), ~min(0u, u_input.a << (u_input.a % 32u)), ~_wgslsmith_clamp_u32(45131u, 1u, u_input.a) >> (~(~13306u) % 32u), u_input.a), _wgslsmith_f_op_f32(1545f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f + 1000f) - _wgslsmith_f_op_f32(min(1000f, 866f))) * -1741f)));
    let var_1 = func_1(!vec4<bool>(-1196f == _wgslsmith_f_op_f32(-209f - var_0.b), true, var_0.a.b | true, false), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(select(-2858f, var_0.b, var_0.a.b))))), func_4(Struct_4(Struct_1(var_0.c, var_0.a.b, vec4<i32>(-36794i, var_0.a.a, -14172i, var_0.c), 55303i), var_0.b, -2147483647i, _wgslsmith_clamp_vec4_i32(var_0.d, vec4<i32>(var_0.d.x, var_0.d.x, -2147483647i, var_0.a.c.x), vec4<i32>(var_0.d.x, var_0.d.x, var_0.c, var_0.c))), Struct_2(_wgslsmith_f_op_f32(trunc(-576f)), true))), vec4<u32>(7384u, 22389u, max(~reverseBits(7135u), ~_wgslsmith_mod_u32(19846u, 1u)), 58568u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(-317f + var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(807f)))) - 407f)))).a;
    var var_2 = func_1(!vec4<bool>(false, all(!vec2<bool>(false, var_1.b)), (1u >= u_input.a) & true, var_1.b), Struct_2(1868f, func_4(Struct_4(var_0.a, var_0.b, -40554i, firstTrailingBit(vec4<i32>(var_0.c, var_1.c.x, 2147483647i, var_0.d.x))), Struct_2(var_0.b, var_0.a.b & true))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 2304u), _wgslsmith_add_u32(7840u, 42063u), 1u), vec4<u32>(~1u, u_input.a ^ 32848u, 24274u, u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))));
    var_0 = func_1(select(select(select(select(vec4<bool>(true, var_2.a.b, false, var_1.b), vec4<bool>(var_1.b, var_1.b, var_0.a.b, true), vec4<bool>(true, true, var_2.a.b, var_2.a.b)), select(vec4<bool>(var_1.b, var_1.b, true, true), vec4<bool>(true, var_2.a.b, var_2.a.b, var_2.a.b), false), var_2.a.b), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2.a.b, false, var_2.a.b, false), false), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, false, var_2.a.b, var_2.a.b), vec4<bool>(true, var_1.b, var_0.a.b, false), vec4<bool>(var_0.a.b, var_1.b, false, var_1.b)), select(vec4<bool>(false, var_2.a.b, var_1.b, false), vec4<bool>(var_0.a.b, false, true, var_2.a.b), vec4<bool>(var_1.b, var_0.a.b, var_0.a.b, var_1.b)), var_1.b), false), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a, u_input.a)), var_2.b)), var_2.a.b), ~vec4<u32>(~(~44824u), 1u >> (u_input.a % 32u), firstLeadingBit(u_input.a) >> (4294967295u % 32u), 0u), -1358f);
    var var_3 = _wgslsmith_div_i32(1i, var_1.c.x);
    let var_4 = var_1.c.yww;
    var_0 = Struct_4(func_1(vec4<bool>(var_2.a.b && true, _wgslsmith_clamp_i32(var_1.a, var_4.x, var_4.x) > ~(-17331i), firstLeadingBit(var_1.a) <= abs(-2147483647i), false), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-374f * var_0.b))), var_1.b), vec4<u32>(~u_input.a, u_input.a, 31029u, max(firstTrailingBit(u_input.a), u_input.a | u_input.a)), _wgslsmith_f_op_f32(var_2.b * -1000f)).a, _wgslsmith_f_op_f32(step(927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(f32(-1f) * -1173f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2110f * 925f))))), _wgslsmith_add_i32(-_wgslsmith_mod_i32(func_2(vec4<i32>(var_1.a, -2147483647i, -79873i, var_1.a), -2147483647i, Struct_4(var_0.a, 1167f, var_1.c.x, vec4<i32>(var_4.x, 2147483647i, var_2.d.x, var_1.d)), var_0.b), var_2.c), _wgslsmith_mult_i32(firstLeadingBit(var_1.a), var_4.x)), var_0.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

