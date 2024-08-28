struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 13945u, 1u, 4294967295u);

var<private> global1: bool;

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = -vec2<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(36300u, 1u)], -67132i, -2147483647i), vec4<i32>(1i, u_input.a, 13827i, global2[_wgslsmith_index_u32(1u, 1u)])), vec4<i32>(u_input.a, 2147483647i, u_input.a, -1i) >> (vec4<u32>(4294967295u, global0.x, 4227u, 249u) % vec4<u32>(32u))) >> (1u % 32u));
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_mod_u32(min(min(global0.x, global0.x), global0.x), global0.x & ~4294967295u), _wgslsmith_mult_u32(abs(select(4294967295u, reverseBits(31446u), false | arg_1)), min(2675u, 1u)));
    global1 = arg_3;
    let var_2 = 48597i;
    var var_3 = 4165i;
    return 4294967295u;
}

fn func_2() -> u32 {
    global2 = array<i32, 1>();
    let var_0 = 0u;
    var var_1 = Struct_2(vec2<u32>(func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2717f, -324f, -2360f), vec3<f32>(-161f, -867f, 807f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, 1254f, 1644f) * vec3<f32>(-117f, -585f, 1288f)))), any(vec3<bool>(true, true, true)), Struct_2(vec2<u32>(1u, global0.x), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), Struct_1(vec2<bool>(false, true), global0.zyx, global0.zx, 1527f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2004f))), false), var_0), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), all(vec2<bool>(false, false)) && true), true), Struct_1(vec2<bool>(true, true), global0.xyw, abs(_wgslsmith_mult_vec2_u32(global0.yx, vec2<u32>(1u, var_0) ^ global0.xy)), _wgslsmith_div_f32(227f, -1004f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1901f + 247f))), 316f));
    global0 = ~abs(reverseBits(~(vec4<u32>(var_1.c.b.x, var_1.a.x, 4294967295u, 1u) << (vec4<u32>(var_1.a.x, global0.x, 62460u, var_1.a.x) % vec4<u32>(32u)))));
    var var_2 = global0.x;
    return global0.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), -1565f, -687f, _wgslsmith_div_f32(-373f, 1506f)))), vec4<f32>(-416f, 2225f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1993f, 671f))))), -527f));
    global0 = max(max(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 4294967295u, 23583u, global0.x), vec4<u32>(5458u, 0u, 1u, 4294967295u)), vec4<u32>(16727u, global0.x, 1u, global0.x)), ~vec4<u32>(func_2(), ~global0.x, global0.x, ~global0.x)) >> (~countOneBits(vec4<u32>(_wgslsmith_mult_u32(1u, global0.x), 10601u, global0.x, _wgslsmith_div_u32(6649u, 15410u))) % vec4<u32>(32u));
    global1 = true;
    var var_1 = global2[_wgslsmith_index_u32(global0.x, 1u)];
    let var_2 = ~21613i;
    return Struct_1(vec2<bool>(true, true), vec3<u32>(12600u, _wgslsmith_sub_u32(abs(0u << (global0.x % 32u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(56751u, 9289u, 34810u, global0.x), vec4<u32>(global0.x, global0.x, 5288u, 29581u)), vec4<u32>(global0.x, 1u, 4294967295u, 1u))), countOneBits(~(0u >> (0u % 32u)))), global0.zz, var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(global0.x, 65816u, ~(~(~arg_1 << (13483u % 32u))), _wgslsmith_mod_u32(81877u, _wgslsmith_clamp_u32(global0.x, 1u, abs(1u) << (_wgslsmith_mod_u32(61781u, global0.x) % 32u))));
    var var_1 = arg_0.d;
    let var_2 = !arg_0.a.x;
    var var_3 = ~vec4<i32>(-1i, reverseBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(global0.x, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]), u_input.a >> (global0.x % 32u))), global2[_wgslsmith_index_u32(abs(1u), 1u)], 7925i);
    var var_4 = arg_2.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), global0.x, Struct_1(func_1().a, vec3<u32>(countOneBits(~global0.x), global0.x, global0.x), vec2<u32>(min(_wgslsmith_mult_u32(global0.x, global0.x), 25911u), 4294967295u), _wgslsmith_div_f32(296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1534f)) * _wgslsmith_f_op_f32(round(-1004f))))));
    let var_1 = var_0;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(firstTrailingBit(69851u), _wgslsmith_sub_u32(0u, 0u), reverseBits(global0.x), 0u))), ~max(vec4<u32>(1u, var_0.b.x, global0.x | 4294967295u, var_0.c.x ^ var_0.c.x), vec4<u32>(func_3(vec3<f32>(var_1.d, var_1.d, 976f), false, Struct_2(var_0.b.yy, vec3<bool>(true, true, var_0.a.x), var_0, vec2<f32>(-2179f, var_0.d)), false), ~var_1.b.x, var_0.c.x, var_1.b.x))), 1u)];
    let var_3 = _wgslsmith_f_op_f32(sign(-1404f));
    let var_4 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(1i, -1i, 2147483647i, u_input.a)), firstTrailingBit(~vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(7328u, 1u)], u_input.a, 2147483647i))), (-31610i | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.b.x, 1u)], u_input.a, -66050i), vec4<i32>(0i, global2[_wgslsmith_index_u32(global0.x, 1u)], 30807i, 2070i))) | -3895i);
    let x = u_input.a;
    s_output = StorageBuffer(-max(-vec4<i32>(-1i, -2147483647i, -15916i, 4545i), vec4<i32>(-95296i, abs(global2[_wgslsmith_index_u32(global0.x, 1u)]), -4556i, 1i)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(763f, -1268f)))) + vec2<f32>(_wgslsmith_f_op_f32(var_1.d * var_3), -467f)))), -abs(firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(23246u, 1u)], -22669i, global2[_wgslsmith_index_u32(0u, 1u)], -15872i))));
}

