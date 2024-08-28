struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true));

var<private> global1: i32 = -33537i;

var<private> global2: array<vec3<bool>, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = Struct_4(_wgslsmith_mod_i32(u_input.b.x, 2147483647i) > (_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) ^ -83482i));
    return 34272i;
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = u_input.c.xy;
    global1 = -min(reverseBits(~1i), u_input.b.x);
    let var_1 = Struct_3(-arg_0.x, vec4<u32>(0u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(53179u, 0u, u_input.a), vec3<u32>(u_input.a, var_0.x, u_input.a)), var_0.x) << (vec4<u32>(u_input.a, 43999u, u_input.c.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-779f, -102f, -1200f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(230f, -700f, -1049f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1008f, 1684f, -666f)))))), Struct_2(abs(-2147483647i), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    global0 = array<vec4<bool>, 4>();
    var var_2 = Struct_4(!(select(var_1.d.b.a.x, false & var_1.d.b.a.x, all(var_1.d.b.a)) || true));
    return reverseBits(firstLeadingBit(abs(88897u)));
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<bool>, 4>();
    let var_0 = min(~vec3<i32>(-u_input.b.x, -2147483647i, _wgslsmith_mod_i32(func_2(), u_input.b.x)), _wgslsmith_add_vec3_i32(reverseBits(firstTrailingBit(-vec3<i32>(-38978i, u_input.b.x, u_input.b.x))), vec3<i32>(abs(u_input.b.x) & u_input.b.x, -2147483647i, _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x))));
    let var_1 = !vec3<bool>(!any(vec3<bool>(true, false, true)), min(u_input.a, func_3(vec4<i32>(u_input.b.x, u_input.b.x, 114042i, -1i))) >= _wgslsmith_sub_u32(~1u, 37904u), !all(select(global0[_wgslsmith_index_u32(32647u, 4u)], vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(169f - 1088f), _wgslsmith_f_op_f32(floor(170f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f + 1988f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)))));
    global2 = array<vec3<bool>, 5>();
    return Struct_3(-2147483647i, vec4<u32>(u_input.c.x, u_input.a, 4294967295u, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, 1007f, _wgslsmith_f_op_f32(-1286f + var_2.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1466f, 878f, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 211f) - vec3<f32>(-1565f, var_2.x, -1678f))))))), Struct_2(9588i, Struct_1(var_1.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(442f + 252f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(326f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f))));
    let var_1 = func_1();
    let var_2 = ~_wgslsmith_div_vec2_u32((firstLeadingBit(vec2<u32>(7489u, 49972u)) & abs(u_input.c.yz)) << (var_1.b.xw % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.c.xz, u_input.c.yz, firstLeadingBit(~vec2<u32>(9774u, 5864u))));
    global2 = array<vec3<bool>, 5>();
    global1 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(max(-19104i, -2147483647i), var_1.d.a << (u_input.a % 32u), u_input.b.x >> (u_input.c.x % 32u)), (vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x) << (var_1.b.zwz % vec3<u32>(32u))) << ((var_1.b.yyx ^ vec3<u32>(var_2.x, var_1.b.x, var_1.b.x)) % vec3<u32>(32u))), -46i);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f, _wgslsmith_div_f32(var_1.c.x, var_0.x)), func_1().c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(-var_1.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c * var_1.c) * var_1.c)), vec3<bool>(true, all(!vec2<bool>(var_1.d.b.a.x, var_1.d.b.a.x)), var_1.d.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1627f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-394f, 440f)), -396f, -663f)), 0i);
}

