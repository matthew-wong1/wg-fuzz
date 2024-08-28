struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<u32, 19>;

var<private> global3: u32;

var<private> global4: vec4<i32> = vec4<i32>(37451i, i32(-2147483648), -1i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = !select(!select(select(global0.a.c, vec3<bool>(true, false, global0.a.c.x), vec3<bool>(arg_0.a, arg_1.a.a, true)), select(arg_1.a.c, vec3<bool>(global0.a.c.x, global0.a.a, true), vec3<bool>(false, false, arg_0.c.x)), global1.x), !select(vec3<bool>(false, arg_0.c.x, global0.a.a), !vec3<bool>(false, true, arg_1.a.c.x), arg_0.c), arg_0.c.x);
    var var_1 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec3_f32(-arg_0.b), select(vec3<bool>(var_0.x, !arg_1.a.a, arg_1.a.b.x > 944f), select(arg_1.a.c, select(vec3<bool>(true, global0.a.a, global1.x), vec3<bool>(true, arg_1.a.c.x, false), true), any(arg_1.a.c)), arg_0.c)));
    var var_2 = Struct_4(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c.x, 0u, global2[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], 4294967295u), vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], u_input.c.x))), Struct_1(~(-42950i) >= firstTrailingBit(global4.x & u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.b, vec3<f32>(-785f, -1442f, 226f))) * vec3<f32>(_wgslsmith_div_f32(global0.a.b.x, arg_0.b.x), _wgslsmith_f_op_f32(floor(arg_1.a.b.x)), -588f)), vec3<bool>(any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(global0.a.a, arg_1.a.c.x, true), vec3<bool>(false, false, var_0.x))), 1u < u_input.c.x, ~u_input.b.x < (u_input.e & global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.b.x))));
    var var_3 = -562f;
    var var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~0u, select(112472u, u_input.c.x, false)) ^ ~reverseBits(u_input.c.x), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(37767u, _wgslsmith_sub_u32(4294967295u, u_input.c.x)), vec2<u32>(countOneBits(4294967295u), 26708u)), _wgslsmith_clamp_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)]), 31251u, 6152u)), ~(~(~firstLeadingBit(vec4<u32>(var_2.a.x, 1u, global2[_wgslsmith_index_u32(4294967295u, 19u)], var_2.a.x)))));
    return _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, var_1.a.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1028f)))), global0.a.b.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    global0 = Struct_3(global0.a);
    let var_0 = arg_0;
    var var_1 = Struct_2(_wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(1i, 41606i)), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(261f - global0.a.b.x), arg_0.b.x, -1854f, _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.x, var_0.b.yyw, vec3<bool>(true, true, false)), Struct_3(global0.a)))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b.x, -1180f)), _wgslsmith_f_op_f32(global0.a.b.x - arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1502f * global0.a.b.x)), var_0.b.x)), 2147483647i, -_wgslsmith_add_i32(min(global4.x, -8474i), -23168i) & var_0.c);
    var var_2 = any(select(vec3<bool>(true, true, all(!global1.xx)), select(vec3<bool>(arg_1.x, select(global1.x, global1.x, false), all(arg_1.xxy)), vec3<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global0.a.a, true), any(global1.xx)), !any(!vec2<bool>(false, arg_1.x))));
    var_1 = Struct_2(-(~(~0i >> (reverseBits(global2[_wgslsmith_index_u32(41952u, 19u)]) % 32u))), var_0.b, _wgslsmith_div_i32(~countOneBits(1i), 1206i), -56179i);
    return Struct_1(false, vec3<f32>(-959f, 753f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + _wgslsmith_f_op_f32(var_0.b.x + -2525f))), !select(!select(vec3<bool>(true, false, true), global0.a.c, global0.a.a), global0.a.c, var_0.d > var_1.c));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = func_2(Struct_2(abs(u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b.x, arg_3.a.b.x, -777f, arg_3.a.b.x), vec4<f32>(-899f, arg_3.a.b.x, arg_3.a.b.x, global0.a.b.x)), vec4<f32>(global0.a.b.x, 347f, arg_3.a.b.x, -836f), arg_3.a.c.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2291f, global0.a.b.x, 485f, -609f) * vec4<f32>(-640f, arg_3.a.b.x, -158f, -202f)))), 0i, arg_1.x), select(select(select(!vec4<bool>(global0.a.c.x, global0.a.a, arg_3.a.a, global1.x), vec4<bool>(global0.a.a, global1.x, global1.x, true), vec4<bool>(global1.x, false, global1.x, arg_3.a.c.x)), select(vec4<bool>(global0.a.c.x, false, arg_3.a.a, arg_3.a.a), !vec4<bool>(arg_3.a.c.x, global0.a.a, true, global0.a.c.x), all(vec4<bool>(global0.a.c.x, arg_3.a.c.x, global0.a.c.x, true))), !select(vec4<bool>(false, true, global1.x, global0.a.a), vec4<bool>(global0.a.a, global0.a.a, arg_3.a.a, global1.x), vec4<bool>(false, false, true, true))), vec4<bool>(-arg_1.x <= global4.x, arg_3.a.c.x, true, global1.x), all(vec4<bool>(true, false, true, true)) | (false & global0.a.a)));
    global0 = Struct_3(var_0);
    global4 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(firstTrailingBit(u_input.b.x)), arg_2.x, ~arg_1.x), -vec3<i32>(u_input.e, select(-3541i, arg_2.x, global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -92i), global4.ww))), u_input.e, ~(-(-global4.x & (u_input.e << (558u % 32u)))), u_input.a);
    global0 = arg_3;
    var var_1 = arg_3.a.c;
    return -236f;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_1 {
    global0 = Struct_3(global0.a);
    global3 = ~(~1u);
    var var_0 = _wgslsmith_f_op_f32(func_4(u_input.c, global4.wyx, ~_wgslsmith_mult_vec2_i32(~(-vec2<i32>(-13187i, -1i)), vec2<i32>(firstLeadingBit(-1i), -u_input.b.x)), Struct_3(func_2(Struct_2(u_input.b.x, _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(-374f, global0.a.b.x, -746f, 733f), vec4<bool>(global0.a.c.x, global1.x, false, global0.a.a))), 1i, reverseBits(-12791i)), !vec4<bool>(false, false, true, arg_2.x)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(-307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(-arg_0.x))))), 448f);
    let var_2 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-global4.x, 1i, -20556i), 1i, -(global4.x & global4.x)) >> (global2[_wgslsmith_index_u32(64398u, 19u)] % 32u), _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(var_1.x * arg_0.x), var_1.x, _wgslsmith_f_op_f32(floor(1232f))), _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.x, -563f, -347f, 127f))))), -2147483647i, firstTrailingBit(u_input.e));
    return Struct_1(false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-var_1.x), 332f)))), vec3<bool>(true, global0.a.c.x, all(vec4<bool>(!arg_1.x, func_2(Struct_2(-64971i, arg_0, var_2.c, -30898i), vec4<bool>(arg_2.x, false, arg_3.x, global0.a.a)).a, !global0.a.c.x, false))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global4 = vec4<i32>(abs(1i), global4.x, max(~1i, -17067i), ~firstLeadingBit(~firstTrailingBit(-85430i)));
    var var_0 = select(!(global0.a.a & true), true, !arg_2.a.c.x);
    var var_1 = Struct_3(global0.a);
    let var_2 = true;
    var_0 = var_1.a.a;
    return global0.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.b.x, _wgslsmith_f_op_f32(-global0.a.b.x), global0.a.b.x))), Struct_4(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(0u, 19u)], 45993u)), func_1(vec4<f32>(global0.a.b.x, 267f, -1868f, -595f), select(vec2<bool>(global1.x, global0.a.c.x), global1.yz, true), global0.a.c, select(vec2<bool>(true, global0.a.c.x), vec2<bool>(false, false), true)), global0.a.b.x), Struct_3(func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.b.x, global0.a.b.x, -1136f, global0.a.b.x), vec4<f32>(386f, global0.a.b.x, global0.a.b.x, global0.a.b.x))), vec2<bool>(false, global1.x), global0.a.c, func_1(vec4<f32>(global0.a.b.x, -1571f, global0.a.b.x, -452f), global0.a.c.xx, vec3<bool>(global0.a.a, false, global1.x), vec2<bool>(true, false)).c.zz)), Struct_3(func_2(Struct_2(u_input.b.x, vec4<f32>(393f, global0.a.b.x, global0.a.b.x, global0.a.b.x), global4.x, global4.x), vec4<bool>(true, true, global0.a.c.x, false)))), global0.a.b.x >= global0.a.b.x, global1.x, !global0.a.c.x);
    global4 = ~(~(vec4<i32>(global4.x & -1i, firstTrailingBit(global4.x), 0i, ~u_input.d) & -abs(vec4<i32>(1i, global4.x, global4.x, 1i))));
    let var_1 = min(-max(-vec4<i32>(-2147483647i, 1i, u_input.a, global4.x), firstLeadingBit(vec4<i32>(u_input.d, -1i, -1i, u_input.d))), vec4<i32>(~4009i, -27403i, firstTrailingBit(0i), ~1i) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(33990u, 19u)], u_input.c.x, 13244u, u_input.c.x), vec4<u32>(55591u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], u_input.c.x)) % vec4<u32>(32u))) | vec4<i32>(global4.x & -2147483647i, _wgslsmith_add_i32(global4.x, global4.x), reverseBits(countOneBits(u_input.a) >> (select(global2[_wgslsmith_index_u32(67760u, 19u)], 1u, global1.x) % 32u)), -abs(_wgslsmith_clamp_i32(global4.x, u_input.e, -43370i)));
    global4 = vec4<i32>(var_1.x, 0i, u_input.d ^ (i32(-1i) * -2147483647i), abs(2147483647i ^ global4.x) ^ _wgslsmith_dot_vec3_i32(u_input.b, select(vec3<i32>(0i, 1i, -2147483647i), global4.zzw, global1.x))) >> (select(vec4<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 19u)]), ~58137u, 0u, 1u), (vec4<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 31120u, u_input.c.x, 0u) & _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], 39989u, global2[_wgslsmith_index_u32(u_input.c.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<u32>(0u, 0u, 107101u, 18651u))) & countOneBits(max(vec4<u32>(0u, u_input.c.x, 30621u, 1u), vec4<u32>(4294967295u, u_input.c.x, 110223u, global2[_wgslsmith_index_u32(u_input.c.x, 19u)]))), select(var_0, vec4<bool>(true, false, func_1(vec4<f32>(global0.a.b.x, global0.a.b.x, global0.a.b.x, global0.a.b.x), vec2<bool>(false, global0.a.a), var_0.zxz, var_0.yy).a, any(var_0.zxw)), var_0)) % vec4<u32>(32u));
    let var_2 = vec4<bool>(true, any(func_2(Struct_2(min(global4.x, var_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b.x, 716f, -492f, -244f), vec4<f32>(global0.a.b.x, -1634f, -1674f, global0.a.b.x)), -var_1.x, countOneBits(global4.x)), !vec4<bool>(global0.a.a, global0.a.c.x, global1.x, global1.x)).c.yx), !global0.a.a, any(!vec3<bool>(global0.a.a, false, false)) & global1.x);
    var var_3 = _wgslsmith_f_op_f32(-global0.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.c >> (~(~vec2<u32>(4294967295u, 32367u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.b.x))))), vec2<i32>(-2147483647i, u_input.b.x | max(global4.x, _wgslsmith_div_i32(global4.x, u_input.d))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.c.x, 35513u, global2[_wgslsmith_index_u32(1u, 19u)])), firstTrailingBit(vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(1u, 19u)], 1u) << (vec3<u32>(7750u, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]) % vec3<u32>(32u)))), ~(~(vec3<u32>(1u, 24550u, global2[_wgslsmith_index_u32(113760u, 19u)]) | vec3<u32>(13781u, 23117u, 33395u)))));
}

