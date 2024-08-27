struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1 = Struct_1(-1000f, vec3<f32>(-527f, -463f, 144f), i32(-2147483648), -215f, false);

var<private> global2: i32;

var<private> global3: array<Struct_2, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a.zx) - global0.a.yz))), arg_3.a.wx));
    global2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_2, u_input.c.zz));
    let var_1 = min(u_input.e.x, u_input.d);
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(arg_2.x, -21580i)), _wgslsmith_mult_vec2_i32(u_input.c.xy, _wgslsmith_add_vec2_i32(arg_2, vec2<i32>(2147483647i, -2147483647i))) ^ ~vec2<i32>(-1i, -1i)) << (vec2<u32>(27547u, firstLeadingBit(firstTrailingBit(~6868u))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(355f))))) + arg_3.a.xww);
    return ~global1.c;
}

fn func_2() -> vec4<i32> {
    var var_0 = global0.a.x;
    var var_1 = global3[_wgslsmith_index_u32(1u, 25u)];
    let var_2 = Struct_1(401f, vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + -1000f) * _wgslsmith_div_f32(213f, var_1.b)) - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1126f, _wgslsmith_f_op_f32(step(-1018f, -898f)))), 1000f))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(198f)) - _wgslsmith_f_op_f32(sign(854f)))), 0i, vec2<i32>(_wgslsmith_mult_i32(1i, 2147483647i) | _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, u_input.c.x)), i32(-1i) * -15649i), Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.a))))), -411f, true);
    global3 = array<Struct_2, 25>();
    let var_3 = _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_2.c, _wgslsmith_mult_i32(global1.c, u_input.c.x), 2147483647i << (u_input.b.x % 32u), _wgslsmith_add_i32(-1022i, global1.c))), -min(vec4<i32>(-u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), global1.c, max(u_input.c.x, global1.c)), vec4<i32>(~11598i, ~(-1i), ~var_2.c, var_2.c)));
    return select(~_wgslsmith_mod_vec4_i32(~select(vec4<i32>(var_3, -45725i, var_3, var_2.c), vec4<i32>(u_input.c.x, -2147483647i, -1i, var_3), var_2.e), -(vec4<i32>(var_2.c, -2147483647i, global1.c, -7783i) << (u_input.e % vec4<u32>(32u)))), vec4<i32>(u_input.c.x, -_wgslsmith_clamp_i32(global1.c, global1.c, global1.c), -48974i, reverseBits(-2147483647i) ^ u_input.c.x), !var_1.a.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_add_vec2_i32(~(countOneBits(arg_1.xw) ^ ~_wgslsmith_sub_vec2_i32(u_input.c.zz, vec2<i32>(7537i, u_input.c.x))), ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_1.x), vec2<i32>(-2147483647i, 0i) >> (vec2<u32>(u_input.d, 13371u) % vec2<u32>(32u))) ^ u_input.c.yy);
    var var_1 = firstTrailingBit(-abs(vec4<i32>(u_input.c.x, global1.c, global1.c, global1.c)) & ((vec4<i32>(-1i, global1.c, 20472i, u_input.c.x) & vec4<i32>(-2147483647i, u_input.c.x, arg_1.x, var_0.x)) & func_2())) << (u_input.e % vec4<u32>(32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - _wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(floor(798f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(arg_2.x + 1000f), global0.a.xzz, func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-286f, arg_2.x) * 348f), ~select(-15315i >> (u_input.b.x % 32u), abs(-23872i), true), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.yw, vec2<i32>(8531i, arg_1.x)), -var_0)), Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 1547f, 532f, 179f)), _wgslsmith_f_op_vec4_f32(-global0.a)))), _wgslsmith_div_f32(-1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f * var_2.x) - _wgslsmith_f_op_f32(exp2(var_2.x))))), arg_0);
    let var_3 = Struct_1(-275f, _wgslsmith_f_op_vec3_f32(-var_2), -var_1.x, _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(select(-1798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f) + global1.a), !(46575u > u_input.e.x)))), false);
    return ~(~abs(vec4<i32>(-var_0.x, 10099i, _wgslsmith_clamp_i32(-25668i, arg_1.x, var_0.x), 4479i >> (u_input.d % 32u))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    global2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(func_4(global1.e, func_2(), _wgslsmith_div_vec3_f32(global1.b, global0.a.yyw)), vec4<i32>(1i, global1.c, u_input.c.x | 1i, func_2().x)), vec4<i32>(~func_2().x, global1.c, ~(-51882i), 0i));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, 1000f)))));
    var var_1 = vec4<bool>(true, false, !any(select(vec3<bool>(global1.e, global1.e, true), !vec3<bool>(global1.e, false, true), select(vec3<bool>(false, true, global1.e), vec3<bool>(global1.e, false, global1.e), true))), all(select(select(!vec3<bool>(global1.e, false, false), vec3<bool>(true, global1.e, global1.e), vec3<bool>(true, true, global1.e)), vec3<bool>(all(vec2<bool>(global1.e, global1.e)), true, all(vec4<bool>(true, true, global1.e, global1.e))), !(!vec3<bool>(global1.e, false, global1.e)))));
    global3 = array<Struct_2, 25>();
    let var_2 = !select((_wgslsmith_f_op_f32(sign(122f)) != 624f) || select(any(var_1.yzz), global1.e, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -102f))) != -514f, !(true & select(global1.e, true, var_1.x)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, _wgslsmith_div_f32(var_0, -1060f), 1541f, _wgslsmith_f_op_f32(var_0 + -2015f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, global1.a, 442f, 794f)) + vec4<f32>(global0.a.x, var_0, 332f, 2043f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(global1.e, global1.e, global1.e && !global1.e, false), !(!select(select(vec4<bool>(global1.e, false, global1.e, global1.e), vec4<bool>(global1.e, global1.e, global1.e, global1.e), vec4<bool>(global1.e, global1.e, true, global1.e)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, global1.e)))), all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, false, global1.e, global1.e)), global1.e)));
    let var_1 = func_1(u_input.a);
    let var_2 = Struct_4(global0.a);
    var var_3 = Struct_3(var_0, Struct_1(127f, func_1(_wgslsmith_div_u32(u_input.b.x, ~0u)).a.zxx, 1i, _wgslsmith_f_op_f32(sign(var_1.a.x)), !(4294967295u > _wgslsmith_div_u32(u_input.e.x, 4294967295u))));
    var var_4 = Struct_3(var_0, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-591f, var_1.a.x))))), var_3.b.b, ~_wgslsmith_mult_i32(2147483647i, var_3.b.c) << (59076u % 32u), var_1.a.x, !(!select(global1.e, global1.e, global1.e))));
    var var_5 = ~(reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 0u, 1u, 68052u))) ^ u_input.e);
    let var_6 = Struct_3(vec4<bool>(false, true, any(select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_3.a.x, global1.e, global1.e, var_3.b.e), true), !var_3.a, true)), true), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -_wgslsmith_add_i32(17588i, -1i), ~global1.c, _wgslsmith_f_op_f32(round(552f)));
}

