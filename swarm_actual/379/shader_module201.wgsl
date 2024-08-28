struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(27986u, 4294967295u, 1u, 9586u), false, 0i, -15101i), Struct_1(vec4<u32>(5874u, 70462u, 0u, 35937u), true, -18013i, 40006i), Struct_1(vec4<u32>(646u, 75273u, 30850u, 0u), true, i32(-2147483648), -4645i), Struct_1(vec4<u32>(75609u, 24244u, 4294967295u, 57342u), true, 8131i, 28704i), Struct_1(vec4<u32>(12616u, 0u, 89786u, 46386u), true, 2147483647i, 46387i), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), true, -5225i, 13755i), Struct_1(vec4<u32>(0u, 9807u, 1u, 132805u), true, -1i, 6231i), Struct_1(vec4<u32>(24962u, 75916u, 34626u, 22559u), false, 48442i, 35091i), Struct_1(vec4<u32>(129319u, 30947u, 28782u, 923u), true, 1i, 1i), Struct_1(vec4<u32>(18255u, 1u, 26072u, 32972u), false, -23251i, 0i), Struct_1(vec4<u32>(1u, 85986u, 4294967295u, 1u), true, 1i, -36519i), Struct_1(vec4<u32>(127647u, 0u, 30832u, 1u), true, -1i, 0i));

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: bool = false;

var<private> global3: vec2<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 1000f, global3.x, 2379f), vec4<f32>(700f, -822f, global3.x, -1593f), global1[_wgslsmith_index_u32(arg_0.a.x, 32u)])) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(719f, -139f, -1382f, global3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) - vec4<f32>(-1582f, -289f, global3.x, -1500f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, 1000f, global3.x, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, global3.x, global3.x, global3.x))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, global3.x, 1034f, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1583f, global3.x, global3.x, global3.x), vec4<f32>(global3.x, global3.x, -733f, global3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, global3.x, -725f, global3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 639f, global3.x, 514f) + vec4<f32>(global3.x, global3.x, 1000f, global3.x)))), false)));
    global1 = array<vec4<bool>, 32>();
    let var_1 = Struct_1(u_input.b, arg_3.x, 2147483647i, -33005i);
    global1 = array<vec4<bool>, 32>();
    global1 = array<vec4<bool>, 32>();
    return var_1.a.x << (arg_0.a.x % 32u);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1139f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(480f, -1055f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), min(~(~max(-2147483647i, 0i)), min(0i, _wgslsmith_clamp_i32(-46069i, ~50772i, 1i))), -2147483647i);
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(var_0.a.x >> (~24955u % 32u), max(_wgslsmith_add_u32(0u, 1u), firstTrailingBit(u_input.a.x)), ~1u, countOneBits(1u))), !var_0.b, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(~var_0.d, 1i), -31796i), -23266i), var_0.d);
    global1 = array<vec4<bool>, 32>();
    global0 = array<Struct_1, 12>();
    global2 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -767f))) < _wgslsmith_f_op_f32(-global3.x));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(var_0.a), var_1.a), ~select(var_0.a.x, func_3(global0[_wgslsmith_index_u32(var_0.a.x, 12u)], max(vec4<i32>(var_0.c, -25955i, var_0.c, var_1.d), vec4<i32>(var_0.d, -1i, var_0.c, var_0.d)), _wgslsmith_add_i32(-2147483647i, var_0.d), select(vec4<bool>(false, true, var_1.b, true), global1[_wgslsmith_index_u32(1u, 32u)], vec4<bool>(true, var_0.b, var_1.b, var_0.b))), true));
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_div_vec2_f32(vec2<f32>(-1120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x * global3.x))))), vec2<f32>(global3.x, _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-944f)) + _wgslsmith_f_op_f32(f32(-1f) * -836f))))));
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x << (func_2(588f) % 32u), 12u)];
    return global0[_wgslsmith_index_u32(~(~6940u), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(global3.x * global3.x), -725f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1000f, global3.x, -301f)))))));
    let var_2 = firstLeadingBit(-(~vec4<i32>(_wgslsmith_mod_i32(13797i, 6179i), ~var_0.d, _wgslsmith_div_i32(var_0.c, var_0.c), ~var_0.c)));
    var_0 = Struct_1(vec4<u32>(14424u, ~7749u, _wgslsmith_dot_vec2_u32(reverseBits(min(vec2<u32>(1u, 137u), u_input.a.yz)), vec2<u32>(58353u, 30490u)), ~_wgslsmith_mult_u32(1u ^ u_input.b.x, func_2(1010f))), var_0.b, -1i << (min(~71959u | (u_input.b.x & u_input.b.x), u_input.b.x) % 32u), -31494i);
    global2 = any(!vec3<bool>(!func_1().b, true, all(select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, false, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(1i, 37868i), var_2.x);
}

