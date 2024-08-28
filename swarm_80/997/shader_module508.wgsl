struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = select(vec4<bool>(false, all(vec4<bool>(false, any(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, false)), true)), true, (any(vec4<bool>(true, true, false, true)) || true) | true), !select(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, global0.e > global0.e, any(vec2<bool>(false, true))), vec4<bool>(select(false, true, false), select(true, false, true), true, true), vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true)), !(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true))));
    let var_1 = Struct_4(Struct_3(~_wgslsmith_dot_vec2_u32(~vec2<u32>(68806u, 11987u), reverseBits(vec2<u32>(0u, 0u))), Struct_2(arg_0, -(~vec4<i32>(-47223i, global0.b.b.x, global0.b.b.x, u_input.c)), 4294967295u, global0.b.d), global0.c, global0.d, ~(~(-global0.e))), global0.b.b, Struct_3(arg_0.b, global0.b, global0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * global0.c), global0.d.x, _wgslsmith_f_op_f32(min(global0.b.a.c, -1357f)), _wgslsmith_f_op_f32(-global0.c))), 1i));
    var var_2 = var_1.c.a > arg_0.b;
    var var_3 = var_1;
    var_3 = Struct_4(var_3.a, vec4<i32>(~(-14904i), 1i, _wgslsmith_sub_i32(min(~var_1.c.b.b.x, i32(-1i) * -4723i), u_input.a), 29931i), var_3.c);
    return -global0.b.b.x;
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = (_wgslsmith_mod_i32(1i, func_3(Struct_1(1574f, global0.b.d.b, arg_0))) | u_input.a) >= select(firstLeadingBit(38655i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.b), all(vec3<bool>(false, true, true)));
    let var_1 = max(-_wgslsmith_dot_vec2_i32(select(max(global0.b.b.wy, global0.b.b.yy), global0.b.b.zw, global0.b.a.a >= global0.c), _wgslsmith_div_vec2_i32(firstTrailingBit(global0.b.b.wy), -vec2<i32>(global0.e, -1i))), func_3(global0.b.d));
    let var_2 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0)), 608f)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, global0.a, 15237u, 26482u), vec4<u32>(39726u, global0.a, global0.a, 1u)), vec4<u32>(global0.a, global0.a, global0.b.a.b, 21593u)), global0.d.x), global0.b.b, global0.b.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), global0.b.d.b, -1465f)), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-356f * -424f) + arg_0)), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(sign(arg_0)), true)), 880f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a.a + 1242f), _wgslsmith_f_op_f32(-arg_0)))), u_input.c);
    let var_3 = -(firstTrailingBit(~(-vec3<i32>(-3007i, global0.b.b.x, var_2.e))) >> ((firstLeadingBit(countOneBits(vec3<u32>(4294967295u, 23146u, var_2.a))) & _wgslsmith_div_vec3_u32(~vec3<u32>(var_2.a, global0.b.d.b, 1u), ~vec3<u32>(4294967295u, var_2.b.c, var_2.b.c))) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_div_i32((17260i >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.b.d.b, 1u, global0.b.a.b), _wgslsmith_mult_u32(5826u, 58044u)) % 32u)) & global0.e, countOneBits(-39766i));
    return true | var_0;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = select(vec4<bool>(func_2(-750f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.c * global0.d.x) * -496f) < -1625f, any(vec4<bool>(true, true, any(vec2<bool>(true, true)), false)), false), vec4<bool>(true, false, !all(vec3<bool>(true, false, true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-818f, -298f))))), global0.c != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)));
    var var_1 = select(_wgslsmith_sub_vec2_u32(~vec2<u32>(32852u, arg_2), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, 32479u)), abs(vec2<u32>(1u, arg_2))) & vec2<u32>(87934u, 64725u)), _wgslsmith_add_vec2_u32(vec2<u32>(min(22267u, 34720u), ~arg_2) & ~vec2<u32>(1u, 1u), ~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global0.a, arg_2)), vec2<u32>(152876u, 85425u))), var_0.wz);
    var var_2 = max(4294967295u, arg_0) << (firstLeadingBit(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_2, 0u), vec3<u32>(4294967295u, arg_2, 0u))) % 32u);
    var_0 = !vec4<bool>(!any(!vec4<bool>(false, var_0.x, true, false)), var_0.x, var_0.x, var_0.x);
    global0 = Struct_3(arg_0, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, global0.c)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.d)) + global0.d), firstLeadingBit(-2147483647i));
    return Struct_3(23528u, global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.a.a)) - _wgslsmith_f_op_f32(global0.d.x + global0.d.x))))), vec4<f32>(global0.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(633f + -348f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.b.a.a))))), _wgslsmith_f_op_f32(max(global0.b.a.c, 544f)), -251f), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, global0.a, global0.b.d.b) | abs(vec3<u32>(global0.b.c, 1u, global0.b.c)), reverseBits(~(~vec3<u32>(33097u, global0.b.c, 4525u)))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + -460f), global0.d, i32(-1i) * -16856i);
    let var_0 = all(vec2<bool>(all(vec2<bool>(true, u_input.a != -35312i)), !(!all(vec2<bool>(false, true)))));
    let var_1 = Struct_4(func_1(~(~_wgslsmith_sub_u32(global0.b.d.b, 29576u)), 2637i, abs(_wgslsmith_clamp_u32(global0.a ^ 0u, _wgslsmith_mod_u32(1u, global0.a), 4294967295u)), vec2<i32>(-_wgslsmith_mult_i32(u_input.a, u_input.b), (20944i << (global0.a % 32u)) << (abs(24659u) % 32u))), _wgslsmith_mod_vec4_i32(-global0.b.b, -vec4<i32>(i32(-1i) * -1i, firstLeadingBit(-16333i), 2147483647i | global0.b.b.x, -1i)), Struct_3(global0.b.c, Struct_2(Struct_1(_wgslsmith_f_op_f32(-2144f * 1748f), abs(global0.a), _wgslsmith_f_op_f32(-431f + global0.c)), global0.b.b, global0.a, global0.b.a), global0.c, global0.d, -(~u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(-global0.d.x);
    global0 = var_1.c;
    var var_3 = select(vec3<bool>(false, all(vec3<bool>(!var_0, false, false)), any(!(!vec2<bool>(false, var_0)))), select(select(select(vec3<bool>(var_0, var_0, var_0), !vec3<bool>(true, true, var_0), vec3<bool>(true, var_0, true)), select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, true, true), false), var_0), !vec3<bool>(var_0, false, true)), !select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, false)), !vec3<bool>(false, false, var_0), true), true), !(var_0 || var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.c, 57102u, var_1.a.a), vec3<u32>(37439u, global0.a, var_1.a.a)), global0.b.d.b, min(global0.b.c, 80426u), 88781u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_1.a.a, var_1.a.b.a.b, global0.a, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.a, global0.a, 4294967295u, 19067u), vec4<u32>(global0.a, 31235u, 15129u, 1u)), select(vec4<u32>(var_1.a.b.c, var_1.a.a, 45344u, var_1.a.b.d.b), vec4<u32>(global0.a, 64039u, var_1.c.a, global0.b.d.b), vec4<bool>(true, var_3.x, false, true)))), firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, var_1.a.b.a.b, 4294967295u, 1u), vec4<u32>(global0.a, 4294967295u, global0.b.c, var_1.a.a), vec4<u32>(4294967295u, global0.b.d.b, var_1.c.a, 62341u))))), _wgslsmith_f_op_f32(min(-1284f, -248f)), vec2<i32>(49729i, i32(-1i) * -(global0.e & 0i)), 72282u);
}

