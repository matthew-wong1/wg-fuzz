struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(500f, -123f, -689f);

var<private> global1: bool = true;

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    global1 = true;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -608f, 1069f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-419f)), _wgslsmith_f_op_f32(abs(1236f)), _wgslsmith_f_op_f32(f32(-1f) * -2004f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x), vec3<f32>(global0.x, 1717f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))));
    let var_0 = Struct_1(arg_0, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(~(~vec3<i32>(1i, -2147483647i, 34389i)), vec3<i32>(_wgslsmith_mult_i32(0i, 0i), _wgslsmith_add_i32(u_input.a.x, u_input.d), ~(-1i))), vec3<i32>(-2147483647i, -51994i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(39236i, u_input.d, u_input.a.x, -1i), vec4<i32>(29329i, 0i, -2147483647i, 0i)), -vec4<i32>(28356i, 0i, u_input.d, u_input.a.x))), !var_0.b.x), abs((countOneBits(vec3<i32>(u_input.d, -30146i, -5678i)) ^ min(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.d, u_input.a.x, u_input.d))) >> (~firstTrailingBit(vec3<u32>(arg_0, global2.x, global2.x)) % vec3<u32>(32u))));
    global2 = reverseBits(abs(vec3<u32>(min(u_input.c, 30239u), ~arg_0, 0u))) ^ _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.c, u_input.c)), reverseBits(vec3<u32>(arg_0, u_input.b.x, 16974u)));
    return global0.xy;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = -min(select(0i, _wgslsmith_clamp_i32(-22736i, 33638i, arg_0) & u_input.a.x, any(vec4<bool>(true, true, true, true))), ~arg_1 << (~4294967295u % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(32365u, global2.x, global2.x), firstLeadingBit(vec3<u32>(4294967295u, 43771u, 0u))))));
    let var_2 = min(vec2<u32>(global2.x, 11787u), ~_wgslsmith_mult_vec2_u32(~(u_input.b | vec2<u32>(global2.x, 0u)), ~global2.xy & ~u_input.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - arg_2.x)))))));
    var var_4 = vec2<u32>(global2.x, reverseBits(min(countOneBits(abs(70419u)), 1u)));
    return vec3<bool>(true, !(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), (!any(vec2<bool>(true, false)) == all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))) || true);
}

fn func_1() -> vec4<u32> {
    let var_0 = any(select(vec3<bool>(-1201f < _wgslsmith_div_f32(global0.x, global0.x), 115593u >= global2.x, true), select(vec3<bool>(true, true, true), !func_2(1i, u_input.d, global0.zx), any(vec2<bool>(false, true))), !(!any(vec3<bool>(true, true, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 159f)))) + global0.x);
    global1 = var_0;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1089f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 795f) + _wgslsmith_f_op_vec2_f32(func_3(global2.x)).x))) * -616f), 110f);
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 433f, -217f), vec3<f32>(-1000f, -513f, 624f)) + _wgslsmith_div_vec3_f32(vec3<f32>(444f, 1057f, -1524f), vec3<f32>(var_1, var_1, global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 685f, -2372f), vec3<f32>(2465f, var_1, global0.x)))))));
    return vec4<u32>(abs(~_wgslsmith_mod_u32(firstLeadingBit(54673u), ~0u)), _wgslsmith_mult_u32(abs(reverseBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, global2.x), global2.x, 26883u, 1u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global2.x, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 21173u, 1u, 0u)), abs(vec4<u32>(u_input.c, 8551u, 1u, global2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, u_input.c, 64824u, u_input.c), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 11872u))))), 16294u, ~abs(firstLeadingBit(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_u32(reverseBits(abs(vec4<u32>(1u, 13940u, 0u, u_input.c))), ~(vec4<u32>(global2.x, global2.x, 4294967295u, u_input.c) >> (vec4<u32>(0u, u_input.b.x, 15202u, 57471u) % vec4<u32>(32u)))) & select(select(func_1(), vec4<u32>(u_input.b.x, global2.x, 4294967295u, 14980u), true) >> (countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global2.x, 20968u, 26455u), vec4<u32>(u_input.b.x, 24378u, u_input.c, global2.x))) % vec4<u32>(32u)), abs(~vec4<u32>(69874u, 4294967295u, global2.x, 9922u) | vec4<u32>(4294967295u, 54249u, 4294967295u, global2.x)), (~11174u >= ~global2.x) || true);
    global2 = ~var_0.zwx;
    let var_1 = Struct_1((global2.x & select(4294967295u, ~global2.x, func_2(-44167i, u_input.a.x, vec2<f32>(136f, 561f)).x)) << (21363u % 32u), select(vec3<bool>(false, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), true, select(false, func_2(0i, u_input.a.x, vec2<f32>(global0.x, global0.x)).x, global0.x >= 227f)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    let var_2 = true;
    let var_3 = vec3<f32>(-776f, global0.x, _wgslsmith_div_f32(139f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-abs(select(u_input.a, u_input.a, var_2))), ~var_0.wxx, global0.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-132f, var_3.x, global0.x, global0.x))) * vec4<f32>(var_3.x, var_3.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_3.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1082f, global0.x, var_3.x, 443f))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(976f, -599f, -1022f, global0.x) + vec4<f32>(-260f, -396f, -148f, global0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, var_3.x, -158f, global0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -805f, var_3.x, -316f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, global0.x, var_3.x, 852f) + vec4<f32>(121f, var_3.x, global0.x, -246f)), vec4<f32>(-1000f, var_3.x, var_3.x, 137f)))))));
}

