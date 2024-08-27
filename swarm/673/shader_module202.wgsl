struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<i32> = vec2<i32>(1i, -11835i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = arg_1.a.c.c;
    let var_1 = arg_0;
    global0 = vec3<bool>(any(!global0.yy), false, min(-global1.x, _wgslsmith_div_i32(-1i, 75321i)) == reverseBits(arg_1.a.c.d));
    global0 = select(vec3<bool>(!(arg_1.b.c.b.x != -722f), arg_1.a.d, global0.x), select(select(vec3<bool>(true, !global0.x, false), !(!vec3<bool>(false, global0.x, false)), select(arg_1.b.d, all(global0.zz), true)), vec3<bool>(global0.x, any(vec4<bool>(global0.x, arg_1.a.d, true, false)), true), vec3<bool>(global0.x, global0.x, false)), global0.x);
    let var_2 = arg_0.b.x;
    return min(~(-arg_1.a.a | vec4<i32>(-13701i << (1u % 32u), max(-1i, var_1.a.x), _wgslsmith_clamp_i32(0i, 0i, 0i), _wgslsmith_mult_i32(2147483647i, var_1.a.x))), vec4<i32>(0i, -(0i >> (1u % 32u)), _wgslsmith_dot_vec4_i32(~abs(var_1.a), ~reverseBits(var_1.a)), u_input.a.x));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(firstLeadingBit(firstTrailingBit(func_3(Struct_1(vec4<i32>(-7489i, -1i, -1i, 12252i), arg_0.c.b, 4294967295u, arg_0.a.x), Struct_3(Struct_2(vec4<i32>(u_input.a.x, -5787i, global1.x, arg_0.a.x), arg_0.b, Struct_1(vec4<i32>(1i, global1.x, u_input.a.x, u_input.a.x), arg_0.c.b, 74585u, 0i), true), arg_0)))), _wgslsmith_f_op_vec3_f32(trunc(arg_0.c.b)), 34956u, u_input.a.x);
    let var_1 = -(_wgslsmith_div_i32(func_3(Struct_1(var_0.a, var_0.b, 1u, u_input.a.x), Struct_3(arg_0, arg_0)).x, -13310i) | ~1i);
    let var_2 = Struct_1(vec4<i32>(-arg_0.c.d, reverseBits(var_1), 1i, max(-global1.x, ~0i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1457f, var_0.b.x, 864f) * vec3<f32>(746f, arg_0.c.b.x, 631f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.b), _wgslsmith_f_op_vec3_f32(-arg_0.c.b)), _wgslsmith_f_op_vec3_f32(trunc(var_0.b))))), 34628u, -_wgslsmith_add_i32(-(~2147483647i), ~func_3(Struct_1(var_0.a, vec3<f32>(var_0.b.x, arg_0.c.b.x, var_0.b.x), var_0.c, 21615i), Struct_3(Struct_2(var_0.a, vec4<u32>(0u, 0u, arg_0.c.c, var_0.c), arg_0.c, true), Struct_2(vec4<i32>(7965i, 76836i, 0i, var_0.d), vec4<u32>(18011u, var_0.c, var_0.c, arg_0.c.c), var_0, false))).x));
    var var_3 = Struct_1(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1.x, var_2.d, arg_0.c.a.x), u_input.a) | ((u_input.a & var_0.a) >> (_wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, 25254u, arg_0.c.c, 37092u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(arg_0.c.b, vec3<f32>(var_2.b.x, var_2.b.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(3523f, -1000f)))), !select(!vec3<bool>(true, global0.x, true), !vec3<bool>(arg_0.d, true, false), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.d, arg_0.d, global0.x), vec3<bool>(arg_0.d, true, false))))), var_2.c, countOneBits(arg_0.a.x));
    var var_4 = arg_0.b.wy;
    return !(!(!select(!vec4<bool>(false, arg_0.d, arg_0.d, true), vec4<bool>(arg_0.d, true, false, global0.x), global0.x)));
}

fn func_1() -> Struct_3 {
    global0 = vec3<bool>(all(!func_2(Struct_2(u_input.a, vec4<u32>(0u, 0u, 1u, 54557u), Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec3<f32>(-725f, -207f, -2078f), 0u, 0i), global0.x))), true, global0.x);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(512f, 340f, true)), -1308f))), 2142f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(362f, 1000f, true)), _wgslsmith_f_op_f32(sign(-168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1600f)))), 848f);
    var var_1 = Struct_3(Struct_2(vec4<i32>(countOneBits(-9688i), u_input.a.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, abs(0i)), max(global1.x, global1.x & global1.x)), ~countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 37042u)), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.xzz), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1103f, -627f, var_0.x) * var_0.zxy), 1i <= global1.x)), ~1u, u_input.a.x), all(vec4<bool>(global0.x, true, false, !global0.x))), Struct_2(u_input.a, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, 54573u, 71271u, 51349u)), select(vec4<u32>(58472u, 45936u, 1u, 75070u), vec4<u32>(19742u, 34272u, 4294967295u, 63694u), all(vec3<bool>(true, false, false)))), Struct_1(min(u_input.a, u_input.a) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, -1227f, 1060f)), abs(57767u), -41828i & _wgslsmith_div_i32(10701i, u_input.a.x)), all(func_2(Struct_2(vec4<i32>(global1.x, -11701i, -2147483647i, u_input.a.x), vec4<u32>(0u, 1u, 0u, 77388u), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, global1.x, u_input.a.x), vec3<f32>(var_0.x, 1000f, 551f), 7626u, -1i), true))) | !any(vec3<bool>(global0.x, false, true))));
    let var_2 = ~19719i;
    var_1 = Struct_3(var_1.a, var_1.b);
    return Struct_3(var_1.b, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(func_1().a, func_1().a);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.b.x) - -773f))))) < var_1.b.c.b.x;
    global0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a.d, true), vec3<bool>(false, false, var_1.b.d)), var_1.b.c.c < var_1.b.b.x)));
    let var_3 = ~2147483647i;
    var var_4 = Struct_1(~u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.b.x, var_0.a.c.b.x, 1000f) + vec3<f32>(574f, -513f, var_1.b.c.b.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, var_0.a.c.b.x, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.c.b)))))), ~var_1.a.b.x, select(var_1.b.c.d, countOneBits(_wgslsmith_clamp_i32(-var_1.b.c.a.x, var_3 ^ var_3, -var_3)), all(vec3<bool>(true, var_0.b.b.x <= var_1.a.b.x, var_1.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.b.x * _wgslsmith_f_op_f32(1698f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f + var_1.a.c.b.x) + var_4.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, var_0.a.c.b.x, _wgslsmith_f_op_f32(var_1.b.c.b.x * _wgslsmith_f_op_f32(-var_4.b.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_4.b - vec3<f32>(-710f, 1144f, var_0.a.c.b.x))))), 316f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.c.b.x, var_0.b.c.b.x))), 2077f, var_1.a.c.b.x, 1171f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.b.x, var_4.b.x, var_0.b.c.b.x, var_0.b.c.b.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.c.b.x, -434f, var_1.b.c.b.x, var_0.a.c.b.x), vec4<f32>(-211f, -1671f, var_0.b.c.b.x, var_0.b.c.b.x))), true)))), vec4<bool>(true, true, all(vec2<bool>(var_0.a.d, true)), all(func_2(var_1.b))))));
}

