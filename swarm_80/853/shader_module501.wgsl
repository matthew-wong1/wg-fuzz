struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 12871u, 23056u, 1u, 68329u, 40139u, 85991u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = _wgslsmith_mod_vec2_i32(arg_2.xx, ~vec2<i32>(abs(-45239i), _wgslsmith_dot_vec2_i32(arg_2.zw, select(arg_2.zw, arg_2.xw, vec2<bool>(true, false)))));
    let var_1 = Struct_2(Struct_1(true), Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<i32>(_wgslsmith_mult_i32(u_input.b, -37802i), arg_2.x));
    var var_2 = !(!select(vec2<bool>(var_1.a.a && var_1.b.a, all(vec4<bool>(var_1.b.a, var_1.a.a, false, true))), vec2<bool>(any(vec3<bool>(var_1.a.a, var_1.a.a, true)), true), select(!vec2<bool>(false, var_1.a.a), select(vec2<bool>(var_1.b.a, var_1.a.a), vec2<bool>(var_1.b.a, false), vec2<bool>(var_1.b.a, var_1.b.a)), !vec2<bool>(var_1.b.a, true))));
    return select(4294967295u, _wgslsmith_add_u32(~min(1458u, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) ^ 1u, ~global0[_wgslsmith_index_u32(4294967295u, 7u)]), true);
}

fn func_2() -> u32 {
    var var_0 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(countOneBits(1u), ~countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 7u)])), func_3(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 7u)], 4294967295u), ~vec4<u32>(0u, u_input.c.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)]), vec4<i32>(u_input.b, u_input.b, -41425i, 0i) & vec4<i32>(u_input.b, -21486i, -41353i, 2147483647i)) << (reverseBits(1u) % 32u)), 7u)], _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), u_input.a << (u_input.a % vec4<u32>(32u))), u_input.c.x, 0u, 28702u << (u_input.a.x % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 56722u, 31300u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(47415u, 7u)], 7u)]), vec4<u32>(20497u, 59863u, ~u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63876u, 7u)] & global0[_wgslsmith_index_u32(8329u, 7u)], 7u)]))), ~54385u, abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), _wgslsmith_clamp_u32(80818u, 4294967295u, u_input.d)), ~(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] << (0u % 32u)))));
    global0 = array<u32, 7>();
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, u_input.b, 11342i), vec4<i32>(-33729i, -2147483647i, u_input.b, 0i), vec4<bool>(false, false, true, false)), min(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, 68423i, u_input.b))), select(~(-24831i), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), true)), ~(-1i)) << (firstLeadingBit(u_input.c.zx >> (~select(vec2<u32>(1u, 43527u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-921f, 1f));
    let var_3 = var_2.x;
    return ~_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 7u)], 40205u, 27819u), _wgslsmith_sub_vec3_u32(var_0.xzy, var_0.ywx)), 7u)], var_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -681f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(173f, -652f)) * 455f))));
    global0 = array<u32, 7>();
    var var_1 = arg_2;
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, arg_0.a.x))), var_0.a.x, 134f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(568f, 665f)), _wgslsmith_f_op_f32(floor(var_0.a.x))) - 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1129f)), arg_0.a.x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, var_0.a.x, var_0.a.x, var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(1402f - var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -736f), arg_0.a.x, -1000f)))));
    return Struct_1(!any(vec2<bool>(true, false)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = ~u_input.a | reverseBits(min(vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 48650u, 0u, arg_3.x), vec4<u32>(60679u, arg_3.x, u_input.c.x, 4258u)) ^ max(u_input.c, vec4<u32>(17897u, 0u, 0u, 56140u)));
    let var_1 = !vec3<bool>(arg_2.a.a, !arg_2.a.a && true, !arg_2.a.a);
    global0 = array<u32, 7>();
    var var_2 = Struct_2(arg_2.a, func_1(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1593f, 1000f)) - vec2<f32>(987f, 463f))), _wgslsmith_add_i32(arg_2.c.x, abs(arg_2.c.x)), -(~(~vec3<i32>(9252i, -1i, arg_0)))), vec2<i32>(_wgslsmith_sub_i32(arg_1.c.x, -3969i), _wgslsmith_dot_vec2_i32(arg_2.c, arg_2.c)));
    let var_3 = arg_3.x;
    return vec3<bool>(var_1.x, !(var_1.x && true), -1045f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(500f + 2180f))) - _wgslsmith_f_op_f32(f32(-1f) * -621f)));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = Struct_3(vec2<f32>(391f, -331f));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(129f, 1000f), _wgslsmith_f_op_vec2_f32(-var_0.a)))) + var_0.a));
    let var_2 = Struct_1(arg_0.x);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)) + vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1263f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f))), 1f, -420f);
    var var_1 = func_5(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(false, false, true)), func_4(7504i, Struct_2(func_1(Struct_3(vec2<f32>(401f, var_0.x)), 77057i, vec3<i32>(u_input.b, 1i, 1i)), func_1(Struct_3(var_0.zx), u_input.b, vec3<i32>(14744i, u_input.b, u_input.b)), vec2<i32>(-1i, u_input.b)), Struct_2(func_1(Struct_3(vec2<f32>(var_0.x, var_0.x)), u_input.b, vec3<i32>(u_input.b, -2147483647i, -52026i)), func_1(Struct_3(var_0.xz), u_input.b, vec3<i32>(u_input.b, u_input.b, 58180i)), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, u_input.b)), vec3<u32>(global0[_wgslsmith_index_u32(1u ^ global0[_wgslsmith_index_u32(0u, 7u)], 7u)], min(0u, global0[_wgslsmith_index_u32(4294967295u, 7u)]), ~1u)), all(vec2<bool>(true, true))), -16087i, u_input.a);
    let var_2 = func_1(func_5(func_4(u_input.b, Struct_2(func_1(Struct_3(vec2<f32>(790f, -1000f)), u_input.b, vec3<i32>(-2147483647i, 75737i, 0i)), Struct_1(true), vec2<i32>(1i, 65305i) ^ vec2<i32>(-1i, u_input.b)), Struct_2(Struct_1(true), func_1(Struct_3(vec2<f32>(-170f, -484f)), u_input.b, vec3<i32>(13488i, u_input.b, 0i)), -vec2<i32>(u_input.b, u_input.b)), vec3<u32>(reverseBits(u_input.d), abs(17773u), func_3(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.a, vec4<i32>(42257i, u_input.b, -2147483647i, -1i)))), ~(-15916i), _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 4294967295u) << (u_input.c % vec4<u32>(32u))), vec4<u32>(88025u, global0[_wgslsmith_index_u32(1u, 7u)], u_input.a.x, 1u) | _wgslsmith_mult_vec4_u32(u_input.c, u_input.c))), -2147483647i, vec3<i32>(u_input.b, max(u_input.b, -2147483647i), -27093i));
    let var_3 = _wgslsmith_dot_vec2_u32(abs(~u_input.a.zz), u_input.c.wx);
    let var_4 = u_input.c.x;
    var var_5 = _wgslsmith_add_u32(var_4, 4294967295u);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_5(func_4(-11363i, Struct_2(Struct_1(var_2.a), Struct_1(false), vec2<i32>(u_input.b, -1i)), Struct_2(var_2, var_2, vec2<i32>(-2147483647i, u_input.b)), u_input.a.xyz), _wgslsmith_add_i32(-1i, u_input.b), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(13304u, var_4, u_input.a.x, var_4))).a.x, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(sign(-473f))))))), u_input.b);
}

