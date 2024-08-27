struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 0u, vec2<u32>(18839u, 13587u));

var<private> global1: Struct_1 = Struct_1(87511u, 1u, vec2<u32>(4294967295u, 64264u));

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<u32>, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_1(u_input.a.x, ~_wgslsmith_div_u32(~(~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_add_u32(global1.b, 4294967295u), ~4958u)), global1.c);
    let var_1 = false;
    var var_2 = Struct_1(_wgslsmith_clamp_u32(var_0.a, var_0.b, ~(global0.a << (~71266u % 32u))), 0u, global1.c);
    global3 = array<vec3<u32>, 21>();
    var var_3 = u_input.b;
    return -(i32(-1i) * -2147483647i);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f + _wgslsmith_f_op_f32(f32(-1f) * -344f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f * -403f)))), !(!select(true, false, true)))), 1183f);
    return _wgslsmith_div_vec4_i32(vec4<i32>(18613i, _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), ~(-global2.x)), ~(-2147483647i), _wgslsmith_dot_vec3_i32(global2.zyw, -global2.yyy)), abs(select(~vec4<i32>(48122i, u_input.b, global2.x, -1i), vec4<i32>(global2.x, u_input.b, global2.x, -2147483647i) ^ vec4<i32>(global2.x, -1i, u_input.b, global2.x), any(vec4<bool>(false, true, false, true)))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), global1.a, arg_0.b & 77496u, abs(global0.c.x)), vec4<u32>(16093u, global0.c.x, 0u, arg_0.c.x) | vec4<u32>(4294967295u, arg_0.c.x, 15066u, global1.a)) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = ~(_wgslsmith_div_vec4_u32(select(~vec4<u32>(arg_0.b, 66499u, arg_1.a, 51578u), ~vec4<u32>(arg_1.c.x, 1u, 4294967295u, global1.a), vec4<bool>(true, true, true, true)), ~(vec4<u32>(global0.a, 1u, global0.a, 22072u) >> (vec4<u32>(36050u, 17908u, global0.a, global1.b) % vec4<u32>(32u)))) << (~(~select(vec4<u32>(u_input.a.x, arg_0.b, u_input.a.x, u_input.a.x), vec4<u32>(arg_0.a, 65369u, 35871u, 1u), vec4<bool>(false, true, true, true))) % vec4<u32>(32u)));
    global2 = _wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(u_input.b >> (36428u % 32u), global2.x), ~u_input.b, _wgslsmith_mod_i32(u_input.b, global2.x) & _wgslsmith_clamp_i32(63270i, global2.x, global2.x), _wgslsmith_mult_i32(u_input.b, func_2(vec3<f32>(-827f, 862f, 316f)))), min(abs(func_3(arg_0)), -select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, global2.x, global2.x, u_input.b), vec4<bool>(false, false, false, false))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))), vec4<i32>(u_input.b, -(-2147483647i >> (1u % 32u)) | _wgslsmith_mod_i32(-2147483647i & u_input.b, u_input.b), global2.x << (select(global0.b, firstTrailingBit(arg_1.b), true) % 32u), -1i));
    var_0 = ~countOneBits(vec4<u32>(20556u, 4294967295u >> (arg_1.b % 32u), ~arg_0.c.x, ~(~32303u)));
    var var_1 = vec4<u32>(select(21473u, ~((arg_1.a << (68223u % 32u)) | 10710u), all(vec4<bool>(false, false, true, true)) & true), 1u, _wgslsmith_clamp_u32(arg_0.a, global1.b, ~1u), var_0.x);
    var_0 = ~vec4<u32>(global1.b, 37894u, 1u, ~(_wgslsmith_mult_u32(var_1.x, 1u) | max(47116u, 4294967295u)));
    return vec3<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~min(u_input.a.x, ~(~u_input.a.x)), 4294967295u, ~(~(~u_input.a)));
    var var_1 = Struct_1(var_0.b, ~4294967295u, vec2<u32>(_wgslsmith_sub_u32(global1.b ^ ~9356u, var_0.a), ~var_0.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(f32(-1f) * -680f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(f32(-1f) * -333f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1479f, 1000f)))))));
    let var_3 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true), func_1(Struct_1(var_1.b, abs(48942u), global0.c), Struct_1(min(var_0.b, var_0.b), 1u, u_input.a)));
    global1 = Struct_1(~4294967295u, firstTrailingBit(var_0.a), ~reverseBits(vec2<u32>(u_input.a.x, 1u)));
    global2 = -(-vec4<i32>(-1i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 1i), vec2<i32>(u_input.b, global2.x)), global2.x ^ global2.x) ^ ~(~(~vec4<i32>(global2.x, 37973i, -15891i, 1i))));
    global1 = Struct_1(firstLeadingBit(~var_0.c.x), u_input.a.x, vec2<u32>(~1u, ~(~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global2.x, min(-1i, -15001i), _wgslsmith_div_i32(u_input.b, -7394i)), min(_wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(-1i, 2937i)), -2147483647i), -46730i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 744f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(982f, var_2.x, 1770f, var_2.x) + vec4<f32>(-768f, -997f, 851f, 1000f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1004f)), var_2.x), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f) - _wgslsmith_f_op_f32(-var_2.x)), var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -873f, 253f, var_2.x), vec4<f32>(387f, var_2.x, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(735f, var_2.x, 1000f, -1490f)))))), global2.x);
}

