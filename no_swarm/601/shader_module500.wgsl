struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(30029u, 131273u, vec2<bool>(true, true), vec3<f32>(-663f, 771f, 150f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(false, select(~_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, 74063u, u_input.a.x, 1u) << (vec4<u32>(global1.a, 21343u, 4294967295u, 4294967295u) % vec4<u32>(32u))), (reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a.x)) >> ((vec4<u32>(global1.b, 1u, 44805u, 56532u) >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) ^ u_input.b, (~global1.b > ~0u) & any(global0.zzz)), Struct_1(1u << (global1.b % 32u), 0u, !(!(!global1.c)), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-896f * 1775f), _wgslsmith_f_op_f32(global1.d.x - global1.d.x))));
    global0 = !(!select(select(vec4<bool>(true, global0.x, var_0.a, global0.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, global1.c.x), false), vec4<bool>(true, false, var_0.a, true)), vec4<bool>(any(vec3<bool>(global0.x, false, false)), all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, true))), select(!vec4<bool>(false, false, true, global1.c.x), vec4<bool>(true, global0.x, false, false), any(vec3<bool>(global1.c.x, true, false)))));
    var var_1 = var_0.c;
    var var_2 = vec4<i32>(u_input.c, arg_0.x, reverseBits(1i), u_input.c);
    var_0 = Struct_2(any(!(!(!vec4<bool>(global1.c.x, var_1.c.x, true, false)))), vec4<u32>(_wgslsmith_div_u32(1u, u_input.a.x >> (var_1.b % 32u)) >> (global1.a % 32u), reverseBits(countOneBits(~0u)), abs(~(~0u)), ~var_0.c.b), var_0.c);
    return select(select(!select(vec4<bool>(global1.c.x, false, true, true), !vec4<bool>(global0.x, true, var_0.c.c.x, var_0.c.c.x), global1.c.x), !(!select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, var_1.c.x), vec4<bool>(true, var_1.c.x, var_0.a, true), vec4<bool>(var_0.a, true, global0.x, true))), select(!(!vec4<bool>(global0.x, false, false, true)), select(select(vec4<bool>(false, global0.x, false, global1.c.x), vec4<bool>(false, true, global1.c.x, true), var_0.c.c.x), vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(var_1.c.x, true, global1.c.x, false)), select(vec4<bool>(true, global1.c.x, global0.x, true), !vec4<bool>(var_1.c.x, global0.x, var_1.c.x, false), select(vec4<bool>(global1.c.x, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, global1.c.x, true, global0.x))))), vec4<bool>(any(vec3<bool>(var_0.c.d.x != var_0.c.d.x, true, false)), true, true, !(!global1.c.x)), max(var_2.x, -firstTrailingBit(var_2.x)) == (u_input.c & (arg_0.x >> (40398u % 32u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec3<u32> {
    global1 = Struct_1(min(1u, u_input.b.x) >> ((4294967295u ^ _wgslsmith_mult_u32(~global1.b, u_input.a.x)) % 32u), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~u_input.b, u_input.b), vec4<u32>(75315u, _wgslsmith_add_u32(~16158u, 0u), _wgslsmith_mult_u32(0u, u_input.a.x), ~arg_1.x)), vec2<bool>(true, !global1.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(max(global1.d.x, _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(sign(1f)))));
    var var_0 = Struct_1(select(_wgslsmith_add_u32(_wgslsmith_mult_u32(17570u, global1.a) << (1u % 32u), abs(~global1.a)), global1.a, false), ~(~global1.a), !select(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, true), 49903u == u_input.a.x), select(!global1.c, func_3(arg_2).xy, true), vec2<bool>(true, true)), global1.d);
    var var_1 = !(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, global0.x, global0.x), global1.c.x), vec3<bool>(true & global0.x, 1000f > var_0.d.x, false), select(true, !arg_0.x, true)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.d.xx)) + _wgslsmith_div_vec2_f32(vec2<f32>(319f, -414f), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + 314f)))));
    return max(vec3<u32>(1u, 0u, arg_1.x), vec3<u32>(arg_1.x, 61216u, firstLeadingBit(max(1951u, _wgslsmith_div_u32(global1.b, 63754u)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(func_4(select(select(func_3(vec3<i32>(0i, u_input.c, u_input.c)), vec4<bool>(global0.x, false, global0.x, global1.c.x), select(vec4<bool>(false, false, false, true), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global1.c.x, false, true, global1.c.x))), vec4<bool>(true, global0.x, any(vec2<bool>(global1.c.x, global0.x)), !global0.x), func_3(max(vec3<i32>(-2147483647i, 0i, -56277i), vec3<i32>(u_input.c, 1i, u_input.c)))), vec3<u32>(u_input.a.x, ~(1u & u_input.a.x), ~_wgslsmith_mod_u32(global1.a, u_input.b.x)), -(vec3<i32>(-18411i, 2147483647i, u_input.c) >> (abs(vec3<u32>(global1.a, u_input.b.x, 7025u)) % vec3<u32>(32u))), ~vec2<i32>(_wgslsmith_mult_i32(0i, -23892i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, -2147483647i), vec4<i32>(-31024i, u_input.c, u_input.c, u_input.c)))), vec3<u32>(min(u_input.b.x << (global1.b % 32u), 77713u), global1.a, u_input.b.x));
    let var_1 = select(~firstLeadingBit(_wgslsmith_add_u32(54923u, global1.b)) | _wgslsmith_add_u32(~(~u_input.b.x), func_4(!vec4<bool>(global1.c.x, false, global1.c.x, true), u_input.b.ywz, -vec3<i32>(u_input.c, u_input.c, 0i), select(vec2<i32>(u_input.c, -33946i), vec2<i32>(0i, u_input.c), vec2<bool>(global1.c.x, true))).x), 4294967295u, global0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1000f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d.x))), global1.d.x)));
    var var_3 = u_input.a.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global1.d.yx, vec2<f32>(var_2, 331f)), _wgslsmith_f_op_vec2_f32(-global1.d.xz), true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.d.zz)) - _wgslsmith_f_op_vec2_f32(abs(global1.d.yy))) + global1.d.xy));
    return ~(~1u ^ var_1);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = firstTrailingBit(~(~func_2()));
    var_0 = func_2();
    var var_1 = ~_wgslsmith_mod_u32(7613u, u_input.a.x);
    var var_2 = Struct_2(true, ~u_input.a, Struct_1(_wgslsmith_div_u32(33665u, 1u), 1u, global0.wy, global1.d));
    var var_3 = var_2.b.yy;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_mod_u32(2241u & global1.b, _wgslsmith_mod_u32(~select(16286u, u_input.a.x, false), (u_input.a.x >> (1u % 32u)) ^ countOneBits(4651u))), ~(~0u), vec2<bool>(all(vec4<bool>(false, global0.x, true, func_1(global1.d.x, vec3<bool>(false, global1.c.x, true), 44806i, 25845u))), global1.c.x), global1.d);
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(_wgslsmith_mod_i32(u_input.c, u_input.c), reverseBits(12558i))) > u_input.c, vec4<u32>((_wgslsmith_mod_u32(global1.a, u_input.a.x) >> (56261u % 32u)) ^ global1.a, _wgslsmith_div_u32(u_input.b.x, u_input.a.x), _wgslsmith_mod_u32(global1.a, _wgslsmith_sub_u32(global1.a, 4294967295u) & _wgslsmith_div_u32(9135u, global1.b)), _wgslsmith_clamp_u32(19168u, 31982u, _wgslsmith_sub_u32(_wgslsmith_add_u32(global1.a, u_input.b.x), 38379u >> (u_input.a.x % 32u)))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.b.x), _wgslsmith_sub_u32(global1.a, u_input.b.x)) << (u_input.b.x % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, global1.a), u_input.b.wzy) | global1.b, global1.c, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(448f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d.x, global1.d.x))), -1610f)));
    let var_1 = global1.b;
    global0 = func_3(vec3<i32>(abs(1i), u_input.c, _wgslsmith_sub_i32(23217i, _wgslsmith_add_i32(-u_input.c, -2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(min(1042f, _wgslsmith_f_op_f32(1593f - _wgslsmith_f_op_f32(1744f + _wgslsmith_div_f32(var_0.c.d.x, global1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.d.yy, _wgslsmith_sub_u32(var_0.c.b, ~global1.b), u_input.c, u_input.b.x >> (_wgslsmith_div_u32(~_wgslsmith_sub_u32(15427u, 0u), max(4294967295u, u_input.a.x)) % 32u));
}

