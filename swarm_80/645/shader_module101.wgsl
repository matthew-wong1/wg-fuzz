struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(38422u, vec2<f32>(-792f, -144f), false);

var<private> global2: Struct_3 = Struct_3(i32(-2147483648), Struct_2(vec3<bool>(true, true, false), true), vec2<bool>(false, false), vec2<i32>(-18377i, 1i));

var<private> global3: i32 = 39012i;

var<private> global4: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<f32> {
    global1 = arg_0;
    global3 = ~_wgslsmith_mult_i32(firstLeadingBit(global2.d.x), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.d.x, -50895i)), ~(~global2.d)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)));
    var var_1 = vec3<i32>(-1i) * -(~countOneBits(vec3<i32>(global2.a, 35157i, u_input.d.x)) << (_wgslsmith_clamp_vec3_u32(~u_input.c.yxz, vec3<u32>(global1.a, global0.a, 0u) | vec3<u32>(1u, global1.a, global0.a), vec3<u32>(1u, 1u, u_input.a)) % vec3<u32>(32u)));
    let var_2 = -abs(vec3<i32>(u_input.d.x, _wgslsmith_div_i32(~(-20093i), ~(-34823i)), global2.d.x));
    return _wgslsmith_f_op_vec2_f32(-arg_0.b);
}

fn func_2() -> Struct_2 {
    global1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(global1.a), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a & 4294967295u, _wgslsmith_mod_u32(25059u, 47430u), u_input.b.x | global1.a, 1u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(122400u, u_input.b.x, 47218u, global0.a), u_input.c, vec4<u32>(global1.a, 17027u, u_input.c.x, global0.a)), vec4<u32>(global0.a, 1u, 41507u, global0.a)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(34336u, global1.b, global2.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global1.b.x, 1000f), vec3<f32>(-884f, 1000f, 1000f))))))), false);
    var var_0 = 21378i < (_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, global2.d.x, 0i, 20276i) | vec4<i32>(global2.a, global2.d.x, 53070i, 21566i), -vec4<i32>(u_input.d.x, global2.d.x, -2147483647i, -39632i)), ~vec4<i32>(global2.a, -61387i, -39694i, -79944i) & min(vec4<i32>(-31283i, u_input.d.x, -1625i, 1i), vec4<i32>(1i, 1i, u_input.d.x, global2.d.x))) & 1i);
    var_0 = select(global0.a << (u_input.c.x % 32u), ~(~countOneBits(global0.a)), true) >= _wgslsmith_clamp_u32(~(~(1u >> (global0.a % 32u))), ~_wgslsmith_div_u32(~global1.a, select(4294967295u, u_input.c.x, true)), 0u);
    global3 = -29439i;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-586f, global0.b.x, global1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-687f, global1.b.x, 913f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, global0.b.x)), global1.c || true)))));
    return Struct_2(vec3<bool>(select(all(select(global2.b.a, global2.b.a, global0.c)), global0.c, true), global1.c, false), all(vec2<bool>(true, !global0.c)));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = vec2<i32>((u_input.d.x ^ ~(-1i)) >> (~0u % 32u), select(u_input.d.x, global2.d.x, !global2.c.x));
    var var_2 = global2.c.x;
    global2 = Struct_3(_wgslsmith_clamp_i32(-var_1.x, countOneBits(-32578i), -25822i), func_2(), global2.b.a.xx, select(abs(abs(u_input.d)) << (u_input.b.wy % vec2<u32>(32u)), max(abs(u_input.d), ~abs(global2.d)), var_0.a.xx));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - -1125f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, 1713f)) * _wgslsmith_f_op_f32(-405f * -1566f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x), -991f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f + global0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, -1265f, global0.b.x, -435f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.x, global0.b.x, 1925f, -1000f))))))), vec4<bool>(false, _wgslsmith_f_op_f32(round(1019f)) >= _wgslsmith_f_op_f32(-1010f * -356f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x)) <= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(305f, global0.b.x), -1389f, false & global2.c.x)), var_0.a.x)));
    return -7566i;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = true;
    global1 = Struct_1(~32247u, global0.b, any(!func_2().a.zz));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f), -1690f))), vec2<i32>(1i, _wgslsmith_add_i32(7406i, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x))), _wgslsmith_mult_i32(func_1(), 14950i), select(vec4<i32>(-1i, -global2.d.x, ~2147483647i, ~2147483647i), select(-vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x), ~vec4<i32>(2147483647i, global2.a, 1i, -1i), !vec4<bool>(false, global0.c, global2.b.b, true)), select(select(vec4<bool>(false, true, global2.c.x, global1.c), vec4<bool>(global2.b.a.x, global1.c, global1.c, true), vec4<bool>(true, false, global0.c, false)), vec4<bool>(true, global1.c, false, global0.c), select(vec4<bool>(global2.c.x, true, false, global2.b.b), vec4<bool>(global0.c, false, true, global2.c.x), global2.c.x))))), all(global2.b.a));
    let var_0 = Struct_3(~global2.d.x, global2.b, global2.c, ~vec2<i32>(reverseBits(_wgslsmith_div_i32(-20705i, global2.d.x)), ~global2.d.x));
    var var_1 = Struct_1(min(~countOneBits(25966u), 38126u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(min(-1346f, _wgslsmith_f_op_f32(1063f - global1.b.x))), (u_input.d << (vec2<u32>(6489u, 1u) % vec2<u32>(32u))) & abs(u_input.d), global2.d.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.d.x, global2.d.x, 1i), abs(vec4<i32>(global2.a, u_input.d.x, 7298i, 1i)), select(vec4<i32>(-2147483647i, global2.a, global2.a, var_0.d.x), vec4<i32>(30701i, var_0.d.x, u_input.d.x, -14009i), vec4<bool>(true, true, true, false))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, 664f) * vec2<f32>(-366f, -1555f))))), true);
    let var_2 = 919f;
    var var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, -267f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 643f) - global0.b))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)))))));
    let var_5 = false;
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, -800f, global1.b.x)), vec3<f32>(_wgslsmith_f_op_f32(min(global0.b.x, global0.b.x)), _wgslsmith_f_op_f32(max(-969f, -1106f)), var_4.x))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -457f, 1594f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 1504f, global1.b.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -302f, -614f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, -692f, var_4.x))))))));
    var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f - 612f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(522f, 2314f, var_4.x, 195f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_4.x, var_2, global1.b.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1000f, 1448f, 849f)), vec4<f32>(global0.b.x, 725f, var_6.x, var_2), vec4<bool>(var_3.a.x, false, var_3.a.x, true)))), vec4<f32>(-725f, global0.b.x, _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(select(855f, -953f, false)))), any(select(vec4<bool>(true, var_0.b.b, global0.c, var_0.b.a.x), vec4<bool>(false, global1.c, false, false), var_1.c)))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, ~u_input.d.x, -6986i), vec4<i32>(-3444i, global2.a, global2.a, 17064i) >> (~vec4<u32>(var_1.a, 52791u, 33889u, 34264u) % vec4<u32>(32u)))), ~_wgslsmith_dot_vec3_u32(u_input.c.xwz, u_input.b.zzz));
}

