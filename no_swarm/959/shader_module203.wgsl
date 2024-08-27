struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(742f, -1000f, 1191f), Struct_1(vec4<i32>(-1i, -1i, 0i, 2147483647i), 1u, vec4<u32>(76621u, 13413u, 61734u, 0u)), Struct_2(vec2<u32>(27851u, 4294967295u), 4294967295u, Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -1i), 9899u, vec4<u32>(0u, 0u, 78448u, 4294967295u)), vec3<bool>(true, false, false), vec4<bool>(true, false, true, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(7444i, global0.c.c.a.x, global0.c.c.a.x), global0.c.c.a.yww), vec3<i32>(69292i, global0.c.c.a.x, -91911i)));
    var var_1 = arg_1.c.e.x;
    var_1 = global0.c.d.x;
    global0 = arg_1;
    let var_2 = all(vec2<bool>(true, false));
    return -1000f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_4(184f, Struct_3(vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(-global0.a.x))), global0.c.c, global0.c), global0.c.c);
    let var_1 = ~(~(~global0.b.b));
    var var_2 = all(select(!(!global0.c.e.xyy), vec3<bool>(false, true, false), var_0.b.c.d));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -270f)) - _wgslsmith_f_op_f32(ceil(1221f))), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(exp2(var_0.b.a.x))))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, 1154f, var_0.a) * vec3<f32>(var_0.a, var_0.b.a.x, global0.a.x)))), var_0.b.c.c, global0.c), var_0.b.c.c);
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.b.a, vec3<f32>(_wgslsmith_f_op_f32(func_3(0u, Struct_3(vec3<f32>(var_3.b.a.x, var_0.b.a.x, var_0.a), Struct_1(vec4<i32>(-776i, var_0.b.c.c.a.x, 2147483647i, global0.b.a.x), 4294967295u, global0.b.c), Struct_2(var_3.b.c.c.c.yw, var_3.b.c.a.x, Struct_1(vec4<i32>(u_input.a.x, var_3.c.a.x, global0.b.a.x, var_0.c.a.x), 35353u, vec4<u32>(47941u, arg_0, 52891u, arg_0)), var_0.b.c.d, vec4<bool>(false, var_0.b.c.d.x, true, var_0.b.c.d.x))))), -1149f, var_3.b.a.x)))), Struct_1(select(~global0.c.c.a << (abs(vec4<u32>(27687u, arg_0, 4294967295u, global0.b.c.x)) % vec4<u32>(32u)), firstTrailingBit(countOneBits(var_3.c.a)), var_0.b.c.e), global0.c.c.b, _wgslsmith_mult_vec4_u32(global0.b.c >> (~var_0.c.c % vec4<u32>(32u)), abs(vec4<u32>(0u, var_1, 48341u, 1u)))), Struct_2(vec2<u32>(~abs(arg_0), global0.c.b), 75348u, var_0.b.b, select(var_0.b.c.d, vec3<bool>(global0.c.e.x, true, any(var_3.b.c.e)), true), var_3.b.c.e));
    return Struct_1(min(min(-global0.b.a, countOneBits(abs(vec4<i32>(72296i, var_0.c.a.x, 33975i, -9082i)))), -firstTrailingBit(var_3.b.c.c.a)), select(var_1 >> (global0.b.c.x % 32u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(global0.c.a.x, 58972u, var_3.b.b.c.x, var_1), vec4<u32>(0u, var_3.c.b, 12908u, 92241u), true), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b.b, var_0.b.c.b, 49507u, 15153u), var_0.c.c) >> (global0.c.c.c % vec4<u32>(32u))), select(true | global0.c.d.x, any(vec3<bool>(false, var_3.b.c.e.x, true)) && (var_0.b.a.x > global0.a.x), _wgslsmith_f_op_f32(var_0.b.a.x + -542f) >= _wgslsmith_f_op_f32(exp2(global0.a.x)))), select(vec4<u32>(max(1u, min(0u, 4294967295u)), select(var_0.b.b.c.x, var_1, true) | countOneBits(4294967295u), 35488u, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(8342u, 46434u), var_3.c.c.yz)), global0.b.c, var_0.b.c.e.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> u32 {
    global0 = Struct_3(global0.a, func_2(_wgslsmith_clamp_u32(abs(0u), firstLeadingBit(~5773u), ~global0.b.c.x)), global0.c);
    var var_0 = _wgslsmith_clamp_i32(-1i, -u_input.a.x, _wgslsmith_mod_i32(arg_2.b.a.x, select(reverseBits(0i), ~(-23783i), arg_2.c.d.x)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.a)))), func_2(reverseBits(max(~arg_0.b.c.b, ~arg_1.b))), Struct_2(~arg_0.c.c.xw, min(arg_0.c.c.x, firstTrailingBit(func_2(arg_2.c.c.b).c.x)), global0.c.c, select(!(!vec3<bool>(arg_2.c.e.x, global0.c.e.x, false)), !global0.c.d, true), global0.c.e));
    var var_1 = global0.c.c;
    var_0 = -min(~_wgslsmith_mult_i32(-15033i >> (var_1.b % 32u), _wgslsmith_mult_i32(u_input.a.x, arg_0.c.a.x)), -1i);
    return firstTrailingBit(~(~max(var_1.b, 33709u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-377f))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(global0.a.x * -452f)), 518f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0.b.c.x, Struct_3(global0.a, global0.c.c, global0.c))), _wgslsmith_f_op_f32(trunc(443f)))), Struct_1(vec4<i32>(arg_3.a.x, global0.b.a.x, _wgslsmith_clamp_i32(u_input.a.x, -5772i, 32765i), ~global0.c.c.a.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.c.a.x, global0.c.c.c.x), _wgslsmith_sub_u32(global0.c.b, 0u)), firstLeadingBit(arg_3.c)), global0.c), arg_3);
    return Struct_1(vec4<i32>(-47225i, max(~arg_3.a.x >> (reverseBits(81272u) % 32u), global0.b.a.x), u_input.a.x, -5715i), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.c.a.x, 4294967295u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, 20659u, var_0.c.b, 55550u), vec4<u32>(0u, arg_3.b, 4294967295u, var_0.b.b.b))), _wgslsmith_dot_vec2_u32(~vec2<u32>(9672u, 47991u), vec2<u32>(41033u, arg_3.b))), vec4<u32>(0u, arg_3.b, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.c.c.x, _wgslsmith_mod_u32(arg_3.c.x, global0.b.c.x), ~var_0.b.c.b), 0u), _wgslsmith_mult_u32(1u, ~(~var_0.c.b))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_4 {
    global0 = Struct_3(vec3<f32>(1472f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * 825f))), _wgslsmith_f_op_f32(f32(-1f) * -974f)), Struct_1(vec4<i32>(max(u_input.a.x, 0i) << (arg_1.c.b % 32u), _wgslsmith_add_i32(countOneBits(arg_1.c.a.x), -21692i), -(arg_1.c.a.x >> (5267u % 32u)), arg_2 ^ ~arg_1.c.a.x), 17719u, ~vec4<u32>(~global0.b.b, 2248u, ~arg_1.c.b, _wgslsmith_dot_vec2_u32(global0.b.c.xw, global0.c.a))), arg_1);
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f * arg_3)), -2187f));
    let var_1 = true || all(vec2<bool>(true, all(vec3<bool>(global0.c.e.x, arg_1.e.x, false)) != any(vec2<bool>(false, arg_1.d.x))));
    var_0 = global0.a.x;
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.a), global0.c.c, global0.c);
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -775f), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1061f, arg_3, -1303f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(-124f, -353f, 116f), arg_1.e.yyz)))), Struct_1(global0.c.c.a, (17528u << (global0.c.a.x % 32u)) >> (_wgslsmith_sub_u32(global0.b.b, global0.c.b) % 32u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.c.x, arg_1.b, arg_1.a.x, arg_1.c.c.x) ^ vec4<u32>(arg_1.b, 15822u, 19608u, 0u), arg_1.c.c)), Struct_2(countOneBits(vec2<u32>(arg_1.c.b, 4294967295u)), 4294967295u, Struct_1(vec4<i32>(1i, arg_1.c.a.x, -1i, arg_1.c.a.x), 109569u, vec4<u32>(arg_1.a.x, 46230u, 4294967295u, arg_1.c.b) & global0.b.c), vec3<bool>(false, 0i < global0.b.a.x, true), !global0.c.e)), func_4(vec2<i32>(-7631i, -2147483647i), any(vec4<bool>(!arg_1.d.x, true && arg_1.e.x, true, any(global0.c.e))), !arg_1.e.xw, func_2(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(global0.a.yy + _wgslsmith_div_vec2_f32(global0.a.yx, global0.a.yy));
    let var_1 = -43139i;
    var var_2 = min(~1u, global0.b.c.x);
    let var_3 = func_5(global0.c.e.x, Struct_2(_wgslsmith_div_vec2_u32(~(~vec2<u32>(global0.b.c.x, global0.c.c.b)), vec2<u32>(_wgslsmith_sub_u32(51484u, global0.b.c.x), max(1149u, 1u))), global0.b.c.x, func_4(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -26699i), u_input.a.xy)), all(global0.c.e.wx), select(select(vec2<bool>(global0.c.d.x, false), global0.c.d.zy, global0.c.d.yy), select(global0.c.d.zz, global0.c.e.ww, global0.c.d.yz), !vec2<bool>(global0.c.d.x, false)), Struct_1(u_input.a, func_1(Struct_4(-606f, Struct_3(global0.a, Struct_1(vec4<i32>(var_1, -17920i, u_input.a.x, global0.b.a.x), global0.b.c.x, global0.c.c.c), global0.c), global0.b), global0.b, Struct_3(vec3<f32>(global0.a.x, 367f, global0.a.x), global0.c.c, Struct_2(vec2<u32>(global0.c.c.c.x, global0.c.c.b), global0.c.b, Struct_1(u_input.a, global0.c.a.x, global0.c.c.c), vec3<bool>(false, global0.c.d.x, false), global0.c.e)), false), vec4<u32>(global0.c.c.c.x, 1u, 1u, 21243u))), global0.c.e.xxy, select(select(!vec4<bool>(false, global0.c.e.x, global0.c.e.x, global0.c.d.x), global0.c.e, all(global0.c.e.yx)), select(!global0.c.e, vec4<bool>(true, global0.c.e.x, false, global0.c.d.x), !global0.c.e), false)), global0.b.a.x, -309f);
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1025f - global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x * var_0.x), _wgslsmith_div_f32(1045f, global0.a.x))), _wgslsmith_f_op_f32(var_0.x * 430f)), false)), Struct_1(vec4<i32>(-28716i, var_3.b.b.a.x, 23957i, func_4(func_2(0u).a.yy, true, global0.c.d.yz, var_3.c).a.x), var_3.b.b.c.x, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global0.c.c.c, var_3.c.c) ^ global0.c.c.c, global0.b.c)), Struct_2(var_3.b.b.c.xy ^ select(vec2<u32>(var_3.c.c.x, global0.c.b), global0.b.c.yw, true), func_2(19476u).c.x | ~10209u, Struct_1((vec4<i32>(-2147483647i, global0.c.c.a.x, 80606i, global0.b.a.x) << (vec4<u32>(1u, 0u, global0.c.b, global0.c.c.c.x) % vec4<u32>(32u))) | ~vec4<i32>(global0.c.c.a.x, 18003i, global0.c.c.a.x, 832i), 15073u, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, var_3.b.c.c.c.x, 7127u, 25166u)), ~var_3.c.c)), select(!global0.c.d, func_5(true == var_3.b.c.e.x, Struct_2(vec2<u32>(var_3.c.c.x, global0.b.b), 1u, Struct_1(global0.b.a, 0u, global0.c.c.c), vec3<bool>(false, false, false), var_3.b.c.e), -19409i, _wgslsmith_f_op_f32(exp2(var_0.x))).b.c.d, all(vec4<bool>(false, true, global0.c.e.x, global0.c.d.x))), func_5(var_3.b.c.d.x, func_5(global0.c.d.x, func_5(var_3.b.c.d.x, var_3.b.c, 1i, -109f).b.c, _wgslsmith_dot_vec4_i32(var_3.c.a, vec4<i32>(2147483647i, -39174i, 2147483647i, 1i)), var_3.a).b.c, 2951i, _wgslsmith_f_op_f32(-268f - var_3.b.a.x)).b.c.e));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1233f, global0.a.x, var_3.a)))) * global0.a)), Struct_1(reverseBits(vec4<i32>(~(-28320i), select(-1i, -30464i, true), i32(-1i) * -38741i, func_4(vec2<i32>(u_input.a.x, var_1), true, global0.c.d.yz, var_3.c).a.x)), min(var_3.b.b.c.x, var_3.c.b), min(firstTrailingBit(firstTrailingBit(var_3.c.c)), ~global0.b.c)), var_3.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-46709i), ~(-(~(-vec4<i32>(u_input.a.x, -39249i, -24348i, -37045i)))), ~max(0i, 1i), (~(-u_input.a) ^ vec4<i32>(_wgslsmith_div_i32(15608i, 8433i), min(-2147483647i, var_3.b.b.a.x), global0.c.c.a.x, ~0i)) & global0.b.a);
}

