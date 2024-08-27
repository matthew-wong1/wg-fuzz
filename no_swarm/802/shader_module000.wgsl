struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = ~_wgslsmith_mult_vec3_u32(arg_2, arg_2) << (~max(vec3<u32>(_wgslsmith_mult_u32(34596u, 6659u), u_input.a.x, min(1u, u_input.c)), ~reverseBits(arg_1.a)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -(~_wgslsmith_div_vec3_i32(vec3<i32>(52553i, u_input.b.x, u_input.b.x), vec3<i32>(23802i, -1i, u_input.b.x))), u_input.b.xww);
    var var_2 = Struct_3(firstTrailingBit(0i), vec4<u32>(arg_1.a.x, _wgslsmith_mult_u32(u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, arg_2.x, 4294967295u, global1.a.x) | vec4<u32>(var_0.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54459u, 25u)], 25u)], u_input.c), vec4<u32>(409u, global1.a.x, 15957u, 0u) | vec4<u32>(1u, 1u, u_input.a.x, 4294967295u)), 25u)]), global1.a.x, ~_wgslsmith_mod_u32(global1.a.x, 42391u)), arg_1);
    let var_3 = select(select(arg_0.zzz, !select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !arg_0.zxx, any(arg_0)), vec3<bool>(global1.a.x < 6569u, true, true)), vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(sign(-713f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-767f)) + 1000f), arg_0.x), vec3<bool>(any(!(!vec2<bool>(arg_0.x, arg_0.x))), arg_0.x, true));
    let var_4 = ~var_2.b;
    return ~arg_2;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = arg_1.x;
    var var_1 = Struct_3(u_input.b.x, _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_0.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.zy), ~vec2<u32>(88685u, global1.a.x)), ~_wgslsmith_mod_u32(u_input.a.x, arg_0.x), arg_0.x >> (~u_input.c % 32u)), min(~vec4<u32>(0u, 23096u, arg_0.x, arg_0.x), abs(vec4<u32>(22783u, arg_0.x, global0[_wgslsmith_index_u32(global1.a.x, 25u)], 0u)))), Struct_2(vec3<u32>(u_input.a.x, firstTrailingBit(u_input.a.x) >> (global1.a.x % 32u), ~firstLeadingBit(1u))));
    var_1 = Struct_3(2147483647i, var_1.b, Struct_2(_wgslsmith_sub_vec3_u32(arg_0, select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global1.a.x, 41308u), var_1.c.a), arg_0, all(vec4<bool>(false, false, false, true))))));
    let var_2 = Struct_1(vec4<bool>(true, true, true, true), var_1.b.zzw);
    let var_3 = -u_input.b.x;
    return Struct_2(arg_0 << (select(func_3(vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x), var_1.c, max(vec3<u32>(arg_0.x, 30753u, var_1.c.a.x), vec3<u32>(u_input.c, arg_0.x, 0u))), ~(~arg_0), vec3<bool>(all(vec4<bool>(true, var_2.a.x, true, var_2.a.x)), !var_2.a.x, all(var_2.a))) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = arg_2;
    var var_1 = Struct_3(-47249i, max(select(firstTrailingBit(vec4<u32>(4390u, 5540u, global1.a.x, u_input.a.x)), ~vec4<u32>(56440u, var_0.a.x, global1.a.x, 1u), vec4<bool>(true, true, true, true)), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.x, 1u, global1.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.a.x, 25u)], 25u)]), vec4<u32>(66110u, arg_2.a.x, 1u, 53264u)), ~vec4<u32>(29006u, arg_1.a.x, 2684u, 4294967295u), firstLeadingBit(vec4<u32>(1u, arg_2.a.x, global0[_wgslsmith_index_u32(arg_1.a.x, 25u)], arg_2.a.x))))), arg_2);
    var var_2 = Struct_3(u_input.b.x, ~vec4<u32>(countOneBits(abs(68583u)), 20813u, ~reverseBits(global1.a.x), ~reverseBits(global0[_wgslsmith_index_u32(global1.a.x, 25u)])), Struct_2(var_0.a));
    let var_3 = var_0.a.x;
    let var_4 = vec4<bool>(true, true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(367f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1224f - 414f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(809f + 438f), _wgslsmith_f_op_f32(f32(-1f) * -674f)))));
    return vec3<u32>(_wgslsmith_clamp_u32(arg_1.a.x, firstLeadingBit(abs(~26589u)), abs(~(arg_1.a.x | u_input.c))), ~(~select(_wgslsmith_mod_u32(24859u, 25038u), abs(var_1.b.x), true)), 0u);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = vec4<bool>(arg_1 > arg_1, arg_0.a.x, arg_3, any(!arg_0.a));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.b, u_input.b);
    var_0 = select(select(arg_0.a, !select(vec4<bool>(var_0.x, arg_3, var_0.x, false), arg_0.a, arg_0.a), select(vec4<bool>(var_0.x, true, var_0.x, !arg_0.a.x), vec4<bool>(true, !arg_3, true, var_0.x), var_0.x)), arg_0.a, false);
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = !vec4<bool>(any(var_0.xw), !(!var_0.x), true, false);
    return Struct_2(global1.a);
}

fn func_1() -> Struct_2 {
    global1 = func_5(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), ~func_4(u_input.b.xz, func_2(vec3<u32>(11060u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<f32>(1000f, 1930f, 422f, -828f)), Struct_2(global1.a))), _wgslsmith_f_op_f32(-1142f - 1277f), u_input.b.wyy, !(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a.x), global1.a) == 4294967295u));
    global1 = func_2(func_2(vec3<u32>(0u >> (global1.a.x % 32u), firstLeadingBit(u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 25u)] & 18724u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-401f, -806f, 226f, -499f), vec4<f32>(-1511f, 1000f, 806f, 564f))) - vec4<f32>(-1229f, 1734f, -381f, 1148f))).a & countOneBits(func_5(Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)], 41187u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_f_op_f32(-132f * -198f), _wgslsmith_div_vec3_i32(u_input.b.ywy, u_input.b.yzz), true).a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-813f, -214f))), 1f, -202f));
    var var_0 = Struct_3(0i, _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, ~global0[_wgslsmith_index_u32(42314u, 25u)], ~83191u, 5140u), vec4<u32>(u_input.a.x, ~139160u, _wgslsmith_mod_u32(~1u, 37340u), ~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u))), Struct_2(_wgslsmith_clamp_vec3_u32((vec3<u32>(146331u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 25u)], 25u)], 1u) << (global1.a % vec3<u32>(32u))) << ((vec3<u32>(global1.a.x, 27849u, global0[_wgslsmith_index_u32(global1.a.x, 25u)]) ^ global1.a) % vec3<u32>(32u)), global1.a, vec3<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(42436u, 25u)], 17914u, 47593u), func_2(vec3<u32>(global0[_wgslsmith_index_u32(66162u, 25u)], u_input.a.x, 1u), vec4<f32>(-1620f, 1000f, 463f, 1329f)).a.x, 129392u))));
    var var_1 = _wgslsmith_dot_vec3_u32(var_0.b.xzy, global1.a >> (~vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(global1.a.x, 25u)]), 38654u, ~u_input.c) % vec3<u32>(32u)));
    let var_2 = select(vec3<bool>(select(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), select(false, true, true)), u_input.b.x != 24567i, _wgslsmith_f_op_f32(max(246f, _wgslsmith_f_op_f32(trunc(1000f)))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(446f)), _wgslsmith_f_op_f32(sign(2156f))))), vec3<bool>(false, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1414f - 512f) + _wgslsmith_f_op_f32(sign(1000f))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-497f - -168f), -405f))), !(!(_wgslsmith_div_u32(43515u, 11086u) >= ~global1.a.x)));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(max(~1i, -55158i), max(~(vec4<u32>(u_input.c, 31978u, 50846u, 1u) >> (vec4<u32>(1u, u_input.c, 4294967295u, 3922u) % vec4<u32>(32u))) ^ ~vec4<u32>(35423u, global1.a.x, global1.a.x, 4294967295u), vec4<u32>(1u, 1u, max(_wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(1u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39283u, 25u)], 25u)])), reverseBits(u_input.c)), 14045u)), func_1());
    let var_1 = Struct_2(~_wgslsmith_add_vec3_u32(func_3(vec4<bool>(false, true, false, false), Struct_2(vec3<u32>(var_0.c.a.x, u_input.c, global0[_wgslsmith_index_u32(37496u, 25u)])), global1.a), func_2(var_0.b.yyw, vec4<f32>(-266f, 498f, 311f, 856f)).a) << (~_wgslsmith_sub_vec3_u32(var_0.b.zyy, vec3<u32>(4294967295u, u_input.a.x, var_0.b.x)) % vec3<u32>(32u)));
    let var_2 = -min(vec3<i32>(_wgslsmith_div_i32(abs(-2147483647i), u_input.b.x << (u_input.c % 32u)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.a, 1i), vec3<i32>(u_input.b.x, u_input.b.x, var_0.a)) & 1i), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, abs(0i)), -select(1i, 0i, true), u_input.b.x));
    global1 = Struct_2(_wgslsmith_sub_vec3_u32(~global1.a, vec3<u32>(global0[_wgslsmith_index_u32(abs(1u), 25u)], 1u, max(u_input.c, global1.a.x)) >> (select(vec3<u32>(u_input.a.x, global1.a.x, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global1.a.x, 25u)], var_1.a.x, 26664u), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    global1 = var_0.c;
    global1 = func_1();
    var var_3 = func_2(select(vec3<u32>(abs(func_5(Struct_1(vec4<bool>(false, false, true, false), var_1.a), -386f, vec3<i32>(-50827i, var_0.a, -58801i), true).a.x), _wgslsmith_mult_u32(var_1.a.x, var_1.a.x) << (4294967295u % 32u), _wgslsmith_mod_u32(1u, u_input.a.x)), vec3<u32>(1u, func_1().a.x, var_0.c.a.x), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(262f * -910f), -1298f, _wgslsmith_f_op_f32(-489f * -153f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1078f, 2146f, -1000f, 121f), vec4<f32>(-1112f, 304f, -1135f, -1125f)))))));
    global1 = func_2(vec3<u32>(0u, 80087u, ~87999u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, 3563f, -584f, 1178f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(742f, 955f, -584f, -1539f), vec4<f32>(538f, -1000f, 668f, -1380f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-606f, 622f, -1394f, 709f), vec4<f32>(-1136f, -889f, -1513f, 1000f)))))));
    var var_4 = abs(-(i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1180f, -917f, 2043f, 607f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1827f, 787f, 762f, 1095f)))), true))), _wgslsmith_f_op_f32(min(-378f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1296f - -359f))))), abs(~var_1.a.zz));
}

