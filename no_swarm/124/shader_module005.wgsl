struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(false, true, vec3<i32>(i32(-2147483648), -1i, 1i)), vec4<u32>(0u, 3486u, 4294967295u, 27551u), vec2<u32>(1u, 28132u), vec4<f32>(-714f, -491f, -1000f, 619f), Struct_1(false, true, vec3<i32>(0i, -34334i, 0i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = Struct_3(global0.e, global0.b, ~(~global0.b.zx), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(525f, global0.d.x, global0.e.b)) - global0.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.d.x, 1411f, global0.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), 2879f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.d, _wgslsmith_div_vec4_f32(global0.d, vec4<f32>(global0.d.x, -1311f, 514f, -2159f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, -678f, global0.d.x, global0.d.x)))), Struct_1(!all(vec2<bool>(true, true)), true, u_input.c.wxy));
    let var_0 = Struct_1(global0.a.b, any(select(!(!vec4<bool>(false, global0.a.b, false, global0.a.b)), vec4<bool>(all(vec3<bool>(global0.a.a, global0.e.b, global0.a.b)), true, global0.a.b, true), false)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~global0.a.c.x, 0i, -1i), global0.e.c), vec3<i32>(global0.a.c.x, _wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(global0.a.c.x, -2147483647i)), (u_input.a ^ global0.a.c.x) & 25836i)));
    return _wgslsmith_div_f32(-2007f, 1869f);
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    global0 = Struct_3(global0.e, ~vec4<u32>(0u, ~select(global0.c.x, u_input.b, global0.a.a), global0.b.x, _wgslsmith_mod_u32(u_input.b, global0.c.x)), global0.c, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()))), arg_0.x, -1181f, global0.d.x), global0.e);
    let var_0 = u_input.d;
    let var_1 = Struct_5(Struct_3(Struct_1(200f >= _wgslsmith_f_op_f32(-arg_0.x), true, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -32731i, 0i, 875i), u_input.c), -1i | u_input.a, select(9522i, 1i, true))), vec4<u32>(global0.c.x, ~(~u_input.b), _wgslsmith_dot_vec2_u32(global0.c >> (vec2<u32>(u_input.d, var_0) % vec2<u32>(32u)), ~vec2<u32>(u_input.d, 77742u)), u_input.d), ~firstLeadingBit(global0.b.xx), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(global0.d, global0.d)), _wgslsmith_f_op_vec4_f32(round(global0.d)))), vec4<f32>(-1128f, global0.d.x, global0.d.x, _wgslsmith_f_op_f32(-arg_0.x)))), global0.e));
    global0 = var_1.a;
    var var_2 = Struct_2(Struct_1(!any(!vec4<bool>(global0.a.b, var_1.a.a.b, global0.e.a, false)), select(global0.a.b & true, var_1.a.d.x > var_1.a.d.x, var_1.a.a.b) & all(!vec4<bool>(false, var_1.a.e.a, false, false)), vec3<i32>(~abs(20957i), (-1i << (0u % 32u)) & ~u_input.c.x, -var_1.a.a.c.x)));
    return !(!select(select(vec4<bool>(true, var_1.a.a.a, var_1.a.e.a, true), vec4<bool>(true, var_1.a.e.a, true, var_2.a.a), var_2.a.b), !(!vec4<bool>(false, global0.e.a, global0.a.b, var_2.a.a)), !vec4<bool>(false, false, false, var_1.a.a.b)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_5(Struct_3(global0.a, vec4<u32>(~(~4294967295u), 35923u, arg_3, ~(~5274u)), reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(global0.b, global0.b), 0u)), global0.d, Struct_1(arg_2.x, true, -(~u_input.c.xzx))));
    global0 = var_0.a;
    var var_1 = var_0.a.a.c.x;
    var_1 = _wgslsmith_dot_vec3_i32(~countOneBits(var_0.a.e.c), -(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.c.x, global0.a.c.x))));
    let var_2 = Struct_4(vec3<f32>(arg_1.x, -376f, arg_1.x), var_0.a.e.b, false);
    return global0.a;
}

fn func_1() -> Struct_2 {
    global0 = Struct_3(func_4(!(!(!vec2<bool>(false, global0.a.b))), global0.d, func_2(global0.d.xxw), firstTrailingBit(select(_wgslsmith_div_u32(0u, 29815u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 56573u), global0.c), any(vec2<bool>(false, global0.e.a))))), ~(countOneBits(vec4<u32>(u_input.b, global0.c.x, 4294967295u, 4294967295u)) ^ vec4<u32>(~4294967295u, max(37716u, 24439u), _wgslsmith_div_u32(0u, 4294967295u), ~517u)), global0.b.xw << (vec2<u32>(_wgslsmith_mod_u32(~1u, global0.c.x), ~u_input.b) % vec2<u32>(32u)), vec4<f32>(-826f, _wgslsmith_f_op_f32(func_3()), 524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1701f) * _wgslsmith_f_op_f32(-895f + 167f)) + global0.d.x)), Struct_1(global0.a.a, false, -(vec3<i32>(-1i) * -vec3<i32>(0i, -1i, 0i))));
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.b, global0.b.x >> (u_input.b % 32u), firstLeadingBit(u_input.d), 1u), global0.b), 4294967295u, ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, u_input.d), global0.c), abs(u_input.b))), global0.b.x);
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(23994u, 1u), _wgslsmith_add_u32(var_0.x, abs(var_0.x)), 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(1527u, 4294967295u), global0.c), vec2<u32>(_wgslsmith_mult_u32(19038u, var_0.x), _wgslsmith_sub_u32(13107u, u_input.d))), ~11740u, 0u));
    let var_2 = global0.d;
    var var_3 = Struct_3(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1450f, -1818f, var_2.x, global0.d.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -725f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1001f + 2562f)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.a.b, global0.a.a, global0.a.b, global0.e.b), vec4<bool>(global0.a.b, false, false, global0.e.b), vec4<bool>(global0.e.b, global0.a.b, global0.e.a, true)), global0.e.b), func_2(vec3<f32>(-436f, global0.d.x, -370f)), any(func_2(global0.d.wxy))), _wgslsmith_sub_u32(4294967295u, 1447u)), ~(~countOneBits(vec4<u32>(var_0.x, u_input.b, 4294967295u, var_0.x))), (~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 1u), global0.c) >> (_wgslsmith_sub_vec2_u32(~var_0.zy, vec2<u32>(1u, 0u) ^ global0.c) % vec2<u32>(32u))) & (global0.c ^ ~(~var_0.xx)), global0.d, global0.e);
    return Struct_2(func_4(select(!select(vec2<bool>(global0.e.b, true), vec2<bool>(global0.a.b, true), vec2<bool>(false, true)), vec2<bool>(var_3.e.b | false, all(vec3<bool>(true, false, var_3.a.b))), false), _wgslsmith_f_op_vec4_f32(var_3.d * var_3.d), select(select(func_2(global0.d.xwz), func_2(vec3<f32>(-121f, global0.d.x, -924f)), select(vec4<bool>(false, true, var_3.a.b, false), vec4<bool>(true, false, false, var_3.e.a), global0.a.a)), select(func_2(vec3<f32>(var_3.d.x, var_2.x, 638f)), func_2(global0.d.yzw), true), !vec4<bool>(false, var_3.e.a, var_3.a.a, var_3.e.a)), u_input.b));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    global0 = Struct_3(global0.a, global0.b | (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 12739u, 13960u, global0.b.x), global0.b) & global0.b), vec2<u32>(u_input.d, u_input.b), global0.d, func_1().a);
    let var_0 = global0.c.x > u_input.d;
    global0 = Struct_3(Struct_1(true, true, -u_input.c.wxx), vec4<u32>(~(~(~u_input.d)), u_input.b, _wgslsmith_div_u32(109389u, _wgslsmith_add_u32(35168u, u_input.d)) << (1u % 32u), _wgslsmith_add_u32(reverseBits(min(4294967295u, u_input.b)), 4294967295u)), global0.b.wy, global0.d, global0.e);
    var var_1 = Struct_4(_wgslsmith_div_vec3_f32(global0.d.xyy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-2100f, arg_1.x, 1000f), arg_1.yyy)))), ~arg_0.a.c.x < 17579i, arg_0.a.a && (_wgslsmith_f_op_f32(sign(arg_1.x)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3())))));
    var var_2 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_5(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, -1000f, global0.d.x, global0.d.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.d, global0.d) * _wgslsmith_div_vec4_f32(global0.d, vec4<f32>(-807f, 501f, 518f, -647f))))), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.c.x, 0u, global0.c.x), vec4<u32>(26506u, 42718u, 8756u, 16786u)), max(vec4<u32>(u_input.d, 4294967295u, u_input.b, u_input.b), global0.b), global0.a.a) & _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(u_input.b, global0.b.x, 0u, 17242u)), ~(vec4<u32>(global0.b.x, 37876u, global0.c.x, u_input.b) ^ global0.b)), global0.b.zy, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.d, vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(false, global0.a.b, global0.e.a, true))))))), func_4(!func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-315f, global0.d.x, global0.d.x) - vec3<f32>(-1718f, global0.d.x, 131f))).wy, _wgslsmith_f_op_vec4_f32(max(global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(1000f, 329f, global0.d.x, -272f)) * global0.d))), !select(vec4<bool>(true, true, global0.a.a, global0.e.a), !vec4<bool>(global0.a.b, true, global0.e.a, global0.a.a), u_input.d < u_input.d), _wgslsmith_div_u32(~u_input.d ^ global0.c.x, ~4294967295u << (_wgslsmith_add_u32(20412u, u_input.d) % 32u))));
    global0 = Struct_3(Struct_1(global0.e.a, true, _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -1i, 2147483647i) << (global0.b.wzz % vec3<u32>(32u)), -vec3<i32>(u_input.c.x, global0.e.c.x, -20398i))), vec4<u32>(global0.b.x, u_input.b, 828u, (9255u << (_wgslsmith_div_u32(10695u, global0.c.x) % 32u)) >> (~_wgslsmith_mult_u32(u_input.b, 0u) % 32u)), ~(~(global0.c ^ vec2<u32>(1u, global0.c.x)) | _wgslsmith_sub_vec2_u32(global0.c, firstTrailingBit(vec2<u32>(global0.b.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-429f, 761f), global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d.x, 1000f, true)) * -658f), _wgslsmith_f_op_f32(func_3()), global0.d.x)), Struct_1(~(-2147483647i) > func_4(!vec2<bool>(global0.e.b, global0.a.b), global0.d, !vec4<bool>(false, global0.a.a, false, true), ~global0.b.x).c.x, global0.a.b, vec3<i32>(_wgslsmith_add_i32(16162i, u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-17968i, 37762i, 2147483647i, 1i)), i32(-1i) * -2147483647i)));
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-global0.d.yzy), !global0.a.b && true, false);
    global0 = Struct_3(global0.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 137698u), global0.b.zw), ~u_input.d, global0.b.x, u_input.d), reverseBits(_wgslsmith_mult_vec4_u32(global0.b, global0.b))), ~vec2<u32>(u_input.d >> (u_input.b % 32u), ~(global0.b.x << (55138u % 32u))), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1365f)))), func_1().a);
    let var_1 = 0i;
    var var_2 = vec3<i32>(-5524i, var_1, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(func_4(vec2<bool>(false, var_0.c), vec4<f32>(global0.d.x, global0.d.x, var_0.a.x, var_0.a.x), vec4<bool>(true, true, true, true), 4294967295u).c.x, 41451i), _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.xz & u_input.c.wz))));
    var var_3 = func_1();
    global0 = Struct_3(func_5(func_1(), _wgslsmith_f_op_vec4_f32(global0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1972f, 1298f, -287f, 1407f))))), vec4<u32>(17256u, global0.c.x, abs(1u), global0.b.x | 0u), reverseBits(abs(global0.b.yy)), _wgslsmith_f_op_vec4_f32(-global0.d), Struct_1(var_0.c, !global0.e.a, vec3<i32>(-global0.a.c.x, 0i & var_3.a.c.x, var_3.a.c.x) ^ min(-vec3<i32>(u_input.a, -13779i, var_1), _wgslsmith_mod_vec3_i32(vec3<i32>(40847i, var_3.a.c.x, var_2.x), u_input.c.yxx))));
    let var_4 = 1155f;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b);
}

