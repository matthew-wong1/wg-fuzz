struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, -775f, global0.a.a.x)), vec3<f32>(global0.a.a.x, global0.a.b, _wgslsmith_f_op_f32(590f - global0.a.b))) * _wgslsmith_f_op_vec3_f32(select(global0.a.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1207f, global0.a.b, -1841f) + global0.a.a), global0.a.a, all(vec2<bool>(global0.a.c, global0.a.c)))), !(!vec3<bool>(global0.a.c, global0.a.c, global0.a.c))))), -1665f, ((-35916i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(48109u, 6079u, var_0, 7251u), vec4<u32>(0u, var_0, var_0, 72045u)) % 32u)) ^ arg_0) <= min(arg_0, -(arg_0 << (u_input.c % 32u))));
    var_1 = global0.a;
    let var_2 = ~var_0;
    let var_3 = Struct_3(Struct_1(global0.a.c, min(arg_0, arg_0 | 39289i) != _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 2147483647i, 51138i, arg_0), vec4<i32>(2147483647i, arg_0, 5318i, -55184i) ^ vec4<i32>(arg_0, -12432i, 3885i, 1i)), countOneBits(vec3<i32>(arg_0, _wgslsmith_mult_i32(arg_0, -34291i), -arg_0)), ~(~(~u_input.c))), vec4<u32>(~(~_wgslsmith_div_u32(var_0, u_input.b)), _wgslsmith_add_u32(~(0u & var_2), ~var_0), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2, var_0), 23839u)), ~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_0, arg_0, -15131i) & vec3<i32>(arg_0, arg_0, arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0, 2147483647i), vec3<i32>(arg_0, -1i, 14641i)), !vec3<bool>(global0.a.c, global0.a.c, true)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, 18130i), vec3<i32>(arg_0, arg_0, -1i), vec3<i32>(14917i, 2147483647i, arg_0))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(43929i, 72342i, arg_0), vec3<i32>(-13835i, -28657i, -35734i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -6836i, arg_0), vec3<i32>(arg_0, -1i, arg_0))), any(select(!vec3<bool>(global0.a.c, var_1.c, true), !select(vec3<bool>(global0.a.c, global0.a.c, true), vec3<bool>(var_1.c, true, true), false), vec3<bool>(var_1.c, !var_1.c, arg_0 > arg_0))));
    return ~firstLeadingBit(~reverseBits(var_2));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = u_input.a.yx;
    let var_1 = 0i <= _wgslsmith_mod_i32(arg_2.x, reverseBits(-arg_2.x));
    let var_2 = firstTrailingBit(~_wgslsmith_sub_u32(1u, func_3(arg_2.x)));
    var var_3 = Struct_5(_wgslsmith_mod_vec2_i32(arg_2.xx, vec2<i32>(2147483647i, 2147483647i)));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_0.x), var_2, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 65539u ^ u_input.c, 4294967295u)), 36973u, 4294967295u, 48689u) & ~(min(abs(vec4<u32>(4294967295u, u_input.c, var_0.x, var_0.x)), min(vec4<u32>(u_input.b, var_2, u_input.a.x, 11312u), vec4<u32>(u_input.b, 79915u, u_input.b, u_input.b))) >> (firstLeadingBit(~vec4<u32>(0u, 8976u, var_0.x, 52275u)) % vec4<u32>(32u)));
    return Struct_3(Struct_1(true, true, reverseBits(vec3<i32>(var_3.a.x, _wgslsmith_mod_i32(1i, 2147483647i), var_3.a.x)), 1u), ~reverseBits(vec4<u32>(1673u, 22471u, 0u, var_2)) & var_4, _wgslsmith_add_vec3_i32(arg_2.xyw, arg_2.yxx) >> (select(u_input.a, ~var_4.xzy, true) % vec3<u32>(32u)), true);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    return Struct_1(arg_3.a.a || false, true, _wgslsmith_clamp_vec3_i32(min(vec3<i32>(1i & arg_3.a.c.x, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-2147483647i, -1i)), arg_3.c), vec3<i32>(-19572i, _wgslsmith_div_i32(-1i >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(arg_3.a.c.zz, vec2<i32>(arg_3.c.x, arg_3.a.c.x))), arg_3.a.c.x), abs(~(vec3<i32>(1i, arg_3.a.c.x, arg_3.c.x) ^ arg_3.a.c))), 35242u | max(~71894u, u_input.c));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b, global0.a.b, global0.a.b, global0.a.b) - vec4<f32>(global0.a.a.x, 648f, global0.a.b, 558f))))), vec2<f32>(-462f, _wgslsmith_f_op_f32(max(global0.a.a.x, global0.a.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b, -1000f) * global0.a.b))), func_2(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)), vec4<i32>(1i, 1i, 1i, 1i))), select(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(abs(81245u), ~u_input.c), _wgslsmith_add_u32(~1u, func_3(-76035i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.c), u_input.a)), ~vec4<u32>(34336u, ~u_input.c, _wgslsmith_add_u32(u_input.b, u_input.c), u_input.b | 11407u), false), select(~(-select(vec3<i32>(0i, 85146i, -3157i), vec3<i32>(-2147483647i, -2147483647i, -1i), vec3<bool>(global0.a.c, global0.a.c, global0.a.c))), vec3<i32>(_wgslsmith_sub_i32(24856i, abs(-2147483647i)), _wgslsmith_mod_i32(1i, ~12500i), -60732i), all(select(vec3<bool>(global0.a.c, false, global0.a.c), !vec3<bool>(global0.a.c, true, true), vec3<bool>(true, true, true)))), all(vec4<bool>(all(vec4<bool>(global0.a.c, true, global0.a.c, global0.a.c)), false, _wgslsmith_clamp_i32(1i, -2147483647i, -22196i) >= 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(8949i, 44276i), vec2<i32>(12225i, -1i)) <= func_4(vec4<f32>(-1000f, 815f, global0.a.a.x, global0.a.b), vec2<f32>(1119f, global0.a.a.x), -1000f, Struct_3(Struct_1(global0.a.c, true, vec3<i32>(-52740i, 0i, -1i), 1u), vec4<u32>(u_input.c, u_input.b, 1u, u_input.b), vec3<i32>(-31906i, 38756i, 1i), global0.a.c)).c.x)));
    var var_1 = Struct_2(global0.a.a, _wgslsmith_f_op_f32(ceil(global0.a.b)), var_0.a.a);
    var var_2 = _wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~var_0.a.c.x, -37041i), -2147483647i, _wgslsmith_mult_i32(var_0.a.c.x, var_0.c.x))), var_0.a.c.x);
    let var_3 = u_input.a.x;
    var_2 = _wgslsmith_mod_i32(var_0.c.x, ~(var_0.c.x | firstTrailingBit(~var_0.c.x)));
    return Struct_1(var_1.c, var_0.d, var_0.a.c, ~48968u);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = Struct_5(arg_1.c.xy);
    var var_1 = global0.a;
    var_1 = global0.a;
    var_1 = global0.a;
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(47950u, ~u_input.c, u_input.b, ~0u | arg_1.d), ~vec4<u32>(u_input.a.x << (arg_1.d % 32u), _wgslsmith_div_u32(arg_1.d, arg_1.d), arg_1.d, u_input.a.x));
    return -4431i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.b);
    let var_1 = max(max(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-31552i, 1i, 36209i, 30665i), -vec4<i32>(33837i, 2147483647i, -1509i, 2543i)), func_5(!vec2<bool>(true, global0.a.c), func_1(), ~_wgslsmith_div_i32(-12001i, 1i))), min(0i, -2147483647i >> (0u % 32u)));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, global0.a.a.x, global0.a.b, _wgslsmith_f_op_f32(exp2(global0.a.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a.a.xy, global0.a.a.yx)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1708f) * global0.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.a.x))), _wgslsmith_f_op_f32(-global0.a.b)), Struct_3(Struct_1((i32(-1i) * -25832i) < _wgslsmith_div_i32(29777i, var_1), var_0.x <= u_input.a.x, vec3<i32>(var_1 << (31967u % 32u), var_1, var_1 & -13599i), 81942u), var_0, ~(~(-vec3<i32>(33201i, -57011i, 24183i))), !global0.a.c));
    let var_3 = Struct_5(var_2.c.yy);
    let var_4 = Struct_4(global0.a);
    var_2 = Struct_1(var_4.a.c, all(!select(vec4<bool>(true, var_2.a, var_2.a, var_2.b), !vec4<bool>(var_4.a.c, false, false, var_4.a.c), var_2.a || true)), func_2(global0.a.c, _wgslsmith_div_f32(global0.a.a.x, -709f), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.c.x, -35852i, var_3.a.x, var_3.a.x) << (~var_0 % vec4<u32>(32u)), -vec4<i32>(1i, -2147483647i, var_2.c.x, var_1) ^ -vec4<i32>(var_3.a.x, var_3.a.x, var_2.c.x, -2147483647i))).a.c, (~(~var_0.x) | 24424u) << (func_1().d % 32u));
    let var_5 = !(!all(!select(vec2<bool>(var_4.a.c, global0.a.c), vec2<bool>(var_2.b, global0.a.c), vec2<bool>(true, false))));
    let var_6 = var_4;
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~select(u_input.a, var_0.zwz, vec3<bool>(true, var_2.b, true)) << (u_input.a % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(1u, u_input.c, u_input.a.x)), var_0.zzz >> (reverseBits(vec3<u32>(0u, 4294967295u, var_0.x)) % vec3<u32>(32u)))));
}

