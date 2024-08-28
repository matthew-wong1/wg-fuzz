struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(43173u, 69707u, 4294967295u, 1u, 71177u, 0u, 57540u, 33084u, 78266u, 22572u, 10825u, 4294967295u, 4294967295u, 58114u, 1u, 1u, 0u, 4294967295u, 0u);

var<private> global1: array<vec2<i32>, 32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global1 = array<vec2<i32>, 32>();
    global1 = array<vec2<i32>, 32>();
    var var_0 = -_wgslsmith_div_vec2_i32(-(vec2<i32>(15979i, u_input.b) | global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(43298u, 19u)], 32u)]), reverseBits(arg_0.c));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a)), (arg_0.b | vec4<i32>(~6995i, u_input.b >> (85117u % 32u), -28004i, countOneBits(arg_0.c.x))) >> (~(~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70552u, 19u)], 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 4294967295u))) % vec4<u32>(32u)), ~(-global1[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(1u, 19u)]), 32u)]), vec3<i32>(var_0.x, min(40362i, arg_0.d.x >> (global0[_wgslsmith_index_u32(1376u, 19u)] % 32u)), 2081i) >> (~vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.a.x), u_input.a.x << (global0[_wgslsmith_index_u32(u_input.a.x, 19u)] % 32u)) % vec3<u32>(32u)), -515f);
    global0 = array<u32, 19>();
    return !arg_1.x;
}

fn func_1() -> u32 {
    global1 = array<vec2<i32>, 32>();
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var var_0 = !(!vec4<bool>(false, all(vec2<bool>(true, true)), true, true));
    var_0 = !vec4<bool>(var_0.x, !(!var_0.x), !func_2(Struct_1(vec4<f32>(192f, 266f, 401f, -1084f), vec4<i32>(-1i, u_input.b, 20296i, u_input.b), vec2<i32>(-2147483647i, 19142i), vec3<i32>(u_input.b, u_input.b, u_input.b), 564f), vec3<bool>(true, true, var_0.x)), var_0.x);
    return 1u;
}

fn func_3(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = 27414i;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1778f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1564f - -1000f) - 370f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1023f)))), all(vec4<bool>(false, false, false, true)) | true))));
    let var_2 = -41108i;
    var_1 = _wgslsmith_f_op_f32(-326f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-665f)), _wgslsmith_f_op_f32(sign(1548f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-404f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(323f + 915f) * _wgslsmith_f_op_f32(-1204f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-232f - 158f), _wgslsmith_f_op_f32(f32(-1f) * -344f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-776f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f - -555f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(302f, 170f)), _wgslsmith_f_op_f32(f32(-1f) * -1965f))) - 502f), (i32(-1i) * -18690i) > var_0)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 893f, -1614f, var_3.x) * vec4<f32>(1559f, var_3.x, var_3.x, 1087f)), vec4<f32>(-2335f, var_3.x, var_3.x, var_3.x), false)) - vec4<f32>(_wgslsmith_f_op_f32(min(-198f, -998f)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(select(-325f, -2312f, false)), _wgslsmith_f_op_f32(floor(var_3.x))))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, var_2, -42310i), vec4<i32>(-2859i, u_input.b, 2147483647i, -2147483647i)) >> (~vec4<u32>(58104u, u_input.a.x, arg_0.x, u_input.a.x) % vec4<u32>(32u)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_0, var_2, u_input.b), vec4<i32>(462i, u_input.b, var_2, u_input.b)))), reverseBits(~abs(vec4<i32>(41188i, var_2, var_2, var_0))), _wgslsmith_add_vec4_i32(max(-vec4<i32>(0i, u_input.b, -6718i, -27525i), ~vec4<i32>(u_input.b, var_0, var_2, 32625i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b, var_2, var_2, 10614i), vec4<i32>(var_2, 0i, var_2, -65742i)), vec4<i32>(var_2, 2147483647i, var_0, 8782i) & vec4<i32>(var_2, -20754i, var_0, -2147483647i)))), -global1[_wgslsmith_index_u32(~1u, 32u)], vec3<i32>(min(-35813i, _wgslsmith_mult_i32(max(var_0, var_0), ~var_0)), -_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2, -20613i, 39726i, var_2), ~vec4<i32>(1i, var_0, -1i, -10957i)), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_0, -29536i), vec3<i32>(var_0, u_input.b, 315i))), -609f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), vec2<u32>(u_input.a.x, u_input.a.x) & u_input.a) ^ abs(0u), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(63082u, u_input.a.x, 69704u)), 42611u), 19u)], func_1()));
    global0 = array<u32, 19>();
    global1 = array<vec2<i32>, 32>();
    var var_1 = ~reverseBits(var_0.d.x);
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (~_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 19u)]) % 32u), global1[_wgslsmith_index_u32(9781u, 32u)]);
}

