struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 47653u, 67166u, 4294967295u), vec4<u32>(4294967295u, 0u, 14123u, 1u), vec4<u32>(4294967295u, 34844u, 1u, 5230u), vec4<u32>(11472u, 0u, 60371u, 0u), vec4<u32>(51243u, 63655u, 1082u, 22795u), vec4<u32>(4294967295u, 0u, 64516u, 48716u), vec4<u32>(14937u, 10207u, 27460u, 1435u), vec4<u32>(8390u, 1u, 0u, 7479u), vec4<u32>(7717u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 12252u, 72773u, 4294967295u), vec4<u32>(10987u, 1u, 4294967295u, 41827u), vec4<u32>(1u, 1u, 1u, 6143u), vec4<u32>(1u, 96761u, 0u, 35051u), vec4<u32>(7615u, 64364u, 4294967295u, 23107u), vec4<u32>(57018u, 4294967295u, 0u, 65708u), vec4<u32>(0u, 28313u, 48406u, 10447u), vec4<u32>(4294967295u, 4294967295u, 0u, 11077u), vec4<u32>(0u, 28657u, 4294967295u, 4294967295u), vec4<u32>(5198u, 83837u, 1u, 0u), vec4<u32>(86461u, 44390u, 0u, 4294967295u), vec4<u32>(1u, 1u, 47624u, 1u), vec4<u32>(4294967295u, 1u, 0u, 301u), vec4<u32>(36015u, 1u, 43822u, 0u), vec4<u32>(0u, 76183u, 4294967295u, 1u), vec4<u32>(1u, 10661u, 1u, 1u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_1(~vec3<u32>(countOneBits(u_input.b.x), _wgslsmith_clamp_u32(~u_input.b.x, ~u_input.b.x, _wgslsmith_div_u32(63658u, u_input.b.x)), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(arg_0, -1239f)), _wgslsmith_div_f32(345f, -1427f), 570f)));
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    var var_1 = ~1u;
    global0 = array<vec4<u32>, 25>();
    return vec4<bool>(true, true, false, true);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(firstTrailingBit(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 5750u))) & vec3<u32>(8842u, ~16988u, abs(firstLeadingBit(u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, -1831f, -1000f, -201f) - vec4<f32>(1485f, 409f, 121f, 1095f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-306f, -555f, -562f, -296f) + vec4<f32>(-797f, 2436f, -552f, 899f)))))));
    let var_1 = _wgslsmith_clamp_u32(1u, var_0.a.x, _wgslsmith_sub_u32(~(~var_0.a.x), ~u_input.b.x));
    let var_2 = ~_wgslsmith_mult_u32(var_0.a.x, ~_wgslsmith_mult_u32(30681u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)));
    let var_3 = u_input.b.x;
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, true)), _wgslsmith_f_op_vec4_f32(-var_0.b)));
    return select(_wgslsmith_sub_i32(7449i, ~(~(~(-1i)))), 30479i << (select(~(~var_1), 9483u, var_0.b.x < -219f) % 32u), false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> vec4<f32> {
    let var_0 = 1u;
    var var_1 = any(select(!vec4<bool>(true, true, all(vec2<bool>(false, false)), true), select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)), false), !func_2(341f), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), !vec4<bool>(any(vec2<bool>(false, true)), true, false, true)));
    let var_2 = u_input.a.x < min(~(func_3() << (1u % 32u)), -_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.c.wxx, u_input.c.zwy)));
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f + arg_1.x)), 1f, -1287f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x * arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(max(_wgslsmith_sub_i32(u_input.a.x, ~(-35447i)), 0i));
    let var_1 = 1u;
    var_0 = -_wgslsmith_mod_i32(-8328i, -14619i);
    var var_2 = ~(u_input.b >> (vec2<u32>(64291u, firstTrailingBit(u_input.b.x) | 1u) % vec2<u32>(32u)));
    let var_3 = Struct_1(firstTrailingBit(abs(~vec3<u32>(0u, 46132u, u_input.b.x) & ~vec3<u32>(4294967295u, var_1, 23944u))), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(~select(vec3<u32>(u_input.b.x, u_input.b.x, 20719u), vec3<u32>(82011u, var_2.x, u_input.b.x), vec3<bool>(false, false, true)), vec4<f32>(-202f, _wgslsmith_div_f32(1042f, 543f), _wgslsmith_f_op_f32(round(383f)), _wgslsmith_f_op_f32(select(-1000f, 1668f, true)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1080f, -1174f, 1275f, 167f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1616f, 181f, 742f, 1291f), vec4<f32>(-1951f, 2179f, 441f, 266f), true))), vec4<f32>(-321f, _wgslsmith_f_op_f32(sign(-1284f)), -266f, _wgslsmith_f_op_f32(f32(-1f) * -1174f)))), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_2.x), vec2<u32>(var_1, u_input.b.x))))));
    var var_4 = vec3<u32>(max(var_2.x, ~(5103u | var_2.x) ^ ~0u), abs(abs(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(499u, 25u)]))), abs(_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), 0u)));
    var var_5 = ~global0[_wgslsmith_index_u32(var_2.x, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.a.x, u_input.c.x, ~2147483647i, -12865i) | _wgslsmith_mult_vec4_i32(u_input.c, ~abs(vec4<i32>(-2147483647i, u_input.a.x, -1i, 1i))), 5076u, u_input.c, var_3.b.ww, _wgslsmith_div_vec2_u32(vec2<u32>(~1u, var_3.a.x), var_3.a.zy));
}

