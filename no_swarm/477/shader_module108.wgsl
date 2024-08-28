struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32> = vec4<i32>(-22039i, -14281i, i32(-2147483648), -23961i);

var<private> global2: i32;

var<private> global3: f32 = -896f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> vec2<i32> {
    global0 = abs(select(arg_2 ^ arg_2, firstLeadingBit(arg_2), !select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(arg_3, false, arg_3, true))) >> (u_input.c % vec4<u32>(32u)));
    global1 = vec4<i32>(countOneBits(u_input.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.b.zw), firstTrailingBit(~vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-2147483647i), ~arg_1), global1.x)), 0i >> (~_wgslsmith_mod_u32(~arg_0, 4294967295u) % 32u), -1i);
    global1 = vec4<i32>(-1i, -1i, firstLeadingBit(-54589i), firstTrailingBit(54879i));
    let var_0 = -288f;
    var var_1 = ~29883u;
    return ~global1.zz;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, _wgslsmith_mod_i32(global1.x, 1i)), u_input.b.xw ^ max(~u_input.b.yx, _wgslsmith_sub_vec2_i32(u_input.b.xx, u_input.b.yz) | func_3(u_input.a.x, u_input.b.x, vec4<u32>(u_input.c.x, global0.x, 66987u, 13283u), false)));
    var var_1 = countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 42867u) | u_input.a.zy, vec2<u32>(4294967295u, global0.x))), firstLeadingBit(abs(u_input.c.wx))));
    var var_2 = Struct_1(false, firstTrailingBit(u_input.c), u_input.c.x, -u_input.b.x, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(23966u, u_input.a.x) & 4294967295u, u_input.a.x, u_input.a.x), firstTrailingBit(select(global0.ywy, vec3<u32>(u_input.a.x, global0.x, 0u), true))));
    var var_3 = Struct_1(any(vec2<bool>(var_2.a, all(select(vec3<bool>(var_2.a, true, true), vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(var_2.a, true, true))))), vec4<u32>(~10783u, ~(u_input.a.x | var_2.c), ~(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.x, 0u, global0.x)) | var_2.c), ~_wgslsmith_dot_vec3_u32(global0.zzy, _wgslsmith_mult_vec3_u32(var_2.b.xwx, vec3<u32>(global0.x, 29371u, global0.x)))), 4294967295u, 1i, ~(~(~firstLeadingBit(vec3<u32>(var_2.b.x, var_2.b.x, var_2.e.x)))));
    let var_4 = Struct_1(var_2.a, vec4<u32>(4294967295u, countOneBits(~5622u), reverseBits(var_2.c) >> (var_2.c % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, ~var_2.b.x, max(var_2.b.x, var_2.c)), _wgslsmith_mult_vec3_u32(var_2.b.yyx, var_3.b.xwz))), global0.x, ~(-2046i), global0.zyx);
    return global0.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = select(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    global1 = u_input.b;
    let var_1 = select(!select(vec3<bool>(true, true, false), vec3<bool>(!var_0.x, all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), false), !var_0.x), !(!vec3<bool>(!var_0.x, 0i <= u_input.b.x, var_0.x)), vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1207f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-709f - -371f)) * 114f));
    var var_3 = _wgslsmith_add_vec3_u32(~vec3<u32>(26705u, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), ~vec4<u32>(global0.x, 44655u, 1u, u_input.a.x))), vec3<u32>(1u, min(184u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 17838u) & vec2<u32>(u_input.a.x, 44987u), u_input.c.xz)), _wgslsmith_clamp_u32(10673u, ~36840u, func_2()) & _wgslsmith_mod_u32(~u_input.c.x, u_input.a.x)));
    return reverseBits(abs(select(_wgslsmith_mult_vec3_i32(u_input.b.www, vec3<i32>(-1i, global1.x, u_input.b.x)), vec3<i32>(global1.x, global1.x, u_input.b.x), vec3<bool>(var_0.x, true, var_0.x))) << ((abs(_wgslsmith_sub_vec3_u32(vec3<u32>(51985u, var_3.x, 0u), vec3<u32>(var_3.x, 4294967295u, u_input.c.x))) | min(_wgslsmith_mod_vec3_u32(global0.yyw, u_input.a), u_input.a)) % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = 41113u;
    let var_1 = _wgslsmith_sub_vec3_i32(arg_1, vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -3707i, -2147483647i), _wgslsmith_mult_vec3_i32(global1.wyw, u_input.b.www) | global1.zwy), 2147483647i));
    let var_2 = Struct_1(_wgslsmith_div_u32(4294967295u, 49808u) != ~_wgslsmith_dot_vec3_u32(global0.xzx, global0.yxw), ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, 4294967295u, global0.x, u_input.c.x), ~vec4<u32>(0u, global0.x, 1u, global0.x)), firstLeadingBit(vec4<u32>(global0.x, u_input.a.x, global0.x, global0.x)) & vec4<u32>(global0.x, 0u, global0.x, 4294967295u)), u_input.a.x, 1i, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.c.x, global0.x, u_input.a.x))), vec3<u32>(global0.x, global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, 1u), vec3<u32>(12683u, 68675u, global0.x)))), vec3<u32>(~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, ~4050u), ~global0.x)));
    let var_3 = ~(~vec4<u32>(1u, global0.x, ~global0.x, max(_wgslsmith_mod_u32(u_input.a.x, var_2.c), 5441u)));
    global3 = _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(173f)))))));
    return -_wgslsmith_clamp_vec4_i32((abs(u_input.b) >> (~vec4<u32>(var_3.x, 1u, 15154u, 1u) % vec4<u32>(32u))) << (vec4<u32>(var_3.x | 0u, ~55504u, var_2.c, global0.x) % vec4<u32>(32u)), abs(u_input.b), reverseBits(-u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = ~vec3<u32>(max(~_wgslsmith_add_u32(0u, 4294967295u), ~(~4294967295u)), ~u_input.c.x, ~(~4294967295u));
    global3 = 1f;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -818f);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(max(var_2, 628f)) <= _wgslsmith_f_op_f32(min(var_2, var_2)), true, any(vec3<bool>(false, true, false)), !(!select(true, any(vec2<bool>(true, true)), true)));
    global1 = vec4<i32>(-global1.x, abs(_wgslsmith_dot_vec4_i32(u_input.b, func_4(u_input.b.x, func_1()))), _wgslsmith_sub_i32(~u_input.b.x, u_input.b.x), global1.x ^ global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(518f, var_2)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -493f, var_2) + vec3<f32>(var_2, 449f, var_2)), vec3<f32>(740f, 1856f, -309f), var_3.x))))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.b.wx, u_input.b.xy) ^ global1.yw, vec2<i32>(u_input.b.x, -1i)));
}

