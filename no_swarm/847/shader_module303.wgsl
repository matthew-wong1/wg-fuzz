struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 4294967295u, 1u, 1u, 25817u, 4294967295u, 72025u, 65064u, 15062u, 4294967295u, 4294967295u, 0u, 15517u, 1u, 1u, 4294967295u, 36581u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> i32 {
    global0 = -(~1i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1)), -127f)))));
    global0 = ~(select(select(-24621i, 1i, any(vec4<bool>(true, false, false, false))), -24303i, true) | _wgslsmith_add_i32(-countOneBits(-1i), 2757i));
    global0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i) & select(vec4<i32>(30585i, 2147483647i, 70653i, -15355i), vec4<i32>(-1i, -23239i, -2147483647i, 1i), false)), abs(reverseBits(reverseBits(vec4<i32>(21792i, 1i, -10005i, 18144i)))));
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(19318u, (u_input.a << (arg_0 % 32u)) & u_input.a, ~(~0u)), select(~vec3<u32>(23768u, reverseBits(9322u), 1u), vec3<u32>(1u & u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10145u, 18u)] & arg_2, 18u)], arg_2) | ~reverseBits(vec3<u32>(4294967295u, arg_0, u_input.a)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)));
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = arg_0;
    let var_1 = func_3(countOneBits(1u) ^ arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.b.x), ~(~0u));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))))));
    var var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-304f - arg_0.c), _wgslsmith_f_op_f32(trunc(1f)));
    var var_4 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_1 | _wgslsmith_dot_vec3_i32(vec3<i32>(5375i, 23110i, arg_1), vec3<i32>(-1i, -1i, arg_1)), -34882i), ((vec2<i32>(18822i, arg_1) | vec2<i32>(-29267i, var_1)) & _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1), vec2<i32>(-17902i, var_1))) | -vec2<i32>(1i, var_1), select(true, all(vec4<bool>(true, false, true, false)), false) | !select(false, true, false)), select(max(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(22062i, 2147483647i)), firstLeadingBit(vec2<i32>(arg_1, 1i))), ~firstTrailingBit(vec2<i32>(2147483647i, arg_1)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), var_1 < var_1)) | vec2<i32>(27657i << (0u % 32u), _wgslsmith_add_i32(2147483647i, func_3(arg_2, var_3.x, var_0.a.x))));
    return 53868i;
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    global0 = firstTrailingBit(-_wgslsmith_add_i32(0i, ~2147483647i)) ^ -(_wgslsmith_clamp_i32(-13907i, -2147483647i, func_2(Struct_1(vec4<u32>(arg_0, 0u, global1[_wgslsmith_index_u32(u_input.a, 18u)], arg_0), vec2<f32>(1591f, -2012f), -1499f), -2147483647i, u_input.a)) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(23602u, arg_0), ~0u) % 32u));
    global0 = -func_2(Struct_1(vec4<u32>(41028u, select(1u, 1u, arg_1), 21630u, global1[_wgslsmith_index_u32(u_input.a, 18u)]), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(267f, 2434f))), _wgslsmith_f_op_f32(floor(-451f))), ~firstTrailingBit(_wgslsmith_mult_i32(0i, 2147483647i)), ~(arg_0 & select(arg_0, global1[_wgslsmith_index_u32(u_input.a, 18u)], false)));
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1134f, 528f), vec2<f32>(-1078f, 1204f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(616f, -1000f), vec2<f32>(1030f, -1104f)))))))));
    let var_1 = _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(arg_0, 18u)], global1[_wgslsmith_index_u32(~(max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(29969u, 18u)], 19572u, u_input.a), vec4<u32>(arg_0, arg_0, 0u, u_input.a)), 1u) & countOneBits(~0u)), 18u)]);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = -2147483647i;
    var var_2 = vec3<u32>(u_input.a, 61204u, global1[_wgslsmith_index_u32(4294967295u, 18u)]);
    global0 = -func_1(select(_wgslsmith_mod_u32(min(3608u, 1u), _wgslsmith_div_u32(22584u, u_input.a)), ~61879u, false), false);
    var var_3 = abs(firstTrailingBit(max(vec3<u32>(_wgslsmith_clamp_u32(var_2.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 18u)]), global1[_wgslsmith_index_u32(var_2.x, 18u)], var_2.x), ~(~vec3<u32>(43712u, 49132u, u_input.a)))));
    let var_4 = 1i;
    let var_5 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u & global1[_wgslsmith_index_u32(var_2.x, 18u)], ~1u, ~var_2.x, 32209u) & _wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, var_3.x, u_input.a, var_2.x), vec4<u32>(45827u, var_2.x, 14611u, 16100u)), ~vec4<u32>(var_3.x, 0u, var_3.x, var_2.x), reverseBits(vec4<u32>(0u, var_3.x, 7775u, 79088u))), vec4<u32>(4294967295u, min(u_input.a, var_2.x), var_3.x, ~(~0u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1894f, -1651f), vec2<f32>(-386f, -1356f))) - vec2<f32>(-282f, -2041f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-992f + _wgslsmith_f_op_f32(564f - -335f)), -365f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f - 939f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -25406i, ~(-(vec3<i32>(var_4, var_4, -2147483647i) ^ vec3<i32>(var_4, -3997i, -62501i))) ^ vec3<i32>(var_4, var_4 >> (~u_input.a % 32u), ~var_4 ^ var_4));
}

