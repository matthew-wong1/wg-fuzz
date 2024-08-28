struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = max(~max(41719i, ~(i32(-1i) * -36216i)), abs(-30649i));
    let var_1 = ~(u_input.a.x ^ u_input.a.x);
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    var var_2 = ~arg_0.www;
    return countOneBits(var_0);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(0i, 0i) << (u_input.a % vec2<u32>(32u))), Struct_1(vec3<f32>(-463f, 548f, -830f), !(!select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-813f, 653f, -866f, 1576f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, -1000f, -181f, 935f)))), _wgslsmith_add_i32(func_3(vec4<u32>(10512u, 14605u, u_input.a.x, 13850u)), ~1i)), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1385f - 491f)), 891f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2211f * 759f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1475f)) - _wgslsmith_f_op_f32(f32(-1f) * -578f))));
    var var_1 = true;
    var_1 = var_0.b.b.x;
    var var_2 = 0u;
    global0 = array<vec2<bool>, 20>();
    return Struct_1(var_0.b.a, !var_0.b.b, _wgslsmith_f_op_vec4_f32(-var_0.b.c), -1i);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_1(arg_1.a, arg_0.wz, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(1000f)), arg_1.c.x, arg_1.a.x) - vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(2530f * -1508f), arg_1.c.x, _wgslsmith_div_f32(arg_1.c.x, 775f))), _wgslsmith_f_op_vec4_f32(trunc(arg_1.c))), arg_1.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1671f, var_0.a.x, var_0.c.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.c.zzx))) * vec3<f32>(_wgslsmith_f_op_f32(max(328f, 1000f)), 1458f, _wgslsmith_div_f32(-511f, 545f)))));
    let var_2 = 6158i;
    let var_3 = u_input.a;
    global0 = array<vec2<bool>, 20>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) * -906f), arg_2.yz, vec3<u32>(~_wgslsmith_clamp_u32(30249u, 18568u, 0u), ~18253u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), vec2<u32>(2333u, u_input.a.x)) >> (4294967295u % 32u)), 32051u, firstTrailingBit(vec3<u32>(10966u, _wgslsmith_mod_u32(~5471u, ~var_3.x), 49762u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<bool>(true, true, true, true), func_1(true, any(vec2<bool>(true, any(global0[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_add_vec3_i32(~(vec3<i32>(1i, 2147483647i, -1i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 14567u) % vec3<u32>(32u))) & vec3<i32>(-21471i, -44501i, ~2147483647i), vec3<i32>(func_2().d, -1i, func_2().d)));
}

