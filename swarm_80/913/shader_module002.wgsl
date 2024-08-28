struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<i32, 29>;

var<private> global2: array<i32, 19>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = -806f;
    let var_1 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(~1u, 19u)], -1i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(global0.c.x, 19u)], global1[_wgslsmith_index_u32(0u, 29u)])), firstTrailingBit(-vec3<i32>(-9720i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 19u)]))), global0.a & global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(4294967295u, u_input.a)), 19u)]);
    var var_2 = u_input.b.x;
    let var_3 = global0.c.x;
    var var_4 = Struct_4(global0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 679f, var_0))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, -277f))), global0.d && true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, -146f, var_0), vec3<f32>(var_0, -158f, -1160f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, -597f, -1504f)))), Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 23423u), global0.c), reverseBits(global0.c)) & ~vec2<u32>(1u, u_input.b.x), global0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0)))), _wgslsmith_add_i32(global0.a, -1i)), Struct_2(select(firstLeadingBit(vec2<u32>(global0.c.x, 23159u) >> (vec2<u32>(global0.c.x, 1u) % vec2<u32>(32u))), select(~vec2<u32>(24289u, global0.c.x), vec2<u32>(4294967295u, global0.c.x), select(vec2<bool>(true, global0.d), vec2<bool>(global0.d, true), vec2<bool>(global0.d, global0.d))), global0.d), Struct_1(18002i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-342f, 1093f), vec2<f32>(978f, -847f))))), firstLeadingBit(1i) << (~(~u_input.a) % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1006f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(379f - var_0) + _wgslsmith_f_op_f32(-703f + var_0)))));
    return _wgslsmith_sub_vec2_u32(u_input.b.xz, ~global0.c);
}

fn func_2() -> Struct_1 {
    global0 = Struct_5(_wgslsmith_clamp_i32(max(reverseBits(i32(-1i) * -68796i), -1i), 58563i, global1[_wgslsmith_index_u32(0u, 29u)]), global0.b, func_3(), all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, global0.d, false), vec3<bool>(global0.d, false, global0.d)), vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(true, global0.d, true)), vec3<bool>(true, true, global0.b.a >= -1i), select(select(vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(true, false, global0.d), vec3<bool>(false, global0.d, global0.d)), vec3<bool>(global0.d, true, global0.d), vec3<bool>(false, true, global0.d)))));
    var var_0 = 13104u;
    global2 = array<i32, 19>();
    global0 = Struct_5(_wgslsmith_add_i32(-global1[_wgslsmith_index_u32(86123u, 29u)], global0.b.a), global0.b, _wgslsmith_mod_vec2_u32(global0.c, func_3()), false);
    var var_1 = global1[_wgslsmith_index_u32(global0.c.x, 29u)];
    return Struct_1(-1i);
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec4<i32> {
    let var_0 = Struct_2(global0.c, func_2(), vec2<f32>(-542f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-438f, 1687f))), max(_wgslsmith_mult_i32(~global0.a, -803i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a, global1[_wgslsmith_index_u32(5023u, 29u)], arg_0.b.a, -1i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 19u)], 42025i, global0.a), vec4<i32>(2147483647i, arg_0.a, 0i, global2[_wgslsmith_index_u32(24393u, 19u)])))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_div_f32(-2538f, _wgslsmith_f_op_f32(trunc(-1000f)))) + var_0.c.x) + var_0.c.x);
    var var_2 = vec3<u32>(~64195u, arg_1, ~u_input.b.x);
    global0 = arg_0;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) + _wgslsmith_f_op_f32(var_1 * var_1)), 127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -491f) + _wgslsmith_f_op_f32(-var_0.c.x)), var_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -542f)), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-2255f, var_1, -1000f, 1079f), vec4<f32>(var_1, var_0.c.x, var_1, var_0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1528f, 1156f, var_0.c.x, var_0.c.x))))), vec4<bool>(arg_0.d | true, true | select(arg_0.d, global0.d, global0.d), !arg_0.d, _wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(var_1 - var_1)))));
    return vec4<i32>(54240i, countOneBits(15376i), -select(_wgslsmith_mod_i32(_wgslsmith_div_i32(20285i, -1i), global1[_wgslsmith_index_u32(arg_1, 29u)]), _wgslsmith_mod_i32(arg_0.b.a, global1[_wgslsmith_index_u32(~4294967295u, 29u)]), true), abs(_wgslsmith_mod_i32(firstTrailingBit(var_0.b.a), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b.a, global2[_wgslsmith_index_u32(7269u, 19u)]), vec2<i32>(var_0.b.a, 0i)), vec2<i32>(var_0.d, global0.b.a)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~(~min(max(1927u, 0u) >> (~arg_0.b % 32u), 27193u)), 19u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_0.e.c.x + arg_0.d.c.x)), arg_0.d.c.x, any(arg_0.a)))));
    let var_2 = firstLeadingBit(~func_4(Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, global1[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<i32>(-1i, arg_0.d.b.a, -2147483647i)), func_2(), global0.c, global0.d), _wgslsmith_mod_u32(select(15586u, arg_2, false), arg_1.x)));
    let var_3 = !arg_0.a;
    let var_4 = Struct_5(~_wgslsmith_mult_i32(24529i, -(i32(-1i) * -22891i)), global0.b, vec2<u32>(~select(arg_0.b, 0u, select(var_3.x, var_3.x, true)), arg_1.x), global0.d || !((24813u >= global0.c.x) & any(arg_0.a.yzw)));
    return true;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> Struct_4 {
    let var_0 = 1i;
    var var_1 = abs(4294967295u);
    global2 = array<i32, 19>();
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(firstTrailingBit(~(~global0.c.x)), 29u)] & min(~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(12136u, 19u)], var_0), -_wgslsmith_mod_i32(-3625i, global0.b.a)), func_2(), arg_0, false);
    global0 = Struct_5(_wgslsmith_sub_i32(select(firstTrailingBit(select(-32972i, var_2.b.a, false)), min(1i, 2147483647i), global0.d), firstLeadingBit(-1i)), func_2(), select(u_input.b.xy, abs(u_input.b.wz), !(true && !global0.d)), global0.d);
    return Struct_4(any(select(vec2<bool>(func_1(Struct_3(vec4<bool>(true, false, true, var_2.d), 14622u, 22381u, Struct_2(var_2.c, global0.b, vec2<f32>(-491f, -1523f), 43186i), Struct_2(arg_0, var_2.b, vec2<f32>(-360f, -1157f), var_2.a)), vec3<u32>(1u, 37815u, 1u), 1u), arg_1 != false), vec2<bool>(any(vec3<bool>(var_2.d, global0.d, var_2.d)), !global0.d), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(global0.d, true)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f * -1183f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(645f, -588f, var_2.d)))), -989f))), Struct_2(global0.c, var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, -2147483647i, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)])), vec4<i32>(-global0.a, 1i, 19251i, 1i))), Struct_2(vec2<u32>(~global0.c.x, global0.c.x), func_2(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, -245f) + vec2<f32>(-1379f, 437f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1305f, -852f), vec2<f32>(1254f, 1596f), vec2<bool>(false, arg_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1516f, 2198f) - vec2<f32>(685f, 1621f))), any(vec4<bool>(var_2.d, arg_1, var_2.d, global0.d)))), global0.b.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(994f, 379f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    var var_1 = Struct_5(8262i, global0.b, ~u_input.b.zw, global0.d);
    let var_2 = func_5(u_input.b.yw, all(select(!(!vec4<bool>(false, true, true, var_1.d)), select(select(vec4<bool>(var_1.d, global0.d, global0.d, true), vec4<bool>(true, global0.d, var_1.d, global0.d), global0.d), vec4<bool>(var_1.d, global0.d, var_1.d, true), func_1(Struct_3(vec4<bool>(false, true, true, var_1.d), var_1.c.x, 1u, Struct_2(u_input.b.zw, var_1.b, vec2<f32>(1890f, -162f), global0.a), Struct_2(var_1.c, var_1.b, vec2<f32>(874f, -201f), global0.a)), u_input.b.wxz, global0.c.x)), false)));
    var var_3 = vec3<bool>(true, all(select(vec4<bool>(true, all(vec4<bool>(global0.d, true, global0.d, var_2.a)), u_input.a <= var_1.c.x, global0.d), vec4<bool>(global2[_wgslsmith_index_u32(91365u, 19u)] > var_1.b.a, !var_2.a, all(vec2<bool>(var_1.d, var_2.a)), true), select(select(vec4<bool>(global0.d, false, false, global0.d), vec4<bool>(true, global0.d, var_2.a, true), false), select(vec4<bool>(true, var_1.d, false, false), vec4<bool>(false, var_2.a, true, var_2.a), vec4<bool>(var_1.d, var_2.a, false, global0.d)), !vec4<bool>(global0.d, global0.d, var_2.a, global0.d)))), var_1.d);
    let var_4 = func_5(~vec2<u32>(max(u_input.b.x, var_2.c.a.x) | 35332u, ~(global0.c.x | u_input.b.x)), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f - var_2.d.c.x) * _wgslsmith_f_op_f32(var_2.c.c.x * var_2.b.x)) >= var_2.c.c.x, false, !var_1.d));
    let var_5 = Struct_5(global2[_wgslsmith_index_u32(u_input.b.x ^ 1u, 19u)], var_1.b, var_2.c.a & ~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, var_4.d.a.x), global0.c)), var_4.a);
    let var_6 = func_2();
    let var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.c.x);
}

