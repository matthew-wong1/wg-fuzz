struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec4<f32> = vec4<f32>(-164f, 1690f, -697f, -763f);

var<private> global3: Struct_1 = Struct_1(-798f, vec2<f32>(-1381f, -111f));

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(sign(-399f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-681f + -1000f), _wgslsmith_f_op_f32(trunc(796f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 652f)), 999f), -441f));
    var var_0 = select(!select(!vec4<bool>(global1.x, false, false, global1.x), !vec4<bool>(global4.x, global1.x, global1.x, true), select(vec4<bool>(global1.x, true, global1.x, global1.x), select(vec4<bool>(false, global4.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global4.x), true), false)), vec4<bool>(false, global1.x, any(select(select(vec2<bool>(global1.x, false), vec2<bool>(false, false), vec2<bool>(global4.x, true)), select(vec2<bool>(true, false), vec2<bool>(false, global4.x), vec2<bool>(false, global1.x)), global1.x | global4.x)), false), false);
    let var_1 = vec2<u32>(1u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 1u), ~(~u_input.a.x)));
    var var_2 = vec2<u32>(reverseBits(abs(~u_input.a.x) << (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x) % 32u)), 80295u);
    let var_3 = Struct_3(Struct_2(Struct_1(134f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1559f, -1180f) - vec2<f32>(1000f, global3.a))))), -abs(vec3<i32>(5941i, 15855i, u_input.b.x)), Struct_1(-2082f, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, global3.b.x) * vec2<f32>(global2.x, -172f))), Struct_1(global3.a, vec2<f32>(_wgslsmith_f_op_f32(-global3.a), global3.a)), u_input.a.x), _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 0i), u_input.c.x, reverseBits(28718i)), -vec3<i32>(countOneBits(-9797i), u_input.c.x, min(u_input.b.x, u_input.b.x))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, max(~(-29683i), -2147483647i)), _wgslsmith_add_i32(_wgslsmith_div_i32(6361i, _wgslsmith_clamp_i32(u_input.c.x, -1i, u_input.b.x)), ~firstLeadingBit(63640i))), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(617f, -370f)), _wgslsmith_f_op_f32(trunc(-1110f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a, global2.x), vec2<f32>(global3.a, global2.x)) * _wgslsmith_f_op_vec2_f32(-global3.b))), vec3<i32>(u_input.b.x, abs(countOneBits(36628i)), ~u_input.b.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), vec2<f32>(_wgslsmith_f_op_f32(select(-980f, -130f, true)), -1000f)), Struct_1(_wgslsmith_f_op_f32(min(795f, 371f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.xx * global3.b) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-633f, -678f), vec2<f32>(1556f, global2.x))))), 0u), -220f);
    return -1485f;
}

fn func_2(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.b.x - 1374f), _wgslsmith_f_op_f32(f32(-1f) * -380f), all(vec2<bool>(global1.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zx) + vec2<f32>(1035f, global3.b.x))), ~(u_input.c.zyz & _wgslsmith_mod_vec3_i32(u_input.c.xzw, u_input.c.xyw)), Struct_1(global2.x, vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global3.a * -268f))), Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, global3.b.x)), global3.b), 15488u), vec3<i32>(firstTrailingBit(2147483647i), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9089i, u_input.b.x, u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.c.x)), -u_input.c.x, max(-12866i, -2147483647i), -u_input.b.x), u_input.c)), ~u_input.c.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_0.ww), select(u_input.c.zzy, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), u_input.c.x ^ -1i), select(!vec3<bool>(global1.x, global4.x, global4.x), select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(true, false, global4.x), true), select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, false, false), global1.x))), Struct_1(-190f, global3.b), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_vec2_f32(exp2(global2.yz))), ~1u | _wgslsmith_add_u32(reverseBits(u_input.a.x), u_input.a.x)), arg_0.x);
    var var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_0, arg_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-431f, arg_0.x, 330f, arg_0.x), vec4<f32>(1811f, -1227f, -973f, -149f))), arg_0)), global1.x)) + vec4<f32>(global3.a, global2.x, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + arg_0.x) - _wgslsmith_f_op_f32(ceil(1000f))), global2.x))));
    var var_3 = 6413u;
    let var_4 = var_0.a.d;
    return u_input.c.ywz;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = arg_1;
    return Struct_2(Struct_1(1000f, vec2<f32>(-535f, -286f)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-945f, global2.x, global2.x, arg_1.a.c.b.x), vec4<f32>(650f, var_0.e, 901f, -241f))))), var_0.d.a, arg_1.d.a, firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 35298u, 75556u), vec3<u32>(59315u, u_input.a.x, arg_0.x)))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.e, 0u, _wgslsmith_add_u32(u_input.a.x, 6822u), firstTrailingBit(arg_1.d.e)), abs(vec4<u32>(28568u, u_input.a.x, 0u, var_0.d.e))) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = func_1(~min(vec2<u32>(arg_1.d.e, u_input.a.x), ~(u_input.a << (vec2<u32>(47027u, arg_1.d.e) % vec2<u32>(32u)))), arg_1, global1.x);
    let var_1 = !vec2<bool>(select(global1.x, true | global4.x, !(!global1.x)), true);
    global1 = select(var_1, vec2<bool>(!var_1.x, all(select(vec2<bool>(false, false), var_1, false))), select(select(!vec2<bool>(global1.x, true), var_1, all(vec4<bool>(global1.x, global1.x, true, global4.x))), var_1, any(select(!vec4<bool>(true, true, true, global1.x), !vec4<bool>(false, global1.x, true, true), vec4<bool>(false, false, var_1.x, global1.x)))));
    let var_2 = vec3<bool>((~(-arg_1.a.b.x) & -30119i) >= _wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -47646i, _wgslsmith_div_i32(-1i, 43951i)), var_0.b.x), true, all(var_1));
    global3 = func_1(vec2<u32>(~32394u, _wgslsmith_div_u32(reverseBits(0u) << (var_0.e % 32u), ~arg_1.d.e)), arg_1, var_2.x).d;
    return _wgslsmith_add_vec4_u32(~(~vec4<u32>(~var_0.e, reverseBits(u_input.a.x), arg_0.e, firstTrailingBit(u_input.a.x))), vec4<u32>(1u, ~39369u, ~arg_0.e, _wgslsmith_mult_u32(7892u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.e), ~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, 1u, 4294967295u, u_input.a.x), select(func_4(func_1(vec2<u32>(33739u, u_input.a.x), Struct_3(Struct_2(Struct_1(global2.x, global2.zx), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(global3.a, vec2<f32>(global3.a, -248f)), Struct_1(-1737f, global3.b), u_input.a.x), vec3<i32>(25730i, 2147483647i, u_input.b.x), u_input.c.x, Struct_2(Struct_1(global3.a, global3.b), u_input.c.zwz, Struct_1(global2.x, global3.b), Struct_1(global2.x, global3.b), u_input.a.x), -478f), global1.x), Struct_3(Struct_2(Struct_1(global3.a, vec2<f32>(global2.x, global3.b.x)), vec3<i32>(u_input.b.x, -70063i, -4297i), Struct_1(global2.x, global2.xw), Struct_1(global2.x, global2.zw), u_input.a.x), u_input.c.xyx, u_input.c.x, Struct_2(Struct_1(global2.x, global3.b), vec3<i32>(u_input.c.x, u_input.b.x, 2147483647i), Struct_1(2668f, vec2<f32>(global3.b.x, global2.x)), Struct_1(global3.a, global2.xy), 4294967295u), 2620f)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(512u, u_input.a.x, u_input.a.x, 23018u), vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u))), !global4.x || true), vec4<u32>(reverseBits(46929u), 1u, ~(~u_input.a.x), u_input.a.x)));
    let var_1 = any(vec2<bool>(true | all(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, global4.x)))) || true;
    let var_2 = vec2<bool>(true, (select(global4.x != var_1, false, any(vec2<bool>(true, var_1))) || true) && any(select(vec4<bool>(var_1, global4.x, global1.x, global4.x), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global4.x, false, false, global4.x), vec4<bool>(false, false, false, global1.x)), var_1)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1496f)), global2.x))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), var_1)), var_3, var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * global2.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -654f)))));
    let var_4 = Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global3.b)), vec2<f32>(350f, -424f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xz))), vec2<f32>(_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_div_f32(global3.a, 382f)), _wgslsmith_f_op_f32(step(-1207f, 1000f))))));
    global1 = select(var_2, !var_2, select(vec2<bool>(!any(vec4<bool>(var_2.x, false, true, global4.x)), true), vec2<bool>(false, !global1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(global2.ywy, max(u_input.c.x, _wgslsmith_mod_i32(-reverseBits(u_input.b.x), -1i)), -1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.c.x), -2147483647i), func_1(_wgslsmith_mult_vec2_u32(var_0.zy, ~u_input.a), Struct_3(Struct_2(Struct_1(var_3, vec2<f32>(var_3, -198f)), u_input.c.wyy, var_4, var_4, 17675u), vec3<i32>(u_input.c.x, u_input.c.x, -1i), -u_input.b.x, func_1(u_input.a, Struct_3(Struct_2(var_4, u_input.c.zzx, Struct_1(301f, vec2<f32>(-535f, var_4.b.x)), Struct_1(-579f, var_4.b), var_0.x), u_input.c.xxw, u_input.c.x, Struct_2(var_4, u_input.c.wyx, var_4, Struct_1(var_4.b.x, global3.b), 0u), -782f), true), _wgslsmith_f_op_f32(-global2.x)), !(!global1.x)).b.x));
}

