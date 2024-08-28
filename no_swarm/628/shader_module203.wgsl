struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: f32 = -1000f;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<u32>(72400u, 55198u, 57500u, 1u), vec3<u32>(30774u, 9889u, 0u), Struct_1(vec2<f32>(2364f, -103f), 0u), Struct_1(vec2<f32>(-248f, 2056f), 23260u), 4294967295u), Struct_2(vec4<u32>(17995u, 21385u, 1u, 0u), vec3<u32>(4294967295u, 27145u, 783u), Struct_1(vec2<f32>(357f, 885f), 95090u), Struct_1(vec2<f32>(-1464f, -1025f), 64782u), 4294967295u), Struct_2(vec4<u32>(1u, 34210u, 0u, 3447u), vec3<u32>(48345u, 33849u, 4294967295u), Struct_1(vec2<f32>(196f, -885f), 52715u), Struct_1(vec2<f32>(905f, 525f), 39290u), 19452u), Struct_2(vec4<u32>(11773u, 1u, 35382u, 26569u), vec3<u32>(79552u, 28068u, 69895u), Struct_1(vec2<f32>(1032f, -885f), 16103u), Struct_1(vec2<f32>(-1000f, 1485f), 19220u), 42904u), Struct_2(vec4<u32>(41687u, 60369u, 1u, 0u), vec3<u32>(65764u, 55816u, 0u), Struct_1(vec2<f32>(-929f, 662f), 1u), Struct_1(vec2<f32>(272f, -122f), 12900u), 4294967295u), Struct_2(vec4<u32>(34512u, 0u, 1u, 17169u), vec3<u32>(47941u, 0u, 4294967295u), Struct_1(vec2<f32>(666f, -761f), 45560u), Struct_1(vec2<f32>(-1087f, 750f), 1459u), 4294967295u), Struct_2(vec4<u32>(0u, 1u, 0u, 59479u), vec3<u32>(15402u, 74889u, 7835u), Struct_1(vec2<f32>(2179f, 199f), 46314u), Struct_1(vec2<f32>(2054f, -204f), 4294967295u), 77821u), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 110536u, 3u), Struct_1(vec2<f32>(-1729f, 484f), 17803u), Struct_1(vec2<f32>(-686f, 169f), 1u), 8265u), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 23374u), vec3<u32>(1u, 59348u, 56684u), Struct_1(vec2<f32>(700f, 651f), 0u), Struct_1(vec2<f32>(-802f, -708f), 66859u), 1u), Struct_2(vec4<u32>(27233u, 0u, 46612u, 1u), vec3<u32>(31712u, 0u, 0u), Struct_1(vec2<f32>(-2390f, 667f), 0u), Struct_1(vec2<f32>(625f, 1272f), 1u), 0u), Struct_2(vec4<u32>(8891u, 31055u, 1u, 8681u), vec3<u32>(24228u, 0u, 4294967295u), Struct_1(vec2<f32>(-182f, 280f), 17091u), Struct_1(vec2<f32>(516f, 632f), 32170u), 0u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = arg_0.a.x;
    var var_2 = global2[_wgslsmith_index_u32(arg_0.b, 11u)];
    let var_3 = var_2.a;
    global2 = array<Struct_2, 11>();
    return ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(var_3.xy, var_2.b.yz), 30116u), _wgslsmith_clamp_u32(countOneBits(16520u), u_input.a, 13527u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f + 1000f) - _wgslsmith_f_op_f32(select(1916f, _wgslsmith_div_f32(-1081f, 388f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-518f + 701f), _wgslsmith_f_op_f32(trunc(-200f)))) + 600f), abs(~53508i) > (-arg_1.x << (u_input.a % 32u)))));
    let var_0 = firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_3(Struct_1(vec2<f32>(-245f, 1310f), global0[_wgslsmith_index_u32(u_input.a, 28u)])), 1u), 28u)] & ~min(~23434u, 0u));
    var var_1 = false;
    global0 = array<u32, 28>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -345f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f - -1593f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -100f), 606f))))), 0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = select(vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), select(vec2<bool>(false && (u_input.a >= arg_0.x), -333f == _wgslsmith_f_op_f32(arg_2.a.x + -1048f)), vec2<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), !any(vec4<bool>(true, false, false, false))), any(vec2<bool>(true, true)) && true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(true, true), !any(vec4<bool>(true, true, false, false)))));
    let var_1 = vec4<u32>(9393u, global0[_wgslsmith_index_u32(4294967295u, 28u)] ^ func_2(select(!vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, true)), vec3<i32>(abs(-10310i), ~(-2147483647i), 40904i), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), true), vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(73218u, 28u)] != 76007u)).b, 1u, _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(0u, 28u)]) & arg_2.b, min(~10070u, abs(func_3(Struct_1(vec2<f32>(-1000f, -808f), arg_0.x))))));
    let var_2 = arg_2;
    var var_3 = global2[_wgslsmith_index_u32(97066u, 11u)];
    global2 = array<Struct_2, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1177f, arg_2.a.x)) + _wgslsmith_f_op_f32(-arg_1)))))) * _wgslsmith_f_op_f32(-arg_2.a.x));
}

fn func_1() -> vec2<f32> {
    global2 = array<Struct_2, 11>();
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(vec3<u32>(u_input.a, u_input.a, _wgslsmith_div_u32(~4294967295u, ~44931u)), -1465f, func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(19221i, -1i, -1i)), vec3<i32>(44407i, 12222i, -1i), vec3<i32>(1i, 1i, 1i)), vec4<bool>(true, true, true, true))))));
    global0 = array<u32, 28>();
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_f32(ceil(-1116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(428f)))));
    let var_0 = u_input.a << ((_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(69614u, 4294967295u)), u_input.a) | countOneBits(1u)) % 32u);
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2018f), -455f)))), -1840f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 28>();
    global1 = -1006f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1051f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1447f, -518f)))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-275f, 1000f)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))));
    var var_1 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(47779i, reverseBits(max(-12910i, 0i)), _wgslsmith_clamp_i32(~(-1i), -13319i, -2147483647i)), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -6649i, 0i), vec3<i32>(-3047i, 1i, 1i))) << (vec3<u32>(firstLeadingBit(u_input.a), 1u, abs(4294967295u)) % vec3<u32>(32u))), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-23106i, -4547i, -1i)), vec3<i32>(1i, 1i, 1i)), 1i), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

