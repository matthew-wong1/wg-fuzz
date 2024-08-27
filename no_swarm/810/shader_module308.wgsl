struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    let var_0 = arg_1;
    var var_1 = max(arg_2, -arg_2) <= ~(arg_0.x ^ arg_2);
    var var_2 = _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(var_0.a.a.xz, vec2<u32>(_wgslsmith_mult_u32(0u, 1u), select(arg_1.a.a.x, _wgslsmith_mod_u32(4294967295u, 61941u), true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_1.b.x)))));
    var_2 = ~min(arg_1.a.a.x, abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.a.a.x, var_0.a.a.x, 10055u), 4294967295u)));
    return vec4<i32>(1i, u_input.a.x, 14402i, ~(-1i));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = abs(~arg_1) | ~(-(~abs(arg_1)));
    let var_1 = u_input.b;
    let var_2 = arg_2.b.a;
    var_0 = func_3(abs(arg_2.c), arg_2.b, select(arg_1.x >> (~var_2.a.x % 32u), ~(~arg_2.c.x), all(vec3<bool>(!arg_2.a, !arg_2.a, any(vec3<bool>(arg_2.a, arg_2.a, arg_2.a))))));
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(var_0.x), _wgslsmith_mult_i32(var_1.x, -14178i), arg_2.c.x, u_input.b.x) ^ vec4<i32>(-(~(-2147483647i)), 0i, _wgslsmith_mod_i32(2147483647i, arg_0 & 2147483647i), -28969i), vec4<i32>(~firstLeadingBit(arg_1.x), 0i, ~2147483647i, -2147483647i) & (reverseBits(-vec4<i32>(var_1.x, 0i, 6877i, u_input.a.x)) ^ func_3(vec2<i32>(arg_1.x, arg_1.x), Struct_2(arg_3, vec2<f32>(arg_2.b.b.x, arg_2.b.b.x)), 0i)));
    return select(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(3799u, arg_2.b.a.a.x, 15574u), vec3<u32>(34699u, arg_3.a.x, arg_2.b.a.a.x))), countOneBits(~4294967295u), ~24326u), ~(~(vec3<u32>(arg_3.a.x, arg_3.a.x, arg_3.a.x) ^ vec3<u32>(arg_2.b.a.a.x, arg_3.a.x, var_2.a.x))), ~max(vec3<u32>(4294967295u, 19411u, var_2.a.x), vec3<u32>(var_2.a.x, 4294967295u, 20701u))), ~vec3<u32>(firstTrailingBit(var_2.a.x), var_2.a.x | 1u, ~arg_3.a.x) << (_wgslsmith_add_vec3_u32(~arg_2.b.a.a, vec3<u32>(abs(arg_2.b.a.a.x), abs(1u), _wgslsmith_sub_u32(4083u, arg_3.a.x))) % vec3<u32>(32u)), select(vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, select(arg_2.a, arg_2.a, true), arg_2.a), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, true, arg_2.a)), !vec3<bool>(arg_2.a, false, arg_2.a)), _wgslsmith_add_u32(arg_2.b.a.a.x, 1191u) >= _wgslsmith_sub_u32(var_2.a.x, 1u))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = firstTrailingBit(~u_input.b.xy);
    var var_1 = !vec3<bool>(false, 0u == _wgslsmith_dot_vec3_u32(func_2(u_input.b.x, vec4<i32>(var_0.x, var_0.x, 23352i, arg_0.x), Struct_4(true, Struct_2(Struct_1(vec3<u32>(40073u, 77204u, 4294967295u)), vec2<f32>(499f, -408f)), u_input.a.yy), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u))), ~vec3<u32>(29301u, 11167u, 11043u)), !any(vec3<bool>(true, true, false)));
    var var_2 = u_input.b.xz;
    let var_3 = Struct_1(abs(~(~vec3<u32>(97556u, 4294967295u, 15425u))));
    var_1 = select(vec3<bool>(all(vec4<bool>(true, any(vec3<bool>(var_1.x, var_1.x, false)), !var_1.x, all(vec3<bool>(false, false, true)))), true, !all(select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), var_1.x))), vec3<bool>(all(!var_1.zy) & false, true, var_1.x), select(any(select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x), true), !vec3<bool>(var_1.x, var_1.x, var_1.x), var_2.x >= var_2.x)), var_1.x, !(!any(var_1.yy))));
    return vec3<u32>(var_3.a.x, 3376u, ~10678u << (var_3.a.x % 32u));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = ~vec4<u32>(arg_0.a.a.x, _wgslsmith_add_u32(0u, arg_0.a.a.x), 1u, 1u);
    var var_1 = ~(~u_input.b.x);
    var_1 = 2147483647i;
    var var_2 = firstLeadingBit(vec3<i32>(func_3(u_input.a.yy, arg_0, -1i).x | 28876i, -1i, -_wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, -25890i))) << (firstLeadingBit(vec3<u32>(var_0.x | ~0u, _wgslsmith_mod_u32(min(1u, var_0.x), ~20007u), 1u ^ min(1u, arg_0.a.a.x))) % vec3<u32>(32u));
    return Struct_4(true, arg_0, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(min(5292i, -1i), ~u_input.a.x), -(~(-2147483647i))), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstLeadingBit(vec4<i32>(-1i) * -(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x) & vec4<i32>(25529i, -5713i, u_input.b.x, u_input.b.x))));
    var var_1 = 2408u;
    let var_2 = ~select(1u, 4294967295u, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))) & _wgslsmith_div_u32(1u, 1u);
    let var_3 = func_4(Struct_2(Struct_1(~func_1(u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-351f)), _wgslsmith_f_op_f32(794f * 996f)))));
    var var_4 = var_3.b.a.a.x;
    let var_5 = Struct_5(func_4(var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~(-var_5.a.c.x)), func_4(func_4(var_5.a.b).b).c.x, false), max(0u, firstLeadingBit(2063u) >> (var_3.b.a.a.x % 32u)), -(~reverseBits(countOneBits(vec4<i32>(-2147483647i, var_3.c.x, 14710i, var_0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1319f, _wgslsmith_f_op_f32(-1000f + -1494f), _wgslsmith_f_op_f32(var_5.a.b.b.x * 1040f)), vec3<f32>(_wgslsmith_f_op_f32(var_3.b.b.x + 116f), -1794f, _wgslsmith_f_op_f32(select(var_5.a.b.b.x, -1956f, true)))))));
}

