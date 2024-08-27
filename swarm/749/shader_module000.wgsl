struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(46692u, 0u);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 26319u, 24516u), vec4<u32>(22853u, 2738u, 18229u, 0u));

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    let var_0 = !(0u == _wgslsmith_clamp_u32(arg_2.x, ~(~arg_0.a.b.x), u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_1.zy - arg_1.zz);
    global2 = firstTrailingBit(~(arg_2 & vec2<u32>(arg_2.x << (arg_0.b.b.x % 32u), _wgslsmith_clamp_u32(global1.a.x, arg_0.a.b.x, global0.x))));
    var var_2 = ~arg_2.x & global0.x;
    var_2 = 71546u;
    return -149f;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    global1 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 23012u, _wgslsmith_mult_u32(3815u, global0.x)), reverseBits(vec3<u32>(6900u, global2.x, 42409u) & vec3<u32>(global0.x, 0u, global0.x))), global1.b);
    let var_0 = global1.b.wz;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global1.a, vec4<u32>(global2.x, 0u, 4294967295u, 4294967295u)), Struct_1(global1.a, vec4<u32>(34115u, 0u, 4294967295u, global1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-909f, arg_1.x, 1068f, arg_1.x)), ~vec2<u32>(global0.x, global1.b.x), -350f)), _wgslsmith_f_op_f32(-arg_1.x))), vec3<bool>(!(_wgslsmith_f_op_f32(arg_1.x * 1005f) == _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<u32>(global1.a.x, 0u, var_0.x), global1.b), Struct_1(global1.b.xzy, vec4<u32>(21718u, global2.x, var_0.x, 4294967295u))), vec4<f32>(1738f, -2065f, -651f, arg_1.x), vec2<u32>(global2.x, global2.x), arg_1.x))), false, !arg_2 || arg_2), (~vec3<u32>(1u, global0.x, global0.x) ^ global1.a) >> (~global1.b.yxz % vec3<u32>(32u)), Struct_2(Struct_1(global1.a, vec4<u32>(global2.x & 1u, ~69128u, global1.a.x | u_input.c, ~u_input.a.x)), Struct_1(global1.b.yzw, max(global1.b, firstLeadingBit(global1.b)))));
    let var_2 = arg_0.x;
    global0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~var_1.d.a.b.x, 65028u | global2.x), global0.x, u_input.a.x), 0u) ^ select(_wgslsmith_mod_vec2_u32(var_1.c.yz, u_input.a), var_1.c.zy, false);
    return select(select(vec4<bool>(any(vec3<bool>(true, arg_2, false)), all(!var_1.b), ~global2.x >= 5244u, false), vec4<bool>(var_1.b.x, true, false, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_1.c, global1.b), var_1.d.a), vec4<f32>(-791f, -711f, var_1.a, arg_1.x), vec2<u32>(u_input.a.x, 67833u), 1000f)) != _wgslsmith_f_op_f32(-1417f - var_1.a)), vec4<bool>(arg_2, var_1.b.x, false, u_input.d <= -var_2)), vec4<bool>(true, all(!vec3<bool>(arg_2, var_1.b.x, var_1.b.x)), var_1.b.x | (!arg_2 || true), true), !all(select(vec4<bool>(arg_2, var_1.b.x, arg_2, var_1.b.x), !vec4<bool>(var_1.b.x, true, false, arg_2), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    return select(vec2<bool>(all(!select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, false, arg_0))), false), vec2<bool>(arg_0, ~0i <= -_wgslsmith_dot_vec4_i32(vec4<i32>(30464i, -44585i, 2147483647i, 44698i), vec4<i32>(u_input.d, 0i, -2147483647i, u_input.d))), any(select(!vec3<bool>(true, arg_0, true), vec3<bool>(true && arg_0, true, true), false)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_clamp_i32(firstTrailingBit(-u_input.d ^ _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d, u_input.d), ~u_input.d)), 2169i, 1i);
    let var_1 = abs(-22181i);
    let var_2 = !func_4(all(func_2(vec3<i32>(var_1, 7072i, 1i), vec2<f32>(-659f, -1000f), true)) & !all(vec4<bool>(true, true, false, true)), Struct_4(Struct_1(vec3<u32>(1u, 0u, 1u), vec4<u32>(0u, global1.b.x, global2.x, u_input.b)), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.d), vec2<i32>(-34012i, 6804i)), u_input.d >> (22598u % 32u)), global0.x));
    global1 = Struct_1(abs(~_wgslsmith_add_vec3_u32(global1.b.xzx, ~global1.b.yxz)), vec4<u32>(firstTrailingBit(~global1.a.x), 0u, 40406u, _wgslsmith_sub_u32(152565u, abs(25574u))));
    global2 = _wgslsmith_sub_vec2_u32(global1.a.yy, u_input.a);
    return -855f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(506f)))), -750f)))), _wgslsmith_f_op_f32(f32(-1f) * -1971f));
    var var_1 = select(!(!vec4<bool>(select(true, false, true), true, func_4(false, Struct_4(Struct_1(global1.b.yxw, global1.b), vec3<i32>(u_input.d, u_input.d, u_input.d), 0u)).x, var_0.x <= var_0.x)), !(!vec4<bool>(true, true, true, func_2(vec3<i32>(-36647i, 2147483647i, u_input.d), vec2<f32>(1495f, -100f), false).x)), !(!vec4<bool>(true, false, all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)))));
    let var_2 = Struct_1(firstTrailingBit(select(abs(countOneBits(global1.b.wwz)), global1.b.yzw, !var_1.xzz)), select(vec4<u32>(~countOneBits(22842u), firstTrailingBit(global1.a.x), _wgslsmith_dot_vec3_u32(global1.b.wyw, global1.b.yyx) ^ global0.x, u_input.c), vec4<u32>(global2.x, ~1u, countOneBits(_wgslsmith_mod_u32(6900u, global1.b.x)), u_input.b), true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + var_0.x));
    var_3 = -510f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, 5589i, u_input.d, _wgslsmith_sub_vec2_u32(global1.a.yy, vec2<u32>(global0.x, 4294967295u)), min(-1i, 1i));
}

