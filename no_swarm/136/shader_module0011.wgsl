struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, false, false), 1000f, Struct_1(vec4<i32>(-487i, 2147483647i, 0i, 66752i)), true);

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = global0.c.a.zww;
    var var_1 = Struct_2(select(vec4<bool>(false, all(vec2<bool>(arg_0, arg_1.d)), true, true & all(global0.a.zzy)), !vec4<bool>(any(vec3<bool>(arg_0, true, true)), all(arg_1.a), !global0.a.x, !arg_0), vec4<bool>(arg_1.d, !(!global0.d), _wgslsmith_mult_i32(u_input.c, u_input.a) > min(arg_1.c.a.x, global1.a.x), true)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-723f * global0.b))) + global0.b)), global0.c, true);
    let var_2 = var_1.b;
    var var_3 = arg_1;
    var var_4 = ~vec2<i32>(var_1.c.a.x | -arg_1.c.a.x, global1.a.x);
    return vec2<bool>(!global0.a.x, !(arg_1.b < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(259f, -2411f))))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = !select(global0.a, !select(!vec4<bool>(global0.a.x, true, true, global0.a.x), global0.a, vec4<bool>(global0.a.x, global0.a.x, true, true)), global0.a);
    global0 = Struct_2(vec4<bool>(global0.a.x && var_0.x, false, true, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(392f, -219f)))))), global0.c, var_0.x);
    var_0 = vec4<bool>(all(var_0.xzw), true, !(!global0.a.x), global0.a.x);
    var var_1 = !global0.d;
    global0 = Struct_2(global0.a, 805f, Struct_1(_wgslsmith_clamp_vec4_i32(-global0.c.a, reverseBits(global1.a), vec4<i32>(-arg_0.a.x, -global1.a.x, _wgslsmith_mult_i32(arg_0.a.x, -2147483647i), u_input.a))), !(!(_wgslsmith_f_op_f32(global0.b + global0.b) > global0.b)));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(~vec4<i32>(19601i, -1i, ~_wgslsmith_mult_i32(u_input.b, arg_1.c.a.x), ~2147483647i));
    let var_1 = select(global0.c.a, select((vec4<i32>(global0.c.a.x, 2147483647i, -23002i, 13013i) >> (vec4<u32>(arg_2, 0u, arg_2, 37937u) % vec4<u32>(32u))) | ~global0.c.a, global1.a, true), arg_3) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, arg_2, 0u, arg_2), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 27935u, 0u, arg_2), vec4<u32>(4294967295u, arg_2, 0u, arg_2)))), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, arg_2, arg_2, arg_2), select(vec4<u32>(arg_2, arg_2, 14343u, 27680u), vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, true, global0.d, false))))) % vec4<u32>(32u));
    global1 = Struct_1(var_0.a);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f * _wgslsmith_f_op_f32(f32(-1f) * -184f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(max(1459f, global0.b))), _wgslsmith_f_op_f32(abs(-985f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 193f), -687f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, arg_1.b, true)) + -353f))), global0.b, arg_1.b);
    let var_3 = var_2.xx;
    return Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.c.a, abs(-vec4<i32>(-2147483647i, arg_0.a.x, 2147483647i, -1i))), select(vec4<i32>(abs(global1.a.x), 58096i, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(arg_1.c.a.x, -1i, 1i, -1i)), _wgslsmith_mult_i32(2147483647i, global0.c.a.x)), arg_0.a, arg_1.d || false), abs(vec4<i32>(_wgslsmith_add_i32(u_input.b, arg_1.c.a.x), -1i << (arg_2 % 32u), -1i, ~global1.a.x))));
}

fn func_1() -> Struct_2 {
    global1 = func_4(Struct_1(-vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(global1.a.xwz, global0.c.a.xyy), _wgslsmith_sub_i32(global1.a.x, 1i), 1i)), Struct_2(vec4<bool>(all(func_2(false, Struct_2(vec4<bool>(global0.a.x, global0.d, global0.d, global0.a.x), global0.b, Struct_1(vec4<i32>(0i, -242i, global1.a.x, 0i)), false))), func_3(global0.c), !global0.d, all(global0.a.xwz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) * _wgslsmith_f_op_f32(f32(-1f) * -549f)), Struct_1(vec4<i32>(-global0.c.a.x, select(u_input.a, 5019i, global0.d), i32(-1i) * -48581i, _wgslsmith_mult_i32(-1i, 43578i))), !all(global0.a.yyw)), reverseBits(4294967295u), global1.a.x <= ~global1.a.x);
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(firstTrailingBit(global1.a & vec4<i32>(u_input.b, 17404i, -2147483647i, 0i)), global1.a)), -global1.a.yx);
    var var_1 = func_4(global0.c, Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) * -1275f), Struct_1(vec4<i32>(func_4(Struct_1(global1.a), Struct_2(vec4<bool>(global0.d, global0.a.x, true, global0.a.x), 973f, Struct_1(global1.a), global0.a.x), 1u, global0.a.x).a.x, global0.c.a.x >> (19263u % 32u), -9397i, 1i)), true), _wgslsmith_sub_u32(max(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(3497u, 0u), vec2<u32>(36194u, 1u))), firstTrailingBit(~4294967295u)), ~(~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-840f)) * -792f) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(global0.b + 1356f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-720f, global0.b) + global0.b))));
    var var_2 = reverseBits(19128i);
    global0 = Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-325f - global0.b))) - _wgslsmith_f_op_f32(round(global0.b))))), Struct_1(-var_1.a), !global0.d);
    return Struct_2(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, global0.b, true)) + _wgslsmith_f_op_f32(min(global0.b, -214f))) < _wgslsmith_f_op_f32(-global0.b), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1726f))) > -706f, _wgslsmith_f_op_f32(exp2(global0.b)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1187f))), func_4(Struct_1(firstLeadingBit(func_4(Struct_1(global0.c.a), Struct_2(global0.a, global0.b, Struct_1(var_1.a), global0.a.x), 82448u, true).a)), Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) * _wgslsmith_f_op_f32(round(global0.b))), func_4(func_4(global0.c, Struct_2(vec4<bool>(global0.a.x, false, false, false), -1026f, global0.c, global0.d), 4294967295u, true), Struct_2(vec4<bool>(false, global0.d, global0.d, true), global0.b, Struct_1(global0.c.a), global0.a.x), ~0u, !global0.d), true), abs(countOneBits(1u)), any(select(!global0.a.zxw, select(global0.a.zyw, global0.a.yzy, false), !global0.d))), func_2(true, Struct_2(!(!global0.a), global0.b, func_4(Struct_1(vec4<i32>(var_1.a.x, global0.c.a.x, -14417i, 0i)), Struct_2(vec4<bool>(false, global0.a.x, true, global0.a.x), -1000f, Struct_1(vec4<i32>(-30257i, global0.c.a.x, 1i, 2147483647i)), global0.d), _wgslsmith_clamp_u32(100782u, 4294967295u, 3551u), global0.d), !global0.d)).x);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 - -1186f))), -727f);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f)))), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))))));
    let var_2 = -2147483647i;
    var var_3 = arg_0;
    var var_4 = select(-global0.c.a.wx, vec2<i32>(-var_2, -18777i), global0.a.zz) >> (~vec2<u32>(countOneBits(_wgslsmith_add_u32(67015u, 27937u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(88494u, 4294967295u, 1u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f * var_1.x)))), var_1, var_3.a.wz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_1(), global1.a.x, global0.c, global0.b)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(-global0.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, 1000f), vec2<f32>(1385f, -955f), false)))) * _wgslsmith_div_vec2_f32(vec2<f32>(-704f, -324f), vec2<f32>(913f, 329f)))));
    global0 = Struct_2(select(select(global0.a, global0.a, !select(global0.a, vec4<bool>(true, global0.d, global0.a.x, false), vec4<bool>(global0.d, global0.a.x, global0.d, true))), !vec4<bool>(any(vec2<bool>(false, false)), true, any(global0.a.yy), true), select(vec4<bool>(true, true, true, global0.a.x || global0.d), global0.a, select(global0.a, !global0.a, true))), var_0.x, func_4(global0.c, Struct_2(vec4<bool>(true, true, global0.d, any(global0.a.zxw)), 581f, Struct_1(global0.c.a ^ global1.a), true), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(14250u, 44064u)), vec2<u32>(54565u, 16548u)), _wgslsmith_add_u32(countOneBits(4294967295u), 0u)), true), global0.a.x);
    let var_1 = !global0.a;
    global0 = func_1();
    var var_2 = global0.b < 775f;
    var_2 = true;
    var var_3 = func_1().c;
    var_2 = func_1().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

