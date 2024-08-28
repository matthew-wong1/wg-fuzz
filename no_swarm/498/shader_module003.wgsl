struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<i32> {
    var var_0 = (u_input.a << (~abs(u_input.a ^ vec2<u32>(55360u, 1u)) % vec2<u32>(32u))) >> (select(_wgslsmith_mult_vec2_u32(countOneBits(u_input.a >> (u_input.a % vec2<u32>(32u))), u_input.a), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(select(u_input.a, u_input.a, vec2<bool>(true, true)), countOneBits(vec2<u32>(u_input.a.x, 4294967295u))), reverseBits(u_input.a), u_input.a), !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))) % vec2<u32>(32u));
    let var_1 = Struct_2(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec4<bool>(false, true, false, false)) & all(vec3<bool>(false, false, true)))));
    let var_2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(var_0.x, u_input.a.x), min(var_0.x, 90865u), firstTrailingBit(1u), var_0.x)) ^ (vec4<u32>(u_input.a.x, max(44420u, 4294967295u), u_input.a.x, 23893u >> (u_input.a.x % 32u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(var_0.x, 24187u, 0u, 1u)), ~var_0.x, 1u, ~u_input.a.x) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)) << (firstLeadingBit(abs(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u))) % vec4<u32>(32u))));
    var var_3 = Struct_2(Struct_1(var_1.a.a));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), 1086f))))));
    return vec4<i32>(countOneBits(u_input.b), -2147483647i, u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b) & vec3<i32>(u_input.b, 79434i, -1i)), vec3<i32>(_wgslsmith_mult_i32(u_input.b, 0i), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b)))), ~(~vec3<i32>(37191i, u_input.b, -46748i))));
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(78057u >> (0u % 32u), u_input.a.x), min(~countOneBits(u_input.a.x), 4294967295u), ~(u_input.a.x & u_input.a.x));
    var var_1 = !all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true | select(true, true, true)));
    let var_2 = firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(func_3()), select(vec4<i32>(31092i, 29873i, 22760i, -381i) << (vec4<u32>(var_0.x, 32295u, u_input.a.x, var_0.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), true), vec4<i32>(~1i, abs(u_input.b), -2147483647i >> (u_input.a.x % 32u), u_input.b)), -_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b)), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b) & vec4<i32>(u_input.b, 29334i, 15835i, u_input.b))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1742f - _wgslsmith_f_op_f32(max(-1175f, -970f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) + _wgslsmith_f_op_f32(select(1043f, 576f, true)))), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-280f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1388f - -1953f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f + -192f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(424f)), _wgslsmith_f_op_f32(905f - 1726f))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(147f, -1781f))), 1f), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-180f + -1843f), _wgslsmith_f_op_f32(ceil(1531f)));
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(var_0.x > var_0.x, all(vec4<bool>(true, false, true, false)), u_input.a.x <= 4294967295u))));
    var var_2 = !(!(u_input.a.x == u_input.a.x));
    var var_3 = Struct_1(vec2<bool>(false, true));
    var var_4 = var_1.a;
    return global1[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 27u)];
    let var_1 = 277f;
    let var_2 = 0u;
    let var_3 = func_1(min(reverseBits(countOneBits(23598i)), min(~0i, u_input.b)));
    var var_4 = ~(~abs(~select(vec3<u32>(var_2, 1u, 28346u), vec3<u32>(u_input.a.x, 20198u, u_input.a.x), var_0.a.x)));
    let var_5 = Struct_2(Struct_1(vec2<bool>(var_3.a.x, true)));
    var_4 = vec3<u32>(firstTrailingBit(1u), max(firstTrailingBit(var_4.x), countOneBits(55759u)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), vec2<i32>(_wgslsmith_sub_i32(1i, -reverseBits(5961i)), min(_wgslsmith_add_i32(u_input.b, u_input.b), u_input.b) << (var_4.x % 32u)), -476f);
}

