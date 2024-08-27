struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_5, arg_3: vec3<i32>) -> f32 {
    global0 = array<Struct_3, 12>();
    let var_0 = ~_wgslsmith_div_u32(countOneBits(25560u), ~_wgslsmith_sub_u32(min(0u, 4430u), select(76044u, 1u, false)));
    global0 = array<Struct_3, 12>();
    var var_1 = ~vec4<i32>(32860i, _wgslsmith_add_i32(~(arg_0.x ^ 14948i), arg_3.x), 1104i, u_input.a.x);
    let var_2 = var_1.x;
    return arg_2.a.a;
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = Struct_3(vec2<u32>(~4294967295u, ~(~max(0u, 35708u))), _wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.a) + arg_0.a.a), _wgslsmith_f_op_f32(round(arg_0.a.b.a)))) >= _wgslsmith_f_op_f32(min(200f, _wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(min(-945f, 266f))))), arg_0.b.b.x);
    var var_1 = _wgslsmith_sub_u32(~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(104085u, 37068u), var_0.a))), ~(~1u));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1072f, var_0.b), vec2<f32>(-1878f, -117f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a.b.a, -180f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, arg_0.b.a)))))));
    let var_3 = Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-456f)) + arg_0.a.a), Struct_1(arg_0.a.b.a, firstLeadingBit(vec4<i32>(0i, -6501i, arg_0.b.c, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(5346i, 2147483647i), -arg_0.a.b.b.yx)), arg_0.a.c), Struct_1(arg_0.b.a, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(15769i, arg_0.b.c, var_0.d, 1i)), max(vec4<i32>(arg_0.b.b.x, -39305i, -16398i, 19286i), vec4<i32>(arg_0.b.c, var_0.d, 1i, u_input.a.x))), i32(-1i) * -abs(27051i)));
    global0 = array<Struct_3, 12>();
    return ~var_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(func_3(Struct_5(Struct_4(2131f, Struct_1(258f, vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), -43002i), vec2<bool>(false, arg_1)), Struct_1(749f, vec4<i32>(1i, u_input.a.x, 76307i, 2147483647i), u_input.a.x))), arg_3) << (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.a) >> (vec2<u32>(2998u, arg_0.a) % vec2<u32>(32u)), vec2<u32>(arg_3, arg_3)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, 29537u) | vec2<u32>(4294967295u, arg_0.a), ~vec2<u32>(1u, arg_0.a), ~vec2<u32>(1u, 64900u))) % vec2<u32>(32u)), select(vec2<u32>(~(~1u), 36306u), vec2<u32>(arg_0.a, 1u), true));
    return StorageBuffer(~_wgslsmith_div_vec3_u32(select(~vec3<u32>(71954u, 1u, 41600u), ~vec3<u32>(arg_0.a, var_0.x, 45730u), true), select(~vec3<u32>(arg_3, 8543u, arg_0.a), vec3<u32>(arg_3, 3397u, 46418u) ^ vec3<u32>(var_0.x, 35889u, 85859u), vec3<bool>(true, true, true))), var_0.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1004f, 447f)))), vec2<f32>(-201f, -120f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-419f)))), u_input.a, reverseBits(-1i << (1u % 32u))), vec2<bool>(!any(vec2<bool>(true, true)), false));
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    var var_2 = global0[_wgslsmith_index_u32(18676u, 12u)];
    var var_3 = -352f;
    let x = u_input.a;
    s_output = func_2(Struct_2(4294967295u), true, vec2<bool>(!(_wgslsmith_f_op_f32(-var_2.b) > _wgslsmith_f_op_f32(func_1(vec2<i32>(1i, var_1.b.b.x), var_1.c.x, Struct_5(var_1, var_1.b), var_1.b.b.wwy))), countOneBits(var_2.a.x & var_2.a.x) < _wgslsmith_clamp_u32(var_2.a.x & var_2.a.x, 33895u, var_2.a.x << (var_2.a.x % 32u))), reverseBits(var_2.a.x << (reverseBits(min(25070u, var_2.a.x)) % 32u)));
}

