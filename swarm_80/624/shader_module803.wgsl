struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(-333f, vec3<i32>(0i, 1i, 1i), true, 2147483647i, vec4<f32>(-810f, -105f, 2209f, -1000f));

var<private> global2: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = arg_3;
    var var_0 = Struct_2(true, ~(~(u_input.b << (u_input.a % 32u))));
    let var_1 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(countOneBits(~firstLeadingBit(vec3<u32>(arg_0, 4294967295u, 1u)))), vec3<u32>(4294967295u, 83937u, 4690u) ^ ((vec3<u32>(arg_0, 1u, arg_0) ^ ~vec3<u32>(arg_0, 87710u, 27926u)) | abs(firstLeadingBit(vec3<u32>(398u, u_input.b, 139861u)))), vec3<u32>(61432u, var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(17029u, arg_0)), min(vec2<u32>(0u, 16433u), vec2<u32>(u_input.b, 24336u))) | 0u));
    global2 = (-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, 2147483647i, -32759i), vec4<i32>(arg_3.b.x, arg_1.a.a.x, 2147483647i, 1i)) << (_wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, var_0.b, var_1.x, 119850u) & vec4<u32>(u_input.a, var_0.b, var_1.x, 1u), vec4<u32>(var_1.x, u_input.b, var_1.x, var_0.b)), vec4<u32>(arg_0, u_input.a, u_input.b, 0u) >> ((vec4<u32>(4294967295u, 7000u, arg_0, u_input.b) ^ vec4<u32>(26655u, var_0.b, u_input.b, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (~(~select(~vec4<u32>(arg_0, u_input.b, u_input.a, 63961u), _wgslsmith_clamp_vec4_u32(vec4<u32>(73417u, 61814u, 4294967295u, 1u), vec4<u32>(14144u, 38994u, 4294967295u, 1u), vec4<u32>(0u, 0u, 16296u, 0u)), arg_3.c)) % vec4<u32>(32u));
    let var_2 = global1.c;
    return 916f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> u32 {
    global2 = reverseBits(~(~(~(~vec4<i32>(global1.d, -31555i, global2.x, arg_1.b.x)))));
    var var_0 = global0.x >= _wgslsmith_f_op_f32(-global1.e.x);
    return 1u;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    global1 = Struct_1(_wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(f32(-1f) * -1214f)), countOneBits(-(min(vec3<i32>(global1.b.x, global1.d, 31256i), vec3<i32>(arg_0, 37760i, 0i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_2.x, -2147483647i), global1.b))), global1.c, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-arg_2, vec2<i32>(global1.d, 0i)), _wgslsmith_clamp_i32(u_input.c.x, i32(-1i) * -2147483647i, global2.x), 8628i), global1.e);
    return global0.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_5(-1i, func_4(-1438f, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(933f - 970f), _wgslsmith_f_op_f32(func_3(46721u, Struct_5(Struct_4(u_input.c.yz, vec2<f32>(global0.x, 989f))), Struct_1(300f, global1.b, global1.c, -1i, vec4<f32>(global1.a, global1.a, global0.x, global0.x)), Struct_1(-282f, vec3<i32>(19539i, global2.x, u_input.c.x), global1.c, 48161i, global1.e))))), global1.b, any(select(arg_0, vec2<bool>(true, false), global1.c)), 0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2016f, global0.x, 629f, global0.x)), _wgslsmith_f_op_vec4_f32(global1.e + global1.e))), _wgslsmith_f_op_f32(select(global0.x, -1000f, !all(vec4<bool>(global1.c, global1.c, global1.c, global1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), global1.a)), global1.b.xz));
    var_0 = global1.e.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-2441f - -168f), _wgslsmith_add_vec3_i32(select(firstLeadingBit(u_input.c), vec3<i32>(global1.b.x, -2147483647i, global2.x), true), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1.d, 41708i), global2.yxz & vec3<i32>(-14610i, global2.x, -16532i))) << (firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 30938u, u_input.a) | vec3<u32>(u_input.b, 51579u, u_input.a), ~vec3<u32>(0u, 0u, u_input.b))) % vec3<u32>(32u)), global1.c, ~_wgslsmith_dot_vec2_i32(global1.b.yz, u_input.c.zx << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(279f)))), _wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, -470f) * 1083f) + global0.x), -218f));
    let var_2 = var_1.e.xw;
    global2 = vec4<i32>(-5072i, -20372i, 1i, global2.x & 1i);
    return Struct_1(946f, u_input.c, any(select(select(vec3<bool>(arg_0.x, global1.c, false), vec3<bool>(var_1.c, true, true), !vec3<bool>(true, arg_0.x, var_1.c)), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.c, true, global1.c), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(global1.c, var_1.c, arg_0.x), true)), arg_0.x && !global1.c)), _wgslsmith_clamp_i32(firstTrailingBit(-var_1.d), i32(-1i) * -21987i, _wgslsmith_add_i32(-2147483647i, global2.x)) >> (8771u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.e))) + _wgslsmith_f_op_vec4_f32(exp2(global1.e))));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, arg_1.c), !vec2<bool>(global1.c, false), global1.c)).a + -976f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(1000f, global0.x, arg_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.x, Struct_5(Struct_4(u_input.c.xx, vec2<f32>(528f, global0.x))), arg_1, arg_1)) + _wgslsmith_f_op_f32(sign(arg_1.a))))))));
    global1 = arg_1;
    return Struct_2(any(!vec2<bool>(arg_1.c, arg_1.c)), arg_0.x);
}

fn func_7(arg_0: Struct_5, arg_1: Struct_2) -> vec2<bool> {
    global2 = -vec4<i32>(-27927i, _wgslsmith_sub_i32(0i, -55740i), global2.x, _wgslsmith_mult_i32(2147483647i, arg_0.a.a.x));
    global0 = global1.e.zy;
    let var_0 = firstTrailingBit(abs(min(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, -10887i, arg_0.a.a.x, -9815i), vec4<i32>(-42195i, -1i, global2.x, 26407i)))) | global1.b.x);
    var var_1 = Struct_5(arg_0.a);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_1.a.b)))), arg_0.a.b));
    return select(!vec2<bool>(any(vec4<bool>(arg_1.a, true, arg_1.a, false)), all(!vec3<bool>(global1.c, global1.c, false))), !select(!vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(var_1.a.b.x <= var_1.a.b.x, true), !global1.c), select(!select(vec2<bool>(arg_1.a, global1.c), select(vec2<bool>(global1.c, false), vec2<bool>(false, arg_1.a), vec2<bool>(false, arg_1.a)), select(vec2<bool>(arg_1.a, global1.c), vec2<bool>(false, global1.c), global1.c)), !vec2<bool>(global1.c, true), select(select(vec2<bool>(arg_1.a, true), vec2<bool>(true, true), !global1.c), select(vec2<bool>(true, true), !vec2<bool>(false, arg_1.a), select(vec2<bool>(true, global1.c), vec2<bool>(false, arg_1.a), vec2<bool>(false, global1.c))), !select(vec2<bool>(global1.c, global1.c), vec2<bool>(global1.c, arg_1.a), vec2<bool>(arg_1.a, true)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = select(vec2<bool>(-arg_0.x != u_input.c.x, global1.c), select(!(!(!vec2<bool>(arg_1, arg_1))), func_7(Struct_5(Struct_4(u_input.c.xz, vec2<f32>(global1.a, global0.x))), func_6(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, 70488u), vec3<u32>(arg_2, 65046u, 33310u)), func_2(vec2<bool>(arg_1, arg_1)))), global1.c), true);
    let var_1 = _wgslsmith_clamp_vec2_u32(abs(~(~vec2<u32>(u_input.b, 1u))) >> (~vec2<u32>(4294967295u, 0u >> (arg_2 % 32u)) % vec2<u32>(32u)), reverseBits(~vec2<u32>(39474u, 0u)), _wgslsmith_sub_vec2_u32(select(~(~vec2<u32>(13989u, 4294967295u)), ~firstLeadingBit(vec2<u32>(1u, 15654u)), var_0), _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 4294967295u)), firstLeadingBit(vec2<u32>(717u, 4294967295u) ^ vec2<u32>(u_input.b, 4294967295u)))));
    let var_2 = u_input.a;
    let var_3 = Struct_4(global1.b.xy, global1.e.xz);
    return global2.x ^ (i32(-1i) * -40519i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(min(vec3<i32>(firstTrailingBit(10582i >> (u_input.b % 32u)), 0i, func_1(reverseBits(global2.yx), global1.c, _wgslsmith_mod_u32(0u, u_input.b))), -vec3<i32>(abs(5800i), 1i, ~(-10617i))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(reverseBits(global1.b), vec3<i32>(u_input.c.x, -5207i, -45808i)));
    let var_1 = _wgslsmith_f_op_f32(-1086f - global0.x);
    global2 = vec4<i32>(global1.b.x << (select(~u_input.b, u_input.b, global1.c) % 32u), ~((global1.d << (u_input.b % 32u)) | (u_input.c.x >> (76919u % 32u))), u_input.c.x, -53230i) << (firstTrailingBit(~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 31719u)))) % vec4<u32>(32u));
    var var_2 = !(!select(select(!vec2<bool>(global1.c, true), select(vec2<bool>(global1.c, global1.c), vec2<bool>(false, global1.c), vec2<bool>(true, false)), func_7(Struct_5(Struct_4(vec2<i32>(global2.x, global2.x), vec2<f32>(global0.x, global1.e.x))), Struct_2(global1.c, u_input.b)).x), func_7(Struct_5(Struct_4(global1.b.zy, global1.e.zz)), func_6(vec3<u32>(u_input.b, u_input.b, 17497u), Struct_1(global0.x, vec3<i32>(-2147483647i, -17680i, -4726i), global1.c, 0i, global1.e))), global1.c));
    let var_3 = Struct_5(Struct_4(-(~select(vec2<i32>(-41189i, global1.d), vec2<i32>(-2147483647i, -1i), false)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, global0.x, countOneBits(vec4<i32>(-1i) * -(~vec4<i32>(var_3.a.a.x, 1i, -32653i, 37213i))));
}

