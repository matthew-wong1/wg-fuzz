struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, false, false, true, true, false, true, true, false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = all(vec3<bool>(!(!global0[_wgslsmith_index_u32(abs(arg_0), 11u)]), any(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true)), true, true, global0[_wgslsmith_index_u32(22832u, 11u)])), true));
    var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(566f, _wgslsmith_f_op_f32(min(-1003f, -1161f)), -1378f, 1400f))), -683f, u_input.a, 1f);
    var var_2 = Struct_2(abs(1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, 27094u), ~vec2<u32>(63376u, arg_0)) % 32u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.d)), _wgslsmith_f_op_f32(select(-641f, var_1.b, false)))), var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, var_1.d)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(775f)), _wgslsmith_f_op_f32(-3215f + _wgslsmith_f_op_f32(var_1.a.x * -475f)))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f * var_1.a.x)) - 466f)), var_1.a.x);
    let var_3 = ~select(vec2<u32>(0u, var_1.c) & vec2<u32>(arg_0, var_2.b.c), vec2<u32>(u_input.a, ~var_2.b.c), (true && global0[_wgslsmith_index_u32(1u, 11u)]) || global0[_wgslsmith_index_u32(4294967295u, 11u)]) << (firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(~12107u, ~u_input.a), reverseBits(~arg_0))) % vec2<u32>(32u));
    return var_3;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + -1434f), _wgslsmith_f_op_f32(arg_0 - -316f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-393f - 1000f) * _wgslsmith_f_op_f32(arg_0 + arg_0)), -670f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - 1070f)), _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 11806u)), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 4294967295u))))), 2429f);
    var var_1 = var_0;
    global0 = array<bool, 11>();
    var var_2 = func_3(1u);
    let var_3 = Struct_4(47768i, abs(vec2<u32>(~22983u, _wgslsmith_mod_u32(u_input.a ^ 359u, _wgslsmith_clamp_u32(12459u, 1u, var_0.c)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-37358i, -1i, -1i), -vec3<i32>(-2147483647i, -2147483647i, 0i)), _wgslsmith_div_i32(1i, -9093i), ~0i) & min(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 21615i, 1i), vec3<i32>(46578i, 2147483647i, 2147483647i)), vec3<i32>(0i, -20217i, -35769i), vec3<i32>(-1152i, 2147483647i, -38074i)), max(firstLeadingBit(vec3<i32>(72479i, 7608i, 41534i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-27769i, 3504i, 1i), vec3<i32>(33662i, -8043i, 49641i)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_0.b, -1375f, var_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, var_0.b), -1000f, var_0.d, -422f)))), -1633f, _wgslsmith_sub_u32(var_0.c, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_3.b.x, var_0.c, 4294967295u, var_1.c)), ~vec4<u32>(87277u, 52859u, var_1.c, 34714u)))), var_0.d);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> vec4<i32> {
    global0 = array<bool, 11>();
    let var_0 = func_2(615f);
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_1 = ~36409i;
    return _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, arg_1, 73996i, arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_1, arg_0, -33711i), vec4<i32>(var_1, arg_2, 1i, arg_1)), vec4<i32>(18589i, 13544i, arg_1, arg_1) & vec4<i32>(3001i, -1722i, 42200i, arg_1)) << (vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1u), func_3(var_0.c).x, u_input.a, u_input.a << (u_input.a % 32u)) % vec4<u32>(32u)), vec4<i32>(arg_2 >> (14838u % 32u), var_1, firstTrailingBit(arg_1), i32(-1i) * -2147483647i)), ~vec4<i32>(arg_2, min(reverseBits(2147483647i), _wgslsmith_div_i32(-2147483647i, 5280i)), ~(~5227i), -50847i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1392f - -1561f) * _wgslsmith_f_op_f32(-643f - 1054f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(999f, 542f)))))));
    var_0 = _wgslsmith_f_op_f32(1f * -283f);
    let var_1 = func_1(~(~(57315i >> (u_input.a % 32u)) & -15404i), ~(i32(-1i) * -1i), -2147483647i << (u_input.a % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-971f, 1351f, -943f, 322f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(455f, -1579f, -391f, 189f) * vec4<f32>(858f, 864f, -530f, -497f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f)), firstTrailingBit(46112u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(830f, -356f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -621f), func_2(-1289f).a.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(647f - 1431f)), _wgslsmith_f_op_f32(-587f - 1106f), true))));
    let var_3 = select(!vec3<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 11u)], true, global0[_wgslsmith_index_u32(var_2.c, 11u)])), global0[_wgslsmith_index_u32(0u, 11u)], any(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, true, global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(80639u, 11u)], true, global0[_wgslsmith_index_u32(48070u, 11u)], false), true))), !(!vec3<bool>(all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 11u)])), any(vec2<bool>(false, false)), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(var_2.c, 11u)], false, true)))), var_1.x >= firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(2232i, -36962i), var_1.xx << (vec2<u32>(4294967295u, 16944u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_div_u32((var_2.c >> (u_input.a % 32u)) | var_2.c, ~abs(~4294967295u)));
}

