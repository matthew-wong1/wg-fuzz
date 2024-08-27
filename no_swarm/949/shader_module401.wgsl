struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<bool, 16>;

var<private> global2: Struct_1 = Struct_1(4294967295u, vec3<u32>(0u, 30878u, 43175u), vec2<i32>(1i, 27549i), vec4<u32>(4294967295u, 0u, 24580u, 0u), vec2<bool>(true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global2 = Struct_1(_wgslsmith_add_u32(1u, ~86755u), _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(12889u, u_input.a.x, global2.b.x)) << (abs(vec3<u32>(63925u, 0u, global2.a)) % vec3<u32>(32u)), ~global2.d.yzw), -firstTrailingBit(max(global2.c << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), vec2<i32>(global2.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]) << (vec2<u32>(88155u, global2.d.x) % vec2<u32>(32u)))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, global2.a, u_input.a.x, 68656u), vec4<u32>(45434u, ~(~global2.a), ~(~1u), reverseBits(countOneBits(u_input.a.x)))), select(global2.e, global2.e, !(!(!global2.e))));
    global0 = array<i32, 17>();
    let var_0 = Struct_4(Struct_2(Struct_1(69820u | _wgslsmith_mult_u32(u_input.a.x, 1u), vec3<u32>(u_input.a.x, 4294967295u, 1u) | (vec3<u32>(61990u, 24599u, 98111u) | u_input.a.zzw), vec2<i32>(global2.c.x & 20226i, -36050i), global2.d, vec2<bool>(15807u < u_input.a.x, any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1553f))), vec4<i32>(~u_input.b.x, 2147483647i, global2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global2.a, 17u)], global0[_wgslsmith_index_u32(global2.a, 17u)], global2.c.x, global0[_wgslsmith_index_u32(global2.b.x, 17u)]) << (vec4<u32>(global2.d.x, global2.b.x, 1u, 41937u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.c.x, global2.c.x, u_input.c, global2.c.x), vec4<i32>(global2.c.x, -28539i, global0[_wgslsmith_index_u32(74557u, 17u)], u_input.b.x), vec4<i32>(global2.c.x, -2147483647i, 2063i, u_input.c)))) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 44830u, 15039u, 1u)), countOneBits(vec4<u32>(0u, 0u, 34736u, 68184u))) % vec4<u32>(32u)), Struct_3(u_input.c, Struct_1(abs(~10109u), _wgslsmith_clamp_vec3_u32(global2.d.zxz, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 33675u, u_input.a.x), vec3<u32>(112323u, 39113u, u_input.a.x)), ~u_input.a.xwy), vec2<i32>(1i, 0i) << (_wgslsmith_clamp_vec2_u32(u_input.a.zy, global2.d.wx, u_input.a.yw) % vec2<u32>(32u)), global2.d, vec2<bool>(1i < u_input.b.x, global1[_wgslsmith_index_u32(~95u, 16u)])), reverseBits(abs(vec4<i32>(u_input.b.x, 1i, global0[_wgslsmith_index_u32(global2.d.x, 17u)], global0[_wgslsmith_index_u32(global2.d.x, 17u)]))) | vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-2147483647i, 42715i, global0[_wgslsmith_index_u32(global2.a, 17u)])), u_input.c, global0[_wgslsmith_index_u32(4294967295u, 17u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global2.e.x, global2.e.x), vec4<bool>(true, true, true, true), any(global2.e)), vec4<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], true, false)), true, true), select(true, true, true)), abs(_wgslsmith_dot_vec2_i32(-global2.c, ~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(global2.a, 17u)])))));
    global2 = var_0.d.b;
    let var_1 = var_0.a;
    return var_0.d.b.d.x;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = u_input.c | 1i;
    var var_1 = Struct_3(u_input.c, Struct_1(func_3(), select(vec3<u32>(9516u, 0u, 0u), select(global2.b, ~vec3<u32>(global2.b.x, u_input.a.x, global2.d.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global2.e.x, false)), any(!vec3<bool>(global2.e.x, false, global2.e.x))), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-28036i, global0[_wgslsmith_index_u32(0u, 17u)]), ~vec2<i32>(global0[_wgslsmith_index_u32(global2.a, 17u)], global2.c.x))), vec4<u32>(7940u, u_input.a.x, 18511u, ~global2.a << (func_3() % 32u)), !vec2<bool>(global2.e.x, global1[_wgslsmith_index_u32(20352u, 16u)] || true)), (reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.b.x, 35260i), vec4<i32>(global2.c.x, global0[_wgslsmith_index_u32(global2.d.x, 17u)], u_input.c, global0[_wgslsmith_index_u32(global2.a, 17u)]))) << (firstLeadingBit(firstTrailingBit(vec4<u32>(15120u, 4294967295u, 37848u, 10142u))) % vec4<u32>(32u))) | -(~(vec4<i32>(2147483647i, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 17u)], -2147483647i) & vec4<i32>(-32860i, -23875i, -1i, global0[_wgslsmith_index_u32(global2.b.x, 17u)]))), select(select(select(!vec4<bool>(global2.e.x, false, true, global2.e.x), vec4<bool>(global2.e.x, global1[_wgslsmith_index_u32(global2.a, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), !global2.e.x), vec4<bool>(global1[_wgslsmith_index_u32(global2.b.x, 16u)] || global2.e.x, 1516f < arg_0, any(vec3<bool>(true, global2.e.x, true)), false), any(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 16u)], false, false))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, global2.e.x, false), true), !vec4<bool>(false, true, global2.e.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)] == global1[_wgslsmith_index_u32(global2.d.x, 16u)], global2.e.x, false & global2.e.x, global2.e.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(~0u, 16u)] != global2.e.x, true || global2.e.x, true)), ~(-global0[_wgslsmith_index_u32(~65836u, 17u)]));
    var var_2 = -global0[_wgslsmith_index_u32(global2.b.x, 17u)];
    var var_3 = _wgslsmith_mult_u32(var_1.b.d.x, _wgslsmith_add_u32(u_input.a.x, global2.a) & _wgslsmith_dot_vec2_u32(vec2<u32>(abs(global2.a), ~var_1.b.d.x), ~min(global2.b.yy, vec2<u32>(global2.b.x, 1u))));
    var var_4 = Struct_3(firstLeadingBit(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-22884i, 0i, global2.c.x), var_1.c.wxy))), var_1.b, _wgslsmith_mod_vec4_i32(var_1.c, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(46462i, -32641i, 1i, var_1.b.c.x), vec4<i32>(var_1.c.x, u_input.c, 2147483647i, 1i)), max(var_1.c, vec4<i32>(var_1.e, 15760i, 2147483647i, 6130i))), global2.c.x, ~(0i << (global2.a % 32u)), -(~u_input.c))), var_1.d, _wgslsmith_dot_vec4_i32(vec4<i32>(37765i, global0[_wgslsmith_index_u32(~9195u, 17u)], -(~global0[_wgslsmith_index_u32(global2.d.x, 17u)]), -2147483647i), _wgslsmith_add_vec4_i32(abs(var_1.c), vec4<i32>(0i, -10674i, -36356i, global0[_wgslsmith_index_u32(58843u, 17u)]) ^ vec4<i32>(u_input.c, var_1.a, global2.c.x, 56681i))));
    return 0u;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(select(-1000f, 613f, select(global1[_wgslsmith_index_u32(global2.a, 16u)], true, false)))), 814f, firstLeadingBit(~select(arg_2.b.x, 65317u, false)) <= (reverseBits(16113u) << (arg_2.a % 32u))));
    var var_1 = Struct_1(u_input.a.x, global2.b, ~global2.c, vec4<u32>(47581u, ~u_input.a.x, func_2(arg_1), ~4294967295u), !select(select(arg_2.e, vec2<bool>(true, true), arg_2.c.x > global2.c.x), !(!arg_2.e), global1[_wgslsmith_index_u32(4294967295u, 16u)]));
    global0 = array<i32, 17>();
    var var_2 = arg_2.d.yxz;
    global1 = array<bool, 16>();
    return arg_2;
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)), 1953f);
    let var_1 = vec4<bool>(arg_0.b.e.x, !(!global2.e.x), global2.e.x, !any(arg_0.d.zxx));
    global1 = array<bool, 16>();
    var var_2 = ~vec4<i32>(firstLeadingBit(-2147483647i), i32(-1i) * -_wgslsmith_add_i32(62289i, arg_0.c.x), i32(-1i) * -2147483647i, -2147483647i);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, var_0, _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 802f, -516f, 231f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, var_0, var_0))))));
    return 74800u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 16>();
    var var_0 = u_input.a.x;
    var var_1 = vec4<bool>(all(vec3<bool>(global2.e.x && true, false, all(select(vec4<bool>(global2.e.x, global1[_wgslsmith_index_u32(125479u, 16u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], true, false, global2.e.x), global2.e.x)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(Struct_3(u_input.c, func_1(vec4<bool>(global2.e.x, false, global1[_wgslsmith_index_u32(global2.b.x, 16u)], false), 1360f, Struct_1(1u, vec3<u32>(1u, 56100u, 1u), global2.c, u_input.a, vec2<bool>(true, true))), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2.c.x, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(23223u, 16u)], global1[_wgslsmith_index_u32(global2.a, 16u)], false), -22258i)), _wgslsmith_mod_u32(4294967295u, global2.b.x)), 16u)], !(any(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(global2.b.x, 16u)], global1[_wgslsmith_index_u32(45809u, 16u)])) & global2.e.x), global2.e.x);
    let var_2 = 1u;
    let var_3 = Struct_3(-(1i >> (0u % 32u)), Struct_1(1u, ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.a.x, 0u), ~u_input.a.wwz), (u_input.b.zz << (select(global2.b.xx, vec2<u32>(u_input.a.x, u_input.a.x), false) % vec2<u32>(32u))) & global2.c, _wgslsmith_mult_vec4_u32(global2.d << (u_input.a % vec4<u32>(32u)), vec4<u32>(1u << (1u % 32u), ~u_input.a.x, ~4294967295u, ~4538u)), vec2<bool>(global1[_wgslsmith_index_u32(1469u, 16u)], !(true != global1[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, abs(global2.c.x), u_input.b.x, global2.c.x ^ 2147483647i) >> (select(u_input.a, ~vec4<u32>(8636u, 0u, global2.b.x, var_2), select(vec4<bool>(false, false, true, global2.e.x), vec4<bool>(true, false, global2.e.x, var_1.x), vec4<bool>(true, true, var_1.x, true))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(global2.c.x, 1i, 2147483647i), global2.c.x, reverseBits(_wgslsmith_add_i32(11591i, global0[_wgslsmith_index_u32(var_2, 17u)])), firstLeadingBit(u_input.c))), !select(select(select(vec4<bool>(global2.e.x, global2.e.x, global1[_wgslsmith_index_u32(7472u, 16u)], true), vec4<bool>(var_1.x, false, global1[_wgslsmith_index_u32(var_2, 16u)], var_1.x), var_1.x), !vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, false, true, false)), vec4<bool>(any(vec2<bool>(true, true)), var_1.x, true, 0i <= global0[_wgslsmith_index_u32(global2.a, 17u)]), select(!vec4<bool>(global2.e.x, global1[_wgslsmith_index_u32(0u, 16u)], false, var_1.x), !vec4<bool>(false, global2.e.x, true, false), var_1.x)), _wgslsmith_sub_i32(~(i32(-1i) * -global2.c.x), -(~(global2.c.x & -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_i32(var_3.c.yz, -countOneBits(vec2<i32>(-8174i, 18323i)), vec2<i32>(0i, var_3.c.x) | (vec2<i32>(global0[_wgslsmith_index_u32(52883u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]) & u_input.b.zx)), _wgslsmith_add_vec2_i32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1000f * -353f), func_1(var_3.d, 938f, Struct_1(4294967295u, global2.d.wxz, vec2<i32>(global2.c.x, global0[_wgslsmith_index_u32(8948u, 17u)]), global2.d, var_3.b.e))).c, u_input.b.yy), false), -(-(var_3.c ^ var_3.c) << (~u_input.a % vec4<u32>(32u))));
}

