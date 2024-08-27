struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true && all(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1321f * _wgslsmith_f_op_f32(func_3(true, vec3<bool>(true, true, true), -901f))) + 222f)));
    var var_1 = var_0;
    var var_2 = var_0.b.a;
    var var_3 = Struct_3(var_0, !var_1.a & true, 23053u, var_0, max(~countOneBits(vec3<u32>(0u, 0u, 1u)), vec3<u32>(1u, 144363u, 1u)));
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(select(arg_1.e.x, 4294967295u, false) | 41327u, arg_1.e.x), arg_1.e.x, arg_1.c, arg_1.e.x), vec4<u32>(arg_1.e.x, 56936u, ~(~11968u), 4938u | firstTrailingBit(0u)) << (select(~vec4<u32>(arg_1.e.x, 0u, arg_1.c, arg_1.e.x), abs(vec4<u32>(6750u, arg_1.e.x, 1u, 41388u) | vec4<u32>(arg_1.e.x, 4294967295u, 4294967295u, arg_1.e.x)), arg_1.b) % vec4<u32>(32u)));
    let var_1 = Struct_4(arg_1, select(select(select(!vec4<bool>(false, true, arg_1.b, arg_1.d.a), select(vec4<bool>(false, arg_1.b, false, arg_1.b), vec4<bool>(true, arg_1.b, arg_1.a.a, arg_1.b), arg_1.d.a), vec4<bool>(arg_1.d.a, true, false, true)), select(vec4<bool>(true, false, false, false), !vec4<bool>(arg_1.b, false, arg_1.b, arg_1.a.a), arg_1.b), !vec4<bool>(false, arg_1.d.a, true, true)), select(!(!vec4<bool>(arg_1.b, true, true, true)), vec4<bool>(arg_1.a.a, select(true, arg_1.a.a, arg_1.a.a), arg_1.c <= arg_1.e.x, arg_1.a.a), vec4<bool>(!arg_1.b, false, any(vec2<bool>(false, true)), true)), arg_1.a.a), Struct_2(arg_1.b, func_2()));
    var var_2 = _wgslsmith_f_op_f32(arg_0.a + arg_0.a);
    let var_3 = true;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-602f, -261f) * _wgslsmith_f_op_f32(-arg_2.x)), arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.a + _wgslsmith_f_op_f32(round(-1880f)))));
    return vec3<bool>(all(vec4<bool>(!(!var_1.b.x), any(var_1.b.yw), arg_1.d.a, 16633i != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -33788i), vec3<i32>(1i, u_input.a.x, u_input.a.x)))), !var_3, arg_1.b);
}

fn func_1() -> u32 {
    let var_0 = select(vec3<bool>(true, true, true), select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true))), select(func_4(func_2(), Struct_3(Struct_2(true, Struct_1(1000f)), true, 12007u, Struct_2(true, Struct_1(-1652f)), ~vec3<u32>(4294967295u, 66192u, 38173u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1434f, 250f, -1118f, 142f))))), vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), all(vec4<bool>(true, true, false, false)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), func_4(Struct_1(-131f), Struct_3(Struct_2(false, Struct_1(-504f)), false, 1u, Struct_2(true, Struct_1(-113f)), vec3<u32>(1u, 44702u, 44175u)), vec4<f32>(833f, -102f, -221f, 759f))), (u_input.a.x > -45905i) && true)));
    var var_1 = ~abs(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(15557u, 4294967295u, 0u, 21381u)), countOneBits(vec4<u32>(2852u, 4294967295u, 59272u, 1u))));
    var_1 = ~(_wgslsmith_div_vec4_u32(countOneBits(abs(vec4<u32>(116428u, var_1.x, 6171u, var_1.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), ~vec4<u32>(4294967295u, 4294967295u, var_1.x, 1u))) << (abs(~_wgslsmith_add_vec4_u32(vec4<u32>(92868u, var_1.x, 57298u, 1u), vec4<u32>(0u, 4294967295u, var_1.x, var_1.x))) % vec4<u32>(32u)));
    let var_2 = select(vec3<i32>(u_input.a.x, ~max(-u_input.a.x, 237i), ((u_input.a.x | -19613i) >> (var_1.x % 32u)) << (~4294967295u % 32u)), vec3<i32>(-1i, firstTrailingBit(abs(_wgslsmith_div_i32(0i, 36021i))), firstTrailingBit(-39233i)), !(21454i < _wgslsmith_mod_i32(~u_input.a.x, u_input.a.x)));
    let var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1823f + 376f) - _wgslsmith_f_op_f32(ceil(-1211f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1508f))))));
    return var_1.x;
}

fn func_5(arg_0: u32, arg_1: bool) -> vec3<bool> {
    let var_0 = func_2();
    var var_1 = Struct_4(Struct_3(Struct_2(false | arg_1, Struct_1(1f)), false, _wgslsmith_add_u32(1u, reverseBits(arg_0)), Struct_2(true, func_2()), ~firstTrailingBit(~vec3<u32>(0u, arg_0, 60465u))), vec4<bool>(arg_1, false, all(!(!vec2<bool>(arg_1, arg_1))), true), Struct_2(!func_4(var_0, Struct_3(Struct_2(true, Struct_1(var_0.a)), false, 71092u, Struct_2(true, Struct_1(-284f)), vec3<u32>(78310u, 4294967295u, 59383u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -365f, var_0.a, var_0.a))).x, func_2()));
    var var_2 = var_1.a.a;
    let var_3 = Struct_4(var_1.a, select(!(!(!var_1.b)), var_1.b, var_1.a.a.a && all(select(vec2<bool>(false, true), var_1.b.xx, false))), var_1.c);
    var var_4 = vec3<i32>(abs(_wgslsmith_mod_i32(u_input.a.x, 38174i)), ~0i, u_input.a.x);
    return select(select(func_4(Struct_1(_wgslsmith_f_op_f32(var_3.c.b.a * var_3.a.a.b.a)), var_1.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(948f, 529f, var_1.c.b.a, var_1.c.b.a) - vec4<f32>(662f, 1267f, -639f, var_3.a.d.b.a)), vec4<f32>(var_0.a, var_2.b.a, -1033f, -371f)))), var_3.b.zxz, var_1.b.x), select(!vec3<bool>(var_2.a || var_2.a, true, true & var_1.a.a.a), !var_1.b.zxz, true), vec3<bool>(var_1.a.d.a, var_1.c.a, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~func_1(), 1u >= ~abs(_wgslsmith_clamp_u32(4294967295u, 73322u, 1u)));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(select(1043f, _wgslsmith_f_op_f32(581f - -262f), !func_4(func_2(), Struct_3(Struct_2(var_0.x, Struct_1(1066f)), true, 10463u, Struct_2(var_1, Struct_1(-742f)), vec3<u32>(1u, 4294967295u, 47675u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1638f, 842f, 2435f, 1000f)), vec4<f32>(-801f, 167f, -336f, -2499f))).x));
    var var_3 = var_2;
    var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(1661f * var_2)), 169f, 1504f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 354f) + vec4<f32>(var_2, 164f, var_2, 983f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_2, var_2, var_2)))))))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(min(vec2<u32>(4294967295u, 6454u), vec2<u32>(1u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(67817u, 71760u)))), vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~min(vec2<u32>(24945u, 4294967295u), vec2<u32>(40150u, 1u)))));
}

