struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(80529u, 0u, 14033u, 4294967295u);

var<private> global2: array<vec2<i32>, 11>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_5, arg_3: u32) -> bool {
    var var_0 = arg_2.a;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.b.b.x, _wgslsmith_f_op_f32(-arg_2.b.b.x)))) + _wgslsmith_f_op_f32(-arg_2.b.b.x)));
    var var_2 = arg_2.b;
    return var_0.c.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    global1 = select(~abs(~vec4<u32>(9274u, u_input.b, arg_0.x, 4294967295u)) >> (~vec4<u32>(min(global1.x, global1.x), ~global1.x, _wgslsmith_sub_u32(arg_0.x, 0u), 31136u) % vec4<u32>(32u)), max(vec4<u32>(global1.x, global1.x | ~636u, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, u_input.b, 57340u, 34283u) & vec4<u32>(global1.x, 0u, 1u, arg_0.x), ~vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x)), max(select(vec4<u32>(global1.x, u_input.b, 1u, 21092u), vec4<u32>(0u, global1.x, global1.x, arg_0.x), arg_1.a), ~vec4<u32>(u_input.b, global1.x, arg_0.x, arg_0.x)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2, -9390i), min(u_input.a, -arg_2)) <= _wgslsmith_div_i32(arg_2, i32(-1i) * -2147483647i));
    let var_0 = arg_0.x;
    global1 = vec4<u32>(~global1.x, u_input.b, global1.x, ~max(arg_0.x, 4294967295u) << ((26291u & (_wgslsmith_add_u32(arg_0.x, var_0) & 0u)) % 32u));
    var var_1 = ~vec3<u32>(_wgslsmith_sub_u32(~arg_0.x, 26321u), ~17239u, ~0u) >> (global1.xzy % vec3<u32>(32u));
    global0 = Struct_1(global0.a);
    return Struct_2(global1.x, arg_1.b.a.x, select(!select(vec3<bool>(global0.a.x, global0.a.x, arg_1.b.a.x), vec3<bool>(arg_1.b.a.x, true, arg_1.a.x), select(false, arg_1.a.x, false)), select(vec3<bool>(global0.a.x, func_3(global2[_wgslsmith_index_u32(var_0, 11u)], 71173u, Struct_5(Struct_2(44264u, true, global0.a, arg_1.b), Struct_3(arg_1.b, vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), -2147483647i), -13702i, true), 0u), false), !select(arg_1.b.a, vec3<bool>(false, false, global0.a.x), vec3<bool>(false, global0.a.x, arg_1.b.a.x)), true), select(vec3<bool>(!arg_1.a.x, arg_1.a.x, select(true, true, false)), arg_1.b.a, vec3<bool>(true, global0.a.x, true))), arg_1.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, firstLeadingBit(1i), _wgslsmith_mult_i32(0i, ~u_input.a), _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, u_input.a), _wgslsmith_mod_i32(u_input.a, -39147i))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, -8738i, u_input.a) >> (vec4<u32>(arg_0.x, global1.x, arg_0.x, 29270u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, min(37667i, u_input.a), -2147483647i, ~3841i))));
    global2 = array<vec2<i32>, 11>();
    let var_1 = reverseBits(func_2(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, 32345u, 1u), ~9511u), arg_0.x), Struct_4(select(select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_1.b), vec4<bool>(false, false, arg_1.b, global0.a.x), arg_2.a.x), !vec4<bool>(global0.a.x, true, true, true), !vec4<bool>(global0.a.x, arg_1.b, global0.a.x, true)), arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, 1830f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2161f, 741f))))), 0i).a);
    let var_2 = vec4<bool>(!(!all(func_2(global1.yw, Struct_4(vec4<bool>(arg_2.a.x, false, false, false), Struct_1(arg_2.a), vec2<f32>(-460f, -1010f)), var_0.x).d.a.yy)), false, !global0.a.x, func_2(~vec2<u32>(~arg_0.x, max(global1.x, arg_1.a)), Struct_4(select(select(vec4<bool>(true, arg_2.a.x, arg_2.a.x, true), vec4<bool>(arg_1.d.a.x, false, arg_2.a.x, false), vec4<bool>(arg_2.a.x, false, true, false)), select(vec4<bool>(global0.a.x, false, global0.a.x, false), vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), global0.a.x), global0.a.x || arg_2.a.x), arg_2, vec2<f32>(1986f, -754f)), _wgslsmith_clamp_i32(-(u_input.a & u_input.a), max(2147483647i, u_input.a) >> (_wgslsmith_add_u32(global1.x, 8918u) % 32u), _wgslsmith_add_i32(u_input.a, 2147483647i) | _wgslsmith_div_i32(var_0.x, -4101i))).b);
    let var_3 = vec2<u32>(arg_1.a, firstTrailingBit(~4294967295u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, -444f, -1689f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> Struct_5 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~vec4<u32>(~1u, u_input.b, arg_2 ^ arg_2, 0u), func_2(~_wgslsmith_clamp_vec2_u32(global1.wx, global1.wz, global1.yx), Struct_4(vec4<bool>(false, false, false, global0.a.x), Struct_1(vec3<bool>(arg_0, true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(-148f, -613f), vec2<f32>(-537f, 438f))), _wgslsmith_mult_i32(1i, u_input.a)), Struct_1(global0.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(241f)) + -1000f), -245f, 1369f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(269f, -1000f, -744f), vec3<f32>(-159f, -1980f, -1154f)))))));
    let var_2 = abs(max(vec4<u32>(1u, global1.x, global1.x, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 26889u, 16274u, u_input.b), vec4<u32>(35660u, 42099u, 0u, 0u)))), vec4<u32>(firstLeadingBit(24211u | arg_2), max(~34920u, ~47425u), ~4294967295u & _wgslsmith_div_u32(25693u, arg_2), 83046u)));
    let var_3 = !arg_1.yz;
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1542f))), _wgslsmith_div_f32(-224f, _wgslsmith_f_op_vec3_f32(func_4(var_2, Struct_2(44146u, arg_1.x, global0.a, Struct_1(global0.a)), Struct_1(arg_1.yyw))).x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), vec3<f32>(var_1.x, 749f, -1000f), vec3<bool>(false, false, false)))))));
    return Struct_5(Struct_2(1u, ~(-22827i) == _wgslsmith_mod_i32(min(u_input.a, 0i), reverseBits(u_input.a)), arg_1.zwx, Struct_1(global0.a)), Struct_3(func_2(var_2.xw, Struct_4(vec4<bool>(global0.a.x, arg_0, true, arg_0), func_2(global1.zw, Struct_4(arg_1, Struct_1(vec3<bool>(global0.a.x, false, false)), vec2<f32>(var_1.x, var_1.x)), u_input.a).d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-411f, var_1.x), var_1.yx))), u_input.a).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -24896i, u_input.a), abs(vec3<i32>(u_input.a, -21616i, u_input.a))), _wgslsmith_sub_i32(max(u_input.a, 0i), min(u_input.a, u_input.a)))), -47429i, select(select(func_3(~vec2<i32>(u_input.a, 34663i), _wgslsmith_sub_u32(4294967295u, 43218u), Struct_5(Struct_2(0u, arg_1.x, global0.a, Struct_1(vec3<bool>(var_3.x, false, arg_0))), Struct_3(Struct_1(global0.a), vec4<f32>(-651f, 482f, -480f, var_1.x), u_input.a), -1i, false), u_input.b), arg_0, true), true, true));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>) -> Struct_5 {
    let var_0 = arg_0.b.b;
    var var_1 = false;
    global0 = Struct_1(select(vec3<bool>(global0.a.x, func_2(reverseBits(global1.zz), Struct_4(vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.b.a.a.x, false), Struct_1(arg_0.b.a.a), vec2<f32>(arg_0.b.b.x, var_0.x)), _wgslsmith_sub_i32(arg_0.b.c, arg_0.c)).b, false), global0.a, func_2(vec2<u32>(20107u, 3778u), Struct_4(select(vec4<bool>(true, arg_0.a.b, true, arg_0.d), vec4<bool>(true, global0.a.x, arg_0.b.a.a.x, arg_0.a.b), arg_0.b.a.a.x), func_1(arg_0.d, vec4<bool>(global0.a.x, global0.a.x, true, true), global1.x).b.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1170f, 426f)))), -select(u_input.a, -1i, true)).b));
    var_1 = global1.x < ~27323u;
    let var_2 = -max(8359i, abs(arg_0.b.c | u_input.a) << ((_wgslsmith_div_u32(0u, arg_0.a.a) ^ ~3237u) % 32u));
    return func_1(true, !(!select(select(vec4<bool>(arg_0.a.d.a.x, global0.a.x, arg_0.d, true), vec4<bool>(arg_0.d, global0.a.x, true, true), vec4<bool>(true, true, true, arg_0.d)), vec4<bool>(arg_0.d, global0.a.x, true, false), !global0.a.x)), ~4294967295u ^ (global1.x << (_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.a.a, 1u), arg_0.a.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(true, vec4<bool>(global0.a.x || select(global0.a.x, global0.a.x, global0.a.x), true, !global0.a.x, !global0.a.x), 42520u), vec3<i32>(min(-1i, 1i), i32(-1i) * -u_input.a, -1i));
    global1 = select(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b, u_input.b >> (global1.x % 32u), ~4294967295u, u_input.b | var_0.a.a), max(vec4<u32>(u_input.b, 1u, 1u, global1.x), vec4<u32>(79222u, 17487u, 20077u, 29210u))) << (abs(firstTrailingBit(abs(vec4<u32>(1u, 0u, global1.x, 18323u)))) % vec4<u32>(32u)), countOneBits(~vec4<u32>(1u, global1.x, 36474u, 14655u) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(23066u, 1u, u_input.b, 1u), vec4<u32>(1u, global1.x, global1.x, 54222u)) % vec4<u32>(32u))), all(select(select(func_5(Struct_5(var_0.a, var_0.b, -21469i, true), vec3<i32>(-23092i, -12353i, 0i)).b.a.a.yx, vec2<bool>(true, true), false), func_1(true, select(vec4<bool>(var_0.b.a.a.x, var_0.d, var_0.a.c.x, true), vec4<bool>(global0.a.x, global0.a.x, true, false), false), ~18946u).b.a.a.yz, vec2<bool>(true, global0.a.x & var_0.a.d.a.x))));
    let var_1 = max(~21878u, ~4294967295u);
    var var_2 = true;
    var var_3 = var_0.b.b.xyw;
    let var_4 = 465f;
    let var_5 = ~vec4<i32>(-6214i, ~37226i, _wgslsmith_dot_vec3_i32(firstTrailingBit(select(vec3<i32>(2147483647i, var_0.c, -4207i), vec3<i32>(var_0.b.c, var_0.b.c, -33520i), var_0.b.a.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -16058i, var_0.b.c), vec3<i32>(-1i, 28655i, var_0.c)), firstLeadingBit(vec3<i32>(26191i, 3122i, u_input.a)), max(vec3<i32>(u_input.a, 0i, var_0.b.c), vec3<i32>(-2147483647i, u_input.a, -1i)))), -max(-1i, -2147483647i));
    let var_6 = vec2<u32>(var_1, 28636u);
    let var_7 = var_0.b.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b);
}

