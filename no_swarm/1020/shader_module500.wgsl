struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<vec3<i32>, 10>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = array<vec2<f32>, 9>();
    let var_0 = select(global0.xy, global0.zy, vec2<bool>(true || (true && global0.x), select(false, !(u_input.c.x >= -29309i), any(!vec3<bool>(global0.x, global0.x, global0.x)))));
    global0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, false), false & global0.x), !vec3<bool>(false, all(vec4<bool>(global0.x, global0.x, true, true)), !var_0.x), true), select(!vec3<bool>(global0.x, global0.x & false, true), select(select(vec3<bool>(global0.x, true, var_0.x), !vec3<bool>(false, false, global0.x), true), select(vec3<bool>(global0.x, var_0.x, var_0.x), !vec3<bool>(global0.x, global0.x, var_0.x), !global0.x), false || !global0.x), global0.x), !(!select(!vec3<bool>(var_0.x, false, false), select(vec3<bool>(var_0.x, global0.x, global0.x), vec3<bool>(global0.x, false, var_0.x), false), global0.x || var_0.x)));
    global2 = array<vec3<i32>, 10>();
    var var_1 = select(vec3<bool>(true, all(global0.xz), (_wgslsmith_f_op_f32(trunc(-1000f)) <= -409f) | !var_0.x), vec3<bool>(false, true, false || any(global0.yz)), vec3<bool>(~_wgslsmith_add_i32(u_input.c.x, -25937i) >= _wgslsmith_div_i32(-u_input.a.x, u_input.c.x & u_input.c.x), false, any(global0.yz)));
    return _wgslsmith_sub_i32(-1i, 30753i);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = ~(-(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -62226i), u_input.a) ^ _wgslsmith_sub_i32(u_input.a.x, u_input.c.x))) ^ _wgslsmith_add_i32(func_3(), ~_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c.x, 17413i), -u_input.c.x));
    global2 = array<vec3<i32>, 10>();
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0)))), Struct_1(arg_0), !global0.x, select(countOneBits(vec4<u32>(u_input.b, 1u, 49906u, u_input.b)) >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), countOneBits(~vec4<u32>(u_input.b, 58941u, 1u, 0u)), true), Struct_1(_wgslsmith_f_op_f32(ceil(467f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), any(global0.zz), (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, 38186u, u_input.b), vec4<u32>(10475u, u_input.b, 69014u, u_input.b)) & ~vec4<u32>(55312u, 41561u, u_input.b, u_input.b)) | ~abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), Struct_1(452f)));
    var var_2 = Struct_3(var_1.a, var_1.a);
    let var_3 = select(select(vec3<bool>(true, !(!var_2.a.c), all(global0.yz)), select(select(!vec3<bool>(true, false, global0.x), vec3<bool>(var_2.a.c, false, var_1.a.c), var_1.a.c), vec3<bool>(false, true, false), !vec3<bool>(var_2.a.c, true, global0.x)), vec3<bool>(false, true, (0u & u_input.b) > ~u_input.b)), select(vec3<bool>(var_1.b.c, global0.x, true), vec3<bool>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -63527i) < countOneBits(5462i), var_1.a.c, var_2.a.c), vec3<bool>(-667f < arg_0, false, any(vec4<bool>(var_2.b.c, global0.x, true, false)))), any(select(select(!global0.xy, !vec2<bool>(global0.x, global0.x), var_2.a.e.a >= 367f), !select(global0.zz, vec2<bool>(global0.x, var_2.a.c), false), select(!global0.zx, vec2<bool>(true, true), !global0.yx))));
    return ~var_1.a.d.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<u32> {
    global2 = array<vec3<i32>, 10>();
    var var_0 = ~(~_wgslsmith_sub_u32(func_2(_wgslsmith_div_f32(arg_0.a, 320f)), 4294967295u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 9>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1310f), vec4<i32>(-6358i, 1i, _wgslsmith_clamp_i32(abs(u_input.a.x), _wgslsmith_add_i32(2147483647i, u_input.c.x), abs(u_input.a.x) & -u_input.a.x), min(u_input.a.x, u_input.c.x & 0i)));
    global0 = vec3<bool>(!(!global0.x), !(1i < u_input.c.x), !(!select(global0.x, true, global0.x)) && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(213f)), 1694f) <= 476f));
    let var_1 = (reverseBits(max(vec4<u32>(u_input.b, u_input.b, u_input.b, 66793u), func_1(Struct_1(var_0.a), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))) ^ vec4<u32>(1u, _wgslsmith_add_u32(u_input.b, select(u_input.b, u_input.b, true)), u_input.b, 1u)) >> ((~(~vec4<u32>(u_input.b, u_input.b, 0u, 0u)) | abs(~(vec4<u32>(u_input.b, 4294967295u, 41780u, 4294967295u) | vec4<u32>(1u, 4294967295u, u_input.b, u_input.b)))) % vec4<u32>(32u));
    var var_2 = -65280i;
    let var_3 = global0.x;
    var var_4 = firstLeadingBit(vec2<u32>(4294967295u, ~var_1.x));
    let var_5 = Struct_4(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -(var_0.b.x | u_input.c.x)), firstLeadingBit(_wgslsmith_div_vec4_i32(var_0.b, _wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-831f)))))));
}

