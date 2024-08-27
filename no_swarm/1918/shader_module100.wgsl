struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 16> = array<bool, 16>(false, false, false, true, true, true, false, false, true, true, false, false, true, true, false, true);

var<private> global3: vec4<u32> = vec4<u32>(8224u, 19765u, 4294967295u, 26422u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = ~(_wgslsmith_dot_vec2_u32(global3.wz, abs(vec2<u32>(global3.x, global3.x))) & ~global3.x);
    global3 = abs(~vec4<u32>(~reverseBits(1u), 46383u, _wgslsmith_div_u32(abs(global3.x), global3.x), 23055u));
    global3 = countOneBits(vec4<u32>(global3.x, global3.x | ~global3.x, 67041u, global3.x));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(13019u, 86589u, 58991u, 12136u), abs(vec4<u32>(40474u, 4294967295u, 1u, 46311u))), _wgslsmith_add_u32(~global3.x, 0u)), 16u)] | all(!select(vec2<bool>(true, false), vec2<bool>(true, true), false & arg_0.b));
    return 4294967295u | global3.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2.a, reverseBits(arg_0.a)), _wgslsmith_add_i32(firstTrailingBit(arg_1), _wgslsmith_add_i32(-2147483647i, u_input.a)), 32363i), !(arg_0.a.x > min(abs(arg_1), 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1000f)) - _wgslsmith_f_op_f32(abs(global1.c.x))), -369f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1665f, global1.c.x), vec2<f32>(arg_2.c.x, arg_2.c.x), arg_0.b)) + vec2<f32>(global1.c.x, arg_2.c.x)), vec2<f32>(-848f, _wgslsmith_f_op_f32(f32(-1f) * -302f)))));
    global0 = array<Struct_1, 26>();
    let var_1 = Struct_1(vec3<i32>(-1i, u_input.a, i32(-1i) * -35307i), true == arg_3, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.c.x)), -512f))), 1000f));
    global3 = ~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(80798u, global3.x, global3.x, global3.x), vec4<u32>(104573u, global3.x, 12856u, global3.x), var_1.b) | (vec4<u32>(1u, global3.x, global3.x, 1u) & vec4<u32>(41693u, global3.x, 1u, global3.x)), abs(~vec4<u32>(global3.x, 0u, global3.x, 4294967295u))));
    let var_2 = _wgslsmith_clamp_i32(firstTrailingBit(~_wgslsmith_dot_vec3_i32(arg_2.a, vec3<i32>(arg_0.a.x, u_input.a, arg_1))), arg_0.a.x, ~(~abs(_wgslsmith_div_i32(-7418i, -32736i))));
    return var_1.a;
}

fn func_5(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(vec3<i32>(0i, _wgslsmith_clamp_i32(1i, -27991i, (1i ^ arg_0.x) >> (~5161u % 32u)), ~(~1i)), select(global1.b, any(!select(vec4<bool>(global1.b, true, false, global1.b), vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 16u)], false, true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global1.b))), !(!global2[_wgslsmith_index_u32(global3.x, 16u)]) || false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(global1.c)), vec2<f32>(-1498f, -1000f))), global1.c));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(global3.wz ^ vec2<u32>(0u, global3.x), global3.zx >> (~vec2<u32>(84079u, 0u) % vec2<u32>(32u))), ~(0u >> (1u % 32u))), 1u, ~(firstLeadingBit(_wgslsmith_add_u32(53355u, 1u)) >> (~(~1u) % 32u))), 26u)];
    global0 = array<Struct_1, 26>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global3.wy, vec2<u32>(4294967295u ^ ~_wgslsmith_div_u32(global3.x, 23697u), _wgslsmith_sub_u32(global3.x, global3.x))), 26u)];
    var var_2 = true;
    return ~1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(func_5(abs(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(arg_2.a, vec3<i32>(u_input.a, 38521i, -66698i)), func_4(global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(4294967295u, 26u)]), 26u)], _wgslsmith_clamp_i32(-2147483647i, u_input.a, global1.a.x), Struct_1(vec3<i32>(arg_2.a.x, 0i, u_input.a), global2[_wgslsmith_index_u32(global3.x, 16u)], arg_0.zx), true)))), 26u)];
    let var_0 = _wgslsmith_div_vec2_i32(global1.a.yy, countOneBits(vec2<i32>(0i, (arg_2.a.x | 0i) ^ abs(arg_1.x))));
    let var_1 = arg_2;
    let var_2 = select(select(select(vec4<bool>(true, global1.b, true, global1.a.x > -2147483647i), vec4<bool>(global3.x == global3.x, any(vec3<bool>(true, var_1.b, var_1.b)), true, true), global1.b), select(!vec4<bool>(arg_2.b, global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_2.b, var_1.b), vec4<bool>(var_1.b, all(vec4<bool>(false, var_1.b, true, global1.b)), true, true), !(!global1.b)), vec4<bool>(true, false, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global3.x, 0u), 16u)], !all(vec4<bool>(false, false, global1.b, true)))), !vec4<bool>(all(select(vec3<bool>(false, arg_2.b, var_1.b), vec3<bool>(false, true, false), vec3<bool>(arg_2.b, false, false))), global1.b, true & arg_2.b, (global2[_wgslsmith_index_u32(global3.x, 16u)] || arg_2.b) | (arg_2.b & true)), global1.b);
    var var_3 = Struct_1(reverseBits(arg_2.a), !(true & global2[_wgslsmith_index_u32(1u, 16u)]), var_1.c);
    return global0[_wgslsmith_index_u32(0u, 26u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(global1.c.x * global1.c.x), _wgslsmith_div_f32(global1.c.x, -935f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x * -331f), -1000f), _wgslsmith_f_op_f32(-479f * -1307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f * global1.c.x) * _wgslsmith_f_op_f32(global1.c.x + global1.c.x)))), ~(-select(global1.a.yz, vec2<i32>(u_input.a, u_input.a), any(vec2<bool>(false, global2[_wgslsmith_index_u32(global3.x, 16u)])))), Struct_1(abs(~(global1.a & vec3<i32>(global1.a.x, u_input.a, global1.a.x))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(590f, 213f)), vec2<f32>(612f, 734f))));
    var var_1 = ~0i | u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))) - 1000f), _wgslsmith_f_op_f32(global1.c.x + global1.c.x), global1.c.x));
    global0 = array<Struct_1, 26>();
    var var_3 = countOneBits(vec4<u32>(global3.x, global3.x, _wgslsmith_mod_u32(firstLeadingBit(global3.x), _wgslsmith_clamp_u32(reverseBits(global3.x), global3.x, 1u)), ~(~(~0u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, false, global1.c);
    var var_1 = vec2<u32>(~global3.x, ~31459u);
    var var_2 = func_1();
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1.x, (firstLeadingBit(global3.x) & ~var_1.x) | ~_wgslsmith_mult_u32(var_1.x, global3.x)), 26u)];
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1838f, -529f, 2393f) - vec3<f32>(-1292f, 612f, global1.c.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1792f, global1.c.x, 1169f), vec3<f32>(-1000f, -1099f, 1603f)))))), min(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(select(global1.a.xz, vec2<i32>(1i, 1i), vec2<bool>(global1.b, global2[_wgslsmith_index_u32(43132u, 16u)])), select(var_2.a.yx, var_2.a.yx, vec2<bool>(global1.b, true))), vec2<i32>(~var_0.a.x, i32(-1i) * -19731i), vec2<i32>(-global1.a.x, 74723i)), _wgslsmith_sub_vec2_i32(max(reverseBits(vec2<i32>(2147483647i, 28350i)), ~var_2.a.xx), var_2.a.yx)), Struct_1(var_2.a, global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(global1.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(func_1().c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x)))) + vec2<f32>(var_3.c.x, var_3.c.x)), firstTrailingBit(abs(~vec4<i32>(0i, var_0.a.x, u_input.a, 0i)) & ~vec4<i32>(global1.a.x, -1i, var_3.a.x, -2770i)), _wgslsmith_f_op_f32(f32(-1f) * -423f));
}

