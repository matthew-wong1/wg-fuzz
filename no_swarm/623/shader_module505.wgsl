struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 34018u;

var<private> global2: array<u32, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> i32 {
    global2 = array<u32, 20>();
    var var_0 = Struct_3(u_input.b);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 61622u), _wgslsmith_dot_vec2_u32(u_input.a.xy, ~u_input.a.yy)), 20u)];
    var var_1 = Struct_3(u_input.b);
    return -27980i;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(6593i << (_wgslsmith_dot_vec3_u32(~vec3<u32>(22284u, global2[_wgslsmith_index_u32(1u, 20u)], 4294967295u), u_input.a) % 32u), ~func_3(_wgslsmith_f_op_f32(f32(-1f) * -2224f))), -2147483647i);
    global1 = ~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(69162u, 20u)]), vec4<u32>(14750u, 1u, 14551u, 1u), vec4<bool>(arg_1, arg_1, true, arg_1)), vec4<u32>(16973u, u_input.a.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]))) ^ _wgslsmith_sub_u32(~reverseBits(~4294967295u), 9973u);
    var var_1 = min(~max(global0.a, -countOneBits(-64244i)), global0.a);
    global1 = firstLeadingBit(countOneBits(~4294967295u));
    var var_2 = arg_0;
    return Struct_3(u_input.b);
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = Struct_1(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, select(true, false, true), all(vec4<bool>(true, true, true, true)))), min(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(3410u, 20u)], u_input.a.x, global2[_wgslsmith_index_u32(34173u, 20u)]), vec4<u32>(1u, 0u, 538u, 13888u), vec4<u32>(0u, 0u, u_input.a.x, 39745u)) & vec4<u32>(4294967295u, 44130u, global2[_wgslsmith_index_u32(16990u, 20u)], 23350u)), select(firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], u_input.a.x))), ~vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(22158u, 20u)], 5527u, u_input.a.x), vec4<bool>(true, true, true, true))), u_input.a);
    var var_1 = -1i;
    global0 = Struct_3(_wgslsmith_mult_i32(14270i, u_input.b));
    let var_2 = Struct_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-576f, -235f), _wgslsmith_div_f32(447f, 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f - 137f)))), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.b), 1i, countOneBits(1i), -1i | arg_0.a), (vec4<i32>(-2147483647i, arg_0.a, u_input.b, global0.a) & vec4<i32>(arg_0.a, -2147483647i, arg_0.a, 10509i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, 2147483647i, -38307i, 15825i), vec4<i32>(1i, global0.a, 10648i, 0i)))), u_input.b);
    var_1 = _wgslsmith_dot_vec3_i32(var_2.b.a.zyz, ~(var_2.b.a.yzw ^ (-var_2.b.a.zyx | abs(vec3<i32>(global0.a, -2147483647i, -52217i)))));
    return min(abs(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-7042i, var_2.b.a.x, arg_0.a, -11316i), var_2.b.a), ~var_2.b.a, firstLeadingBit(var_2.b.a)), var_2.b.a, !select(var_0.a.x, var_0.a.x, var_0.a.x))), var_2.b.a ^ min(vec4<i32>(-1i) * -var_2.b.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(1983i, -10276i)), -15142i, ~u_input.b, 0i << (global2[_wgslsmith_index_u32(u_input.a.x, 20u)] % 32u))));
}

fn func_1() -> Struct_2 {
    global0 = Struct_3(global0.a);
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.a.yz, ~firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 25703u), u_input.a.x & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 20u)], 20u)])));
    return Struct_2(~func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(541f, 729f, -1855f) * vec3<f32>(874f, 462f, -592f)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1946f, -895f))) + -1551f), -1897f, _wgslsmith_div_f32(-325f, 2225f)), true);
    let var_1 = !(true != ((_wgslsmith_div_u32(4294967295u, u_input.a.x) << (~27429u % 32u)) > ~(global2[_wgslsmith_index_u32(0u, 20u)] << (global2[_wgslsmith_index_u32(u_input.a.x, 20u)] % 32u))));
    let var_2 = Struct_1(select(!vec3<bool>(all(vec3<bool>(false, var_1, true)), any(vec2<bool>(true, var_1)), true), !select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, true), false), !vec3<bool>(var_1, true, var_1), select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, true))), true), vec4<u32>(~4405u, _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(9026u, 20u)], 1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 69528u, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37237u, 20u)], 20u)], u_input.a.x, 91091u, u_input.a.x)), ~max(~global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)] >> (21933u % 32u)), (1u << (countOneBits(u_input.a.x) % 32u)) & 1u), ~vec3<u32>(~(global2[_wgslsmith_index_u32(4294967295u, 20u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)] % 32u)), ~(~u_input.a.x), _wgslsmith_mod_u32(4294967295u, u_input.a.x | global2[_wgslsmith_index_u32(14373u, 20u)])));
    let var_3 = -(~min(1i, -1i));
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) * 2096f))), 1000f)), 907f));
    global0 = Struct_3(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(24231u), var_2.b.wz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, -888f)), vec2<f32>(1f, 1f), false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, 263f))) * vec2<f32>(_wgslsmith_f_op_f32(-1205f - 462f), -1068f))), _wgslsmith_f_op_f32(abs(-1159f)));
}

