struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(2147483647i, 0i, 0i, -1i), Struct_1(i32(-2147483648)), Struct_1(-45668i), 16331i, Struct_1(36434i)), Struct_2(vec4<i32>(7817i, 2147483647i, 5473i, 27505i), Struct_1(9782i), Struct_1(14690i), -1i, Struct_1(41441i)), Struct_2(vec4<i32>(-8507i, 87619i, i32(-2147483648), 0i), Struct_1(2147483647i), Struct_1(24911i), 16794i, Struct_1(0i)), Struct_2(vec4<i32>(46538i, 27778i, i32(-2147483648), i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(-42870i), 1i, Struct_1(1i)), Struct_2(vec4<i32>(2147483647i, -10657i, -1i, -31014i), Struct_1(2791i), Struct_1(31733i), 0i, Struct_1(50252i)), Struct_2(vec4<i32>(1i, 7361i, -8457i, 2147483647i), Struct_1(5603i), Struct_1(i32(-2147483648)), -10577i, Struct_1(2147483647i)), Struct_2(vec4<i32>(1i, -12978i, 47721i, 2147483647i), Struct_1(-38495i), Struct_1(20725i), -28105i, Struct_1(37230i)), Struct_2(vec4<i32>(1i, 0i, 25115i, -1i), Struct_1(25399i), Struct_1(1i), 0i, Struct_1(2147483647i)), Struct_2(vec4<i32>(12662i, -51300i, 1i, 24147i), Struct_1(15876i), Struct_1(13943i), -44145i, Struct_1(-28040i)), Struct_2(vec4<i32>(2147483647i, 10649i, 24315i, 0i), Struct_1(-3827i), Struct_1(-10436i), 2147483647i, Struct_1(0i)), Struct_2(vec4<i32>(0i, i32(-2147483648), 55853i, 1i), Struct_1(-3315i), Struct_1(0i), 51992i, Struct_1(1i)), Struct_2(vec4<i32>(-1i, 57154i, 1i, -2629i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), 6845i, Struct_1(2147483647i)), Struct_2(vec4<i32>(6254i, i32(-2147483648), 2147483647i, -33623i), Struct_1(17727i), Struct_1(2147483647i), -1i, Struct_1(1i)), Struct_2(vec4<i32>(1i, 75997i, -43633i, 35721i), Struct_1(0i), Struct_1(1i), 1i, Struct_1(2147483647i)), Struct_2(vec4<i32>(2147483647i, -4021i, -16806i, 17703i), Struct_1(0i), Struct_1(1i), -1i, Struct_1(-1i)), Struct_2(vec4<i32>(0i, 27955i, 8576i, -16178i), Struct_1(0i), Struct_1(4444i), 27193i, Struct_1(-1i)), Struct_2(vec4<i32>(1i, 0i, i32(-2147483648), 0i), Struct_1(i32(-2147483648)), Struct_1(10197i), -61115i, Struct_1(1i)), Struct_2(vec4<i32>(2147483647i, -21954i, 29993i, -46159i), Struct_1(-9682i), Struct_1(5432i), 33428i, Struct_1(2147483647i)));

var<private> global1: Struct_4 = Struct_4(-1i, vec2<bool>(true, true), 1431f, 19910u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> Struct_3 {
    return Struct_3(global0[_wgslsmith_index_u32(99889u, 18u)], ~(-26330i), global1.c, vec4<bool>(~1u == global1.d, ~u_input.e >= 1u, 4294967295u < _wgslsmith_clamp_u32(global1.d, abs(1u), ~1u), select(any(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false)), true, any(select(vec3<bool>(global1.b.x, true, true), vec3<bool>(true, global1.b.x, true), false)))));
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(-_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(arg_0.a.a, arg_0.a.a), -4383i), vec2<bool>(arg_0.d.x, arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 27784u);
    var var_1 = 898f;
    global1 = Struct_4(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -1i), vec3<i32>(arg_0.b, var_0.a, arg_0.a.b.a)) | _wgslsmith_dot_vec3_i32(arg_0.a.a.zyw & arg_0.a.a.xzx, firstTrailingBit(arg_0.a.a.wzy)), -217i), !select(global1.b, func_2(~global1.a).d.zw, !func_2(-16952i).d.wx), 1000f, _wgslsmith_clamp_u32(u_input.c.x, global1.d, _wgslsmith_clamp_u32(u_input.e, global1.d, 33054u)));
    global1 = Struct_4(-21524i, !func_2(-(34553i >> (global1.d % 32u))).d.xx, _wgslsmith_f_op_f32(sign(arg_0.c)), u_input.c.x);
    global0 = array<Struct_2, 18>();
    return func_2(abs(_wgslsmith_mult_i32(-1i ^ select(u_input.d.x, 1i, false), -2147483647i))).a.e;
}

fn func_1() -> Struct_4 {
    var var_0 = u_input.c;
    var var_1 = func_3(func_2(-1392i));
    global0 = array<Struct_2, 18>();
    global1 = Struct_4(u_input.b, vec2<bool>(true, any(select(select(vec3<bool>(false, global1.b.x, false), vec3<bool>(global1.b.x, false, true), true), select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, true, true)), global1.b.x))), global1.c, ~(2349u << (var_0.x % 32u)));
    var_1 = func_2(~_wgslsmith_dot_vec2_i32(select(countOneBits(u_input.d), vec2<i32>(var_1.a, 1i), true), u_input.d)).a.c;
    return Struct_4(_wgslsmith_dot_vec4_i32(-(select(vec4<i32>(1i, -3085i, u_input.b, -16087i), vec4<i32>(u_input.d.x, 20476i, u_input.b, 26546i), true) | vec4<i32>(-150i, u_input.b, 21960i, -2147483647i)), reverseBits(func_2(-1i).a.a)), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c * global1.c) + -3185f))), _wgslsmith_mod_u32(4294967295u, global1.d));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = func_1();
    global0 = array<Struct_2, 18>();
    var var_1 = ~u_input.d.x >> (var_0.d % 32u);
    global0 = array<Struct_2, 18>();
    let var_2 = u_input.c.x;
    return arg_1.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_4 {
    let var_0 = func_1();
    var var_1 = Struct_2(vec4<i32>(min(-arg_0.e.a, arg_0.a.x) | (arg_1.a | func_3(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 18u)], -1i, global1.c, vec4<bool>(true, true, true, var_0.b.x))).a), func_2(-7732i).a.e.a, firstLeadingBit(max(~global1.a, 2147483647i)), var_0.a), Struct_1(17054i), func_3(func_2(u_input.d.x)), ~(arg_0.d | ((var_0.a >> (global1.d % 32u)) >> (_wgslsmith_mod_u32(319u, global1.d) % 32u))), func_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(max(arg_0.d, var_0.a), 2147483647i), arg_1.a)).a.c);
    var var_2 = func_1();
    let var_3 = Struct_3(Struct_2(abs(arg_0.a), var_1.e, func_3(func_2(var_2.a)), _wgslsmith_sub_i32(u_input.d.x, global1.a ^ -var_1.e.a), Struct_1(~var_2.a)), -15450i, -416f, !func_2(_wgslsmith_clamp_i32(arg_1.a & 38423i, u_input.b, -35475i)).d);
    return Struct_4(22951i, var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.c.xy, u_input.c.ww) & (~vec2<u32>(106734u, var_2.d) << (vec2<u32>(5918u, var_0.d) % vec2<u32>(32u))), ~(~vec2<u32>(global1.d, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_0 = global1.c;
    global1 = func_5(Struct_2(vec4<i32>(-global1.a, func_4(func_1(), ~u_input.d, vec3<f32>(global1.c, 1657f, global1.c), countOneBits(vec2<i32>(u_input.a, -20027i))), u_input.a, _wgslsmith_mod_i32(2147483647i, -1i) ^ _wgslsmith_div_i32(global1.a, 41621i)), Struct_1(-66579i), Struct_1(global1.a), global1.a, Struct_1(-(u_input.a >> (822u % 32u)))), func_3(func_2(-40538i)));
    global0 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.c.yz, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(11732u, u_input.e, u_input.e), min(79204u, 42132u)), u_input.c.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(~506i, func_1().a), -max(u_input.d, u_input.d)), vec2<i32>(u_input.d.x, global1.a)));
}

