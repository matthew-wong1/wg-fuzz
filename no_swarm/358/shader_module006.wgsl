struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-605f, 802f, -426f, 560f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, global0.x >= global0.x), vec4<bool>(true, u_input.d.x == 1i, true, true), vec4<bool>(-1i >= u_input.d.x, all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, false)))), select(vec4<bool>(true, -22802i == u_input.a, true, -512f == global0.x), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), global0.x == global0.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global0.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1971f, -601f)), _wgslsmith_f_op_f32(f32(-1f) * -596f), false)), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x)))), global0.x);
    let var_1 = -u_input.d ^ -(vec4<i32>(u_input.b.x, 2147483647i, -1i, countOneBits(u_input.b.x)) ^ (vec4<i32>(-2147483647i, u_input.a, u_input.b.x, -13257i) ^ vec4<i32>(u_input.c.x, -29289i, 7005i, u_input.b.x)));
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(26306u, 0u, 44623u), vec3<u32>(4294967295u, 0u, 44884u), false)), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), abs(vec3<u32>(16894u, 0u, 45445u)))), 1u);
    var_2 = abs(~(~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(44806u, var_2.x)), vec2<u32>(1u, 23860u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-877f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) * global0.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> i32 {
    let var_0 = -(~(~(-(~u_input.c.zyw))));
    let var_1 = 4294967295u;
    let var_2 = Struct_3(global0.zwy, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(-106f * global0.x)), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -612f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) + _wgslsmith_f_op_vec3_f32(-global0.yyx)))), Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_f32(-global0.x), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, var_1)), vec3<u32>(4294967295u, firstTrailingBit(4294967295u), var_1), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.x, arg_0.x, 1319f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x), Struct_1(514f, reverseBits(vec2<u32>(var_1, 4294967295u)) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), max(~vec3<u32>(111372u, var_1, var_1), _wgslsmith_div_vec3_u32(vec3<u32>(var_1, var_1, 4294967295u), vec3<u32>(var_1, var_1, var_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1324f, 712f, -415f, -762f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 617f, 538f, -338f), vec4<f32>(global0.x, arg_0.x, global0.x, 2251f), vec4<bool>(arg_1.a.x, false, arg_1.a.x, true))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), false))), _wgslsmith_mod_i32(u_input.c.x, var_0.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(arg_0.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    return _wgslsmith_mod_i32(reverseBits(max(select(~var_0.x, ~var_0.x, var_0.x >= var_2.d.a.x), ~(-var_2.d.a.x))), _wgslsmith_dot_vec4_i32(firstTrailingBit(min(-u_input.d, vec4<i32>(var_0.x, var_0.x, 13788i, var_0.x))), -u_input.c));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(vec4<bool>(true, _wgslsmith_add_i32(~(-35609i), min(1i, u_input.a)) < func_2(_wgslsmith_f_op_vec3_f32(-global0.xxy), Struct_4(vec4<bool>(false, true, false, false))), !any(vec2<bool>(true, true)), true));
    let var_1 = var_0;
    let var_2 = select(vec2<bool>(var_0.a.x, any(var_1.a.yz)), select(!vec2<bool>(true, var_1.a.x), vec2<bool>(!var_0.a.x && true, false), true), any(vec3<bool>(var_0.a.x, var_1.a.x, var_0.a.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1968f, _wgslsmith_f_op_f32(ceil(-147f)), _wgslsmith_f_op_f32(global0.x - global0.x)) * vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 1709f) + _wgslsmith_f_op_f32(abs(-270f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(-1000f))), global0.x));
    let var_4 = 2147483647i;
    return Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_f32(global0.x - global0.x), vec2<u32>(~1u, 1u), vec3<u32>(~(~0u), countOneBits(~61572u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 0u), _wgslsmith_mult_u32(79598u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3 + vec4<f32>(346f, global0.x, -786f, -1447f)) * var_3)), var_3.x, Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_mult_vec2_u32(select(select(vec2<u32>(4294967295u, 22039u), vec2<u32>(0u, 0u), var_2.x), ~vec2<u32>(4294967295u, 50009u), vec2<bool>(false, var_1.a.x)), vec2<u32>(min(1u, 4294967295u), ~4294967295u)), select(vec3<u32>(1u, 1u, 1u), select(~vec3<u32>(1u, 26800u, 1u), vec3<u32>(56830u, 0u, 44152u), true), any(!var_2)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(291f)))), -1044f, _wgslsmith_div_f32(var_3.x, 272f))), _wgslsmith_f_op_f32(step(global0.x, 775f)));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(select(arg_0.b.b, arg_0.d.c.xx, true), select(vec2<u32>(4294967295u, 28360u), arg_0.d.c.zx, vec2<bool>(false, true)) & _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d.b.x, arg_0.b.b.x), vec2<u32>(arg_0.d.c.x, arg_0.d.c.x)));
    var var_1 = -1000f;
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(arg_0.d.a + _wgslsmith_div_f32(global0.x, global0.x)), global0.x, 950f);
    var var_2 = u_input.d;
    var var_3 = vec4<u32>(var_0.x ^ arg_0.b.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~countOneBits(0u), var_0.x | 0u), arg_0.b.c.xz), max(var_0.x >> (var_0.x % 32u), ~(~(~0u))), var_0.x);
    return Struct_4(vec4<bool>(var_3.x >= var_3.x, any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~(~1u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(30186u, 4294967295u, 34482u, 0u), vec4<u32>(1u, 7057u, 4294967295u, 4294967295u)))), ~0u, firstLeadingBit(4294967295u));
    let var_1 = countOneBits(_wgslsmith_mod_i32(-23634i, countOneBits(_wgslsmith_mult_i32(2147483647i, abs(u_input.d.x)))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(799f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1392f, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-310f, 225f)) - global0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1692f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1732f, global0.x, -1407f, global0.x) * vec4<f32>(-1764f, 389f, global0.x, 160f)))))), !(arg_1.a.x || (var_1 == -56472i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -148f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -831f))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(1271f))), global0.x))));
    global0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-453f, 1448f)))) + _wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-1395f + global0.x), global0.x);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), -525f, any(select(arg_1.a, vec4<bool>(true, any(vec2<bool>(arg_1.a.x, false)), false, any(arg_1.a)), !arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(659f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f - 462f))), global0.x, global0.x, _wgslsmith_f_op_f32(trunc(435f)))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(abs(reverseBits(u_input.d.x)), func_4(func_1()))) + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, 2837f))))), vec2<u32>(1u, 4294967295u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_u32(firstLeadingBit(1u), 1u), 4294967295u), _wgslsmith_f_op_vec4_f32(-func_1().d.d));
    let var_1 = var_0.c;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - -1892f), _wgslsmith_f_op_f32(exp2(var_0.d.x))), -644f))), var_0.a);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) * var_0.d)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-561f + _wgslsmith_div_f32(-895f, var_0.d.x)), global0.x, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 1440f)), -694f, global0.x, _wgslsmith_f_op_f32(func_5(_wgslsmith_mod_i32(38124i, max(_wgslsmith_dot_vec2_i32(u_input.d.wx, u_input.d.wy), u_input.d.x)), Struct_4(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-49950i), 138563u, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c), firstLeadingBit(u_input.d));
}

