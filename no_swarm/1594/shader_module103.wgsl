struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(all(!vec4<bool>(true, all(vec2<bool>(false, false)), 37169i == u_input.d.x, select(false, true, true))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(2147483647i)), ~(-_wgslsmith_add_i32(u_input.a.x, -68043i)), u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0.a, arg_0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(12203i, 68402i, arg_0.a, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, -1550i, arg_0.a), vec4<i32>(2147483647i, 0i, 1i, 2147483647i)))), u_input.d));
    global0 = array<Struct_1, 20>();
    var var_2 = select(select(!select(vec2<bool>(false, true), !vec2<bool>(var_0.a, var_0.a), !var_0.a), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, var_0.a), false)), true), false), vec2<bool>(true, var_0.a), select(select(!vec2<bool>(var_0.a, false), select(select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, var_0.a), var_0.a), false | var_0.a), true), !vec2<bool>(false, var_1.x == u_input.a.x), !vec2<bool>(!var_0.a, true)));
    var var_3 = Struct_1(false);
    return arg_0.b.yxy;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_5) -> vec3<u32> {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = Struct_3(arg_1.c, Struct_2(-2147483647i << (_wgslsmith_sub_u32(9231u, _wgslsmith_add_u32(72118u, u_input.b.x)) % 32u), ~firstLeadingBit(vec4<u32>(u_input.c, 75406u, arg_0.c.x, 4294967295u)), arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * -1512f) * _wgslsmith_f_op_f32(ceil(arg_0.b.x)))));
    global0 = array<Struct_1, 20>();
    let var_1 = vec3<bool>(true, true, true);
    return ~func_3(var_0.b);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e.x, 45586u, 42115u), vec3<u32>(0u, arg_0, 0u), u_input.b), ~_wgslsmith_mult_vec3_u32(u_input.b, func_2(Struct_5(-264f, vec4<f32>(arg_1, -1000f, arg_1, arg_1), u_input.b.xy, -5481i), Struct_4(vec4<i32>(1i, 37411i, 15077i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, 22413i, 0i), Struct_1(false), arg_1), Struct_5(585f, vec4<f32>(217f, 1595f, arg_1, arg_1), u_input.e, 0i)))));
    var_0 = ~u_input.b.yy;
    var var_1 = reverseBits((vec4<u32>(u_input.b.x, 53679u, 32461u, var_0.x) >> (vec4<u32>(0u, u_input.c, var_0.x, u_input.c) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, 1u, 1u, 49927u), ~vec4<u32>(44221u, arg_0, var_0.x, 29487u)) % vec4<u32>(32u))) >> (reverseBits(select(vec4<u32>(7225u, ~var_0.x, max(u_input.c, 4294967295u), func_2(Struct_5(1000f, vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<u32>(arg_0, arg_0), u_input.d.x), Struct_4(vec4<i32>(u_input.d.x, -64854i, u_input.a.x, 2147483647i), vec4<i32>(31467i, u_input.d.x, u_input.d.x, 7193i), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 262f), Struct_5(arg_1, vec4<f32>(arg_1, 679f, arg_1, arg_1), vec2<u32>(arg_0, var_0.x), -1i)).x), select(vec4<u32>(arg_0, 1u, 30444u, u_input.b.x), vec4<u32>(20414u, var_0.x, arg_0, u_input.e.x), arg_2.x) << (~vec4<u32>(39785u, u_input.c, u_input.b.x, arg_0) % vec4<u32>(32u)), arg_2.x)) % vec4<u32>(32u));
    let var_2 = Struct_1(!((_wgslsmith_dot_vec3_i32(u_input.d, u_input.d) & ~u_input.a.x) >= -1i));
    var var_3 = _wgslsmith_clamp_u32(var_0.x, var_0.x ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, arg_0), ~var_0.x), var_1.x);
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-443f, _wgslsmith_f_op_f32(-arg_1), arg_1) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -938f, arg_1) - vec3<f32>(arg_1, arg_1, 1254f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 970f), vec3<f32>(arg_1, 972f, arg_1))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), -504f)))), _wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.x, 1u, 6654u), vec4<u32>(70818u, var_0.x, 35881u, arg_0), vec4<u32>(2843u, var_0.x, 38031u, 0u)) ^ vec4<u32>(114625u, 3767u, u_input.c, arg_0)), ~vec4<u32>(1u, 4294967295u, var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(6121u, 76191u, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, arg_0, arg_0, 1u))), min(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_div_u32(u_input.e.x, 0u), ~4294967295u, 45536u), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, var_1.x, var_0.x, arg_0), vec4<u32>(var_0.x, var_1.x, 0u, 0u)), ~vec4<u32>(4294967295u, var_1.x, 14919u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~(72848u & u_input.b.x)), u_input.e.x, 1u, u_input.e.x) >> (~(~min(min(vec4<u32>(u_input.c, 24603u, 8059u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.b.x, 0u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b.x, 45152u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.b.x)))) % vec4<u32>(32u));
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = func_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) - _wgslsmith_f_op_f32(trunc(1000f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(660f, -643f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(551f, 969f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(327f, -1000f), _wgslsmith_f_op_f32(floor(1140f))))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
}

