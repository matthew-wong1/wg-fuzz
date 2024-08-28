struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec2<f32>(-739f, -481f)), vec4<f32>(-1016f, -688f, -140f, 127f), Struct_1(vec2<f32>(-999f, 271f))), Struct_2(Struct_1(vec2<f32>(-509f, -655f)), vec4<f32>(-902f, -130f, 673f, 1003f), Struct_1(vec2<f32>(-278f, 1000f))), Struct_2(Struct_1(vec2<f32>(-1213f, 575f)), vec4<f32>(2010f, -1948f, 921f, 428f), Struct_1(vec2<f32>(-238f, -724f))), Struct_2(Struct_1(vec2<f32>(-133f, -1008f)), vec4<f32>(-818f, -676f, 1275f, -413f), Struct_1(vec2<f32>(-683f, -1000f))), Struct_2(Struct_1(vec2<f32>(641f, 1146f)), vec4<f32>(-921f, 298f, 1000f, -1084f), Struct_1(vec2<f32>(230f, 192f))), Struct_2(Struct_1(vec2<f32>(-299f, 1000f)), vec4<f32>(-811f, 1411f, -760f, 587f), Struct_1(vec2<f32>(916f, 1458f))), Struct_2(Struct_1(vec2<f32>(987f, -362f)), vec4<f32>(2000f, -154f, 1478f, -437f), Struct_1(vec2<f32>(697f, 135f))), Struct_2(Struct_1(vec2<f32>(-1208f, -166f)), vec4<f32>(1113f, -1000f, 485f, -787f), Struct_1(vec2<f32>(-1546f, -1454f))), Struct_2(Struct_1(vec2<f32>(-376f, -288f)), vec4<f32>(-747f, -364f, 534f, -131f), Struct_1(vec2<f32>(-504f, 1568f))));

var<private> global3: array<Struct_4, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = vec3<bool>(false, global1.a.x, all(vec4<bool>(all(global1.a.zy), true, true, false)));
    global1 = Struct_3(!vec3<bool>(false, false, var_0.x));
    var var_1 = u_input.a.x;
    global0 = countOneBits(~min(~(vec3<u32>(global0.x, global0.x, global0.x) >> (vec3<u32>(global0.x, global0.x, global0.x) % vec3<u32>(32u))), min(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(global0.x, 1u, global0.x)) | ~vec3<u32>(4294967295u, 0u, 4294967295u)));
    let var_2 = vec4<u32>(global0.x << (reverseBits(global0.x) % 32u), reverseBits(1u), 1u, 17477u);
    return _wgslsmith_f_op_f32(-401f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(exp2(1f)))));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: vec4<u32>) -> Struct_5 {
    var var_0 = Struct_5(arg_1.a, select(select(arg_2.wxx, ~reverseBits(arg_2.zzw), !select(false, global1.a.x, global1.a.x)), arg_1.b, true), ~_wgslsmith_clamp_vec4_i32(~arg_1.c, -(vec4<i32>(arg_1.d, u_input.a.x, arg_1.c.x, -47607i) ^ arg_1.c), -(vec4<i32>(arg_1.c.x, arg_1.c.x, u_input.a.x, 1i) << (arg_2 % vec4<u32>(32u)))), -1i);
    var var_1 = _wgslsmith_f_op_f32(func_3());
    var var_2 = -vec4<i32>(var_0.c.x, 2147483647i, ~(-(2147483647i << (arg_1.b.x % 32u))), -u_input.a.x);
    var var_3 = Struct_3(global1.a);
    let var_4 = Struct_3(vec3<bool>(var_3.a.x, all(var_3.a), true));
    return arg_1;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> Struct_4 {
    let var_0 = arg_0.a.a.x;
    var var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 37424u), arg_0.b))) >> (min(global0.x, ~global0.x) % 32u), 11u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2((global0.x ^ 4294967295u) ^ ~0u, arg_0, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, global0.x, 4294967295u), vec4<u32>(9323u, 12838u, global0.x, arg_0.b.x), vec4<u32>(0u, arg_0.b.x, global0.x, global0.x))).a.a.x));
    global1 = Struct_3(select(vec3<bool>(false, arg_1.a.x != 363f, true), vec3<bool>(_wgslsmith_f_op_f32(-arg_1.a.x) == _wgslsmith_f_op_f32(trunc(var_1.d.a.x)), select(true & global1.a.x, false, true), !(!global1.a.x)), select(true, !all(vec4<bool>(var_1.b, global1.a.x, true, true)), 0i == u_input.a.x)));
    let var_3 = global3[_wgslsmith_index_u32(~1u, 11u)];
    return Struct_4(false, all(vec4<bool>((var_1.b && true) || true, true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1947f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x * var_3.c), _wgslsmith_div_f32(var_3.c, var_1.e.b.x)))), var_3.e);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4, arg_3: vec4<f32>) -> f32 {
    var var_0 = !(!select(!vec3<bool>(arg_0.x, arg_2.b, false), global1.a, vec3<bool>(true & global1.a.x, false, true)));
    global2 = array<Struct_2, 9>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1034f), arg_2.e.c.a.x, any(vec4<bool>(true, all(select(arg_0.xyz, vec3<bool>(true, false, true), true)), false, all(select(vec2<bool>(global1.a.x, global1.a.x), arg_0.xw, false))))));
}

fn func_6(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0, 616f);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0.x, global0.x, 63817u)), _wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(global0.x, global0.x, global0.x))), vec3<u32>(~(56576u >> (1u % 32u)), global0.x >> (~97225u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(0u, global0.x, global0.x))))), 11u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1833f)) + arg_1) - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(12889u, global0.x), arg_3 & 41253u)), firstLeadingBit(~0u), true), _wgslsmith_add_u32(arg_3, 1u) << (_wgslsmith_mult_u32(~(~71406u), ~(3966u | global0.x)) % 32u)), 11u)];
    let var_1 = ~(~(~arg_3));
    global0 = vec3<u32>(~(~global0.x), firstTrailingBit(global0.x), 1u);
    var var_2 = (~u_input.a >> (select(firstLeadingBit(vec2<u32>(var_1, 1u)), global0.zx, vec2<bool>(true, true)) % vec2<u32>(32u))) | u_input.a;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-arg_0.c) >= 1335f, true, _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(func_5(vec4<bool>(false, true, any(global1.a.zz), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(812f, arg_2.c)) * _wgslsmith_f_op_f32(398f - var_0.e.a.a.x)), func_4(func_2(var_1, Struct_5(arg_2.e.a, vec3<u32>(var_1, global0.x, 1u), vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.a.x), -1i), vec4<u32>(var_1, 1u, var_1, var_1)), Struct_1(vec2<f32>(-498f, 219f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.b.x, arg_0.e.c.a.x, arg_2.d.a.x, -235f)))))), 630f)), func_2(global0.x << (global0.x % 32u), Struct_5(func_2(_wgslsmith_sub_u32(global0.x, var_1), Struct_5(Struct_1(arg_0.e.b.wx), vec3<u32>(var_1, 10569u, 71993u), vec4<i32>(2147483647i, -26486i, -1i, -53051i), 17171i), ~vec4<u32>(arg_3, 4294967295u, 0u, global0.x)).a, vec3<u32>(~global0.x, 4294967295u, func_2(54712u, Struct_5(arg_2.e.c, vec3<u32>(1u, var_1, 31484u), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_2.x), u_input.a.x), vec4<u32>(0u, 71753u, global0.x, var_1)).b.x), vec4<i32>(var_2.x, -1i, var_2.x, -u_input.a.x), 0i), vec4<u32>(55485u, 36087u, arg_3 << (global0.x % 32u), ~arg_3)).a, Struct_2(func_4(Struct_5(arg_1, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(global0.x, var_1, arg_3)), vec4<i32>(0i, -58141i, -19724i, 2147483647i), -2147483647i), var_0.e.a).d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.e.b + arg_0.e.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.d.a.x, arg_2.e.b.x, 426f))), func_4(func_2(_wgslsmith_add_u32(76636u, global0.x), func_2(var_1, Struct_5(arg_1, vec3<u32>(var_1, 1u, 12738u), vec4<i32>(68119i, -1i, -2147483647i, 1i), -13748i), vec4<u32>(4294967295u, 63627u, var_1, 95723u)), vec4<u32>(4294967295u, 0u, global0.x, 322u)), arg_1).e.a));
    return vec3<i32>(u_input.a.x, 1i ^ countOneBits(var_2.x), -(~var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-23295i, 10832i, 2147483647i) & vec3<i32>(u_input.a.x, u_input.a.x, -63747i), func_1(global3[_wgslsmith_index_u32(global0.x, 11u)], Struct_1(vec2<f32>(-462f, 1678f)), Struct_4(false, false, 1000f, Struct_1(vec2<f32>(106f, -213f)), global2[_wgslsmith_index_u32(global0.x, 9u)]), 41411u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0i, 1i), vec3<i32>(u_input.a.x, -22102i, -1i))), vec3<i32>(func_2(max(4294967295u, 82182u), func_2(global0.x, Struct_5(Struct_1(vec2<f32>(-1013f, 2189f)), vec3<u32>(global0.x, 68251u, 74294u), vec4<i32>(-39338i, 1i, u_input.a.x, u_input.a.x), -2147483647i), vec4<u32>(global0.x, 0u, 32454u, global0.x)), vec4<u32>(global0.x, global0.x, 56318u, 1u) >> (vec4<u32>(57096u, 51117u, global0.x, global0.x) % vec4<u32>(32u))).d, firstTrailingBit(u_input.a.x), -(u_input.a.x | 19403i))), min(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 22321i), vec3<i32>(-12559i, 41945i, u_input.a.x))) ^ vec3<i32>(u_input.a.x, 7149i, abs(u_input.a.x)), ~vec3<i32>(2147483647i << (0u % 32u), 0i, ~u_input.a.x)));
    global0 = ~(~firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), global0.x, global0.x)));
    var var_1 = _wgslsmith_sub_vec2_u32(select(reverseBits(_wgslsmith_mod_vec2_u32(~global0.yx, global0.zz)), ~(~_wgslsmith_div_vec2_u32(global0.xx, vec2<u32>(0u, 4111u))), any(!vec4<bool>(false, false, global1.a.x, global1.a.x))), vec2<u32>(global0.x, 0u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1116f, -1327f, -489f)))))));
    let var_3 = Struct_4(true, global1.a.x, _wgslsmith_f_op_f32(-var_2.x), Struct_1(var_2.xz), func_4(Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(var_2.xy + vec2<f32>(1301f, 149f))), abs(~vec3<u32>(global0.x, 4294967295u, 86603u)), firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, var_0.x, u_input.a.x) >> (vec4<u32>(var_1.x, 0u, 9152u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_i32(u_input.a.x ^ 15529i, 15605i)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, var_2.x))))).e);
    global0 = abs(~(~min(vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(1u, var_1.x, var_1.x))) >> (abs(vec3<u32>(_wgslsmith_mod_u32(23053u, 11577u), ~global0.x, var_1.x >> (6445u % 32u))) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(var_3.e.c.a.x * func_4(Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(var_3.d.a.x, -1159f))), firstTrailingBit(vec3<u32>(global0.x, 0u, global0.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 3412i, var_0.x, var_0.x), vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x)), _wgslsmith_clamp_i32(~var_0.x, i32(-1i) * -34754i, var_0.x)), func_2(countOneBits(20271u >> (1u % 32u)), func_2(49254u, Struct_5(Struct_1(var_2.xz), vec3<u32>(var_1.x, 1u, 0u), vec4<i32>(7072i, -1672i, var_0.x, u_input.a.x), u_input.a.x), vec4<u32>(12874u, global0.x, 41175u, global0.x)), ~(~vec4<u32>(global0.x, var_1.x, global0.x, 67108u))).a).c);
    var var_5 = 648f;
    global1 = Struct_3(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.zx), var_3.d.a, any(select(select(vec4<bool>(var_3.a, false, false, true), vec4<bool>(global1.a.x, false, var_3.b, var_3.a), global1.a.x), select(vec4<bool>(var_3.b, global1.a.x, true, global1.a.x), vec4<bool>(var_3.b, var_3.b, var_3.b, false), false), vec4<bool>(global1.a.x, global1.a.x, true, true))))));
}

