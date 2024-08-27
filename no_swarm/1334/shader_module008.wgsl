struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> bool {
    return arg_0.b;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    return select(u_input.a.zxy, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(2147483647i, 36803i), -2147483647i), arg_1.a.yxy), any(vec2<bool>(all(vec3<bool>(true, true, true)), true))) << (vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25472u, 19930u), vec3<u32>(4294967295u, 26955u, 4294967295u)), ~1u), ~_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(108065u, 20575u)), 0u) % vec3<u32>(32u));
}

fn func_2() -> bool {
    return func_1(Struct_1((-1i > ~u_input.a.x) || true, u_input.a.x != _wgslsmith_dot_vec2_i32(vec2<i32>(18886i, u_input.a.x), vec2<i32>(-9050i, u_input.a.x))), Struct_2(-(~(~u_input.a)), 1i), true, ~func_3(_wgslsmith_div_i32(max(u_input.a.x, u_input.a.x), -u_input.a.x), Struct_2(vec4<i32>(29373i, u_input.a.x, u_input.a.x, 0i), u_input.a.x)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(all(arg_2.wx), false);
    let var_1 = Struct_2(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(countOneBits(u_input.a.x), arg_3.a.x, _wgslsmith_mod_i32(-u_input.a.x, ~u_input.a.x), u_input.a.x)), arg_3.a.x);
    let var_2 = var_0;
    let var_3 = arg_3;
    let var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_0, 82038u, arg_0, arg_0) | vec4<u32>(arg_0, 1731u, 2889u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, arg_0, 0u) << (vec4<u32>(arg_0, 32614u, arg_0, 4294967295u) % vec4<u32>(32u)), countOneBits(vec4<u32>(43754u, arg_0, 0u, arg_0)))), reverseBits(~(~vec4<u32>(0u, arg_0, 0u, arg_0)))), arg_0);
    return Struct_1(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, reverseBits(1u)), 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(min(27068u, 39312u), ~4294967295u, _wgslsmith_div_u32(10651u, 48279u), 1u), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)))), !func_1(Struct_1(false, true), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -736i, 1511i, 2147483647i), u_input.a), -14286i), all(vec3<bool>(true, true, true)), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) ^ vec3<i32>(u_input.a.x, u_input.a.x, -40001i))), select(select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), u_input.a.x >= -2147483647i), func_2()), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, func_1(Struct_1(false, false), Struct_2(vec4<i32>(11870i, 29387i, u_input.a.x, u_input.a.x), u_input.a.x), true, ~vec3<i32>(-43002i, 28599i, 49614i)), true, true)), Struct_2(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (~vec4<u32>(4294967295u, 1u, 0u, 17042u) % vec4<u32>(32u))), ~(-19751i)));
    let var_1 = Struct_2(u_input.a, 1i);
    var_0 = func_4(1u << (0u % 32u), false, select(vec4<bool>(func_2(), var_0.a, !(!var_0.b), var_0.b || all(vec2<bool>(false, true))), !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.a, var_0.b, true), any(vec2<bool>(var_0.b, true))), vec4<bool>(var_0.b, true, var_0.b, select(0u, 4294967295u, var_0.a) <= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 32432u), vec3<u32>(1u, 1u, 18774u)))), Struct_2(min(_wgslsmith_sub_vec4_i32(reverseBits(var_1.a), min(vec4<i32>(var_1.a.x, 1i, -2147483647i, u_input.a.x), u_input.a)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(116837i, -3483i, var_1.a.x, u_input.a.x)), abs(-47071i), _wgslsmith_add_i32(-4552i, 31621i))), ~(-11319i)));
    var var_2 = func_4(_wgslsmith_mult_u32(~reverseBits(4294967295u), 1u), !(!var_0.a), select(vec4<bool>(false, true, var_0.a, (var_1.a.x != 1699i) || true), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 61263u, 24197u, 0u), vec4<u32>(0u, 37024u, 55989u, 39806u)) > 1u, true, !var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1202f) >= _wgslsmith_f_op_f32(step(1730f, 721f))), select(!select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(true, true, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, true)), !vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(true, true, all(vec4<bool>(var_0.a, var_0.a, false, var_0.b)), true))), var_1);
    var_0 = func_4(reverseBits(_wgslsmith_mult_u32(countOneBits(firstLeadingBit(4294967295u)), 54784u)), var_2.b, select(!vec4<bool>(true, !var_0.a, true, true), select(vec4<bool>(all(vec3<bool>(true, var_0.a, true)), false, var_2.b, true), !(!vec4<bool>(true, var_2.b, false, var_2.a)), !select(vec4<bool>(true, true, true, var_0.b), vec4<bool>(false, true, false, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a))), select(!select(vec4<bool>(false, var_0.b, var_2.a, true), vec4<bool>(var_0.b, false, var_2.b, var_2.b), false), select(!vec4<bool>(var_0.b, false, true, false), !vec4<bool>(true, true, var_0.a, var_0.b), true), select(select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(var_0.b, false, true, var_2.b), true), select(vec4<bool>(true, var_0.a, var_2.a, var_0.b), vec4<bool>(var_2.b, false, var_0.b, var_2.a), vec4<bool>(var_2.a, var_2.a, var_0.b, false)), true))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 46209u, 1u), abs(~vec4<u32>(1u, 1u, 1u, 1u))));
}

