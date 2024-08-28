struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, 1i), 0u, vec4<f32>(-777f, -1000f, 192f, 844f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec2<i32>(~(2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, 1i), vec4<i32>(global1.a.x, 1i, global1.a.x, -1i))), max(-_wgslsmith_add_i32(-19781i, 24602i), ~_wgslsmith_sub_i32(-2147483647i, global1.a.x))), global1.b, global1.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(floor(296f)))));
    let var_2 = -579f;
    var var_3 = 22920u;
    let var_4 = select(vec4<i32>(~(-2147483647i), var_0.a.x, -2147483647i, abs(firstLeadingBit(_wgslsmith_div_i32(1i, 1i)))), select(vec4<i32>(1i, global1.a.x, ~(var_0.a.x << (var_0.b % 32u)), _wgslsmith_div_i32(abs(global1.a.x), var_0.a.x)), firstLeadingBit(vec4<i32>(var_0.a.x, abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, var_0.a.x), vec3<i32>(0i, -1i, 3760i)), _wgslsmith_mult_i32(global1.a.x, var_0.a.x))), false), vec4<bool>(true, true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)))));
    return ~_wgslsmith_clamp_u32(4294967295u, 43112u, _wgslsmith_sub_u32(countOneBits(global1.b & 4294967295u), ~4294967295u & global1.b));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = ~u_input.a.zy;
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-61125i << (~global1.b % 32u), 7797i), _wgslsmith_sub_i32(arg_1, 0i)), func_3(), global1.c);
    global0 = global1.c;
    global1 = var_1;
    let var_2 = countOneBits(countOneBits(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_1.a.x, var_1.a.x), select(arg_2.xx, arg_2.zy, vec2<bool>(arg_3, arg_3)), arg_3), ~vec2<i32>(var_1.a.x, -23762i), global1.a)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-164f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-arg_1.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(-1265f, global1.c.x, -901f, -344f)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-592f, arg_1.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(round(-1947f)), arg_1.c.x) + vec4<f32>(func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_add_i32(arg_1.a.x, global1.a.x), -vec3<i32>(arg_0.a.x, arg_1.a.x, global1.a.x), true).c.x, _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), -1i, vec3<i32>(2147483647i, global1.a.x, global1.a.x), false).c.x + _wgslsmith_f_op_f32(global0.x - -511f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * -794f), _wgslsmith_f_op_f32(floor(global1.c.x)))), -973f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.c.x, 1895f)), _wgslsmith_f_op_f32(global0.x + -106f), func_2(vec2<bool>(true, true), 2147483647i, vec3<i32>(arg_1.a.x, 1i, -18909i), true).c.x, _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(890f, global1.c.x, global0.x, global0.x)) + arg_1.c))));
    global0 = _wgslsmith_f_op_vec4_f32(arg_1.c * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(877f, -1555f)) - _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -412f))), arg_1.c.x, -856f));
    global1 = Struct_1(countOneBits(-vec2<i32>(_wgslsmith_sub_i32(arg_0.a.x, -1i), _wgslsmith_clamp_i32(arg_0.a.x, global1.a.x, arg_0.a.x))), 78261u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(arg_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_0.c.x, 1949f, -364f)))), vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(global1.c.x + arg_1.c.x), _wgslsmith_div_f32(632f, -674f), global0.x))))));
    let var_0 = arg_1.a << (~firstLeadingBit(abs(vec2<u32>(u_input.a.x, u_input.b))) % vec2<u32>(32u));
    return arg_0.c.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> vec4<f32> {
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, -268f, 1133f, _wgslsmith_f_op_f32(func_4(Struct_1(max(vec2<i32>(-4461i, global1.a.x), global1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b, global1.b, 32112u), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 5451u)), vec4<f32>(-1574f, global0.x, global1.c.x, -463f)), func_2(vec2<bool>(true, true), -73199i << (1u % 32u), vec3<i32>(42902i, arg_1, arg_1) >> (u_input.a % vec3<u32>(32u)), all(arg_0))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -2181f), _wgslsmith_f_op_f32(global0.x + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + global0.x) - _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(sign(524f)), !arg_0.x)))));
    var var_0 = vec2<i32>(~0i, arg_1);
    let var_1 = vec2<i32>(~_wgslsmith_add_i32(-(global1.a.x << (4294967295u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-32814i, -28234i, -4062i) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.x, arg_1, 0i), vec3<i32>(2639i, -23631i, 30704i), vec3<i32>(1i, var_0.x, global1.a.x)))), reverseBits(arg_1));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, _wgslsmith_div_vec2_i32(func_2(vec2<bool>(false, arg_0.x), 1i, vec3<i32>(var_1.x, 0i, -1i), arg_0.x).a, _wgslsmith_div_vec2_i32(global1.a, vec2<i32>(var_1.x, var_1.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, -59263i, var_0.x ^ -10673i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, arg_1, -26086i, -9652i), vec4<i32>(84241i, var_0.x, 0i, var_0.x)) ^ -vec4<i32>(2147483647i, var_0.x, -28619i, var_0.x))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global1.b, 0u), vec3<u32>(u_input.a.x, global1.b, 1u))) ^ func_3(), ~countOneBits(global1.b)), global1.c);
    var var_3 = -_wgslsmith_add_i32((-25256i << (_wgslsmith_mod_u32(4294967295u, var_2.b) % 32u)) ^ _wgslsmith_add_i32(1i, -38916i), select(1i, var_1.x, ~global1.b >= var_2.b));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global1 = Struct_1(vec2<i32>(global1.a.x, 4201i), abs(firstLeadingBit(4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(false, all(vec2<bool>(true, true)), true), ~global1.a.x))));
    var var_1 = func_2(vec2<bool>(all(vec3<bool>(507f < global1.c.x, false, true)), select(true & all(vec3<bool>(false, true, true)), true, true)), -53710i, ~((vec3<i32>(global1.a.x, global1.a.x, 1i) << (vec3<u32>(u_input.a.x, global1.b, global1.b) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x, 37898u, global1.b) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(~(~vec3<i32>(0i, global1.a.x, global1.a.x)), -firstTrailingBit(vec3<i32>(global1.a.x, -1i, global1.a.x))), _wgslsmith_f_op_f32(func_4(Struct_1(-vec2<i32>(global1.a.x, global1.a.x), countOneBits(global1.b), _wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(-173f, 330f, 689f, global0.x))), func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), global1.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(15157i, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, global1.a.x, global1.a.x)), any(vec2<bool>(true, false))))) == _wgslsmith_f_op_vec4_f32(func_1(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), global1.c.x != -438f), 2147483647i)).x);
    let var_2 = (var_1.a.x ^ ~(~var_1.a.x << (~var_1.b % 32u))) << (var_1.b % 32u);
    var_1 = func_2(select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec2<bool>(false, true)), vec2<bool>(true, ~(-1i) < _wgslsmith_mod_i32(global1.a.x, 2147483647i))), 31217i, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(27064i, -22524i), countOneBits(2147483647i)), -_wgslsmith_add_i32(var_2, var_2), _wgslsmith_div_i32(var_2 ^ var_1.a.x, ~global1.a.x)), countOneBits(~vec3<i32>(7152i, global1.a.x, global1.a.x))), !all(vec2<bool>(true, true)));
    var var_3 = Struct_1(var_1.a, func_2(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false), true), vec2<bool>(all(vec4<bool>(true, true, true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), ~(-24127i), firstLeadingBit(~vec3<i32>(13294i, var_2, var_1.a.x)) >> (u_input.a % vec3<u32>(32u)), true).b, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.x))))), _wgslsmith_f_op_f32(245f + global0.x), _wgslsmith_div_f32(func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), true), 1i, _wgslsmith_clamp_vec3_i32(vec3<i32>(-45946i, 1i, global1.a.x), vec3<i32>(-1i, var_1.a.x, 1i), vec3<i32>(var_1.a.x, -2147483647i, global1.a.x)), true).c.x, _wgslsmith_f_op_f32(-global0.x))));
    var var_4 = ~firstTrailingBit(min(vec3<i32>(var_2, -1i, 0i) ^ vec3<i32>(var_2, 0i, 47568i), vec3<i32>(global1.a.x, var_3.a.x, var_2))) & (select(vec3<i32>(-23892i, var_2, 2147483647i) >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)), max(vec3<i32>(var_1.a.x, var_3.a.x, var_1.a.x), vec3<i32>(var_3.a.x, 0i, 81600i)), true) >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_3.a.x, ~min(-11422i, var_3.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)))) - _wgslsmith_div_vec4_f32(global1.c, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(1207f + var_3.c.x), _wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(sign(var_3.c.x))))), 18181u, 0i);
}

