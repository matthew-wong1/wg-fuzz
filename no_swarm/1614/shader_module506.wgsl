struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u));

var<private> global2: array<u32, 23> = array<u32, 23>(60013u, 11378u, 8567u, 97460u, 0u, 19181u, 4294967295u, 75264u, 51244u, 13886u, 80886u, 33196u, 82546u, 0u, 4294967295u, 7046u, 0u, 4294967295u, 5706u, 0u, 2731u, 24757u, 122752u);

var<private> global3: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global4: u32 = 0u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_0.x & -u_input.a.x, _wgslsmith_add_i32(max(u_input.a.x, -2147483647i), 2821i)), u_input.a.x, u_input.e.x), countOneBits(_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, arg_0.x), u_input.e.xyw)), select(u_input.a, u_input.e.yyx, select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), arg_0)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    var_0 = (vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, u_input.e.x)), var_0.yy), var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 1i), vec2<i32>(arg_0.x, var_0.x))) ^ vec3<i32>(min(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), var_0.x, i32(-1i) * -u_input.e.x)) | _wgslsmith_div_vec3_i32(select(u_input.e.zwz, arg_0, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), ~u_input.a);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1007f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(select(-1207f, -417f, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1688f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1835f * -418f)) - 860f)), !all(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, global1.a.x >= global3.x, true))));
    global0 = array<vec2<f32>, 27>();
    return _wgslsmith_sub_vec3_u32(~(~vec3<u32>(20140u, u_input.c, 0u)), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1889u, global3.x, global2[_wgslsmith_index_u32(66492u, 23u)])), ~vec3<u32>(global1.a.x, global2[_wgslsmith_index_u32(0u, 23u)], 1u))) ^ countOneBits(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 27394u)), firstTrailingBit(vec3<u32>(41044u, 44796u, 0u))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(~(global1.a | ~global1.a));
    global1 = Struct_1(~(~(firstTrailingBit(var_0.a) & ~var_0.a)));
    var var_1 = func_3(vec3<i32>(arg_0.x, 1i, u_input.e.x));
    global1 = var_0;
    var var_2 = ~28738u;
    return var_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = func_2(u_input.a);
    var var_1 = arg_2;
    var var_2 = func_2(-(vec3<i32>(u_input.a.x, arg_3, 0i) ^ -u_input.a) | -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-2147483647i, 10560i, u_input.d)), vec3<i32>(arg_3, -2147483647i, 5863i)));
    var_0 = arg_2;
    global4 = var_1.a.x;
    return Struct_1(global1.a);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    global1 = arg_0;
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.e.x, 17065i), u_input.e.yz);
    var var_1 = func_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(~(~u_input.e.wwx), u_input.a)));
    global0 = array<vec2<f32>, 27>();
    return func_3(select(u_input.e.zxz, -u_input.a, vec3<bool>(any(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 23>();
    let var_0 = ~(~(~vec3<u32>(u_input.b, ~2495u, countOneBits(56918u))));
    global4 = global2[_wgslsmith_index_u32(~select(~u_input.b, firstLeadingBit(countOneBits(1u)), true), 23u)];
    let var_1 = _wgslsmith_clamp_u32(var_0.x, _wgslsmith_add_u32(var_0.x, 1u ^ min(global2[_wgslsmith_index_u32(24565u, 23u)], global2[_wgslsmith_index_u32(3270u, 23u)])), abs(~u_input.b)) != min(~(~(10995u ^ global1.a.x)), func_4(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-584f, -312f, -1973f) * vec3<f32>(1229f, 1467f, -1029f)), vec4<f32>(-1000f, 1416f, 1000f, 714f), Struct_1(global1.a), u_input.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1121f, 750f, false)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, var_0.x, global3.x), select(global1.a.x, global3.x, false))));
    global4 = _wgslsmith_div_u32(~u_input.b, 30699u) ^ ~(_wgslsmith_dot_vec4_u32(vec4<u32>(6460u, 1u, 55363u, var_0.x), ~vec4<u32>(0u, global3.x, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20136u, 23u)], 23u)])) >> ((54961u >> (var_0.x % 32u)) % 32u));
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, 1113f, -2426f)))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1298f, 701f))))), _wgslsmith_f_op_f32(trunc(-711f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(f32(-1f) * -1220f))))), 186f), func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1124f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)), _wgslsmith_f_op_f32(min(433f, -388f))), vec4<f32>(-1016f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1197f, -784f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f + -385f)), _wgslsmith_f_op_f32(trunc(-1447f))), func_2(-select(u_input.e.xww, u_input.e.xzz, true)), max(min(i32(-1i) * -32336i, u_input.e.x), u_input.e.x)), countOneBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(389f, 4294967295u, u_input.e, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2722f * -1028f) - 1f)));
}

