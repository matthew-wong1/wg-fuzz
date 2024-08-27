struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<i32> {
    var var_0 = 551f;
    var_0 = 1f;
    let var_1 = vec3<bool>(true, true, true);
    var_0 = -1682f;
    var_0 = -1063f;
    return vec3<i32>(u_input.a, (arg_0 ^ 0i) >> (~abs(~u_input.c) % 32u), -5747i);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = u_input.c;
    let var_1 = arg_3.e;
    let var_2 = _wgslsmith_f_op_f32(1150f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2187f * _wgslsmith_f_op_f32(f32(-1f) * -1320f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(898f, -1079f))), _wgslsmith_f_op_f32(-167f * 1f), false))));
    var_0 = 1u;
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 8515u, arg_2.x, 31132u) << (arg_2 % vec4<u32>(32u)), vec4<u32>(~2269u, ~arg_2.x, u_input.b, arg_2.x & arg_2.x)), vec4<u32>(0u, ~(~33458u), 1u, ~(u_input.c ^ arg_2.x))) & ~u_input.c;
    return abs(u_input.a) >> (46449u % 32u);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = -vec2<i32>(func_4(min(func_3(arg_0.e.d, arg_0.e.b), vec3<i32>(1i, 60810i, u_input.a) >> (vec3<u32>(40116u, 22580u, 26852u) % vec3<u32>(32u))), !arg_0.e.e & (1933u != u_input.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 43540u, u_input.b, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 35207u)), arg_0), -41636i);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(u_input.c, 64495u, 1u)), abs(~0u), ~4294967295u), u_input.b), abs(~vec3<u32>(_wgslsmith_mod_u32(19047u, 32172u), u_input.b, 1u)), ~firstLeadingBit(firstTrailingBit(vec3<u32>(51152u, 1u, u_input.c))) | _wgslsmith_add_vec3_u32(vec3<u32>(26684u, 4294967295u, u_input.b) >> (firstTrailingBit(vec3<u32>(u_input.c, u_input.b, 23302u)) % vec3<u32>(32u)), select(vec3<u32>(1u, 52409u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, u_input.c), vec3<u32>(56u, u_input.c, 0u)), -1i > arg_0.a.d)));
    var var_2 = any(vec3<bool>(any(arg_0.a.a.yw), any(arg_0.e.a.yzw), !any(select(arg_0.a.a.wyw, vec3<bool>(false, true, arg_0.d.x), arg_0.b.a.xwy))));
    return vec2<u32>(var_1.x, max(var_1.x, u_input.c)) & vec2<u32>(27949u, reverseBits(0u));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = ~(~func_2(Struct_2(Struct_1(arg_1.a, arg_1.e, u_input.a, arg_1.d, false), Struct_1(arg_1.a, arg_1.a.x, -2147483647i, u_input.a, arg_1.b), !vec3<bool>(arg_1.b, true, false), vec2<bool>(true, true), Struct_1(vec4<bool>(true, arg_1.e, arg_1.b, arg_1.a.x), arg_1.e, arg_0.x, 0i, true))));
    var var_1 = var_0.x;
    let var_2 = select(!select(select(arg_1.a.xyx, arg_1.a.yyx, select(vec3<bool>(arg_1.a.x, true, arg_1.e), vec3<bool>(true, false, true), arg_1.a.yyz)), vec3<bool>(all(vec3<bool>(false, arg_1.a.x, arg_1.e)), true, any(arg_1.a.yx)), (1u & var_0.x) >= u_input.c), !(!vec3<bool>(u_input.c == 4294967295u, arg_1.a.x, true)), arg_1.a.zxw);
    var var_3 = select(vec3<bool>(-1i != -_wgslsmith_add_i32(2147483647i, arg_1.d), select(true, any(!var_2.xy), false), true && !var_2.x), arg_1.a.xzx, select(!(!(!var_2)), var_2, var_2.x));
    let var_4 = Struct_1(!select(!select(arg_1.a, arg_1.a, arg_1.a.x), select(arg_1.a, vec4<bool>(arg_1.e, arg_1.e, var_3.x, arg_1.a.x), vec4<bool>(arg_1.b, var_3.x, false, arg_1.e)), arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(112f, -2761f)), _wgslsmith_f_op_f32(-510f + 896f))) <= 229f, _wgslsmith_add_i32(-reverseBits(abs(arg_1.d)), countOneBits(-(~(-1i)))), u_input.a, max(8090i, -arg_1.c << (~4294967295u % 32u)) > 55631i);
    return func_4(firstLeadingBit(firstTrailingBit(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1021f)))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1599f - -1416f)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(func_2(Struct_2(var_4, Struct_1(vec4<bool>(var_4.a.x, false, arg_1.b, true), arg_1.b, -9011i, 74995i, var_4.e), var_2, vec2<bool>(true, var_4.b), var_4)).x, select(var_0.x, u_input.b, var_3.x), select(var_0.x, u_input.c, true), u_input.c), max(vec4<u32>(11857u, u_input.b, 4294967295u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 16777u, 1u, 94510u), vec4<u32>(u_input.b, 4294967295u, u_input.c, var_0.x)))), Struct_2(Struct_1(select(var_4.a, var_4.a, var_4.a), true, abs(-39684i), countOneBits(~(-53102i)), any(var_2)), Struct_1(select(select(var_4.a, vec4<bool>(true, false, false, var_2.x), arg_1.a), var_4.a, false), true, reverseBits(_wgslsmith_mult_i32(u_input.a, arg_0.x)), abs(u_input.a), any(select(arg_1.a.zyw, arg_1.a.wxx, false))), arg_1.a.zzy, select(vec2<bool>(false, var_2.x | false), arg_1.a.zx, vec2<bool>(true, true)), Struct_1(select(!vec4<bool>(var_4.b, false, var_3.x, true), vec4<bool>(false, var_3.x, true, true), var_4.a), ~var_0.x < ~var_0.x, reverseBits(_wgslsmith_sub_i32(-1i, 7356i)), i32(-1i) * -var_4.d, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec4<bool>(true, true, true, 1405u < u_input.c)) && (u_input.c <= firstTrailingBit(~(~13826u)));
    var_0 = !(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, -845i, func_1(vec3<i32>(u_input.a, 0i, u_input.a), Struct_1(vec4<bool>(false, false, true, true), false, u_input.a, u_input.a, true))), vec4<i32>(1i, i32(-1i) * -2147483647i, min(u_input.a, u_input.a), _wgslsmith_sub_i32(0i, 30493i))) >= -3994i);
    var var_1 = vec4<bool>(true, false && (!(u_input.a > u_input.a) || true), false, select(select(true, !all(vec3<bool>(true, false, true)), all(vec3<bool>(true, false, true)) == true), !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-7713i, -21472i, u_input.a, u_input.a)) < u_input.a), true));
    var var_2 = Struct_3(Struct_1(vec4<bool>(var_1.x, select(true, true, var_1.x), all(vec4<bool>(true, false, var_1.x, var_1.x)) | all(var_1.yx), all(vec2<bool>(var_1.x, var_1.x))), func_2(Struct_2(Struct_1(vec4<bool>(true, false, var_1.x, var_1.x), var_1.x, u_input.a, u_input.a, var_1.x), Struct_1(vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x, u_input.a, 2147483647i, true), vec3<bool>(var_1.x, true, false), var_1.zx, Struct_1(vec4<bool>(true, var_1.x, var_1.x, var_1.x), true, 2147483647i, 14950i, var_1.x))).x <= ~func_2(Struct_2(Struct_1(vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x, u_input.a, -2147483647i, var_1.x), Struct_1(vec4<bool>(var_1.x, true, false, true), var_1.x, u_input.a, 2147483647i, var_1.x), vec3<bool>(var_1.x, var_1.x, true), var_1.zz, Struct_1(vec4<bool>(var_1.x, false, false, false), true, 1i, 30055i, false))).x, -2147483647i, u_input.a, any(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.x, var_1.x), true))), true, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 60649u)), countOneBits(vec2<u32>(u_input.c, u_input.c))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(8868u, u_input.c), vec2<u32>(1u, 42580u))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~min(36322u, u_input.b), ~(u_input.b << (22302u % 32u))), 38180u), 11596u);
    var var_3 = Struct_2(Struct_1(!select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_2.b, true, var_2.a.b, true)), any(var_1.xw), u_input.a, ~u_input.a, var_2.a.b != all(vec3<bool>(true, false, false))), Struct_1(!(!vec4<bool>(var_1.x, false, var_2.b, true)), true, ~_wgslsmith_add_i32(var_2.a.d ^ -2147483647i, ~var_2.a.d), var_2.a.c, u_input.b != ~(~u_input.c)), var_1.xxw, !select(var_1.xy, !vec2<bool>(var_2.b, false), !var_2.a.b), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)))), max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(26128u, 29567u, 4294967295u), min(vec3<u32>(var_2.c, 81412u, var_2.e), vec3<u32>(4294967295u, var_2.d, 20101u))), vec3<u32>(countOneBits(u_input.b), max(50165u, 1u), reverseBits(u_input.b))), min(_wgslsmith_mult_u32(u_input.c, 59345u), 101936u)), vec2<i32>(var_3.e.c << (var_2.e % 32u), -2295i));
}

