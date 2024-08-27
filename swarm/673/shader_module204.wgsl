struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 64496u);

var<private> global1: array<f32, 13> = array<f32, 13>(-2612f, 2381f, -1109f, 397f, 895f, -463f, 1000f, 1000f, 205f, -773f, 1975f, 192f, -339f);

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = Struct_4(!arg_1);
    let var_1 = select(~(max(~vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(global0.x, global0.x, global0.x) << (vec3<u32>(global0.x, 0u, 85508u) % vec3<u32>(32u))) >> (reverseBits(~vec3<u32>(global0.x, 30109u, 4294967295u)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global0.x, ~80032u), max(_wgslsmith_sub_u32(46059u, global0.x), ~global0.x), 1u), ~0u ^ _wgslsmith_clamp_u32(global0.x, 7537u, max(global0.x, 1u)), ~15384u), any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(min(var_1.x, 4294967295u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 12400u), var_1.yz)), max(global0.x, _wgslsmith_mod_u32(3496u, ~global0.x))), ~1u);
    global2 = vec4<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, arg_0, 0i, u_input.b.x), ~vec4<i32>(1i, 40939i, -2147483647i, -23341i)) | _wgslsmith_clamp_i32(_wgslsmith_div_i32(56262i, arg_0), 858i, -1i), -2147483647i, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, u_input.b.x), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.c.x, -1i)), -u_input.c.zz)), global2.ww));
    let var_3 = select(!vec4<bool>(any(!vec4<bool>(arg_1, false, false, arg_1)), global0.x != 4294967295u, all(vec4<bool>(var_0.a, var_0.a, false, arg_1)), var_0.a), vec4<bool>(var_0.a, true, !(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1.x, 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)]) <= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 13u)] * global1[_wgslsmith_index_u32(1u, 13u)])), true), any(select(select(!vec4<bool>(false, arg_1, arg_1, var_0.a), select(vec4<bool>(false, false, var_0.a, false), vec4<bool>(false, arg_1, var_0.a, arg_1), var_0.a), arg_1), select(!vec4<bool>(true, var_0.a, arg_1, true), !vec4<bool>(true, true, true, arg_1), select(var_0.a, arg_1, false)), !(!vec4<bool>(var_0.a, var_0.a, arg_1, false)))));
    return arg_1;
}

fn func_2() -> bool {
    var var_0 = Struct_5(func_3(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(-2147483647i, u_input.b.x), -global2.x & global2.x), true));
    var var_1 = Struct_5(var_0.a);
    var var_2 = ~vec4<i32>(-1i, ~abs(global2.x ^ -23767i), 0i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b));
    var var_3 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1373f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3103u, 13u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-891f))))));
    let var_4 = global1[_wgslsmith_index_u32(43350u, 13u)];
    return !(global0.x < 4294967295u) | var_0.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> Struct_5 {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(49541i & (global2.x >> (0u % 32u)), global2.x), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_2.a.c), abs(vec2<i32>(-5245i, global2.x)), global2.xw)), u_input.a.xz), global2.zy | ~vec2<i32>(1i, u_input.a.x));
    var var_1 = countOneBits(~select(select(~vec4<u32>(global0.x, 1u, 0u, 12230u), ~vec4<u32>(4294967295u, global0.x, 60576u, global0.x), arg_0.a), (vec4<u32>(1u, 1u, global0.x, 807u) | vec4<u32>(45907u, 0u, 1u, global0.x)) | ~vec4<u32>(global0.x, 303u, 1u, global0.x), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.a, _wgslsmith_f_op_f32(abs(-231f)), _wgslsmith_f_op_f32(trunc(-1000f))));
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.x));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(261f, arg_1.a, 1802f) + vec3<f32>(-292f, 1300f, arg_2.a.a.a)) - vec3<f32>(arg_1.a, 219f, arg_1.a)))), vec3<f32>(arg_2.a.a.a, _wgslsmith_f_op_f32(-arg_2.a.a.a), -1000f))));
    return Struct_5(!(!arg_0.a));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_3 {
    var var_0 = global2.x;
    var var_1 = func_4(Struct_4(func_2()), Struct_1(-395f), Struct_3(Struct_2(Struct_1(610f), 29516i, i32(-1i) * -u_input.b.x)));
    var var_2 = !vec3<bool>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(step(-235f, 129f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(51971u, 73168u, 23251u), vec3<u32>(21833u, 7282u, arg_0)), 13u)]), true);
    let var_3 = _wgslsmith_add_i32(1i, global2.x) & -30922i;
    let var_4 = -522f;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(-1000f))), firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x | u_input.c.x, ~global2.x, global2.x)), reverseBits(-3481i)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> u32 {
    global2 = -(~vec4<i32>(~_wgslsmith_sub_i32(global2.x, -2147483647i), _wgslsmith_mod_i32(-51362i, -1i), -2147483647i << (global0.x % 32u), 2147483647i));
    global1 = array<f32, 13>();
    let var_0 = arg_0.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(~global0.x) & ~(~0u), 13u)]));
    global1 = array<f32, 13>();
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 9183u), vec3<u32>(8168u, global0.x, 48638u)), abs(global0.x)), 13u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 13u)])));
    global0 = _wgslsmith_clamp_vec2_u32(min(vec2<u32>(_wgslsmith_add_u32(4294967295u | global0.x, global0.x ^ global0.x), 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(52749u, global0.x))), ~vec2<u32>(0u, (0u ^ global0.x) & ~21978u), ~vec2<u32>(func_5(vec2<bool>(true, true), ~vec4<u32>(31170u, global0.x, global0.x, global0.x), func_1(4294967295u, global1[_wgslsmith_index_u32(29708u, 13u)], true)), global0.x));
    let var_2 = ~select(vec3<u32>(abs(_wgslsmith_mod_u32(42684u, global0.x)), 26349u, ~global0.x), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.x, 4294967295u), vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 112487u, global0.x))) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, global0.x) | vec3<u32>(0u, global0.x, 9512u), countOneBits(vec3<u32>(35755u, 1228u, 7002u)), ~vec3<u32>(12629u, 78614u, global0.x)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_3 = vec4<bool>(true, false, any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))) && true, all(select(vec3<bool>(7915u != global0.x, true, func_2()), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)));
    global2 = u_input.b ^ vec4<i32>(~u_input.b.x, -(max(u_input.c.x, -11963i) >> (global0.x % 32u)), -15706i, _wgslsmith_sub_i32(global2.x, _wgslsmith_sub_i32(u_input.b.x & u_input.c.x, ~(-6768i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yy, vec3<f32>(global1[_wgslsmith_index_u32(21859u, 13u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(62486u, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.x, 31913u, global0.x), 13u)] + _wgslsmith_f_op_f32(f32(-1f) * -871f))));
}

