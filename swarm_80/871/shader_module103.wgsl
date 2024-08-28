struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: Struct_4 = Struct_4(-1458f, Struct_2(0u, -9077i, vec3<f32>(-401f, 1341f, -343f)));

var<private> global3: Struct_5 = Struct_5(vec2<i32>(-47959i, 8292i), 1u, Struct_2(22058u, -1i, vec3<f32>(-387f, -1000f, -2697f)));

var<private> global4: Struct_4 = Struct_4(289f, Struct_2(15165u, 0i, vec3<f32>(427f, 1726f, -117f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec2<u32> {
    global2 = Struct_4(_wgslsmith_div_f32(global4.b.c.x, global3.c.c.x), global4.b);
    global2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.c.c.x)), 830f))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1027f, global4.a)))), Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, min(u_input.a, vec4<u32>(global2.b.a, 83496u, global3.c.a, 31986u))), _wgslsmith_dot_vec2_u32(u_input.a.zz << (u_input.a.yw % vec2<u32>(32u)), u_input.a.yx)), 978i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.b.c - vec3<f32>(global2.b.c.x, global0.a, 710f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -457f, -1415f)), select(!vec3<bool>(global1.x, true, global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, true), global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, false, global1.x)))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(165f, _wgslsmith_f_op_f32(max(global2.a, global2.a))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1217f, global4.a)));
    var var_1 = u_input.a.ywy;
    global3 = Struct_5(_wgslsmith_mod_vec2_i32(arg_1.zz, _wgslsmith_div_vec2_i32(countOneBits(global3.a), _wgslsmith_clamp_vec2_i32(~vec2<i32>(39323i, arg_0), select(u_input.b, u_input.b, global1.yz), vec2<i32>(1i, arg_0)))), reverseBits(_wgslsmith_mult_u32(~_wgslsmith_add_u32(global4.b.a, 27432u), reverseBits(max(global3.b, 77280u)))), global3.c);
    return _wgslsmith_add_vec2_u32(~u_input.a.zw, firstLeadingBit(select(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(87687u, global2.b.a, var_1.x, 1u)), _wgslsmith_dot_vec3_u32(u_input.a.zxw, vec3<u32>(94522u, global3.c.a, u_input.a.x))), ~vec2<u32>(0u, global2.b.a), false)));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = 1i;
    var var_1 = Struct_3(~abs(~u_input.a.yx));
    let var_2 = u_input.b;
    global4 = Struct_4(152f, global2.b);
    var_1 = Struct_3(~func_3(var_2.x, vec3<i32>(var_2.x, abs(0i), -1i)));
    return global0.a;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = u_input.a.www;
    let var_1 = reverseBits(~(~(~(global2.b.a | arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.c.yz * vec2<f32>(1000f, 123f)))), global3.c.c.yy));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -899f, _wgslsmith_f_op_f32(func_2(global3.c.c.x)), var_2.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.c.x, var_2.x, -1000f, global0.a) * vec4<f32>(2638f, global3.c.c.x, 1857f, -674f)))) * vec4<f32>(_wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(global0.a * -530f)), _wgslsmith_f_op_f32(ceil(-808f)), _wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.b.c.x)) - _wgslsmith_f_op_f32(sign(-1000f)))))));
    return -(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global2.b.b, u_input.c, 1i), vec4<i32>(global2.b.b, global4.b.b, global3.a.x, -2147483647i)), vec4<i32>(-17334i, global3.a.x, global4.b.b, -1i) | vec4<i32>(global3.a.x, global2.b.b, u_input.b.x, -1i)));
}

fn func_4(arg_0: vec4<i32>) -> StorageBuffer {
    return StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a ^ vec4<u32>(global4.b.a, 1u, 4317u, 1u), u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(global3.c.a, 1u, u_input.a.x, global4.b.a)), ~vec4<u32>(4294967295u, 34439u, global2.b.a, u_input.a.x))), _wgslsmith_sub_u32(~(~global4.b.a), abs(_wgslsmith_mult_u32(1u, global2.b.a))), 1u), abs(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(select(34678i, 1i, !(false | global1.x)), i32(-1i) * -11289i);
    var var_1 = global0.a;
    var var_2 = ~min(global4.b.b, global3.c.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global2.a, global0.a, -814f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(184f, 614f, global0.a, -501f)))))) * vec4<f32>(global3.c.c.x, _wgslsmith_f_op_f32(max(-278f, -265f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.c.c.x, global3.c.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a, global3.c.c.x))))));
    var_0 = vec2<i32>((global3.c.b << (select(54486u, firstTrailingBit(global3.b), global1.x) % 32u)) ^ u_input.b.x, u_input.b.x & reverseBits(global3.c.b));
    let var_4 = global2.a;
    let var_5 = Struct_5(~select(~u_input.b, _wgslsmith_div_vec2_i32(vec2<i32>(-12904i, 2147483647i), u_input.b), global1.x) ^ global3.a, ~max(global2.b.a << (global2.b.a % 32u), ~8075u) >> (global4.b.a % 32u), Struct_2(~(~(~64512u)), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.b.c * _wgslsmith_f_op_vec3_f32(global2.b.c + var_3.wyy)))));
    var var_6 = select(false, true, !global1.x);
    var var_7 = global3.b;
    let x = u_input.a;
    s_output = func_4((reverseBits(vec4<i32>(u_input.b.x, -2147483647i, 30313i, var_5.a.x)) ^ max(vec4<i32>(global3.c.b, var_5.c.b, 0i, global3.c.b), vec4<i32>(global2.b.b, 18034i, global3.c.b, var_5.a.x))) & _wgslsmith_div_vec4_i32(func_1(Struct_3(vec2<u32>(49569u, 45264u)), !vec2<bool>(global1.x, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.b, global4.b.b, 0i, global3.c.b), vec4<i32>(global4.b.b, -9104i, u_input.c, 2147483647i))));
}

