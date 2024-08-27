struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    var var_0 = -541f;
    global0 = array<Struct_2, 26>();
    let var_1 = firstTrailingBit(~vec2<u32>(_wgslsmith_sub_u32(42798u, 1u), 0u));
    var var_2 = vec3<bool>(true, false, false);
    var var_3 = Struct_1(true);
    return var_1.x;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(10949u, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 1u), ~23185u), 30485u), false, select(!(!vec2<bool>(arg_0, false)), vec2<bool>(true, !arg_0), all(!vec2<bool>(arg_0, arg_0)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(601f, 1509f), vec2<f32>(142f, 503f))) - vec2<f32>(1243f, 1014f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2616f + 1279f) * _wgslsmith_f_op_f32(round(-1261f)))), firstTrailingBit(~(~0u))), 26u)], ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(833f * 1005f), _wgslsmith_f_op_f32(trunc(960f)))), -768f)) - 1491f));
    var var_1 = all(!(!vec4<bool>(var_0.b.c.x == 4294967295u, all(vec3<bool>(false, arg_0, true)), all(vec4<bool>(arg_0, arg_0, false, var_0.b.e.x)), arg_0)));
    let var_2 = Struct_3(Struct_2(var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.b), 1316f)) * 1548f), ~abs(vec3<u32>(var_0.b.c.x, 0u, 10943u)) >> (var_0.a.c % vec3<u32>(32u)), var_0.b.e.x, select(select(var_0.b.e, select(vec2<bool>(false, true), var_0.a.e, arg_0), select(var_0.a.e, vec2<bool>(var_0.a.d, true), false)), select(var_0.a.e, !var_0.b.e, select(vec2<bool>(true, arg_0), var_0.a.e, vec2<bool>(var_0.a.a.a, false))), true && var_0.b.e.x)), Struct_2(var_0.a.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.b.b)))), vec3<u32>(4294967295u, firstLeadingBit(76073u), ~max(var_0.a.c.x, 25503u)), arg_0, vec2<bool>(true, true)), ~u_input.a, _wgslsmith_f_op_f32(-var_0.d));
    let var_3 = Struct_1(true);
    var_1 = !any(!vec3<bool>(false, true, var_0.b.d)) && false;
    return _wgslsmith_f_op_f32(trunc(var_2.b.b));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, abs(abs(arg_0))), 26u)], global0[_wgslsmith_index_u32(~(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0, arg_0), vec4<u32>(arg_0, 5672u, arg_0, 0u)), _wgslsmith_sub_u32(0u, arg_0), all(vec4<bool>(false, true, false, false)))), 26u)], 8056i, _wgslsmith_f_op_f32(f32(-1f) * -1568f));
    let var_1 = ~(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(46441i, u_input.a, 28813i, 15713i)), ~abs(vec4<i32>(u_input.a, -13493i, -14843i, var_0.c))));
    var var_2 = -956f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(all(vec4<bool>(any(vec3<bool>(var_0.a.d, true, var_0.b.a.a)), all(vec3<bool>(false, false, true)), all(vec2<bool>(var_0.b.a.a, var_0.b.d)), true)))));
    var_2 = _wgslsmith_f_op_f32(func_2(((var_0.c <= max(23386i, u_input.a)) & var_0.b.a.a) || false));
    return _wgslsmith_add_vec3_u32(vec3<u32>(~abs(func_3(vec2<f32>(var_0.a.b, var_0.d), 791f)), func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.b, 2438f))), _wgslsmith_f_op_f32(round(var_0.a.b))), 45587u | arg_0), var_0.a.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = 6733u;
    let var_1 = global0[_wgslsmith_index_u32(~(select(_wgslsmith_mod_u32(4294967295u, arg_0.x), 0u, arg_1) | (1u << ((select(arg_0.x, 67975u, true) ^ arg_0.x) % 32u))), 26u)];
    var var_2 = var_1.b;
    var_2 = _wgslsmith_f_op_f32(round(arg_2.x));
    var var_3 = var_1.c.yy;
    return Struct_3(global0[_wgslsmith_index_u32(arg_0.x, 26u)], Struct_2(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f + -1249f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f - 248f))), vec3<u32>(0u, _wgslsmith_mod_u32(~1940u, ~var_3.x), ~(11315u | var_3.x)), var_1.d, !var_1.e), _wgslsmith_sub_i32(u_input.a, i32(-1i) * -u_input.a), -1514f);
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = Struct_3(func_4(~vec3<u32>(1u, _wgslsmith_clamp_u32(18576u, 1u, arg_0), ~arg_0), true, vec3<f32>(_wgslsmith_f_op_f32(158f + arg_1.d), _wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(arg_1.b.b + arg_1.a.b))), arg_1.b.b)).a, func_4(~vec3<u32>(~arg_1.a.c.x, arg_0 | 4294967295u, _wgslsmith_mod_u32(arg_1.b.c.x, arg_1.b.c.x)), arg_1.a.e.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b.b)), _wgslsmith_f_op_f32(max(arg_1.b.b, -1000f)), _wgslsmith_f_op_f32(trunc(arg_1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1735f, arg_1.a.b, -985f), vec3<f32>(arg_1.b.b, -996f, 286f))))).a, -2147483647i, 956f);
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(73770u, arg_0, arg_0, arg_1.a.c.x)), ~vec4<u32>(arg_0, arg_0, arg_0, arg_1.b.c.x)) << (1u % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31770u, 1u, arg_1.b.c.x, 16223u), vec4<u32>(0u, 64644u, 0u, 98193u)) ^ var_0.a.c.x, var_0.b.c.x), 14411u);
    var var_2 = Struct_1(true);
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.b, _wgslsmith_f_op_f32(-var_0.d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.d, arg_1.a.b), vec2<f32>(arg_1.b.b, var_0.a.b), true)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.b, 2273f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.b, -532f) - vec2<f32>(679f, var_3.a.b)), arg_1.a.e)))));
    return StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~arg_0), _wgslsmith_clamp_u32(arg_1.a.c.x, ~260u, countOneBits(var_3.a.c.x))), vec4<i32>(0i, u_input.a, i32(-1i) * -108i, ~arg_1.c), var_0.b.c, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = func_5(countOneBits(0u), func_4(func_1(1u), true, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1091f + 1000f), _wgslsmith_f_op_f32(trunc(1000f)))), 1013f, _wgslsmith_f_op_f32(312f + 1000f))));
}

