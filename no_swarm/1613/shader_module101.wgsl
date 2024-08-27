struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(71294u, 1u);

var<private> global1: array<vec2<u32>, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    let var_0 = Struct_1(select(countOneBits(_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, u_input.a.x)), global1[_wgslsmith_index_u32(~arg_0, 29u)])), ~countOneBits(select(vec2<u32>(1u, u_input.a.x), u_input.a.zy, vec2<bool>(true, true))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-901f - _wgslsmith_f_op_f32(min(-708f, -616f))) * 383f), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1275f))), -541f))));
    global1 = array<vec2<u32>, 29>();
    var var_3 = ~(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(40999i, -2147483647i), -6288i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -15610i), vec2<i32>(-14185i, 2147483647i)), ~(0i >> (global0.x % 32u)), 1i) ^ reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 852i, -8704i, 15676i), vec4<i32>(45196i, -39753i, 5969i, -40474i)), ~vec4<i32>(-36436i, -1i, 1i, -57076i))));
    return select(vec2<u32>(~u_input.a.x, 28863u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, arg_0), ~_wgslsmith_div_vec2_u32(var_0.a, vec2<u32>(u_input.a.x, 34611u)), ~vec2<u32>(var_0.a.x, 1u)), !any(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = select(u_input.a.xz, abs(func_3(1u)), !vec2<bool>(any(vec2<bool>(true, false)), false));
    var var_0 = Struct_1(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) - _wgslsmith_f_op_f32(step(-535f, -399f)))))));
    let var_2 = false;
    var var_3 = !select(!var_2 & true, any(!select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, true, var_2), var_2)), true);
    return 47483u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<i32>(0i, 1i & ~(-15562i >> ((4294967295u << (arg_2.a.x % 32u)) % 32u)), _wgslsmith_mult_i32(min(-67882i, -(~(-18813i))), ~reverseBits(-8294i << (arg_0.x % 32u))), -(~1i));
    let var_1 = firstLeadingBit(global0.x);
    var var_2 = ~(~_wgslsmith_dot_vec2_u32(func_3(arg_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_1.x), firstTrailingBit(vec2<u32>(arg_0.x, 24311u)))));
    var var_3 = Struct_1(~u_input.a.zx);
    let var_4 = abs(~global1[_wgslsmith_index_u32(arg_0.x, 29u)]);
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = any(select(vec3<bool>(true, true, select(true, select(true, false, false), false)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var_0 = true;
    global0 = u_input.a.yx;
    global0 = _wgslsmith_add_vec2_u32(countOneBits(arg_0.a), ~arg_1.a);
    global1 = array<vec2<u32>, 29>();
    return Struct_1(global1[_wgslsmith_index_u32(func_4(vec3<u32>(func_2(Struct_1(global1[_wgslsmith_index_u32(0u, 29u)])), 1u, 1u), u_input.a, arg_1), 29u)]);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-143f)))), _wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(select(-130f, _wgslsmith_f_op_f32(round(-1347f)), arg_0.x))), _wgslsmith_f_op_f32(-1992f + 1f)) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1310f, 108f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f * -546f) + -1783f), -1278f));
    let var_1 = Struct_1(vec2<u32>(u_input.a.x, u_input.a.x));
    let var_2 = arg_1;
    let var_3 = Struct_1(countOneBits(_wgslsmith_sub_vec2_u32(~global1[_wgslsmith_index_u32(firstLeadingBit(var_1.a.x), 29u)], vec2<u32>(31640u, ~4294967295u))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f + -1000f) * _wgslsmith_div_f32(-1739f, _wgslsmith_f_op_f32(-1351f - _wgslsmith_f_op_f32(step(var_0.x, 485f))))) - var_0.x);
    return StorageBuffer(func_4(vec3<u32>(~_wgslsmith_sub_u32(var_3.a.x, var_2.a.x), 4294967295u, 26607u), ~vec3<u32>(4294967295u, 4294967295u, global0.x ^ u_input.a.x), func_1(var_1, func_1(var_3, Struct_1(vec2<u32>(arg_1.a.x, u_input.a.x))))), firstLeadingBit(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(2147483647i, 58169i)), vec2<i32>(-17606i << (var_2.a.x % 32u), ~(-15262i)))), _wgslsmith_mult_vec3_u32(firstLeadingBit(~(~u_input.a)), u_input.a), var_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), false), true));
    var var_1 = _wgslsmith_f_op_f32(-555f + _wgslsmith_f_op_f32(abs(681f)));
    var var_2 = !var_0;
    var var_3 = ~(~(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.x, u_input.a.x), u_input.a), global0.x, global0.x) ^ max(select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u), true), reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 1194u, global0.x)))));
    global1 = array<vec2<u32>, 29>();
    let var_4 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 59623u), ~(~vec2<u32>(23549u, u_input.a.x))), _wgslsmith_mult_vec2_u32((vec2<u32>(14007u, var_3.x) | u_input.a.yy) ^ ~vec2<u32>(var_3.x, 0u), _wgslsmith_mult_vec2_u32(u_input.a.yz << (vec2<u32>(34901u, u_input.a.x) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(2736u, 29u)] | vec2<u32>(1u, u_input.a.x)))));
    global1 = array<vec2<u32>, 29>();
    let x = u_input.a;
    s_output = func_5(select(vec3<bool>(true && var_0, all(!vec3<bool>(var_0, var_0, var_0)), true), select(vec3<bool>(any(vec2<bool>(true, false)), true, true), !select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, false)), !(!vec3<bool>(var_0, var_0, true))), -(~2147483647i) != (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 7469i), vec2<i32>(2147483647i, 2147483647i)) | -34506i)), func_1(var_4, var_4));
}

