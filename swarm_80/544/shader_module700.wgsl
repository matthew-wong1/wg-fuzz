struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 68576u, 4294967295u, 44148u);

var<private> global1: Struct_2 = Struct_2(4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = u_input.a.x;
    global0 = select(vec4<u32>(~((global1.a & 60303u) >> ((global0.x & global0.x) % 32u)), global0.x, _wgslsmith_mult_u32(~global1.a << (_wgslsmith_sub_u32(arg_0, 1u) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, global1.a, 65198u), vec4<u32>(4294967295u, 0u, arg_0, 68575u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), global0.zz))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.a, 28538u), 20036u)), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global1.a, global1.a, global1.a, global0.x)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_0, 37066u, 0u, arg_0), vec4<u32>(14309u, 1u, global1.a, 4294967295u)), firstTrailingBit(vec4<u32>(22506u, global0.x, arg_0, 0u)))), u_input.a.x < (1i << (global0.x % 32u)));
    return vec4<u32>(~global0.x, 56251u, global0.x, ~reverseBits(0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = vec4<u32>(~arg_2.a, 0u, 4294967295u, global1.a);
    global0 = ~vec4<u32>(12359u, abs(~global1.a), ~global1.a, 14119u);
    var var_0 = Struct_2(29894u >> (reverseBits(~_wgslsmith_mult_u32(arg_2.a, 0u)) % 32u));
    let var_1 = Struct_2(max(~global1.a, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(78056u, var_0.a, 0u), reverseBits(vec3<u32>(arg_2.a, 1u, 98784u)), vec3<bool>(true, true, true)), vec3<u32>(var_0.a, 34126u, 1u))));
    let var_2 = vec2<bool>(true, -802f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1348f - _wgslsmith_f_op_f32(-arg_1.x))));
    return vec4<bool>(false, countOneBits(u_input.a.x) == ~arg_0.x, arg_0.x == _wgslsmith_mod_i32(~(0i ^ u_input.a.x), min(41227i, ~u_input.a.x)), !(all(vec3<bool>(false, false, true)) || true) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.x)) + _wgslsmith_f_op_f32(trunc(-577f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(1494f, 521f) + arg_2.b.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: bool) -> bool {
    let var_0 = 818f;
    global1 = Struct_2(func_1(_wgslsmith_mult_u32(global0.x, ~49175u)).x ^ _wgslsmith_mod_u32(abs(global1.a | 2422u), 4294967295u));
    global0 = ~(~reverseBits(vec4<u32>(8318u, 4294967295u, global1.a, global0.x))) ^ ~reverseBits(abs(~vec4<u32>(0u, 53913u, global0.x, global0.x)));
    var var_1 = abs(-1667i ^ u_input.a.x);
    var var_2 = u_input.a.xy;
    return !arg_0.x;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec4<bool>(true, true, any(vec3<bool>(true, true, true)) && true, select(!func_4(vec4<bool>(true, false, true, false), func_3(u_input.a.wyz, vec3<f32>(-726f, -796f, -992f), Struct_1(global0.x, vec3<f32>(-1153f, -1087f, 682f))), true), (true || any(vec3<bool>(true, true, false))) | select(true, false, any(vec2<bool>(false, false))), true));
    let var_1 = u_input.a.x;
    global1 = Struct_2(~_wgslsmith_clamp_u32(global1.a, ~(~global0.x), 6568u));
    global0 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_div_vec4_u32(max(vec4<u32>(0u, arg_0.x, arg_0.x, 1u), vec4<u32>(0u, global1.a, 2739u, global1.a)), firstLeadingBit(vec4<u32>(35304u, global0.x, 2883u, arg_0.x)))), ~select(~vec4<u32>(global0.x, 0u, 0u, 46850u), ~vec4<u32>(10851u, global1.a, global1.a, global1.a), !vec4<bool>(true, true, var_0.x, var_0.x))) | vec4<u32>(4294967295u, 1u, min(abs(0u & global1.a), global1.a), 1u);
    let var_2 = Struct_1(1u & arg_0.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, 1388f, 433f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 265f, 2028f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(floor(1853f)), firstTrailingBit(_wgslsmith_mult_u32(global0.x, 0u)) > ~countOneBits(0u))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = Struct_2(4294967295u);
    let var_0 = vec2<bool>(true, select(all(vec2<bool>(false, false)) | (_wgslsmith_f_op_f32(arg_1 + arg_0.b.x) > arg_0.b.x), !(global0.x < ~101800u), all(vec2<bool>(u_input.a.x < u_input.a.x, true))));
    global1 = Struct_2(arg_0.a);
    var var_1 = !func_3((vec3<i32>(-23682i, u_input.a.x, u_input.a.x) | u_input.a.yyx) & min(vec3<i32>(23057i, u_input.a.x, -19968i), _wgslsmith_mult_vec3_i32(u_input.a.xxy, u_input.a.zzw)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-728f, arg_1), arg_0.b.x, _wgslsmith_f_op_f32(trunc(-1074f))), arg_0.b, false)), arg_0);
    return arg_0;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = arg_1.b;
    let var_1 = Struct_1(24582u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(func_5(Struct_1(global1.a, vec3<f32>(1084f, -1081f, arg_1.b.x)), arg_1.b.x).b.x)))), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.b.x)))))));
    let var_2 = ~arg_2.a;
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(global0.x), 46979u), max(_wgslsmith_clamp_u32(countOneBits(countOneBits(arg_2.a)), ~_wgslsmith_add_u32(var_2, var_2), 110979u), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.a, arg_2.a), ~global0.xx)), abs(4294967295u), 19686u << (_wgslsmith_dot_vec4_u32(vec4<u32>(43972u, 1u, 33869u, 4294967295u) & ~vec4<u32>(var_1.a, global1.a, 1u, 29168u), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.a, 1u, arg_1.a, global1.a), ~vec4<u32>(arg_1.a, 4294967295u, 4294967295u, 58u))) % 32u));
    global0 = (~var_3 << (var_3 % vec4<u32>(32u))) & var_3;
    return StorageBuffer(_wgslsmith_sub_vec3_u32(var_3.zww, func_1(~(~38104u)).xxy), var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(136f, var_0.x, var_1.b.x, var_1.b.x), vec4<f32>(arg_1.b.x, -1013f, var_1.b.x, 1263f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-731f, 1344f, -1296f, arg_1.b.x))))))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(-1640f));
    global0 = func_1(global1.a);
    var var_1 = -7201i;
    global1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(~1u, global0.x) << (~(~global0.x) % 32u), reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 38052u, 1u), vec3<u32>(global0.x, global0.x, 22601u)), global0.x))));
    global0 = ~vec4<u32>(global1.a, _wgslsmith_add_u32(global0.x, 61266u) & global0.x, ~func_1(1u).x | 4294967295u, ~global0.x);
    var_1 = -(~min(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i))) << (~global0.x % 32u));
    var var_2 = ~min(u_input.a.x, u_input.a.x | 0i);
    var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = func_6(!vec3<bool>(any(vec3<bool>(false, false, true)), !(global0.x == 4294967295u), true), func_5(Struct_1(~abs(global1.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, -737f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 476f, -1161f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(0u, 1u, 1951u)))))), Struct_2(_wgslsmith_div_u32(0u, global0.x)));
}

