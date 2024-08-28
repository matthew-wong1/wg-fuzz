struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(20470u, 26321u), Struct_2(Struct_1(vec2<f32>(614f, 1540f), 1u, vec2<bool>(true, true)), vec4<f32>(496f, 724f, -812f, -693f), vec3<i32>(-26159i, 2147483647i, 1i), Struct_1(vec2<f32>(-1664f, -422f), 0u, vec2<bool>(true, false)), vec4<u32>(50011u, 41418u, 1u, 1u)), vec4<i32>(1i, -1i, -36336i, 2147483647i), 28712u, vec3<i32>(27088i, 0i, 14356i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    return global1.b.a;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = vec3<f32>(1514f, arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(arg_3.a.x - 354f)) - -1469f)));
    var var_1 = vec4<bool>(arg_3.c.x, u_input.a < (-arg_1.c.x | countOneBits(arg_2.c.x)), (_wgslsmith_clamp_u32(abs(global1.d), arg_1.a.b & arg_2.d, countOneBits(40511u)) >= 20590u) && false, false);
    var var_2 = Struct_4(!vec4<bool>(func_2(-2822f, _wgslsmith_f_op_f32(arg_3.a.x - 353f)).c.x, true, !(true & var_1.x), !var_1.x), Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.e.wy, vec2<u32>(arg_2.d, arg_3.b)), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_add_vec2_u32(global1.a, vec2<u32>(global0[_wgslsmith_index_u32(0u, 8u)], 1u))), abs(abs(global1.b.e.ww))), global1.b, global1.c, 0u, min(~vec3<i32>(global1.c.x, u_input.a, global1.b.c.x), (global1.b.c >> (vec3<u32>(u_input.b, arg_1.e.x, arg_1.a.b) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_i32(arg_2.e, vec3<i32>(arg_0, 0i, global1.b.c.x)))), arg_2.b.a, ~(~select(-2147483647i, 1200i, !arg_2.b.a.c.x)), 4294967295u);
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.b.a.a.x, -725f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(933f + var_0.x))))), _wgslsmith_f_op_f32(step(-1067f, _wgslsmith_f_op_f32(abs(arg_2.b.a.a.x))))), arg_2.b.b.zyz);
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(9735i, max(-64062i, abs(abs(u_input.a)))), arg_2.b.c.zy);
    return vec4<u32>(~(u_input.b | _wgslsmith_mult_u32(_wgslsmith_mult_u32(14007u, global1.a.x), _wgslsmith_add_u32(u_input.b, 0u))), u_input.b, ~func_2(var_2.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.a.x + -740f) - _wgslsmith_f_op_f32(-global1.b.b.x))).b, max(func_2(arg_1.b.x, var_0.x).b, arg_2.b.e.x >> (arg_1.a.b % 32u)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32) -> vec4<u32> {
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_dot_vec4_u32(arg_0.b.e, func_3(~arg_0.c.x, Struct_2(func_2(_wgslsmith_div_f32(-226f, arg_2), _wgslsmith_f_op_f32(-1988f * 1784f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b.b.x, 1512f, -591f, arg_0.b.b.x)))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.c.x, 32679i, u_input.a), vec3<i32>(2147483647i, global1.e.x, 0i), global1.b.c), _wgslsmith_div_vec3_i32(arg_0.b.c, global1.e), !vec3<bool>(arg_0.b.a.c.x, global1.b.a.c.x, global1.b.a.c.x)), func_2(1f, _wgslsmith_f_op_f32(abs(arg_0.b.d.a.x))), ~firstLeadingBit(vec4<u32>(106191u, 0u, global1.a.x, 19040u))), arg_0, Struct_1(vec2<f32>(1000f, arg_2), select(21259u, 40113u, false) >> (arg_0.a.x % 32u), arg_0.b.d.c)));
    global1 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(~(~4294967295u), func_2(_wgslsmith_f_op_f32(-1000f + 1600f), _wgslsmith_f_op_f32(-arg_2)).b), arg_1.yx), Struct_2(arg_0.b.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(2426f, arg_0.b.a.a.x, arg_0.b.d.c.x)), _wgslsmith_f_op_f32(-arg_2), arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_0.b.d.a.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.b.b + vec4<f32>(arg_0.b.d.a.x, arg_0.b.d.a.x, -424f, arg_2))))), arg_0.e | arg_0.c.xwy, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a.a.x, -1830f)), _wgslsmith_sub_u32(34796u, ~global0[_wgslsmith_index_u32(0u, 8u)]), arg_0.b.a.c), _wgslsmith_add_vec4_u32(vec4<u32>(abs(u_input.b), 34208u, 1u, _wgslsmith_div_u32(1u, var_0)), firstLeadingBit(~arg_0.b.e))), countOneBits(arg_0.c), ~(~(~(global0[_wgslsmith_index_u32(global1.d, 8u)] | 11685u))), _wgslsmith_add_vec3_i32(~global1.c.wwy, vec3<i32>(_wgslsmith_clamp_i32(global1.c.x, -2147483647i, firstTrailingBit(16791i)), u_input.a, u_input.a)));
    global1 = arg_0;
    global1 = Struct_3(select(vec2<u32>(abs(1u), arg_0.d), _wgslsmith_mod_vec2_u32(global1.b.e.zx, vec2<u32>(~0u, arg_1.x)), all(vec4<bool>(select(false, arg_0.b.d.c.x, true), true || arg_0.b.a.c.x, true, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b.b.x, global1.b.d.a.x)))), var_0, arg_0.b.d.c), _wgslsmith_f_op_vec4_f32(exp2(global1.b.b)), vec3<i32>(global1.c.x, 0i, -40638i), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.d.a, arg_0.b.a.a)), abs(arg_0.b.e.x), select(global1.b.a.c, select(vec2<bool>(true, arg_0.b.a.c.x), global1.b.d.c, vec2<bool>(false, arg_0.b.d.c.x)), func_2(global1.b.a.a.x, global1.b.b.x).c)), vec4<u32>(firstTrailingBit(~global1.a.x), _wgslsmith_mult_u32(arg_0.b.a.b, 0u) << (global1.b.d.b % 32u), _wgslsmith_add_u32(~0u, _wgslsmith_mult_u32(4294967295u, u_input.b)), 76186u)), arg_0.c | arg_0.c, 4294967295u, abs(vec3<i32>(select(global1.c.x, global1.e.x & 2147483647i, true), ~0i, max(u_input.a, -41969i))));
    return countOneBits(vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(81669u, 8u)], _wgslsmith_mult_u32(arg_0.a.x, 0u) ^ _wgslsmith_dot_vec4_u32(global1.b.e, vec4<u32>(u_input.b, 987u, global0[_wgslsmith_index_u32(global1.d, 8u)], 15663u))), global1.d, max(_wgslsmith_sub_u32(u_input.b, _wgslsmith_clamp_u32(27984u, 29795u, 1u)), 4294967295u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.a.x, arg_0.b.a.a.x)), -1000f).b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(u_input.a, -global1.e.x), -min(0i, -1i), 2147483647i, -u_input.a);
    let var_1 = 49218u;
    var var_2 = global1.b.e.x;
    var var_3 = max(_wgslsmith_add_vec4_i32(-vec4<i32>(global1.e.x, -3757i, u_input.a, u_input.a), ~vec4<i32>(u_input.a, u_input.a, var_0.x, -1i)) >> (firstLeadingBit(~func_1(Struct_3(global1.b.e.xz, Struct_2(Struct_1(vec2<f32>(global1.b.b.x, -1000f), 1u, vec2<bool>(true, true)), vec4<f32>(global1.b.d.a.x, 468f, global1.b.d.a.x, 257f), global1.e, Struct_1(vec2<f32>(global1.b.b.x, global1.b.d.a.x), 4270u, global1.b.a.c), global1.b.e), var_0, 0u, var_0.wyz), vec3<u32>(var_1, 4294967295u, var_1), 407f)) % vec4<u32>(32u)), -vec4<i32>(u_input.a, _wgslsmith_mult_i32(abs(0i), ~global1.e.x), u_input.a, 0i));
    let var_4 = Struct_4(vec4<bool>(select(global1.b.a.c.x, !global1.b.a.c.x, firstLeadingBit(-19648i) != (var_3.x & -1i)), global1.b.a.c.x, global1.b.d.c.x, !((i32(-1i) * -1i) < var_3.x)), Struct_3(global1.a, global1.b, -countOneBits(vec4<i32>(global1.c.x, 2147483647i, var_0.x, u_input.a)), global0[_wgslsmith_index_u32(max(var_1, global0[_wgslsmith_index_u32(~40989u, 8u)]), 8u)], vec3<i32>(-abs(-1i), 1i, -1i)), func_2(-367f, _wgslsmith_f_op_f32(exp2(global1.b.d.a.x))), var_3.x, 35150u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(global1.e, -_wgslsmith_mod_vec3_i32(reverseBits(var_0.zww), -vec3<i32>(var_3.x, global1.e.x, var_4.b.b.c.x)), -global1.c.wyy), _wgslsmith_div_i32((_wgslsmith_add_i32(var_4.b.e.x, 1978i) | u_input.a) << (firstLeadingBit(countOneBits(global1.a.x)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-36613i, 1i), -global1.e.zx ^ -var_3.xy)));
}

