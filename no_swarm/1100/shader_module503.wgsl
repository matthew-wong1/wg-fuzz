struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<f32>;

var<private> global2: vec3<u32> = vec3<u32>(3755u, 1u, 21015u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = global0.x;
    var var_1 = Struct_5(1i, Struct_1(vec3<bool>(true, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false))), global1.x, vec4<i32>(global0.x, 30939i, -1623i, 7671i), vec3<f32>(145f, -797f, arg_0.x), true));
    var var_2 = false;
    return _wgslsmith_sub_i32(41609i, abs(~global0.x));
}

fn func_2() -> i32 {
    global0 = vec2<i32>(-7282i, firstTrailingBit(abs(func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(925f, 881f, global1.x, global1.x), vec4<f32>(global1.x, -923f, global1.x, global1.x)))))));
    let var_0 = vec2<i32>(u_input.d, u_input.d);
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-242f, _wgslsmith_f_op_f32(-972f * _wgslsmith_f_op_f32(ceil(1092f))), 530f, 703f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 585f, global1.x, 397f) + vec4<f32>(1129f, 1291f, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(720f, -887f, global1.x, global1.x) + vec4<f32>(global1.x, 382f, global1.x, -1274f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1279f, global1.x, global1.x, global1.x)))))))));
    let var_1 = _wgslsmith_sub_vec4_i32(max(-vec4<i32>(var_0.x, 1i, 0i, -2147483647i), vec4<i32>(var_0.x, -2147483647i, var_0.x, -2147483647i)) << (abs(~vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 141397u)) % vec4<u32>(32u)), -(~vec4<i32>(var_0.x, u_input.d, var_0.x, u_input.d))) & abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, -10661i), vec4<i32>(2147483647i, global0.x, global0.x, u_input.d)));
    let var_2 = Struct_1(vec3<bool>(any(vec2<bool>(global2.x >= 0u, true)), false, false), global1.x, (max(reverseBits(vec4<i32>(var_0.x, -2147483647i, 2147483647i, 716i)), -vec4<i32>(u_input.d, u_input.d, 51189i, -26787i)) | vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.wy, vec2<i32>(-2147483647i, -23333i)), -2147483647i, i32(-1i) * -48733i, var_1.x)) << (select(vec4<u32>(select(63262u, global2.x, true), 1u, ~u_input.b.x, ~global2.x), max(~u_input.a, u_input.a), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), global1.zyy, (~(-4941i) << (global2.x % 32u)) > var_0.x);
    return -12762i;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = ~vec4<i32>(func_2(), -global0.x, _wgslsmith_div_i32(1i & max(50515i, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -67645i), -vec2<i32>(global0.x, 81823i))), ~reverseBits(i32(-1i) * -14629i));
    global0 = -(abs(~_wgslsmith_mult_vec2_i32(var_0.yz, var_0.zz)) << (~(~(~arg_0.b.e.zx)) % vec2<u32>(32u)));
    return Struct_1(vec3<bool>(((var_0.x >> (global2.x % 32u)) ^ arg_0.a.d) < (_wgslsmith_mod_i32(0i, 2147483647i) & -global0.x), var_0.x == func_2(), arg_2.x), _wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(f32(-1f) * -1308f)), var_0, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-3056f, arg_0.a.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a.c.x, -400f))), arg_0.a.a.x)), 776f, _wgslsmith_div_f32(1102f, _wgslsmith_f_op_f32(-arg_0.b.c.x))), select(true | arg_0.a.a.x, false, all(!(!arg_0.b.a))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = (arg_0.b.a.x != all(arg_0.b.a)) & (select(false, false, false) & true);
    var var_1 = global0.x;
    var var_2 = true;
    global0 = _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(-arg_1, ~reverseBits(vec2<i32>(-1i, u_input.d)))), -(~arg_1 << (vec2<u32>(global2.x, 1u) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(global2.zy), vec2<u32>(1u, u_input.b.x)), ~firstTrailingBit(22388u)) % vec2<u32>(32u)));
    let var_3 = func_1(Struct_4(Struct_3(!select(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, true), arg_0.b.a, arg_0.b.e), vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(24711u, global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(trunc(global1.zy)), max(-u_input.d, _wgslsmith_dot_vec2_i32(arg_1, arg_0.b.c.xx)), vec4<u32>(_wgslsmith_mult_u32(global2.x, global2.x), firstLeadingBit(u_input.a.x), 19764u, ~52998u)), Struct_3(vec3<bool>(arg_0.b.a.x, all(arg_0.b.a.yz), true), ~select(u_input.a.ww, u_input.c.xx, arg_0.b.a.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(986f, 108f) - vec2<f32>(126f, global1.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, 13341i), 102i), vec4<u32>(_wgslsmith_div_u32(33441u, global2.x), ~global2.x, 4294967295u, ~global2.x)), arg_0.b.d.yy), u_input.c, arg_0.b.a);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global2.yy, (vec2<u32>(u_input.a.x, global2.x) >> (vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(u_input.b.zz, vec2<u32>(29297u, global2.x))), ~vec2<u32>(4294967295u ^ global2.x, select(0u, 0u, true)));
    let var_1 = Struct_3(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), func_4(Struct_5(1i, func_1(Struct_4(Struct_3(vec3<bool>(false, true, true), global2.zz, global1.wy, u_input.d, vec4<u32>(6091u, 8444u, global2.x, global2.x)), Struct_3(vec3<bool>(true, true, true), u_input.c.xx, vec2<f32>(global1.x, -487f), global0.x, u_input.a), global1.ww), vec3<u32>(global2.x, global2.x, u_input.a.x), vec3<bool>(false, true, true))), ~vec2<i32>(-1i, global0.x) ^ min(vec2<i32>(-8018i, u_input.d), vec2<i32>(28312i, 2147483647i))), !func_4(Struct_5(global0.x, Struct_1(vec3<bool>(true, true, true), global1.x, vec4<i32>(11199i, global0.x, u_input.d, 57240i), vec3<f32>(-168f, global1.x, global1.x), true)), ~vec2<i32>(global0.x, global0.x))), _wgslsmith_mult_vec2_u32(~u_input.b.zz, firstTrailingBit(~_wgslsmith_sub_vec2_u32(u_input.c.yx, global2.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), _wgslsmith_f_op_f32(floor(1610f))), global1.wy, false))), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i & global0.x, global0.x ^ u_input.d), ~firstTrailingBit(abs(vec2<i32>(u_input.d, 2910i)))), select(vec4<u32>(1u, 1u, _wgslsmith_add_u32(u_input.c.x, global2.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global2.x), u_input.c.yy), 1u), u_input.a, all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_2 = -1i;
    global0 = -reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 63289i), vec2<i32>(global0.x, global0.x)), vec2<i32>(var_1.d, global0.x ^ var_2)));
    var var_3 = firstTrailingBit(countOneBits(~global2.x));
    let var_4 = Struct_4(var_1, var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(-global1.x))));
    var var_5 = func_1(var_4, firstLeadingBit(vec3<u32>(0u, ~1u, abs(~4294967295u))), var_1.a);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~((min(var_6.a.e, u_input.a) | abs(vec4<u32>(1u, var_6.a.e.x, var_1.e.x, 43547u))) ^ u_input.a), func_1(var_6, vec3<u32>(~_wgslsmith_add_u32(34061u, 0u), 0u, ~22592u), select(var_4.b.a, vec3<bool>(true, true, func_4(Struct_5(var_2, Struct_1(vec3<bool>(var_6.b.a.x, var_5.a.x, var_1.a.x), var_6.b.c.x, var_5.c, global1.xww, var_6.a.a.x)), vec2<i32>(global0.x, var_6.b.d)).x), select(var_5.a.x, var_5.e, all(vec3<bool>(true, var_6.a.a.x, var_1.a.x))))).c.wy, var_1.d, -421f, 0u);
}

