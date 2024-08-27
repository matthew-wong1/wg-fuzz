struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1289f, 121f, 105f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(286f, 1000f, -108f) * vec3<f32>(-662f, -1158f, 417f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-532f, -539f, -496f) + vec3<f32>(1000f, 478f, 690f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, -448f, 430f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(628f, -309f, -1330f) + vec3<f32>(987f, -185f, 774f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(132f, -1585f, 512f) * vec3<f32>(1646f, -1318f, 782f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, 437f, 210f)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f - var_0.x) * _wgslsmith_f_op_f32(-1843f - var_0.x)))))), -1154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - var_0.x)))))));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_2, 27>();
    let var_0 = global0[_wgslsmith_index_u32(~(1u >> (reverseBits(u_input.a.x) % 32u)), 27u)];
    let var_1 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))))));
    let var_2 = var_0.a;
    return Struct_3(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]);
}

fn func_3() -> vec3<i32> {
    var var_0 = func_2();
    global0 = array<Struct_2, 27>();
    var_0 = Struct_3(reverseBits(vec2<i32>(_wgslsmith_add_i32(~(-2147483647i), u_input.b.x), _wgslsmith_mod_i32(-u_input.b.x, 2147483647i >> (u_input.a.x % 32u)))), Struct_2(-2054f, vec4<i32>(u_input.b.x, 0i, 30611i, var_0.a.x) & ~vec4<i32>(49439i, -11459i, u_input.b.x, u_input.b.x)));
    var var_1 = firstTrailingBit(-2147483647i);
    let var_2 = all(!select(vec4<bool>(true, var_0.b.a > 2595f, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), select(true, true, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true)));
    return firstLeadingBit(var_0.b.b.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, abs(4294967295u), 80644u);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-949f, 1179f, -1447f), vec3<f32>(-1848f, 1000f, -1170f))))), !vec3<bool>(u_input.b.x > u_input.b.x, all(vec2<bool>(false, true)), true))), vec3<f32>(1671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1444f) * _wgslsmith_f_op_f32(min(2123f, _wgslsmith_div_f32(539f, -1165f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(330f)))))));
    var var_2 = Struct_3(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, select(u_input.b, -u_input.b, select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<i32>(min(-2147483647i, 2147483647i), 1i)), Struct_2(var_1.x, _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x)), vec4<i32>(-u_input.b.x, ~(-14105i), reverseBits(u_input.b.x), ~u_input.b.x), vec4<i32>(9099i, -u_input.b.x, select(-23909i, -8023i, true), _wgslsmith_add_i32(-17140i, u_input.b.x)))));
    var_2 = func_2();
    var var_3 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(0i, 2147483647i))), countOneBits(_wgslsmith_dot_vec3_i32(func_3(), vec3<i32>(-2147483647i, var_2.a.x, u_input.b.x) >> (u_input.c.www % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yxz);
}

