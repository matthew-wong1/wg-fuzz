struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2229f;

var<private> global1: Struct_1 = Struct_1(-2984f, vec3<i32>(-1i, 1i, 0i), -10616i, false, true);

var<private> global2: f32;

var<private> global3: Struct_3;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(2265f, 1324f, 368f), vec3<i32>(0i, -38262i, 2147483647i), Struct_1(-1349f, vec3<i32>(27092i, 2147483647i, 0i), 2147483647i, false, true), vec3<u32>(111521u, 4294967295u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(global4.a, firstTrailingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(11902i, 0i, global4.b.x), abs(vec3<i32>(global4.c.c, 10346i, 28705i))) >> (firstTrailingBit(max(global4.d, global4.d)) % vec3<u32>(32u))), global4.c, vec3<u32>(~(~_wgslsmith_dot_vec3_u32(global4.d, vec3<u32>(global4.d.x, global4.d.x, u_input.a))), ~u_input.a, ~_wgslsmith_mod_u32(~global4.d.x, u_input.a)));
    let var_1 = vec3<u32>(~(~1u), var_0.d.x ^ firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_clamp_u32(var_0.d.x, 23423u, 0u))), 4294967295u);
    let var_2 = Struct_4(global4.b, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~select(vec4<i32>(global4.b.x, var_0.c.b.x, 2147483647i, -18018i), vec4<i32>(-65356i, -1i, 1i, -36421i), global1.e), select(vec4<i32>(-2147483647i, 8243i, global4.b.x, 1i), ~vec4<i32>(50720i, var_0.c.b.x, global1.c, -2147483647i), !vec4<bool>(global1.d, false, global3.a, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(-16158i, -2147483647i, var_0.c.b.x, -15516i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(20465i, 16778i, global1.b.x, var_0.b.x), vec4<i32>(global1.c, 2147483647i, -30354i, var_0.c.c)))));
    var var_3 = all(select(vec3<bool>(true, global4.c.e, true), !select(vec3<bool>(global3.a, true, global1.e), vec3<bool>(true, global3.a, true), vec3<bool>(global3.a, true, false)), select(!vec3<bool>(global4.c.d, global4.c.e, false), vec3<bool>(false, global3.a, true), any(vec2<bool>(false, global1.e))))) || !global4.c.e;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1351f, -469f)), var_0.a)))), vec3<i32>(-firstLeadingBit(global1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-11102i, -53008i, 0i, global1.b.x << (0u % 32u)), vec4<i32>(~(-12185i), var_2.b.x, _wgslsmith_div_i32(var_0.c.b.x, 1i), reverseBits(global1.b.x))), global1.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1540f, _wgslsmith_f_op_f32(-var_0.a.x))) - global1.a), var_0.b, i32(-1i) * -firstTrailingBit(2147483647i), !(!global4.c.d), var_2.a.x == 2147483647i), vec3<u32>(4294967295u, ~52947u, 50356u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-120f)) * -1648f), _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.c.a), global1.a) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2785f))), _wgslsmith_f_op_f32(ceil(var_4.c.a)), -363f, -1000f)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = global4.d.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global1.a, global4.a.x, 221f) + vec4<f32>(global4.a.x, -690f, global4.c.a, 376f)), select(vec4<bool>(global1.e, global4.c.e, true, false), vec4<bool>(false, false, false, global3.a), true)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global4.c.a, 231f, global1.a, -1586f), vec4<f32>(181f, -197f, -1542f, 394f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(414f, global1.a, -1200f, 370f), vec4<f32>(-1232f, 273f, 770f, -982f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, -1250f, global4.a.x, global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global1.a, global1.a) * vec4<f32>(global1.a, arg_1, global4.c.a, 505f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, -193f, arg_1, global4.c.a), vec4<f32>(-421f, -594f, global4.c.a, arg_1)) + vec4<f32>(arg_1, arg_1, -2056f, global4.c.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1.a, global4.c.a, 905f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, arg_1, 326f, 1029f)))));
    global4 = Struct_2(var_1.yww, abs(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.b.x, global1.b.x, -2147483647i), vec3<i32>(-65943i, arg_0, -23166i)), 0i, select(reverseBits(2147483647i), i32(-1i) * -5824i, global3.a))), Struct_1(var_1.x, ~vec3<i32>(arg_0, countOneBits(1i), countOneBits(arg_2.x)), _wgslsmith_mod_i32(-abs(0i), reverseBits(i32(-1i) * -74673i)), all(vec3<bool>(global4.d.x >= global4.d.x, global4.c.d, var_1.x == -1101f)), 2147483647i > _wgslsmith_mod_i32(_wgslsmith_div_i32(global4.c.c, -1i), _wgslsmith_mod_i32(0i, global4.b.x))), global4.d);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1, global1.a))))))));
    let var_2 = vec2<u32>(global4.d.x, countOneBits(_wgslsmith_div_u32(1u, 4294967295u)));
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(465f, global4.c.a, global4.a.x) - vec3<f32>(global1.a, arg_1, 118f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1004f, arg_1) * global4.a))))), global4.a), abs(vec3<i32>(_wgslsmith_add_i32(0i, ~888i), -2147483647i, _wgslsmith_div_i32(global1.b.x, 26543i))), Struct_1(-889f, vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global4.b.x, global4.b.x), arg_2), ~_wgslsmith_dot_vec4_i32(vec4<i32>(7258i, 1i, arg_2.x, -2147483647i), vec4<i32>(global1.b.x, global4.b.x, 0i, arg_2.x)), _wgslsmith_clamp_i32(arg_0, global1.b.x, firstLeadingBit(1i))), arg_0, all(select(select(vec3<bool>(global3.a, true, false), vec3<bool>(global4.c.e, global3.a, global4.c.e), vec3<bool>(global4.c.e, false, global3.a)), vec3<bool>(global4.c.e, true, global3.a), vec3<bool>(global4.c.e, global3.a, false))), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, global3.a, global1.e), vec3<bool>(global1.d, true, global3.a)))), global4.d ^ vec3<u32>(~_wgslsmith_add_u32(1u, 0u), ~1u, abs(_wgslsmith_div_u32(global4.d.x, u_input.a))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = abs(global4.b.x);
    global2 = _wgslsmith_f_op_f32(step(global4.a.x, 301f));
    global2 = global1.a;
    global4 = func_2(global4.b.x, _wgslsmith_f_op_f32(-global4.c.a), global4.c.b);
    var var_1 = min(~global1.b.x, 0i);
    return Struct_3((-21305i & global1.b.x) != _wgslsmith_sub_i32(global4.b.x, firstTrailingBit(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, -vec3<i32>(_wgslsmith_mult_i32(33638i, global1.c), 0i, (global1.c | 2147483647i) | -global4.c.b.x), global4.b.x, global1.e, !all(!vec3<bool>(false, global1.e, true)));
    let var_1 = Struct_4(countOneBits(vec3<i32>(i32(-1i) * -global1.c, 34684i, _wgslsmith_mult_i32(-80255i, ~global4.c.b.x))), abs(min(~vec4<i32>(-9050i, global1.c, global1.c, global4.c.b.x), ~vec4<i32>(global1.b.x, 1i, 0i, global4.c.b.x)) << (((vec4<u32>(u_input.a, 3124u, u_input.a, global4.d.x) << (vec4<u32>(1u, u_input.a, 4294967295u, 44276u) % vec4<u32>(32u))) ^ vec4<u32>(9637u, global4.d.x, 27749u, 1u)) % vec4<u32>(32u))));
    var var_2 = false;
    var var_3 = func_1(true);
    global3 = func_1(all(vec4<bool>(global3.a, any(!vec4<bool>(true, global4.c.e, true, false)), var_0.e, !(!global3.a))));
    let var_4 = 0i & -_wgslsmith_mod_i32(var_0.c, global4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-602f)), _wgslsmith_div_f32(global1.a, var_0.a), global4.c.a))), firstLeadingBit(global4.d.xx));
}

