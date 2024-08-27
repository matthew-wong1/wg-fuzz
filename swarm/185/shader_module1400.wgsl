struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = 8587u;
    var var_1 = Struct_1(vec2<u32>(~countOneBits(26765u), global0[_wgslsmith_index_u32(1u, 14u)]), ~(vec4<i32>(-u_input.a, -7085i, u_input.a, i32(-1i) * -2147483647i) ^ abs(vec4<i32>(u_input.a, -37363i, -31692i, -2147483647i))));
    let var_2 = max(~var_1.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~17685u << (u_input.c % 32u)), global0[_wgslsmith_index_u32(~var_1.a.x, 14u)]), 14u)]);
    var var_3 = vec3<bool>(arg_0.x, true == ((any(vec4<bool>(arg_0.x, arg_0.x, false, true)) && true) || arg_0.x), select(true, (!arg_0.x & false) | !all(vec3<bool>(arg_0.x, false, false)), false));
    return _wgslsmith_mult_vec4_i32(var_1.b, ((vec4<i32>(var_1.b.x, 1i, u_input.a, 0i) << (firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u))) << (~max(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.d, 14u)], var_1.a.x, 48962u), vec4<u32>(77114u, 0u, global0[_wgslsmith_index_u32(0u, 14u)], 1u)) % vec4<u32>(32u))) << (~(~(~vec4<u32>(var_1.a.x, 50416u, 17923u, 48462u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(abs(arg_1), select(_wgslsmith_add_vec4_i32(~vec4<i32>(14460i, 9985i, -1i, -2147483647i), func_3(vec2<bool>(true, false))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -19227i, u_input.a), vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a))), (arg_0.x <= arg_0.x) & true) << (~(~vec4<u32>(47490u, 1u, 1u, 4294967295u)) % vec4<u32>(32u)));
    let var_1 = Struct_1(countOneBits(_wgslsmith_div_vec2_u32(var_0.a, ~var_0.a)), var_0.b);
    let var_2 = abs(firstTrailingBit(vec4<u32>(u_input.b & u_input.b, 34022u, ~1u, 1u) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, u_input.d, 4294967295u, var_1.a.x), vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], u_input.c, u_input.d, 4294967295u), vec4<u32>(6813u, u_input.b, 1u, 1u))));
    var var_3 = -2147483647i;
    return Struct_1(vec2<u32>(_wgslsmith_sub_u32(38823u, min(49739u, countOneBits(4294967295u))), 4294967295u), var_0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1340f)));
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_1 = ~u_input.a;
    global0 = array<u32, 14>();
    return func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -705f, _wgslsmith_f_op_f32(1317f - _wgslsmith_f_op_f32(floor(-505f))), _wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(var_0 * var_0)))), ~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14594u, 14u)], 14u)]), abs(vec2<u32>(u_input.d, 61061u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1290f, -2109f) - vec2<f32>(558f, 1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-855f, -2576f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1017f) + vec2<f32>(1105f, -329f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(933f, 1240f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 856f))))));
    var var_1 = 598f;
    global0 = array<u32, 14>();
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * -388f))) + _wgslsmith_f_op_f32(exp2(1f))), -381f));
    return _wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(1u, _wgslsmith_add_u32(24946u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 160200u, arg_3.a.x, global0[_wgslsmith_index_u32(1u, 14u)]), vec4<u32>(arg_0.a.x, 4294967295u, 0u, 1u))), ~(vec3<u32>(0u, 0u, 54517u) << (vec3<u32>(58839u, 0u, arg_0.a.x) % vec3<u32>(32u))))), ~(vec3<u32>(func_2(vec4<f32>(var_0.x, -1324f, -939f, var_0.x), vec2<u32>(arg_1.a.x, arg_1.a.x)).a.x, 30133u, 4294967295u) >> (vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 20838u), 1u, arg_3.a.x & 4294967295u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec3<u32>(global0[_wgslsmith_index_u32(46231u, 14u)], 80429u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78782u, 14u)], 14u)]) & vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(85121u, 14u)], u_input.b), func_4(Struct_1(vec2<u32>(87548u, 0u), vec4<i32>(u_input.a, u_input.a, -35127i, u_input.a)), func_1(), -vec2<i32>(u_input.a, u_input.a), Struct_1(vec2<u32>(4294967295u, 10959u), vec4<i32>(-1i, u_input.a, u_input.a, 29293i)))), select(~vec4<i32>(abs(13704i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 53628i, u_input.a), vec3<i32>(-60646i, 1i, 1i)), ~u_input.a, _wgslsmith_sub_i32(1i, u_input.a)), abs(func_3(vec2<bool>(false, true))) << (reverseBits(vec4<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 14u)], 23577u) >> (vec4<u32>(4294967295u, u_input.b, u_input.c, 42622u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)));
}

