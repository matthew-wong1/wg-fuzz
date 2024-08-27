struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1410f;

var<private> global1: vec3<f32> = vec3<f32>(1241f, 761f, 1173f);

var<private> global2: vec3<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> u32 {
    global2 = arg_1.c;
    let var_0 = arg_2;
    let var_1 = 0u;
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(-61016i, -1i), u_input.a), arg_1.a), vec2<i32>(u_input.a, max(41682i, arg_1.a)));
    return ~var_0;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = 1u;
    var var_1 = ~vec3<u32>(4294967295u, func_3(_wgslsmith_f_op_f32(global2.x * -459f), Struct_3(max(27456i, -33311i), arg_2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, arg_2.x, global1.x))), _wgslsmith_sub_u32(u_input.c.x, 97155u)), _wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(func_3(766f, Struct_3(-2189i, 1407f, vec3<f32>(-1460f, -1287f, global1.x)), u_input.c.x), arg_1.a), _wgslsmith_dot_vec2_u32(~u_input.c.yz, ~u_input.c.xz)));
    let var_2 = arg_1;
    let var_3 = arg_3.b;
    let var_4 = arg_2.x;
    return Struct_2(Struct_1(20459u, vec3<bool>(true, true, true), arg_1.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * _wgslsmith_f_op_f32(-429f * global1.x)) + -1418f), _wgslsmith_f_op_f32(select(arg_0.c.x, global2.x, _wgslsmith_f_op_f32(-arg_0.b) < 2085f))) + vec3<f32>(1610f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1736f))))), _wgslsmith_f_op_f32(arg_0.b + 1026f)));
    var var_0 = arg_0.c.x;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(exp2(global1.x))))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-110f, -945f)) + _wgslsmith_div_f32(634f, 680f)))));
    var var_2 = 1u;
    return func_2(select(!vec3<bool>(true, any(vec2<bool>(false, arg_2.b.x)), arg_2.b.x | false), !vec3<bool>(arg_1.a.b.x, !arg_1.a.b.x, any(vec4<bool>(true, arg_1.a.b.x, arg_1.a.b.x, true))), (firstTrailingBit(-3066i) ^ -2147483647i) > -_wgslsmith_div_i32(3599i, 1i)), Struct_1(52675u, arg_2.b, abs(arg_1.a.c)), _wgslsmith_f_op_vec2_f32(-var_1.zx), arg_0);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(~(~abs(vec3<u32>(0u, arg_1.a.a, 4294967295u))) << ((~abs(vec3<u32>(arg_1.a.a, arg_1.a.a, u_input.c.x)) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 8508u, 62234u) | vec3<u32>(arg_2.a, u_input.c.x, 1u), u_input.c.zxy)) % vec3<u32>(32u)), u_input.c.wxw);
    var var_1 = _wgslsmith_div_vec3_u32(~u_input.c.xwz, firstTrailingBit(vec3<u32>(var_0.x & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 4750u), u_input.c.yxy), _wgslsmith_div_u32(11354u, _wgslsmith_clamp_u32(arg_1.a.a, 4294967295u, 66616u)), arg_1.a.a)));
    let var_2 = func_4(Struct_3(~(-2147483647i >> (~arg_1.a.a % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(298f + global2.x), !arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(196f, global2.x, -358f), vec3<f32>(global1.x, global2.x, global1.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-256f, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-531f, global2.x, 424f) - vec3<f32>(1537f, global1.x, global1.x))))), func_4(Struct_3(-arg_2.c.x, 1f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, 402f), vec3<f32>(-554f, -1912f, 985f))))), Struct_2(arg_1.a), Struct_1(1u, !vec3<bool>(false, arg_1.a.b.x, arg_1.a.b.x), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a, -1i), arg_1.a.c))), Struct_1(var_1.x >> (~var_0.x % 32u), vec3<bool>(!all(vec2<bool>(arg_2.b.x, arg_0)), all(vec3<bool>(arg_0, true, true)), arg_2.b.x), reverseBits(func_2(func_2(vec3<bool>(true, arg_2.b.x, arg_0), arg_2, vec2<f32>(global2.x, global2.x), Struct_3(arg_1.a.c.x, global2.x, vec3<f32>(global2.x, -857f, -1719f))).a.b, Struct_1(0u, arg_2.b, vec4<i32>(arg_2.c.x, u_input.b, arg_2.c.x, arg_2.c.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, global2.x))), Struct_3(arg_1.a.c.x, global1.x, vec3<f32>(236f, -1267f, global2.x))).a.c)));
    var var_3 = arg_1;
    var var_4 = func_2(vec3<bool>(all(func_2(func_4(Struct_3(-63093i, 1000f, vec3<f32>(1104f, -767f, global2.x)), arg_1, var_2.a).a.b, var_2.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-111f, global2.x))), Struct_3(u_input.a, 2199f, vec3<f32>(-1000f, -651f, 598f))).a.b.xz), !(func_4(Struct_3(var_3.a.c.x, 1449f, vec3<f32>(211f, global2.x, global2.x)), arg_1, Struct_1(var_2.a.a, vec3<bool>(true, arg_2.b.x, true), arg_2.c)).a.b.x & (var_3.a.b.x || true)), arg_0), func_2(var_2.a.b, var_2.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - global2.x), 715f))), Struct_3(-_wgslsmith_add_i32(28326i, var_3.a.c.x), global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, 1318f, global1.x))))).a, _wgslsmith_f_op_vec2_f32(floor(global2.yz)), Struct_3(firstLeadingBit(~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-393f, 378f, global2.x))))).a;
    return ~(var_0.x & reverseBits(~(~1u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = true;
    let var_1 = ~(func_5(_wgslsmith_clamp_u32(9381u, arg_1.a, u_input.c.x) >= ~0u, func_4(Struct_3(u_input.b, global1.x, vec3<f32>(1081f, global2.x, arg_0.x)), func_2(arg_1.b, Struct_1(10457u, arg_1.b, arg_1.c), global1.xy, Struct_3(-1i, -2531f, arg_0.wxy)), func_2(arg_1.b, arg_1, global2.xx, Struct_3(u_input.a, 1000f, vec3<f32>(arg_0.x, global1.x, -933f))).a), arg_1) >> (max(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x)), ~u_input.c.x | max(1u, u_input.c.x)) % 32u));
    var var_2 = Struct_3(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-233f)), _wgslsmith_f_op_f32(arg_0.x - 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(303f, arg_0.x)) * _wgslsmith_f_op_f32(max(1067f, global2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yzx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1202f, global2.x, 240f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_0.x, -434f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(780f, global2.x, 708f), _wgslsmith_f_op_vec3_f32(-arg_0.yzz), arg_1.b.x)))));
    global2 = arg_0.xwy;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1025f)), -1000f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yyz) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-114f, var_2.c.x, var_2.c.x) * var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, global1.x, global1.x, 833f)))), Struct_1(~1u, vec3<bool>(true, true, true), vec4<i32>(u_input.a, -1i, u_input.b, u_input.a)))))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(max(global1.x, global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.x))))))));
    var var_1 = Struct_3(-2147483647i, 202f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1170f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1253f, 1000f, -318f) * vec3<f32>(global2.x, global2.x, 418f)))) + vec3<f32>(-260f, _wgslsmith_f_op_f32(1167f - _wgslsmith_f_op_f32(trunc(529f))), -782f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global1.x))) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x))), global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -991f)));
    let var_2 = u_input.c;
    let var_3 = func_4(Struct_3(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1094f) - global2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.c))) - vec3<f32>(global1.x, global2.x, _wgslsmith_f_op_f32(global1.x - -1000f)))), func_4(Struct_3(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(max(1018f, 846f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-909f, -692f, -1000f)))), func_2(vec3<bool>(true, true, true), func_2(vec3<bool>(true, true, true), func_4(Struct_3(u_input.a, global2.x, var_1.c), Struct_2(Struct_1(u_input.c.x, vec3<bool>(true, true, true), vec4<i32>(var_1.a, 0i, var_1.a, 1i))), Struct_1(4294967295u, vec3<bool>(false, false, false), vec4<i32>(-1i, var_1.a, 0i, 2147483647i))).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, -208f) + global1.yz), Struct_3(-18389i, 227f, vec3<f32>(var_1.b, -718f, -1051f))).a, vec2<f32>(_wgslsmith_f_op_f32(-global2.x), var_1.c.x), Struct_3(countOneBits(-1i), _wgslsmith_f_op_f32(abs(360f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, 290f, -1581f)))), Struct_1(func_4(Struct_3(-1i, global2.x, var_1.c), func_2(vec3<bool>(false, false, false), Struct_1(var_2.x, vec3<bool>(false, true, true), vec4<i32>(-35807i, var_1.a, -2147483647i, -1i)), vec2<f32>(global2.x, global1.x), Struct_3(var_1.a, var_1.b, var_1.c)), func_4(Struct_3(2147483647i, 427f, vec3<f32>(var_1.c.x, -321f, global2.x)), Struct_2(Struct_1(u_input.c.x, vec3<bool>(false, false, false), vec4<i32>(4569i, u_input.a, var_1.a, var_1.a))), Struct_1(27953u, vec3<bool>(false, true, false), vec4<i32>(u_input.b, -9001i, 0i, 2147483647i))).a).a.a, vec3<bool>(77547u >= var_2.x, global1.x > -450f, var_1.a < u_input.a), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, var_1.a), vec4<i32>(2147483647i, -1i, -1i, -2147483647i)), ~vec4<i32>(var_1.a, var_1.a, var_1.a, 2147483647i)))), Struct_1(firstTrailingBit(func_5(true, Struct_2(Struct_1(20479u, vec3<bool>(false, false, false), vec4<i32>(var_1.a, 0i, -29309i, 4020i))), func_2(vec3<bool>(false, true, false), Struct_1(var_2.x, vec3<bool>(false, false, false), vec4<i32>(u_input.b, var_1.a, -1i, 1i)), global1.yy, Struct_3(var_1.a, var_1.c.x, var_1.c)).a)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), ~(-(~vec4<i32>(u_input.a, u_input.b, 1i, -15971i))))).a;
    var var_4 = u_input.c;
    var_0 = var_3.b.x;
    var var_5 = Struct_1(~_wgslsmith_dot_vec3_u32(abs(abs(var_4.xzz)), var_2.xzy), !vec3<bool>(true, true, any(vec4<bool>(true, var_3.b.x, true, var_3.b.x)) | any(var_3.b.yx)), -_wgslsmith_mult_vec4_i32(var_3.c, abs(var_3.c) >> (vec4<u32>(var_4.x, u_input.c.x, var_4.x, var_3.a) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~var_3.a, _wgslsmith_dot_vec3_u32(var_2.zyx, vec3<u32>(var_4.x, 55527u, 2165u))), var_2.ww), vec2<u32>(u_input.c.x, var_3.a), var_4.wx));
}

