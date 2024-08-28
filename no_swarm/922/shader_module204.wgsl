struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
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

var<private> global0: array<Struct_4, 17>;

var<private> global1: Struct_4;

var<private> global2: vec3<f32> = vec3<f32>(-462f, 1238f, 247f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(select(~u_input.b.wyx, u_input.b.wwx, vec3<bool>(true, false, global1.e)), vec3<u32>(8505u, select(global1.a, u_input.b.x, arg_0), _wgslsmith_sub_u32(global1.a, global1.d.a.a)))), ~(-(firstTrailingBit(vec2<i32>(-30052i, u_input.a.x)) ^ _wgslsmith_mod_vec2_i32(global1.d.d, vec2<i32>(global1.d.b.x, -25318i)))), u_input.a, vec2<i32>(max(0i, 23359i), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, global1.d.c.x), -(vec2<i32>(28822i, 59343i) << (u_input.b.yy % vec2<u32>(32u))))));
    var var_1 = Struct_1(var_0.a.a ^ min(global1.d.a.a, _wgslsmith_div_u32(0u, u_input.b.x) >> (71580u % 32u)));
    let var_2 = Struct_3(Struct_1(4294967295u), ~4294967295u, ~(countOneBits(vec4<u32>(49835u, var_0.a.a, u_input.b.x, 7388u)) | u_input.b), any(vec4<bool>(!(global1.c.x <= 597f), false, false, !global1.e)));
    let var_3 = Struct_1(firstLeadingBit(~(u_input.b.x | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a, var_1.a, var_2.c.x, 1u), vec4<u32>(0u, 4294967295u, u_input.b.x, global1.a)))));
    let var_4 = var_0.a.a;
    return ~(~var_0.d);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = 1u;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)), global2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), -889f, true)))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(global1.c.x))));
    var_0 = ~(~8175u) << ((~((arg_0.b & global1.a) & u_input.b.x) & ~(~0u >> (~4294967295u % 32u))) % 32u);
    global1 = Struct_4(~(~arg_0.c.x | arg_0.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))))), global1.c, Struct_2(Struct_1(1u), _wgslsmith_div_vec2_i32(func_3(true), _wgslsmith_div_vec2_i32(~vec2<i32>(0i, arg_1.b.x), vec2<i32>(0i, arg_1.b.x))), -(~u_input.a), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.a.x)), false);
    let var_1 = 3923u;
    return ~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-func_3(true).x, -(u_input.a.x & 30419i)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(select(u_input.b.xw, vec2<u32>(4294967295u, 13727u), vec2<bool>(global1.e, true)), ~u_input.b.xw))), u_input.a, -(~func_2(Struct_3(global1.d.a, 0u, u_input.b, global1.e), Struct_2(arg_0, vec2<i32>(u_input.a.x, -1i), global1.d.b, u_input.a)) | vec2<i32>(global1.d.d.x >> (0u % 32u), i32(-1i) * -11380i)), _wgslsmith_add_vec2_i32(firstTrailingBit(global1.d.b & _wgslsmith_div_vec2_i32(vec2<i32>(-19983i, -2147483647i), vec2<i32>(-9331i, u_input.a.x))), func_3(true && all(vec4<bool>(true, global1.e, global1.e, global1.e)))));
    let var_1 = Struct_3(Struct_1(arg_0.a), 23446u, min(~_wgslsmith_add_vec4_u32(abs(u_input.b), u_input.b & u_input.b), ~(~vec4<u32>(global1.a, 1u, 4294967295u, u_input.b.x) | (u_input.b << (vec4<u32>(global1.d.a.a, 6633u, var_0.a.a, 53179u) % vec4<u32>(32u))))), true);
    var var_2 = any(!(!(!select(vec2<bool>(false, var_1.d), vec2<bool>(global1.e, false), var_1.d))));
    var var_3 = global0[_wgslsmith_index_u32(18269u, 17u)];
    let var_4 = _wgslsmith_div_i32(~22787i, var_3.d.d.x);
    return any(select(vec4<bool>(true, true, !select(false, false, true), all(vec3<bool>(var_3.e, true, false)) && true), select(select(vec4<bool>(var_1.d, false, var_3.e, var_1.d), !vec4<bool>(false, true, true, var_3.e), vec4<bool>(false, var_1.d, false, false)), select(vec4<bool>(var_3.e, var_1.d, false, false), vec4<bool>(true, false, var_3.e, true), select(vec4<bool>(false, var_3.e, var_3.e, true), vec4<bool>(true, global1.e, false, false), false)), all(!vec2<bool>(global1.e, var_1.d))), !vec4<bool>(false, !var_1.d, var_1.d, !var_3.e)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, global1.b, _wgslsmith_div_f32(global2.x, -513f)))))));
    let var_0 = vec2<i32>(~(firstLeadingBit(~u_input.a.x) << (4294967295u % 32u)), u_input.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(global1.c.yxz)), global1.c.yzw));
    var var_1 = true;
    var var_2 = countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -14873i), abs(global1.d.c)), var_0.x) ^ (min(11220i, firstLeadingBit(-2147483647i)) ^ var_0.x));
    return Struct_1(_wgslsmith_dot_vec4_u32(arg_0.c, countOneBits(firstTrailingBit(abs(vec4<u32>(u_input.b.x, 1u, 72760u, u_input.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 17>();
    let var_0 = Struct_2(global1.d.a, vec2<i32>(i32(-1i) * -(1i >> (0u % 32u)), _wgslsmith_sub_i32(~(-30191i >> (global1.d.a.a % 32u)), -_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(-u_input.a.x, -2147483647i), -vec2<i32>(1i, 4249i)), -(~vec2<i32>(-7926i, global1.d.d.x))), -global1.d.c);
    var var_1 = var_0.a;
    var_1 = func_4(Struct_3(global1.d.a, 1u, select(u_input.b, vec4<u32>(35401u & var_1.a, _wgslsmith_div_u32(var_1.a, 0u), var_1.a >> (u_input.b.x % 32u), var_1.a), vec4<bool>(func_1(global1.d.a), global1.d.c.x >= u_input.a.x, global1.e, any(vec4<bool>(true, global1.e, true, global1.e)))), global1.e));
    var_1 = global1.d.a;
    var var_2 = max(-firstTrailingBit(func_3(any(vec2<bool>(global1.e, global1.e)))), _wgslsmith_sub_vec2_i32(select(~var_0.b, u_input.a, !any(vec2<bool>(global1.e, global1.e))), -var_0.b));
    var var_3 = _wgslsmith_f_op_f32(global2.x - global1.b);
    let var_4 = _wgslsmith_f_op_f32(sign(1681f));
    let var_5 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

