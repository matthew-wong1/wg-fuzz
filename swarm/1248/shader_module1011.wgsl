struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1484f, 434f, 1943f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1145f, 1000f, 266f), vec3<f32>(431f, 310f, 317f)))))), vec3<bool>(false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true)), false)))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2276f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + -1500f))))), _wgslsmith_f_op_f32(210f + -217f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * -1035f)));
    return ~u_input.b.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_3(~_wgslsmith_div_u32(_wgslsmith_mult_u32(select(58821u, 45112u, false), abs(0u)), ~(~1u)));
    var_0 = Struct_3(max(5488u, 0u));
    let var_1 = 1233f;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~var_0.a), 19u)];
    let var_3 = Struct_1(func_3());
    return Struct_2(~(abs(vec3<u32>(0u, var_0.a, 1u) >> (vec3<u32>(66062u, 1u, var_0.a) % vec3<u32>(32u))) << (vec3<u32>(max(var_0.a, var_0.a), 1u, _wgslsmith_div_u32(15544u, var_0.a)) % vec3<u32>(32u))), true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    let var_0 = arg_0.wwx;
    var var_1 = func_2(arg_0, vec4<i32>(-arg_0.x, u_input.c.x, ~(-64999i), countOneBits(firstTrailingBit(arg_2))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 2140f) - _wgslsmith_f_op_f32(floor(277f))) + 430f), arg_1.x)));
    var var_3 = (func_2(_wgslsmith_mod_vec4_i32(min(arg_0, arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(4236i, arg_2, arg_2, 2147483647i), u_input.b)), countOneBits(vec4<i32>(-2147483647i, -9336i, 6691i, arg_0.x))).a.x < func_2(vec4<i32>(26491i, var_0.x, u_input.a, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, 24740i, arg_0.x))), arg_0).a.x) && all(!vec2<bool>(var_1.b, true));
    var_3 = any(!(!select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, true), !vec2<bool>(false, var_1.b))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    let var_0 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_mod_u32(countOneBits(func_1(u_input.b, vec3<f32>(316f, 1000f, -1221f), u_input.b.x)), 1u), _wgslsmith_clamp_u32(1u, 0u, func_1(vec4<i32>(42908i, 36830i, 0i, u_input.c.x) >> (vec4<u32>(5533u, 4294967295u, 0u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(521f, 633f, -1000f)), _wgslsmith_mod_i32(21735i, 4212i)))), any(vec2<bool>(true, true)) && true);
    var var_1 = _wgslsmith_add_i32(-u_input.c.x, 2147483647i);
    let var_2 = Struct_3(var_0.a.x);
    global0 = array<Struct_4, 19>();
    global0 = array<Struct_4, 19>();
    var var_3 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(1018f, firstTrailingBit(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a, 101302u, var_0.a.x, var_3.a), vec4<u32>(var_0.a.x, 93u, var_3.a, var_0.a.x)))), 1000f, (var_3.a | ~(var_2.a ^ 4294967295u)) << ((_wgslsmith_mod_u32(24601u, ~16847u) << (~(~var_3.a) % 32u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(308f))))) * -886f));
}

