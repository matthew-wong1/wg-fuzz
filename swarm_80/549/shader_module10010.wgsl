struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(9116u, 27414u, 0u), vec3<u32>(4294967295u, 11646u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(5703u, 58153u, 0u), vec3<u32>(1u, 2304u, 4294967295u), vec3<u32>(6861u, 4294967295u, 26569u), vec3<u32>(7382u, 0u, 14476u), vec3<u32>(73114u, 7496u, 0u), vec3<u32>(29437u, 4294967295u, 90674u));

var<private> global1: array<vec2<bool>, 3>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = arg_2;
    global0 = array<vec3<u32>, 9>();
    global1 = array<vec2<bool>, 3>();
    global1 = array<vec2<bool>, 3>();
    let var_1 = !vec3<bool>(true, !(_wgslsmith_f_op_f32(-313f - 1245f) >= _wgslsmith_f_op_f32(floor(-1946f))), true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-125f - 137f), -516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1082f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = -2147483647i;
    global1 = array<vec2<bool>, 3>();
    let var_1 = !vec4<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true)))), !select(true, true, false), all(!select(global1[_wgslsmith_index_u32(u_input.b, 3u)], vec2<bool>(false, true), vec2<bool>(false, false))), select(false, true, true));
    var var_2 = var_1.x;
    let var_3 = Struct_1(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(4934i, arg_1), vec2<i32>(u_input.a, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(41670i, 0i), vec2<i32>(-62862i, arg_1)))), abs(~(~(arg_3 >> (arg_3 % vec2<u32>(32u))))));
    return vec2<u32>((arg_3.x ^ ~_wgslsmith_clamp_u32(1u, var_3.b.x, var_3.b.x)) | ~_wgslsmith_add_u32(1u, _wgslsmith_add_u32(3044u, 6320u)), min(3664u, ~((u_input.d ^ 116386u) ^ ~var_3.b.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = func_4(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 4121i, 2147483647i), vec3<i32>(u_input.a, -18521i, u_input.a)) << (u_input.c % 32u), u_input.a), firstTrailingBit(0i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(934f, 1556f, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2329f, 990f) + _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(arg_1.x, arg_1.x, 473f)) * vec3<f32>(arg_1.x, -1686f, -533f)) * _wgslsmith_f_op_vec3_f32(func_3(~41927u, -vec3<i32>(-2147483647i, -40999i, u_input.a), Struct_1(vec2<i32>(u_input.a, -1247i), arg_2.wy)))))), ~(~arg_2.xx));
    let var_1 = true;
    let var_2 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(22746i, 32618i, 1i), vec3<i32>(u_input.a, -2147483647i, u_input.a), arg_0.x), select(abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, -17145i), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(~vec3<i32>(u_input.a, -2147483647i, -2147483647i)), !arg_0.x != false)));
    var var_3 = min(var_2, min(vec3<i32>(var_2.x, var_2.x, u_input.a), var_2));
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(863f * arg_1.x))), _wgslsmith_f_op_vec3_f32(func_3(4294967295u, var_2, Struct_1(var_3.yy, arg_2.xw))).x, arg_1.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1796f, -2236f, 2131f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, arg_1.x, -2107f)))))));
    return _wgslsmith_f_op_vec3_f32(func_3(select(1u, 28275u, abs(-4181i) <= (-9638i >> (arg_2.x % 32u))), var_2, Struct_1(firstTrailingBit(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -9061i), var_2.zz)), arg_2.wx))).x;
}

fn func_1() -> vec4<bool> {
    let var_0 = 0u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2152f, -1000f) * vec2<f32>(-1942f, 483f))), max(vec4<u32>(1u, 0u, 4294967295u, var_0), ~vec4<u32>(27726u, u_input.d, var_0, u_input.c)), vec4<bool>(true, true, true, true))))), 1349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1487f * _wgslsmith_f_op_f32(-534f + 447f)))));
    global1 = array<vec2<bool>, 3>();
    let var_2 = vec4<i32>(~u_input.a >> (_wgslsmith_clamp_u32(~abs(var_0), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(0u, 9u)], vec3<u32>(var_0, var_0, 8897u)) << (_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(95747u, 9u)], vec3<u32>(78984u, 10432u, 4294967295u)) % 32u), ~24523u) % 32u), ~_wgslsmith_add_i32(_wgslsmith_mult_i32(max(20048i, u_input.a), -u_input.a), ~(-1i)), -countOneBits(-1i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -52777i, -u_input.a), vec3<i32>(u_input.a, u_input.a, 5997i) | (vec3<i32>(u_input.a, 1i, 1i) << (vec3<u32>(5326u, var_0, var_0) % vec3<u32>(32u)))), ~_wgslsmith_div_i32(abs(u_input.a), 1i)));
    global0 = array<vec3<u32>, 9>();
    return select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_2.x <= 24297i)), !select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, 0u < var_0, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true), vec4<bool>((_wgslsmith_div_i32(u_input.a, -53914i) >= -33247i) & ((30424u != u_input.d) != false), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), all(global1[_wgslsmith_index_u32(u_input.b, 3u)]))), false, !(all(global1[_wgslsmith_index_u32(33054u, 3u)]) == true)), !(!func_1()));
    let var_1 = _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -2147483647i, u_input.a), vec4<i32>(-27774i, -4067i, u_input.a, u_input.a)), -15514i), vec2<i32>(-7741i, -42721i))), ~firstLeadingBit(-vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(u_input.a, u_input.a));
    var_0 = !(!select(!(!vec4<bool>(true, var_0.x, true, var_0.x)), !select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, false, !var_0.x)));
    var var_2 = Struct_1(vec2<i32>(u_input.a, 1i) & (var_1 ^ var_1), _wgslsmith_mult_vec2_u32((_wgslsmith_add_vec2_u32(vec2<u32>(1u, 18182u), vec2<u32>(1u, 1u)) >> (select(vec2<u32>(102212u, u_input.d), vec2<u32>(u_input.b, u_input.c), false) % vec2<u32>(32u))) >> (vec2<u32>(u_input.d, ~u_input.b) % vec2<u32>(32u)), ~(~(~vec2<u32>(4294967295u, 18946u)))));
    var var_3 = ~(~4294967295u);
    global0 = array<vec3<u32>, 9>();
    var var_4 = var_0.yzy;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(99765u, var_2.b.x), firstTrailingBit(u_input.d)), u_input.d), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_u32(~4294967295u << (~var_2.b.x % 32u), _wgslsmith_sub_u32(u_input.c, 15237u)), vec3<i32>(_wgslsmith_mod_i32(abs(var_1.x), var_2.a.x), max(max(var_2.a.x, -40810i), 0i >> (1u % 32u)), var_1.x), Struct_1(firstTrailingBit(-vec2<i32>(1i, -1i)), ~(~var_2.b)))).x, 974f);
}

