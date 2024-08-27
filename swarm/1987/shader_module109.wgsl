struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global0 = Struct_1(false, min(~u_input.c.x, ~1i | _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, global0.b)), u_input.c.zz)), -_wgslsmith_mod_i32(1i, reverseBits(-global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, global0.d.x, 207f)))))), min(u_input.b, u_input.b));
    let var_0 = !vec2<bool>(global0.a, !global0.a);
    var var_1 = -1i;
    let var_2 = u_input.c.wxw;
    var_1 = 2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -404f))), global0.d.x));
}

fn func_2(arg_0: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_5(728f, Struct_2(select(global0.a, 38373i == global0.b, false) || true, _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.e.x, 36220u), vec2<u32>(27001u, u_input.b.x)), vec2<u32>(_wgslsmith_sub_u32(global0.e.x, 9227u), _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.zy))), vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, -836f)), global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.d.x)) - _wgslsmith_f_op_f32(532f + global0.d.x)))), Struct_2(arg_0.x, _wgslsmith_add_vec2_u32(~(~u_input.b.zx), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 1u), global0.e.zy, vec2<u32>(4294967295u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1122f)) * 638f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.d.x, 2462f)), -1382f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(159f - global0.d.x), _wgslsmith_f_op_f32(round(-598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.d.x))))), global0.d.xxx, Struct_1(global0.a, countOneBits(-(u_input.c.x | 1i)), u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), global0.d.x, all(arg_0))), global0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-144f)))), 312f), vec3<u32>(abs(global0.e.x) ^ 6111u, 103377u, _wgslsmith_mult_u32(u_input.d, _wgslsmith_mult_u32(1u, 28987u)))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d.x, var_0.a))))), var_0.b, Struct_2(select(var_0.b.a, true, any(vec4<bool>(arg_0.x, true, global0.a, arg_0.x))) | false, vec2<u32>(4294967295u, var_0.b.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b.c)), global0.d))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.c.x), -834f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -922f), var_0.e);
    let var_1 = !vec4<bool>(!all(arg_0.zy), true, false, var_0.b.a);
    global0 = var_0.e;
    var_0 = Struct_5(_wgslsmith_f_op_f32(func_3()), Struct_2(false || !global0.a, min(vec2<u32>(global0.e.x, 0u), vec2<u32>(~u_input.a, global0.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, 477f, global0.d.x, var_0.e.d.x)))), var_0.b, _wgslsmith_f_op_vec3_f32(round(var_0.d)), Struct_1(true, firstTrailingBit(-1i), 1i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1065f - 1371f), 323f)), global0.d.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c.x, var_0.a) + _wgslsmith_div_f32(var_0.c.c.x, global0.d.x))), u_input.b));
    return Struct_5(_wgslsmith_f_op_f32(exp2(global0.d.x)), var_0.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1446f) - _wgslsmith_f_op_f32(f32(-1f) * -278f)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(392f, global0.d.x) + var_0.a), ~vec2<u32>(global0.e.x | u_input.b.x, u_input.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.c.x, var_0.e.d.x, global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1348f)), var_0.b.c))), vec3<f32>(-715f, -1000f, -208f), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(826f, var_0.b.c.x), -131f)) == var_0.c.c.x, -reverseBits(8621i), -firstTrailingBit(~global0.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, 250f, 516f, global0.d.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-493f, -590f, var_0.b.c.x, var_0.d.x))), all(vec3<bool>(true, var_1.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(min(-225f, global0.d.x)), _wgslsmith_f_op_f32(356f + global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1820f), -1902f)), select(~_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 2984u), 14036u, countOneBits(1u)), select(!arg_0, !var_1.zxy, select(vec3<bool>(true, false, var_0.e.a), arg_0, global0.a)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = select(vec3<bool>(arg_0.c.a, true, any(select(vec2<bool>(arg_0.b.a, global0.a), !vec2<bool>(global0.a, false), !vec2<bool>(arg_0.b.a, arg_0.c.a)))), select(select(select(!vec3<bool>(true, global0.a, true), !vec3<bool>(global0.a, arg_0.c.a, false), !global0.a), select(vec3<bool>(true, false, arg_0.b.a), vec3<bool>(true, global0.a, global0.a), vec3<bool>(arg_0.c.a, false, arg_0.c.a)), select(select(vec3<bool>(global0.a, arg_0.c.a, false), vec3<bool>(false, arg_0.e.a, true), vec3<bool>(true, arg_0.e.a, global0.a)), !vec3<bool>(false, global0.a, false), true)), vec3<bool>(global0.a, !all(vec2<bool>(true, true)), true), global0.a), select(!select(vec3<bool>(false, false, true), select(vec3<bool>(global0.a, arg_0.b.a, arg_0.c.a), vec3<bool>(false, true, false), vec3<bool>(global0.a, global0.a, arg_0.c.a)), !global0.a), !(!vec3<bool>(false, arg_0.c.a, global0.a)), !vec3<bool>(arg_0.e.a, true, global0.a)));
    var var_1 = arg_0.b.b.x;
    let var_2 = max(~(~vec2<i32>(-2147483647i, reverseBits(0i))), u_input.c.wx);
    var var_3 = u_input.c.xz;
    var_0 = !(!select(select(vec3<bool>(arg_0.e.a, false, false), vec3<bool>(false, var_0.x, true), !vec3<bool>(true, var_0.x, arg_0.e.a)), vec3<bool>(true, arg_0.b.a, var_0.x), var_0.x));
    return Struct_2(true, u_input.b.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(479f, global0.d.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -997f), global0.d.x, 1465f)) * arg_0.b.c));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), arg_1, func_2(!vec3<bool>(global0.a, arg_1.a, arg_1.a)).c, _wgslsmith_f_op_vec3_f32(ceil(global0.d.wyz)), func_2(vec3<bool>(arg_1.a, global0.a, true)).e), vec3<u32>(~(11689u | arg_1.b.x), min(u_input.a, 6371u) & arg_1.b.x, arg_1.b.x)).b.x & max(arg_1.b.x, 4294967295u);
    var var_1 = func_2(!vec3<bool>(true, !any(vec3<bool>(false, global0.a, global0.a)), true)).b;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(func_4(Struct_5(var_1.c.x, Struct_2(var_1.a, vec2<u32>(44565u, 4294967295u), var_1.c), Struct_2(true, arg_1.b, global0.d), arg_1.c.zyz, Struct_1(global0.a, 10739i, global0.c, var_1.c, vec3<u32>(77308u, arg_1.b.x, global0.e.x))), ~vec3<u32>(0u, 38506u, arg_1.b.x)).c.zy, vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + -1000f), global0.d.x))) * global0.d.zz), ~(-(~(-25705i | u_input.c.x))), -u_input.c.ywz >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, arg_1.b.x, 21017u), ~vec3<u32>(45449u, 40746u, arg_1.b.x)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 0u, 1u), vec3<u32>(4294967295u, var_1.b.x, 4502u), vec3<u32>(1u, u_input.a, 40334u)) >> (vec3<u32>(global0.e.x, 5144u, 4597u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(true, 24345i << (_wgslsmith_mult_u32(global0.e.x, max(11559u, 73854u)) % 32u), arg_0, vec4<f32>(-1115f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-509f)), _wgslsmith_f_op_f32(f32(-1f) * -1306f), true)), arg_1.c.x, global0.d.x), firstTrailingBit(~vec3<u32>(0u, 4294967295u, 4294967295u))), global0.e.x);
    var var_3 = max(countOneBits(abs(var_2.d.e.x)), _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(u_input.b.x >> (0u % 32u), var_1.b.x)), var_0));
    global0 = Struct_1(global0.a, (i32(-1i) * -min(arg_0, 7978i)) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(countOneBits(global0.e.x), 10979u ^ arg_1.b.x, var_1.b.x), arg_1.b.x) % 32u), -global0.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1909f * var_2.d.d.x)), 338f, -1452f, 776f), var_2.d.e);
    return 14675i;
}

fn func_1() -> Struct_1 {
    return Struct_1(any(vec2<bool>(true, global0.a)), func_5(0i, func_4(func_2(select(vec3<bool>(false, false, false), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, global0.a, global0.a))), ~countOneBits(u_input.b))), 1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 590f, global0.d.x, -391f), vec4<f32>(-232f, 1474f, -1629f, -1708f), vec4<bool>(false, false, false, false))) + vec4<f32>(global0.d.x, global0.d.x, _wgslsmith_f_op_f32(global0.d.x * global0.d.x), -190f)))), vec3<u32>(global0.e.x, global0.e.x, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_2(vec3<bool>(func_1().a & all(vec2<bool>(false, global0.a)), global0.a, global0.a)).e;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.d.xww)));
    var_0 = global0.d.wxw;
    var_0 = global0.d.yyy;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, -1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1466f, var_0.x), _wgslsmith_f_op_vec2_f32(-var_0.xy)), var_0.yz, select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a), global0.a), !vec2<bool>(global0.a, true), !global0.a)))), -6113i, firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(20597i, -10784i, u_input.c.x, global0.b), _wgslsmith_mod_vec4_i32(vec4<i32>(24350i, 2147483647i, global0.c, global0.b), u_input.c))) ^ (u_input.c & u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)));
}

