struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-32721i, -10416i), -1i, true, -398f);

var<private> global1: array<i32, 3> = array<i32, 3>(-23717i, 1i, 2147483647i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = vec3<bool>(arg_1.c, arg_1.c, !((_wgslsmith_f_op_f32(trunc(arg_1.d)) < arg_1.d) & true));
    let var_1 = global0.d;
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-952f))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - -1528f);
    return vec3<u32>(1u, _wgslsmith_sub_u32(~(~arg_0), ~62709u), var_2);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> vec2<i32> {
    global1 = array<i32, 3>();
    return vec2<i32>(~(-2147483647i), global1[_wgslsmith_index_u32(arg_0.x, 3u)]) >> (~arg_1.yx % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_1(func_4(~(~(~vec2<u32>(6650u, 44502u))), vec3<u32>(9638u, ~14356u, arg_1.x) ^ func_3(4294967295u, Struct_1(u_input.a.ww, global1[_wgslsmith_index_u32(1u, 3u)], arg_0.x, 661f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(global0.d, 385f)), _wgslsmith_f_op_f32(f32(-1f) * -492f))))), _wgslsmith_dot_vec4_i32(countOneBits(-min(vec4<i32>(global1[_wgslsmith_index_u32(0u, 3u)], u_input.a.x, 0i, global1[_wgslsmith_index_u32(20131u, 3u)]), u_input.a)), vec4<i32>(_wgslsmith_mult_i32(~(-2147483647i), global0.b), _wgslsmith_mult_i32(global0.a.x ^ -7780i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_1.x, 3u)], -1i)), -1i, 1i)), _wgslsmith_mod_i32(31183i, -9344i) > u_input.b, global0.d);
    let var_1 = var_0;
    let var_2 = !select(vec2<bool>(true, !(global0.c && global0.c)), vec2<bool>(var_1.c, all(vec2<bool>(false, global0.c))), arg_0);
    var var_3 = firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -16826i), vec2<i32>(-2147483647i, u_input.a.x)), var_1.b, 50732i, i32(-1i) * -2147483647i), select(~vec4<i32>(var_0.b, var_1.a.x, 0i, 0i), ~u_input.a >> ((vec4<u32>(79544u, 20439u, arg_1.x, arg_1.x) ^ vec4<u32>(4294967295u, 1u, arg_1.x, arg_1.x)) % vec4<u32>(32u)), vec4<bool>(select(arg_0.x, var_1.c, var_0.c), any(arg_0), all(vec4<bool>(true, arg_0.x, var_2.x, true)), true))));
    var var_4 = ~abs(abs(arg_1) & abs(vec2<u32>(4294967295u, arg_1.x)));
    return !vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(934f, -1421f)), _wgslsmith_f_op_f32(round(var_1.d)))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d))), false, true, all(vec3<bool>(true, global0.c, all(vec2<bool>(true, global0.c)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<i32, 3>();
    global0 = arg_3;
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, -915f, arg_3.d, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.d, arg_3.d, -1133f, global0.d), vec4<f32>(-130f, 173f, arg_3.d, 1600f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.d, -343f, global0.d, 400f), vec4<f32>(arg_3.d, global0.d, -658f, -298f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1033f, 871f)), global0.d, 678f, _wgslsmith_f_op_f32(1116f + arg_3.d)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-840f, arg_3.d, -877f, -1895f) * vec4<f32>(1302f, -483f, var_0.d, 1642f)) - vec4<f32>(arg_3.d, arg_3.d, -740f, arg_3.d))))), !global0.c || (_wgslsmith_f_op_f32(select(arg_3.d, _wgslsmith_f_op_f32(arg_3.d * 999f), all(arg_0.yx))) > _wgslsmith_f_op_f32(sign(1375f)))));
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<i32, 3>();
    let var_0 = vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-arg_2.a.x, -1i), arg_3.b) >= ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_3.b, 2147483647i), 2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(3537i, -43376i, 1i, global0.b))), any(vec3<bool>(arg_1, all(!vec4<bool>(false, arg_3.c, arg_1, true)), true)), (~2147483647i < _wgslsmith_dot_vec4_i32(~u_input.a, max(u_input.a, vec4<i32>(arg_2.a.x, global1[_wgslsmith_index_u32(9260u, 3u)], -1i, -67108i)))) && (arg_2.c && all(vec3<bool>(false, true, arg_3.c))), !any(!select(vec4<bool>(global0.c, true, false, false), vec4<bool>(arg_2.c, arg_3.c, false, arg_2.c), vec4<bool>(true, arg_2.c, true, false))));
    global0 = func_5(vec4<bool>(false, select(true, true, !(arg_0 < arg_0)), all(!(!var_0)), arg_1), var_0.x, vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(~58638u), _wgslsmith_clamp_u32(43795u, _wgslsmith_mod_u32(1u, 41227u), 4294967295u)), select(59760u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(47000u, 20060u)), false)), func_5(!vec4<bool>(true, true | var_0.x, var_0.x, arg_3.c && true), !arg_3.c, ~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(56544u, 14699u), vec2<u32>(0u, 4294967295u), false), max(vec2<u32>(4294967295u, 88845u), vec2<u32>(4294967295u, 11402u)), vec2<u32>(1u, 1u)), Struct_1(firstTrailingBit(arg_3.a & vec2<i32>(global1[_wgslsmith_index_u32(18222u, 3u)], u_input.b)), ~(-global0.b), !global0.c, 1271f)));
    let var_1 = func_5(var_0, false, vec2<u32>(1u, ~(~(1u << (1u % 32u)))), Struct_1(-_wgslsmith_add_vec2_i32(global0.a >> (vec2<u32>(0u, 9686u) % vec2<u32>(32u)), vec2<i32>(arg_0, -2147483647i)), _wgslsmith_div_i32(arg_3.a.x, func_5(vec4<bool>(arg_1, false, global0.c, arg_3.c), arg_1, vec2<u32>(4153u, 0u), Struct_1(global0.a, 1i, arg_1, arg_2.d)).b) << (_wgslsmith_mult_u32(~4294967295u, countOneBits(104835u)) % 32u), true, -212f));
    var var_2 = select(func_2(select(!vec2<bool>(global0.c, false), vec2<bool>(true, true), vec2<bool>(any(var_0), all(var_0.ywz))), ~vec2<u32>(1u, 1u)), !(!select(vec4<bool>(false, var_0.x, global0.c, true), !var_0, !var_0)), select(!all(vec4<bool>(false, true, false, false)), global0.c, arg_1));
    return ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(45557u, 1u, 1u, 24737u), vec4<u32>(17328u, 1u, 0u, 56475u)))) >> (29589u % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = !select(!select(vec3<bool>(false, global0.c, global0.c), !vec3<bool>(global0.c, false, global0.c), true), !select(!vec3<bool>(global0.c, true, true), !vec3<bool>(global0.c, true, false), select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(true, global0.c, false))), vec3<bool>(any(vec2<bool>(true, true)), global0.c, any(!vec3<bool>(true, global0.c, true))));
    var var_1 = ~(~(~_wgslsmith_mod_u32(~0u, ~11313u)));
    var var_2 = 1u;
    let var_3 = abs(vec4<i32>(-61948i, ~(~(-2147483647i)), 1i, -28291i));
    var_2 = ~func_6(global0.a.x, global0.c, func_5(!func_2(vec2<bool>(false, false), vec2<u32>(1u, 4294967295u)), true, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), select(vec2<u32>(4361u, 1u), vec2<u32>(43843u, 42491u), var_0.zz)), Struct_1(vec2<i32>(u_input.a.x, 0i), countOneBits(15425i), global0.c, -1108f)), func_5(select(!vec4<bool>(global0.c, false, true, var_0.x), select(vec4<bool>(global0.c, global0.c, false, var_0.x), vec4<bool>(false, false, true, false), vec4<bool>(global0.c, global0.c, global0.c, false)), true), true, vec2<u32>(1u, _wgslsmith_div_u32(8310u, 51680u)), func_5(select(vec4<bool>(false, global0.c, false, var_0.x), vec4<bool>(global0.c, false, false, true), global0.c), true, ~vec2<u32>(89942u, 93281u), func_5(vec4<bool>(false, var_0.x, true, var_0.x), false, vec2<u32>(16074u, 55267u), Struct_1(u_input.a.ww, global0.b, true, global0.d)))));
    return func_5(vec4<bool>(!(global0.d < 300f), false, select(-1353f == _wgslsmith_f_op_f32(step(global0.d, global0.d)), _wgslsmith_f_op_f32(1060f - global0.d) <= _wgslsmith_f_op_f32(select(global0.d, global0.d, false)), !global0.c), _wgslsmith_f_op_f32(1861f + _wgslsmith_f_op_f32(max(global0.d, -840f))) <= global0.d), var_0.x, vec2<u32>(countOneBits(~abs(40454u)), firstTrailingBit(1u) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 1u), ~60200u) % 32u)), func_5(vec4<bool>(global0.c, !any(var_0), var_0.x, false), global0.c, vec2<u32>(1u, 1u), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], reverseBits(2147483647i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 1u), 3u)], true, global0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<f32>(-247f, _wgslsmith_f_op_f32(-var_0.d));
    let var_2 = func_1();
    var var_3 = _wgslsmith_sub_u32(func_6(reverseBits(_wgslsmith_add_i32(1i | global0.a.x, u_input.a.x)), false, var_2, var_0), countOneBits(~_wgslsmith_sub_u32(76119u, _wgslsmith_dot_vec4_u32(vec4<u32>(5643u, 4294967295u, 72896u, 4294967295u), vec4<u32>(42354u, 0u, 1u, 10609u)))));
    global1 = array<i32, 3>();
    var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(var_2.d, 1012f)), _wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(global0.d, -173f), !vec2<bool>(false, var_2.c)))))), min(-44124i, var_2.a.x), select(_wgslsmith_mod_u32(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(22121u, 23412u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u))), ~69379u, false));
}

