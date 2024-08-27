struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(33612u, 15083u), vec2<u32>(22938u, 32103u), vec2<u32>(1u, 62335u), vec2<u32>(81365u, 67083u), vec2<u32>(0u, 16080u), vec2<u32>(26209u, 4294967295u), vec2<u32>(54535u, 15492u), vec2<u32>(75743u, 1u), vec2<u32>(0u, 0u), vec2<u32>(55786u, 15021u), vec2<u32>(0u, 10657u), vec2<u32>(4294967295u, 1666u), vec2<u32>(5824u, 25253u), vec2<u32>(1u, 19225u), vec2<u32>(1u, 1u), vec2<u32>(7505u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 2718u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 30098u), vec2<u32>(0u, 59927u), vec2<u32>(4294967295u, 1686u), vec2<u32>(0u, 75291u), vec2<u32>(1u, 54283u), vec2<u32>(31895u, 4294967295u), vec2<u32>(43267u, 0u), vec2<u32>(81427u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 2803u), vec2<u32>(1u, 20569u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = false;
    global0 = array<vec2<u32>, 30>();
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, true, true))), !vec4<bool>(all(vec3<bool>(true, true, true)), true, !select(true, false, false), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))), select(vec4<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, true, false)), true, true), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, true), any(vec3<bool>(true, true, true))), all(vec3<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(false, true))))));
    var var_2 = Struct_3(Struct_1(reverseBits(~reverseBits(vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_u32(abs(23832u), firstLeadingBit(reverseBits(8411u))), ~(~(~vec3<u32>(u_input.b, 103276u, u_input.b)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)), _wgslsmith_f_op_f32(ceil(-278f)), 100f))), Struct_2(Struct_1(~vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, 48456u) % vec2<u32>(32u)), _wgslsmith_sub_u32(u_input.b << (u_input.b % 32u), firstTrailingBit(u_input.b)), ~(~vec3<u32>(u_input.b, 56117u, u_input.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, -1513f, -1285f, -476f)))))), 32568i, -_wgslsmith_mult_vec2_i32(u_input.c, u_input.c)), _wgslsmith_clamp_u32(u_input.b, ~1u | ~(u_input.b | u_input.b), ~(~0u)));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(abs(-1015f)))));
    return -724f;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-257f)), -155f, _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 510f, 2503f) + vec3<f32>(342f, 1000f, 1492f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, -1041f, -1051f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, -1151f, -1017f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1187f, -1000f, 407f) + vec3<f32>(-723f, 1077f, 1013f))), any(vec4<bool>(false, true, false, true)) & (u_input.c.x >= -2313i)))));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x));
    var_1 = u_input.a.x;
    return Struct_1(global0[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, 110640u), ~11180u, u_input.b), ~(~vec3<u32>(~29502u, ~0u, u_input.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~global0[_wgslsmith_index_u32(u_input.b, 30u)], _wgslsmith_mod_u32(abs(1u), reverseBits(_wgslsmith_div_u32(u_input.b, u_input.b))), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 0u, u_input.b), vec4<u32>(0u, u_input.b, 4294967295u, 68283u)), vec4<u32>(countOneBits(u_input.b), ~39016u, select(14791u, 8515u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 64339u, 53224u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), 25328u));
    var var_1 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false))), vec2<bool>(false, var_0.c.x > (var_0.c.x | 65705u)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    var var_2 = abs(64041u) << (var_0.a.x % 32u);
    var var_3 = var_0;
    let var_4 = 1i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-397f * -1666f), _wgslsmith_f_op_f32(select(-399f, 1909f, true)), _wgslsmith_f_op_f32(-1000f + 2097f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, -628f, -927f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-517f, -984f, 1034f)))))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], ~_wgslsmith_div_u32(4294967295u, 11593u), ~vec3<u32>(u_input.b, u_input.b, 27868u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2487f, -513f, -150f, 144f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -344f, 140f) * vec4<f32>(1699f, 398f, 400f, -1471f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2269f, -554f, 1000f, 1000f)))), u_input.c.x | u_input.a.x, firstLeadingBit(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.c), u_input.c << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))), ~0u ^ firstTrailingBit(~1u));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-588f, -1000f, _wgslsmith_f_op_f32(max(1155f, var_0.c.b.x))), var_0.c.b.xzw)), Struct_2(Struct_1(firstLeadingBit(vec2<u32>(48277u, var_0.d) & global0[_wgslsmith_index_u32(u_input.b, 30u)]), var_0.c.a.b, (var_0.c.a.c | var_0.c.a.c) | abs(var_0.a.c)), var_0.c.b, -5499i, vec2<i32>(-544i, 2147483647i)), 43480u);
    let var_1 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true)));
    var var_2 = -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a & vec3<i32>(var_0.c.d.x, var_0.c.d.x, u_input.a.x), -vec3<i32>(-1i, -1i, 2147483647i)), u_input.a) >> (var_0.c.a.b % 32u);
    var_0 = Struct_3(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.x, 1205f, 1000f) * var_0.b) - vec3<f32>(var_0.b.x, 763f, var_0.c.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.b), any(var_1))) - _wgslsmith_f_op_vec3_f32(-var_0.c.b.xxw)), var_0.c, 4294967295u);
    var_0 = Struct_3(func_1(), var_0.b, Struct_2(var_0.c.a, var_0.c.b, -min(31411i, -1i << (var_0.d % 32u)), firstLeadingBit(-vec2<i32>(0i, -1i))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yy, -20620i & _wgslsmith_mult_i32(var_0.c.c | (-1i & u_input.a.x), countOneBits(u_input.c.x) >> (_wgslsmith_clamp_u32(414u, u_input.b, 4294967295u) % 32u)));
}

