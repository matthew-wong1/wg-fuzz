struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: vec4<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(all(vec2<bool>(!arg_1.x, false)) & false, 499f, ~(~(vec2<u32>(arg_0.a, global1.x) ^ global1.yx) & global1.yy), ~1u);
    let var_1 = false;
    return 1u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: bool) -> vec3<i32> {
    global0 = array<vec4<i32>, 7>();
    global0 = array<vec4<i32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(-839f - 571f);
    global1 = select(~(~abs(vec4<u32>(0u, 16785u, global1.x, u_input.a)) << (vec4<u32>(arg_1.x, arg_1.x | 4294967295u, 1u, global1.x) % vec4<u32>(32u))), firstTrailingBit((vec4<u32>(global1.x, arg_0.x, 18386u, 30563u) & vec4<u32>(80695u, 0u, arg_0.x, u_input.a)) ^ firstTrailingBit(arg_0)) << (arg_0 % vec4<u32>(32u)), select(vec4<bool>(false, all(!vec3<bool>(false, arg_2, false)), true, arg_2), vec4<bool>(true, _wgslsmith_f_op_f32(select(-1414f, -258f, arg_2)) >= 340f, !(!arg_2), arg_2), vec4<bool>(true, true, true & arg_2, !(global1.x <= global1.x))));
    return -vec3<i32>(1i, 12815i, _wgslsmith_mod_i32(25956i, reverseBits(_wgslsmith_add_i32(-18211i, 2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    global1 = _wgslsmith_div_vec4_u32(reverseBits(~abs(reverseBits(vec4<u32>(arg_2, arg_2, 7091u, 4294967295u)))), vec4<u32>(~33526u, 0u, ~func_2(Struct_2(0u, vec2<f32>(arg_1.b, 707f), false), vec4<bool>(arg_0.a, false, false, arg_0.a), vec2<i32>(-2147483647i, 50135i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(498f, arg_0.b)))), arg_2));
    global0 = array<vec4<i32>, 7>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_vec3_i32(min(vec3<i32>(1i, 1i, 1i), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -3311i, -6663i), vec3<i32>(1i, -16855i, 16953i)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, 72031i), func_3(vec4<u32>(4226u, arg_2, var_0.d, global1.x), vec2<u32>(arg_2, 18250u), arg_0.a), ~vec3<i32>(-19282i, 52052i, 0i)) & vec3<i32>(-1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-29783i, 1i, -18983i), vec3<i32>(-41246i, 1i, -1i)))) & vec3<i32>(_wgslsmith_mod_i32(reverseBits(1i), 1i >> (~var_0.d % 32u)), -(~firstTrailingBit(-2147483647i)), ~(-(13242i >> (1u % 32u))));
    let var_2 = vec3<f32>(-409f, 1620f, _wgslsmith_f_op_f32(250f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-828f)))))));
    return countOneBits(-_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(~arg_0.d, 7u)], global0[_wgslsmith_index_u32(arg_1.c.x, 7u)]), ~global0[_wgslsmith_index_u32(1u, 7u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, max(firstLeadingBit(-2147483647i), countOneBits(~11833i))), _wgslsmith_mod_u32(max(global1.x, 115637u), u_input.a), ~global1.zww, ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(Struct_1(true, -212f, global1.zx, 27183u), Struct_1(true, 1184f, global1.xy, u_input.a), 4294967295u), global0[_wgslsmith_index_u32(~22442u, 7u)]), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(0u, 7u)], vec4<i32>(-1i, 2147483647i, 921i, 2147483647i)), global0[_wgslsmith_index_u32(~0u, 7u)], reverseBits(global0[_wgslsmith_index_u32(30114u, 7u)]))));
}

