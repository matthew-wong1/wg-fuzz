struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<i32>(11840i, -1i), 730f, Struct_1(vec3<bool>(true, false, false), false, vec4<u32>(33190u, 4294967295u, 75476u, 4294967295u), 1289f, vec4<f32>(136f, -1449f, -426f, -1234f)), Struct_1(vec3<bool>(false, false, true), false, vec4<u32>(1u, 0u, 59975u, 0u), 335f, vec4<f32>(-1234f, 1549f, 1208f, -907f))), 70727u, Struct_1(vec3<bool>(false, true, true), false, vec4<u32>(11180u, 27125u, 79651u, 0u), 730f, vec4<f32>(-1710f, 838f, 444f, -224f)), vec4<bool>(true, true, false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = 82562u;
    var var_1 = true;
    let var_2 = global0.a;
    let var_3 = countOneBits(-21289i >> (var_2.c.c.x % 32u));
    let var_4 = true;
    return var_4;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>) -> u32 {
    let var_0 = vec4<i32>(~u_input.a, ~(~(~(global0.a.a.x >> (4294967295u % 32u)))), (1i ^ arg_1.a.a.x) >> (~16405u % 32u), -u_input.a);
    var var_1 = max(~global0.a.c.c.xyx, global0.c.c.wxw);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.d, 595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.d)))));
    var var_3 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_4 = arg_1.c;
    return countOneBits(max(47369u, max(24518u, 73704u) ^ ~var_4.c.x) << ((~arg_1.a.c.c.x & ~_wgslsmith_div_u32(var_4.c.x, arg_1.a.c.c.x)) % 32u));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = !(select(!all(vec4<bool>(true, false, true, global0.d.x)), true, any(vec3<bool>(global0.a.c.a.x, global0.a.d.a.x, true))) | global0.c.b);
    let var_1 = Struct_1(global0.c.a, func_2(1i), global0.a.d.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1496f - _wgslsmith_f_op_f32(-global0.c.d))))), _wgslsmith_f_op_vec4_f32(global0.c.e * _wgslsmith_f_op_vec4_f32(sign(global0.a.c.e))));
    global0 = Struct_3(Struct_2(~(~vec2<i32>(arg_0, 2147483647i)), var_1.d, Struct_1(global0.a.d.a, true, vec4<u32>(31042u, u_input.e, u_input.c.x, max(1u, arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), var_1.e), var_1), arg_3, Struct_1(!(!select(vec3<bool>(global0.d.x, false, false), vec3<bool>(var_1.a.x, false, var_0), true)), (arg_2.x << (_wgslsmith_add_u32(38231u, global0.a.c.c.x) % 32u)) != -51760i, vec4<u32>(~(~1u), 0u, 48927u, func_3(1u, Struct_3(global0.a, 1u, var_1, global0.d), _wgslsmith_f_op_vec2_f32(-var_1.e.zy))), _wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(-var_1.e.x)), global0.a.d.e), !(!vec4<bool>(global0.a.a.x != -2147483647i, true, !global0.d.x, var_0)));
    let var_2 = var_1.c << (reverseBits(select(countOneBits(var_1.c & global0.a.d.c), ~var_1.c, global0.d)) % vec4<u32>(32u));
    global0 = Struct_3(global0.a, ~global0.c.c.x, global0.a.d, !(!global0.d));
    return Struct_3(Struct_2(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a, arg_0)), global0.a.a) ^ abs(arg_2.wy), arg_1, global0.a.d, var_1), 91578u, Struct_1(!vec3<bool>(u_input.a < global0.a.a.x, !global0.d.x, true), any(select(var_1.a, vec3<bool>(var_1.a.x, false, true), any(vec2<bool>(true, var_1.b)))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(55927u, var_1.c.x, 4294967295u, 4294967295u), var_2, ~vec4<u32>(var_2.x, 0u, var_2.x, u_input.c.x)), vec4<u32>(u_input.d << (u_input.c.x % 32u), 36280u, _wgslsmith_div_u32(arg_3, global0.a.c.c.x), _wgslsmith_dot_vec3_u32(global0.c.c.wyy, var_1.c.zwz))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.e), var_1.e)), vec4<f32>(-1180f, var_1.d, arg_1, _wgslsmith_f_op_f32(trunc(2245f))))), select(select(global0.d, vec4<bool>(all(vec4<bool>(false, true, true, global0.d.x)), global0.a.c.a.x, var_1.b, select(false, var_0, true)), !(!var_0)), vec4<bool>(any(vec4<bool>(var_0, var_0, false, true)), global0.c.a.x, !all(vec2<bool>(var_0, true)), true), !global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.d.d, _wgslsmith_f_op_f32(global0.a.d.e.x - 952f), global0.a.d.a.x)) - 1758f) - _wgslsmith_f_op_f32(global0.a.b - global0.a.c.d)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2607i, u_input.a, 2147483647i, -13409i), vec4<i32>(-33926i, -26019i, global0.a.a.x, u_input.a)) & (vec4<i32>(-995i, global0.a.a.x, global0.a.a.x, u_input.a) | vec4<i32>(1i, 0i, -33796i, 29215i)), vec4<i32>(i32(-1i) * -7750i, global0.a.a.x, -38275i, global0.a.a.x)) & -abs(vec4<i32>(-19465i, 24652i, u_input.a, 1i)), _wgslsmith_sub_u32(u_input.d, global0.a.c.c.x));
    global0 = func_1(_wgslsmith_sub_i32(u_input.a ^ u_input.a, global0.a.a.x), _wgslsmith_f_op_f32(global0.a.d.d + -774f), -vec4<i32>(~2147483647i, ~_wgslsmith_mod_i32(2147483647i, 1i), reverseBits(~(-2147483647i)), ~global0.a.a.x), u_input.b.x);
    global0 = Struct_3(global0.a, u_input.e, Struct_1(func_1(firstLeadingBit(select(-2147483647i, 53560i, global0.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.b))), select(vec4<i32>(18738i, -9864i, u_input.a, 34933i), vec4<i32>(-31810i, 35829i, -10871i, global0.a.a.x), true) & -vec4<i32>(global0.a.a.x, u_input.a, u_input.a, -42139i), u_input.e | 0u).a.c.a, global0.c.b, vec4<u32>(_wgslsmith_dot_vec2_u32(select(u_input.c.xy, u_input.c.zx, global0.c.a.zz), firstTrailingBit(u_input.c.yz)), _wgslsmith_dot_vec3_u32(global0.c.c.ywx, vec3<u32>(4294967295u, global0.a.d.c.x, u_input.b.x)) << (~global0.b % 32u), u_input.e, ~(4294967295u ^ u_input.e)), global0.a.b, global0.c.e), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(10001i) & _wgslsmith_mult_i32(-13383i, u_input.a));
}

