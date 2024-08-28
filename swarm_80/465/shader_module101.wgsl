struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(78480u, 83464u, 1u, 43694u);

var<private> global1: vec2<i32> = vec2<i32>(83341i, 39549i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.a.x, ~global0[_wgslsmith_index_u32(30004u, 4u)], select(~1u, 37499u, true), u_input.b.x);
    global0 = array<u32, 4>();
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1231f + 1000f))));
    let var_3 = Struct_1(select(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.a, global1.x, -47113i), ~vec3<i32>(15668i, 1i, -2147483647i), -vec3<i32>(u_input.a.x, 25923i, global1.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, 20305i, u_input.a.x), vec4<i32>(2147483647i, 12627i, var_0.a, 0i)), _wgslsmith_mod_i32(-2674i, global1.x), min(1i, u_input.a.x))), -22316i, !all(vec3<bool>(false, false, false))), var_0.c, 1u << (1u % 32u), 23176u);
    return select(1u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), _wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.zx)) | ~(~u_input.b.x)), !all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(~firstLeadingBit(abs(u_input.a.x)), _wgslsmith_mod_u32(func_3(), 20848u), ~_wgslsmith_mod_u32(~arg_0.x, ~min(1u, 21131u)), 0u);
    global0 = array<u32, 4>();
    let var_2 = var_1;
    let var_3 = any(!select(!vec4<bool>(true, true, var_0, false), !vec4<bool>(var_0, var_0, true, var_0), !vec4<bool>(false, var_0, false, true))) & any(vec3<bool>(true && var_0, false, var_0));
    return firstLeadingBit(~arg_0.x ^ u_input.b.x);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(0i, u_input.b.x >> (func_2(~(vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 21939u, u_input.b.x, 4294967295u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], u_input.b.x, 10451u, 51943u))) % 32u), (firstTrailingBit(u_input.b.x ^ global0[_wgslsmith_index_u32(40678u, 4u)]) >> (global0[_wgslsmith_index_u32(1u, 4u)] % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 7388u, 42388u, 13730u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 4294967295u, u_input.b.x, 2126u), vec4<u32>(4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b.x)), vec4<u32>(u_input.b.x, 79220u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], 16229u))) % 32u), global0[_wgslsmith_index_u32(u_input.b.x, 4u)]);
    return Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-229i, u_input.a.x, global1.x)), -vec3<i32>(26838i, var_0.a, global1.x)), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -28337i), -u_input.a.x, -u_input.a.x)), (~vec3<i32>(-1i, -31341i, -17191i) | -vec3<i32>(var_0.a, u_input.a.x, var_0.a)) ^ abs(~vec3<i32>(35206i, -1857i, 28345i))), 4294967295u, 4674u, global0[_wgslsmith_index_u32(~(~max(global0[_wgslsmith_index_u32(0u, 4u)], countOneBits(4294967295u))), 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~countOneBits(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(51925u, 4u)]))));
    var var_1 = func_1();
    global0 = array<u32, 4>();
    var var_2 = Struct_1(-_wgslsmith_sub_i32(-1i, var_1.a) ^ (_wgslsmith_div_i32(select(u_input.a.x, 21173i, false), abs(global1.x)) << (4763u % 32u)), 48977u, ~(_wgslsmith_sub_u32(countOneBits(var_1.d), 81804u) >> (var_0.x % 32u)), var_1.c);
    let var_3 = vec3<u32>(abs(func_1().b) << (15929u % 32u), firstTrailingBit(_wgslsmith_clamp_u32(abs(func_3()), min(29384u, abs(1u)), var_2.d)), countOneBits(var_2.d));
    let var_4 = Struct_1(~1i, var_2.c, var_1.b, 14817u);
    var var_5 = var_4;
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10940u, 0u, var_2.c, var_3.x), vec4<u32>(43012u, 4294967295u, 1u, 4294967295u)), vec4<u32>(var_1.d, 76752u, 11027u, 1u)), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b.x, 1u, 0u) & vec4<u32>(var_3.x, 23349u, global0[_wgslsmith_index_u32(27427u, 4u)], var_0.x)), countOneBits(abs(vec4<u32>(1u, 0u, 52334u, var_5.c))))));
}

