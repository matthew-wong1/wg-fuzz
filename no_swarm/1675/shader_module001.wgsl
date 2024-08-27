struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<i32, 24> = array<i32, 24>(47531i, 0i, 1i, 24456i, -32399i, 60003i, 27168i, 14145i, 73036i, i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, 11357i, i32(-2147483648), 9451i, -34i, 0i, 4940i, i32(-2147483648), 1i, 0i, 2147483647i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = countOneBits(~vec3<i32>(u_input.a, -5071i, -11824i | -u_input.a));
    var_0 = min(firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -43635i, 3926i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 24u)], 43155i, -21960i)) & ~vec3<i32>(-1i, 44401i, 0i), countOneBits(firstLeadingBit(vec3<i32>(0i, -13964i, u_input.a))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(10974i), _wgslsmith_mult_i32(var_0.x, 12269i), -2147483647i), countOneBits(vec3<i32>(-1i, 1i, var_0.x))));
    let var_1 = arg_0;
    var var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, true)), all(vec2<bool>(false, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
    var_2 = vec3<bool>(true, true, true);
    return vec3<bool>(true, var_2.x, any(vec3<bool>(true, var_2.x, true)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(1u, select(vec3<bool>(true, true, true), func_3(1u), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-872f, 720f) - vec2<f32>(241f, -1698f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 845f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2251f, -631f), vec2<f32>(1277f, -1736f), false)), true)))), 1u, vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, 4294967295u), 28931u), _wgslsmith_div_u32(4294967295u, 80127u), _wgslsmith_mult_u32(abs(~4294967295u), countOneBits(~49548u))));
    var var_1 = var_0.e.zz;
    var var_2 = func_3(~var_1.x).xz;
    var_1 = vec2<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(var_0.e.x, 5336u)), select(max(_wgslsmith_add_u32(~var_1.x, 32208u), _wgslsmith_mod_u32(var_0.e.x ^ 0u, 1u)), 5953u, !any(!vec4<bool>(var_0.b.x, var_2.x, false, var_2.x))));
    global0 = array<Struct_2, 21>();
    return -((~(-global1[_wgslsmith_index_u32(20958u, 24u)]) >> ((var_1.x & (var_0.e.x >> (var_0.e.x % 32u))) % 32u)) | 0i);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = any(func_3(38220u));
    var var_1 = _wgslsmith_sub_u32(arg_3 << ((arg_3 | (arg_3 << (10934u % 32u))) % 32u), arg_3);
    var var_2 = Struct_3(!(73697u < _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 4294967295u, 25558u), vec3<u32>(arg_3, 0u, arg_3))) || var_0, Struct_1(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, arg_3, 4936u, arg_3), vec4<u32>(58308u, arg_3, arg_3, arg_3))), !vec3<bool>(var_0, var_0, false && var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, arg_0.x)))))), 1u, ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3, 1u, arg_3), vec3<u32>(arg_3, arg_3, arg_3)), abs(vec3<u32>(45746u, 1u, 0u)))), reverseBits(vec4<i32>(~abs(arg_1.x), arg_1.x, abs(firstLeadingBit(u_input.a)), 1i)), all(select(vec3<bool>(arg_0.x != 580f, true, true), vec3<bool>(var_0, !var_0, true), true)));
    let var_3 = arg_3;
    var_1 = ~0u;
    return global0[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11441u), firstTrailingBit(var_2.b.e.xy))) | _wgslsmith_add_u32(~(~var_2.b.a), 36297u)), 21u)];
}

fn func_1() -> StorageBuffer {
    let var_0 = ~countOneBits(~vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = ~var_0.x;
    global1 = array<i32, 24>();
    var var_2 = firstLeadingBit(~0u);
    var var_3 = Struct_4(func_4(vec4<f32>(_wgslsmith_f_op_f32(414f * -1242f), 159f, _wgslsmith_f_op_f32(-1872f * -560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-350f)))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(28570u, 24u)], 2147483647i), reverseBits(u_input.a), -2147483647i), vec3<i32>(_wgslsmith_div_i32(15721i, u_input.a), global1[_wgslsmith_index_u32(var_0.x, 24u)] >> (4294967295u % 32u), func_2())), -firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -16470i), vec2<i32>(0i, -21160i))), ~(24956u >> (0u % 32u))));
    return StorageBuffer(var_0, _wgslsmith_dot_vec3_i32(reverseBits(~firstTrailingBit(vec3<i32>(1i, -2945i, -27806i))), _wgslsmith_sub_vec3_i32(vec3<i32>(35964i, _wgslsmith_add_i32(0i, -54209i), u_input.a << (0u % 32u)), ~(~vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 24u)], global1[_wgslsmith_index_u32(var_0.x, 24u)], 24663i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec2<i32>(0i, u_input.a));
    var_0 = -min(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -2147483647i), abs(vec2<i32>(-18904i, 812i)))), ~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, global1[_wgslsmith_index_u32(0u, 24u)]), vec2<i32>(22424i, u_input.a), vec2<i32>(var_0.x, u_input.a))));
    let x = u_input.a;
    s_output = func_1();
}

