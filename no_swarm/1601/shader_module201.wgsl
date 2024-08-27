struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 9>;

var<private> global2: vec3<bool>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    global2 = global0.a.zzw;
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32((vec3<u32>(global1[_wgslsmith_index_u32(0u, 9u)], u_input.a, 25384u) & vec3<u32>(4294967295u, 5129u, global0.c.x)) >> (global0.e % vec3<u32>(32u)), vec3<u32>(~global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(~u_input.a, 9u)], firstTrailingBit(2126u)))), ~global0.e);
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-35746i, global0.b.x, 0i) << (~(~u_input.b) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global0.b.x, u_input.c, u_input.c) ^ vec4<i32>(global0.b.x, -1i, 1i, 8414i), vec4<i32>(global0.b.x, -94037i, 2147483647i, u_input.c)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, -14683i, -2147483647i), vec3<i32>(2147483647i, u_input.c, global0.b.x))), global0.b.x)), i32(-1i) * -19990i);
    let var_2 = global0.a.x;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, 664f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, 514f)))))));
    return _wgslsmith_f_op_vec2_f32(ceil(var_3.a));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3())));
    global2 = global0.a.zyw;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, var_0.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, -439f), vec2<f32>(var_0.x, var_0.x))), select(arg_0, arg_0, global0.a.x)))))));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_mult_u32(abs(~39640u), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 4294967295u), u_input.b.zx), 9u)]), _wgslsmith_add_u32(global0.c.x ^ u_input.b.x, ~1u) ^ firstTrailingBit(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 9u)])), countOneBits(20781u), global0.e.x), !global0.a, Struct_1(select(vec4<bool>(all(global0.a.xy), all(vec2<bool>(global0.a.x, global0.a.x)), global0.d.x <= global1[_wgslsmith_index_u32(7462u, 9u)], global0.a.x), !vec4<bool>(false, true, true, global2.x), global0.a), global0.b, global0.d, _wgslsmith_clamp_vec4_u32(max(global0.c, _wgslsmith_sub_vec4_u32(global0.d, global0.c)), ~min(vec4<u32>(20472u, global1[_wgslsmith_index_u32(u_input.a, 9u)], 26354u, global0.d.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.b.x, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)])), global0.c), select(global0.e, vec3<u32>(~4294967295u, firstLeadingBit(global0.e.x), _wgslsmith_dot_vec4_u32(global0.d, global0.d)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -915f, var_0.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(916f, var_0.x, -1171f)))));
    let var_3 = Struct_3(var_2.d.yy);
    return ~max(vec2<i32>(93827i, 0i), _wgslsmith_clamp_vec2_i32(global0.b, _wgslsmith_add_vec2_i32(var_2.c.b, -var_2.c.b), _wgslsmith_clamp_vec2_i32(firstTrailingBit(var_2.c.b), reverseBits(global0.b), -vec2<i32>(0i, 2147483647i))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_1(global0.a, vec2<i32>(-2147483647i, 2147483647i), ~(~vec4<u32>(global0.c.x, _wgslsmith_mult_u32(1u, arg_0.x), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 26538u), firstTrailingBit(34312u))), abs(vec4<u32>(32513u ^ (u_input.a >> (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1u), ~arg_0), 0u << (0u % 32u), ~_wgslsmith_mult_u32(arg_0.x, arg_0.x))), vec3<u32>(1u, _wgslsmith_sub_u32(4294967295u << (global0.c.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.d.wz, global0.c.zz), reverseBits(1u))), _wgslsmith_mult_u32(~arg_0.x, countOneBits(53517u))));
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(-func_1(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(global0.e.x, 9u)]), global0.a.yyy) & vec2<i32>(u_input.c, firstLeadingBit(global0.b.x)), vec2<i32>(global0.b.x, -(~(-2147483647i))));
    global2 = !select(select(global0.a.wyy, !(!global0.a.yww), vec3<bool>(false, !global2.x, !global0.a.x)), global0.a.yxy, global0.a.zyz);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(411f)));
    global0 = Struct_1(global0.a, vec2<i32>(-2147483647i, ~u_input.c ^ abs(-19953i)) | global0.b, vec4<u32>(4294967295u, global0.c.x, global1[_wgslsmith_index_u32(select(u_input.b.x, _wgslsmith_add_u32(53508u, u_input.b.x), any(global0.a)), 9u)] << (global0.d.x % 32u), _wgslsmith_dot_vec4_u32(global0.d, vec4<u32>(_wgslsmith_div_u32(global0.e.x, global0.e.x), global0.c.x, global0.d.x, 1u))), abs(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(37378u, 9u)], 0u, 9735u, u_input.b.x), global0.c))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(global0.d), vec4<u32>(global0.c.x, 21693u, 43083u, 8644u)), ~(~vec4<u32>(global0.e.x, global1[_wgslsmith_index_u32(global0.e.x, 9u)], 15965u, 14993u))), 5093u, global0.c.x));
    var var_2 = Struct_2(global0.d, global0.a, Struct_1(vec4<bool>(all(vec2<bool>(true, false)), global0.a.x, false, all(vec2<bool>(true, global0.a.x))), (global0.b ^ vec2<i32>(global0.b.x, u_input.c)) << (vec2<u32>(_wgslsmith_mod_u32(29397u, global1[_wgslsmith_index_u32(global0.e.x, 9u)]), 5480u) % vec2<u32>(32u)), global0.c, reverseBits(~vec4<u32>(0u, 1u, 1u, global1[_wgslsmith_index_u32(26055u, 9u)])), vec3<u32>(~1u << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41451u, 9u)], 9u)] % 32u), u_input.a, global0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(530f - var_1), 181f, _wgslsmith_f_op_f32(var_1 + var_1)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, 720f, var_1)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 272f) + vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_vec2_f32(func_3()).x, !global0.a.x)), _wgslsmith_f_op_f32(round(var_1)))), reverseBits(-3912i));
}

