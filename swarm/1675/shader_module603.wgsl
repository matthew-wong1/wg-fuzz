struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1529f, -869f);

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.b + arg_1.b)))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(2285u, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a), ~4294967295u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(41787u, 1u, arg_1.c.x), arg_1.c, arg_1.c)));
    global1 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_f_op_f32(arg_0 - var_0.b.x);
    let var_2 = vec3<bool>(true, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true);
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(~(i32(-1i) * -2147483647i), countOneBits(-var_0.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, arg_1.c.x), var_0.c) % 32u))), -2147483647i);
    return -49330i;
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(min(11177i, _wgslsmith_clamp_i32(u_input.b.x ^ (u_input.b.x | -2147483647i), u_input.b.x, -2147483647i)), u_input.b.x, _wgslsmith_div_i32(-firstLeadingBit(-1i), firstTrailingBit(func_3(-907f, global1[_wgslsmith_index_u32(36665u, 28u)])) | 437i));
    global0 = vec2<f32>(global0.x, global0.x);
    var var_1 = Struct_1(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))), -1000f), ~vec3<u32>(reverseBits(u_input.a), ~u_input.a, _wgslsmith_add_u32(1u, 38853u)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.a), _wgslsmith_mod_u32(var_1.c.x ^ 87405u, ~1u)), 28u)];
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, firstTrailingBit(firstLeadingBit(4294967295u)), var_1.c.x, var_2.c.x), ~(select(vec4<u32>(4294967295u, 13056u, 0u, 1u), vec4<u32>(var_1.c.x, var_1.c.x, u_input.a, 0u), vec4<bool>(true, true, true, true)) >> ((vec4<u32>(var_1.c.x, 8792u, 36188u, u_input.a) >> (vec4<u32>(var_1.c.x, u_input.a, 24109u, var_1.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, ~15841u, _wgslsmith_mult_u32(3632u, 0u), ~11211u), ~vec4<u32>(26041u, 31791u, 1u, 3479u), abs(abs(vec4<u32>(53344u, 0u, var_2.c.x, 1u)))));
    return countOneBits(1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> vec4<i32> {
    global1 = array<Struct_1, 28>();
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.x, global0.x)), 1376f)), global0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, 252f))), vec2<f32>(_wgslsmith_f_op_f32(select(602f, 356f, false)), global0.x)), false)), select(~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(55657u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 76761u))), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 49752u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(8972u, u_input.a)), vec2<u32>(15109u, u_input.a)), u_input.a), !all(vec4<bool>(true, true, true, true))));
    global0 = vec2<f32>(var_0.b.x, var_0.b.x);
    var var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(811f + -1032f), -1308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1707f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1083f)) - global0.x) * global0.x), -436f, -734f), select(vec3<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), true, false), !vec3<bool>(all(vec2<bool>(true, false)), u_input.b.x == var_0.a.x, var_0.b.x != 2270f), select(vec3<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)), var_0.c.x < 17603u), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true)))));
    return vec4<i32>(reverseBits(~34782i), ~var_0.a.x, max(~(-_wgslsmith_clamp_i32(var_0.a.x, u_input.b.x, 1i)), var_0.a.x), arg_0.x);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -_wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, 13750i), -1i, u_input.b.x, -2147483647i << (u_input.a % 32u)), func_4(vec4<i32>(-1i | u_input.b.x, ~(-1i), ~u_input.b.x, -u_input.b.x), countOneBits(func_2())));
    global0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f + global0.x)))));
    var_0 = ~min(_wgslsmith_mult_vec4_i32(select(~vec4<i32>(u_input.b.x, 24761i, 7000i, var_0.x), ~vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, var_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), -vec4<i32>(-1i, var_0.x, u_input.b.x, 0i) >> (vec4<u32>(u_input.a, 67855u, 1u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(-vec4<i32>(-1152i, u_input.b.x, var_0.x, var_0.x) >> (firstLeadingBit(vec4<u32>(21191u, u_input.a, 1u, u_input.a)) % vec4<u32>(32u)), (vec4<i32>(u_input.b.x, -7814i, u_input.b.x, u_input.b.x) | vec4<i32>(14826i, u_input.b.x, -16619i, var_0.x)) ^ firstLeadingBit(vec4<i32>(var_0.x, -2147483647i, var_0.x, u_input.b.x))));
    let var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(9547u, u_input.a, _wgslsmith_clamp_u32(u_input.a, 41535u, 96287u)), firstTrailingBit(~vec3<u32>(u_input.a, 0u, u_input.a))), ~vec3<u32>(firstTrailingBit(0u), u_input.a, 0u));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(~4294967295u, 0u), u_input.a & u_input.a)), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.x, 9048u, u_input.a, 0u)), ~vec4<u32>(34693u, var_1.x, 0u, u_input.a) & max(vec4<u32>(var_1.x, u_input.a, var_1.x, 64173u), vec4<u32>(29444u, var_1.x, 73129u, 14136u)))), 28u)];
    return _wgslsmith_sub_u32(0u ^ var_2.c.x, reverseBits(reverseBits(var_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~func_1(global0.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(u_input.a, 4475u, 119875u)), ~0u, ~u_input.a), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 8657u, u_input.a)), ~vec4<u32>(u_input.a, 46221u, 0u, u_input.a))) % 32u), 1u);
    var_0 = u_input.a;
    var_0 = ~firstLeadingBit(max(firstLeadingBit(55308u), firstLeadingBit(~1532u)));
    let var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(747f, global0.x), vec2<f32>(1000f, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, 172f))))), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(25605u), ~u_input.a, 7013u), vec3<u32>(0u, ~u_input.a, 32147u ^ u_input.a))));
    let var_2 = !select(vec2<bool>(global0.x != _wgslsmith_f_op_f32(-var_1.b.x), true), vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), -1918f, var_1.b.x, -171f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(global0.x - global0.x), -309f, _wgslsmith_f_op_f32(min(-798f, global0.x))))));
    var var_4 = var_2.x;
    var var_5 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(949f, _wgslsmith_f_op_f32(ceil(-1149f)))))), var_1.b));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-22479i, 1577i), var_1.a), -1i)), -(~1i), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.x))), _wgslsmith_f_op_f32(abs(var_3.x)));
}

