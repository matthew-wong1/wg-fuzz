struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: vec4<f32> = vec4<f32>(1913f, -876f, -266f, 259f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_2(-_wgslsmith_sub_i32(select(countOneBits(u_input.a), _wgslsmith_add_i32(-1i, 0i), false), min(-5161i, 44206i)), -41989i, _wgslsmith_add_u32(~(~arg_0.x >> (~arg_0.x % 32u)), (1u & _wgslsmith_clamp_u32(arg_0.x, 49208u, 29638u)) >> (firstTrailingBit(0u) % 32u)), -_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), Struct_1(vec4<f32>(global1.x, -1292f, global1.x, global1.x), _wgslsmith_f_op_f32(min(-998f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + -373f), global1.x)))), select(vec4<bool>(u_input.b.x <= 1i, !global0[_wgslsmith_index_u32(arg_0.x, 29u)], true, false), !(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(29991u, 29u)])), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(72174u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]))), reverseBits(~_wgslsmith_mod_i32(-1i, u_input.a))));
    var_0 = Struct_2(1i, var_0.b, ~(~_wgslsmith_clamp_u32(countOneBits(arg_0.x), ~arg_0.x, var_0.c)), _wgslsmith_add_i32(-2147483647i, 1i), var_0.e);
    global1 = _wgslsmith_f_op_vec4_f32(var_0.e.a - var_0.e.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-global1.zxx);
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * var_0.e.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(115f, global1.x))), -336f, var_1.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e.a * vec4<f32>(-1059f, -723f, 403f, -230f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(422f, var_1.x, -826f, var_0.e.b), var_0.e.a)))))));
    return 649f < _wgslsmith_f_op_f32(-var_1.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * 139f), 1418f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1223f - global1.x)))), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-799f - global1.x), _wgslsmith_f_op_f32(-global1.x), true))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-755f + global1.x), global1.x, _wgslsmith_f_op_f32(sign(-2271f)), _wgslsmith_f_op_f32(max(-1078f, global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 600f, 272f, global1.x)))), 1233f, select(vec4<bool>(!any(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(arg_0.x, 29u)])), true, !(!global0[_wgslsmith_index_u32(0u, 29u)]), !arg_1.x), vec4<bool>(false, select(any(vec3<bool>(true, true, true)), true, true), global0[_wgslsmith_index_u32(~26913u << (_wgslsmith_add_u32(41276u, arg_0.x) % 32u), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~arg_0.x, abs(0u)), 29u)]), true), -firstTrailingBit(~(~u_input.b.x)));
    return arg_0.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(true || global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_u32(~1u, 1u), 4294967295u), 29u)], global0[_wgslsmith_index_u32(select(abs(reverseBits(0u)), 34150u, global0[_wgslsmith_index_u32(12402u, 29u)]) ^ 0u, 29u)], global0[_wgslsmith_index_u32(~(~0u) >> ((_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u) & abs(984u)) % 32u), 29u)] && global0[_wgslsmith_index_u32(33947u, 29u)]);
    var var_1 = Struct_3(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) < 149570u, _wgslsmith_div_i32(u_input.b.x, u_input.a), func_3(abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 22125u), vec2<u32>(1u, 0u))), select(select(!vec2<bool>(var_0, true), vec2<bool>(global0[_wgslsmith_index_u32(5620u, 29u)], false), select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(27628u, 29u)]))), vec2<bool>(true, all(vec2<bool>(false, false))), func_2(~vec4<u32>(42113u, 2091u, 0u, 4294967295u)))), Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2372i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x)), 1i, ~_wgslsmith_clamp_u32(0u, 78368u, 1u) >> (39149u % 32u), max(_wgslsmith_div_i32(u_input.b.x, firstTrailingBit(u_input.b.x)), _wgslsmith_mult_i32(0i, 32387i << (0u % 32u))), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(global1.x, -289f)), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(floor(global1.x))), 796f, select(select(vec4<bool>(global0[_wgslsmith_index_u32(30717u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], var_0, global0[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(false, true, var_0, true), vec4<bool>(var_0, var_0, true, global0[_wgslsmith_index_u32(17869u, 29u)])), vec4<bool>(var_0, false, var_0, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], var_0, true, false)), 1i)), Struct_2(~(~(~57923i)), _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(7284i, -2147483647i)), select(u_input.b, ~vec2<i32>(u_input.b.x, u_input.a), true || global0[_wgslsmith_index_u32(4294967295u, 29u)])), (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(14912u, 18888u, 16084u, 4294967295u)) & ~0u) & (_wgslsmith_sub_u32(35851u, 0u) << (1u % 32u)), _wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(firstLeadingBit(-1i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, global1.x, 1000f, 1139f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), !select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(4130u, 29u)], var_0), vec4<bool>(true, false, var_0, true), true), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec3<i32>(-2147483647i, -2147483647i, u_input.b.x), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), true)))));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1121f, -301f, _wgslsmith_f_op_f32(f32(-1f) * -671f), var_1.d.e.a.x)))));
    global0 = array<bool, 29>();
    let var_2 = _wgslsmith_f_op_f32(ceil(var_1.d.e.a.x));
    return StorageBuffer(reverseBits(~(vec2<u32>(var_1.c, 19845u) >> (vec2<u32>(0u, var_1.e.c) % vec2<u32>(32u)))), vec4<i32>(~u_input.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 32674i, u_input.a, u_input.b.x), select(vec4<i32>(0i, -19672i, 9386i, u_input.a), vec4<i32>(2147483647i, var_1.d.e.d, -2147483647i, u_input.a), var_1.e.e.c)), 1i, u_input.b.x), firstTrailingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(44914u, var_1.e.c)), vec2<u32>(var_1.c << (var_1.c % 32u), var_1.d.c))), (select(max(vec4<u32>(var_1.d.c, 0u, 2361u, 0u), vec4<u32>(var_1.d.c, var_1.c, var_1.e.c, var_1.c)), vec4<u32>(0u, 0u, var_1.d.c, 0u), !var_1.e.e.c) << (~min(vec4<u32>(var_1.d.c, var_1.d.c, 76792u, 0u), vec4<u32>(0u, 1u, var_1.d.c, 4294967295u)) % vec4<u32>(32u))) << (~(~(~vec4<u32>(var_1.e.c, 24207u, var_1.d.c, 1u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -157f));
    let x = u_input.a;
    s_output = func_1();
}

