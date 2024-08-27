struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> f32 {
    global1 = vec4<i32>(global1.x, reverseBits(_wgslsmith_mod_i32(0i, select(~u_input.a, arg_3.a.x, !global0.b.x))), u_input.a, countOneBits(u_input.a));
    global1 = countOneBits(vec4<i32>(u_input.a, 2147483647i, ~(-59814i), u_input.a));
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), arg_1.b.a.x) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.zy), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(411f, global0.a.x)))))))));
    var_0 = arg_2;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.a))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_div_vec4_f32(global0.a, global0.a), any(global0.b)))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 36865u, 4294967295u, 0u), Struct_2(vec4<bool>(true, true, global0.b.x, true), Struct_1(global0.a, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec2<u32>(13605u, global0.c.x)), false), global0.b.x, Struct_3(global1.yzx, Struct_2(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), Struct_1(global0.a, global0.b, global0.c), global0.b.x)))) + _wgslsmith_f_op_f32(-1000f + 1154f)))));
    global1 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(_wgslsmith_mod_i32(global1.x, global1.x), ~(-10677i), 14681i, abs(-53253i)), vec4<i32>(_wgslsmith_dot_vec3_i32(global1.yxy, vec3<i32>(global1.x, global1.x, 2147483647i)), ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, -2280i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, global1.x)), countOneBits(1i))) & vec4<i32>(-1i, firstTrailingBit(u_input.a), u_input.a, select(5042i, global1.x, false) << (0u % 32u)), vec4<i32>(-global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a, -u_input.a), vec2<i32>(u_input.a & global1.x, -1i)), 1i, 0i), _wgslsmith_mult_vec4_i32(((vec4<i32>(u_input.a, -2147483647i, global1.x, u_input.a) >> (vec4<u32>(global0.c.x, 1u, 4294967295u, 0u) % vec4<u32>(32u))) | -vec4<i32>(-27922i, global1.x, u_input.a, -2147483647i)) >> (abs(max(vec4<u32>(4294967295u, global0.c.x, 0u, 1u), vec4<u32>(4294967295u, 1u, global0.c.x, global0.c.x))) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.a, global1.x, abs(u_input.a))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(step(-200f, var_0.a.x)), _wgslsmith_f_op_f32(max(-727f, global0.a.x))))));
    var var_2 = Struct_3(vec3<i32>(~_wgslsmith_add_i32(-15455i >> (global0.c.x % 32u), -global1.x), u_input.a, max(global1.x, 1i)), Struct_2(!global0.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.a))), vec4<bool>(all(vec2<bool>(true, true)), false, !global0.b.x, true), select(~global0.c, reverseBits(vec2<u32>(8529u, 39097u)), -1503f >= global0.a.x)), global0.b.x));
    var var_3 = abs(~reverseBits(96971u));
    return Struct_2(vec4<bool>(global0.b.x, all(vec3<bool>(true, false, var_2.b.b.b.x)) & var_2.b.a.x, !var_2.b.c != (all(var_2.b.b.b.wy) && var_2.b.c), global0.b.x), Struct_1(var_1.a, !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, var_2.b.a.x, true, false), global0.b.x)), vec2<u32>(~(~4294967295u), global0.c.x)), !any(global0.b.yw));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    var var_0 = func_2().b;
    var var_1 = arg_0.c.b.b;
    var var_2 = arg_0.a;
    let var_3 = select(global0.b.yw, select(global0.b.xx, var_0.b.wy, _wgslsmith_sub_u32(~0u, countOneBits(1552u)) >= ((4294967295u & global0.c.x) << (1u % 32u))), !var_2.a.xy);
    let var_4 = arg_0;
    return Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.c.b.b.a.x, _wgslsmith_f_op_f32(-var_2.b.a.x), _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b.b.a.x - -1464f) * _wgslsmith_f_op_f32(round(-433f)))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-492f * arg_0.b.b.b.a.x)), 1096f, var_4.b.b.b.a.x)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(max(-296f, -1253f));
    var var_1 = func_4(Struct_4(func_2(), Struct_3(arg_2.e.yxw << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 38196u, global0.c.x), vec3<u32>(arg_0, 43494u, global0.c.x)) % vec3<u32>(32u)), Struct_2(func_2().b.b, Struct_1(vec4<f32>(-467f, -1000f, arg_2.b.b.b.a.x, global0.a.x), vec4<bool>(false, false, arg_2.a.b.b.x, true), arg_2.a.b.c), arg_2.b.b.a.x)), Struct_3(-_wgslsmith_div_vec3_i32(global1.xyw, vec3<i32>(-1i, arg_1, arg_2.e.x)), Struct_2(arg_2.c.b.a, arg_2.a.b, false | arg_2.a.a.x)), global0.b.ywz, ~vec4<i32>(arg_2.b.a.x, countOneBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.a.x, arg_2.e.x, 18182i, arg_1), vec4<i32>(-49648i, 1i, 1i, arg_1)), ~57042i)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(arg_2.c.b.b.a.x * 579f)) - _wgslsmith_f_op_f32(step(var_1.a.x, -491f))))));
    global1 = vec4<i32>(-1i, arg_1, ~_wgslsmith_add_i32(_wgslsmith_div_i32(abs(u_input.a), 25200i), firstTrailingBit(~arg_2.e.x)), -7032i);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(func_2().b.a.yzx));
    return func_4(arg_2);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    global0 = arg_2.c.b.b;
    var var_0 = arg_2;
    global0 = arg_2.b.b.b;
    let var_1 = abs(~max(abs(u_input.a), ~arg_2.c.a.x) & ~global1.x);
    var var_2 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(85268u, var_0.a.b.c.x, global0.c.x, 1u), vec4<u32>(var_0.b.b.b.c.x, 71104u, var_0.b.b.b.c.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, arg_2.c.b.b.c.x, 29169u, 4294967295u), vec4<u32>(arg_2.c.b.b.c.x, 24864u, arg_2.c.b.b.c.x, 22523u)), ~vec4<u32>(arg_2.a.b.c.x, 35824u, global0.c.x, 7459u)) & _wgslsmith_sub_vec4_u32(countOneBits(select(vec4<u32>(var_0.a.b.c.x, 0u, 20686u, global0.c.x), vec4<u32>(106339u, var_0.a.b.c.x, 0u, arg_2.c.b.b.c.x), global0.b)), ~vec4<u32>(global0.c.x, 16352u, arg_2.c.b.b.c.x, arg_2.b.b.b.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.b.c.x & _wgslsmith_add_u32(arg_2.c.b.b.c.x, global0.c.x), ~(arg_2.b.b.b.c.x & global0.c.x), 4294967295u, 1u), select(~select(vec4<u32>(45871u, arg_2.a.b.c.x, 15795u, arg_2.c.b.b.c.x), vec4<u32>(1u, 4294967295u, global0.c.x, var_0.b.b.b.c.x), var_0.c.b.a.x), ~firstTrailingBit(vec4<u32>(4294967295u, global0.c.x, 1u, 0u)), true), ~select(vec4<u32>(15631u, 4294967295u, var_0.c.b.b.c.x, 27994u), max(vec4<u32>(global0.c.x, 4294967295u, 25499u, 0u), vec4<u32>(global0.c.x, 30155u, var_0.a.b.c.x, global0.c.x)), var_0.c.b.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1352f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(abs(global0.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, 941f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-569f, global0.a.x, 890f, global0.a.x), global0.a, global0.b)), Struct_4(Struct_2(global0.b, Struct_1(vec4<f32>(global0.a.x, 1000f, 471f, -1163f), vec4<bool>(global0.b.x, global0.b.x, true, false), global0.c), true), Struct_3(vec3<i32>(u_input.a, -11565i, global1.x), Struct_2(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), Struct_1(global0.a, vec4<bool>(false, false, true, true), global0.c), false)), Struct_3(vec3<i32>(-53814i, -1i, 1i), Struct_2(global0.b, Struct_1(global0.a, global0.b, vec2<u32>(56625u, 0u)), global0.b.x)), global0.b.wyz, vec4<i32>(1i, 52076i, global1.x, global1.x)), func_1(global0.c.x, 1i, Struct_4(Struct_2(vec4<bool>(true, global0.b.x, true, true), Struct_1(global0.a, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), global0.c), true), Struct_3(vec3<i32>(u_input.a, u_input.a, 0i), Struct_2(vec4<bool>(global0.b.x, global0.b.x, false, true), Struct_1(vec4<f32>(global0.a.x, 1173f, global0.a.x, -678f), vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), global0.c), global0.b.x)), Struct_3(global1.yzz, Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(global0.a.x, 606f, global0.a.x, global0.a.x), vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), vec2<u32>(66817u, global0.c.x)), global0.b.x)), global0.b.zyw, vec4<i32>(-38284i, global1.x, -1i, 19701i))))), _wgslsmith_f_op_f32(-global0.a.x))), vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), global0.c);
    let var_1 = global1.x ^ countOneBits(0i);
    global1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_1, 1i)), firstLeadingBit(min(global1.ww, vec2<i32>(global1.x, 0i)))), _wgslsmith_div_i32(select(var_1, global1.x, !(u_input.a < global1.x)), _wgslsmith_dot_vec3_i32(select(global1.xyw, -global1.zzz, 0u > var_0.c.x), -vec3<i32>(var_1, -19495i, u_input.a) | global1.yzy)), ~_wgslsmith_add_i32(var_1, u_input.a), _wgslsmith_clamp_i32(2544i, var_1, u_input.a));
    global1 = vec4<i32>(-1i) * -abs(vec4<i32>(-37836i, -43910i, 39566i, var_1) << (~vec4<u32>(global0.c.x, var_0.c.x, var_0.c.x, 4294967295u) % vec4<u32>(32u)));
    var var_2 = ~select(vec2<i32>(var_1, u_input.a) << (vec2<u32>(~var_0.c.x, _wgslsmith_mod_u32(var_0.c.x, 1u)) % vec2<u32>(32u)), ~global1.zw, var_0.b.x);
    var_2 = global1.xx;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_i32(global1.x, u_input.a)));
}

