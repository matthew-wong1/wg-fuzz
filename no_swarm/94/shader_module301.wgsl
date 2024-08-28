struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1;
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(29386u >> (_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_div_u32(arg_3.a, u_input.d)) % 32u), ~_wgslsmith_clamp_u32(arg_3.a, u_input.a, arg_3.a), ~_wgslsmith_mod_u32(u_input.d, abs(62304u)), _wgslsmith_mult_u32(0u, u_input.d)), vec4<u32>(select(global0.x, 48583u, !all(vec2<bool>(false, false))), global0.x, 4294967295u, 1u));
    var var_1 = vec3<u32>(~(~u_input.d), 11810u, ~4294967295u);
    global1 = array<vec4<bool>, 24>();
    let var_2 = Struct_3(-526f, var_0.b);
    return var_2.b.x >> ((_wgslsmith_add_u32(_wgslsmith_add_u32(countOneBits(31233u), global0.x), ~13961u) ^ abs(0u)) % 32u);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = true;
    let var_1 = u_input.b & 0i;
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(2670i, _wgslsmith_div_i32(-2147483647i, reverseBits(-2147483647i)), abs(countOneBits(-27481i))), vec3<i32>(-(~var_1), max(func_3(vec3<i32>(0i, var_1, u_input.b), Struct_3(arg_0, vec3<i32>(0i, -11678i, u_input.b)), 1575f, Struct_1(946u)), 19375i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b, var_1, var_1, -22730i), vec4<i32>(-2147483647i, 0i, 7686i, -1i)), vec4<i32>(1i, var_1, u_input.b, u_input.b)))) & _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, 0i), vec3<i32>(-4912i, var_1, u_input.b)), reverseBits(abs(vec3<i32>(u_input.b, var_1, var_1)))), max(vec3<i32>(u_input.b, var_1, var_1) << ((global0.yww ^ vec3<u32>(global0.x, global0.x, 77659u)) % vec3<u32>(32u)), firstTrailingBit(~vec3<i32>(var_1, -75903i, u_input.b))), vec3<i32>(~u_input.b | countOneBits(var_1), 41033i, max(~u_input.b, u_input.b)));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1f)) - _wgslsmith_f_op_f32(-arg_0)), 895f)));
    var var_4 = u_input.c;
    return true;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec2<bool>(!func_2(_wgslsmith_f_op_f32(f32(-1f) * -138f)), all(global1[_wgslsmith_index_u32(reverseBits(~(~4294967295u)), 24u)]));
    global1 = array<vec4<bool>, 24>();
    let var_1 = Struct_1(~20004u);
    global0 = _wgslsmith_div_vec4_u32(~min(~vec4<u32>(5593u, 78484u, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(21043u, 0u, 4294967295u, 21308u), vec4<u32>(var_1.a, 0u, global0.x, global0.x))) << (~vec4<u32>(1u, ~0u, var_1.a, ~10409u) % vec4<u32>(32u)), max(vec4<u32>(~(~1u), 35063u, var_1.a ^ 1u, ~var_1.a), vec4<u32>(abs(73952u), countOneBits(global0.x) & 65048u, u_input.c.x, firstLeadingBit(_wgslsmith_add_u32(1696u, global0.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-956f)) + 1f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(global0.wx, reverseBits(u_input.c.xx));
    global1 = array<vec4<bool>, 24>();
    global1 = array<vec4<bool>, 24>();
    let var_1 = func_1(Struct_2(Struct_1(var_0.x)));
    var var_2 = !select(vec3<bool>(true, any(vec3<bool>(true, false, false)), !(global0.x <= 1u)), vec3<bool>(true, true, true), vec3<bool>(false, true, true));
    let var_3 = select(-(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(u_input.b, u_input.b, 1i))), -vec3<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_sub_i32(u_input.b, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b))), _wgslsmith_sub_i32(1i, u_input.b), -2147483647i), select(!(!vec3<bool>(var_2.x, false, var_2.x)), select(vec3<bool>(true, !var_2.x, var_2.x), !vec3<bool>(var_2.x, true, var_2.x), true), !vec3<bool>(true, select(var_2.x, var_2.x, false), any(var_2.xz))));
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, abs(-24307i)), -49118i, 1i, select(-1i, ~_wgslsmith_sub_i32(var_3.x, -1i), all(vec3<bool>(false, true, true)) || var_2.x)), reverseBits(select(~countOneBits(vec4<i32>(u_input.b, var_3.x, 5163i, u_input.b)), -vec4<i32>(u_input.b, 2147483647i, var_3.x, 2147483647i) >> (abs(vec4<u32>(4294967295u, 0u, 57125u, global0.x)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(reverseBits(u_input.a) ^ countOneBits(var_0.x), 24u)])));
    global1 = array<vec4<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(select(reverseBits(vec2<i32>(-2147483647i, var_3.x)), vec2<i32>(i32(-1i) * -360i, var_4), var_2.x), ~(~_wgslsmith_mult_vec2_i32(var_3.zx, var_3.xy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)))), var_3.xz, 2147483647i);
}

