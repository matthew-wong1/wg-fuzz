struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), !any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), true);
    return 28892u;
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_mod_u32(100113u, 53560u) == u_input.b.x;
    var var_1 = vec4<u32>(~_wgslsmith_mult_u32(0u, u_input.d), ~u_input.b.x, func_3(u_input.b.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d, 1u, u_input.a, 1u)), select(vec4<u32>(0u, 27153u, 31516u, u_input.e.x) & vec4<u32>(u_input.a, 17835u, u_input.b.x, 4294967295u), vec4<u32>(3206u, 1u, 4294967295u, u_input.b.x), vec4<bool>(false, true, var_0, var_0)))) << (~(~(vec4<u32>(u_input.d, 27899u, 18995u, u_input.b.x) << (~vec4<u32>(48379u, 1u, u_input.e.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_2 = -max(-vec4<i32>(-8003i, reverseBits(-9681i), 1i, max(-4280i, -2147483647i)), firstLeadingBit(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))));
    var var_3 = Struct_3(!vec3<bool>(true, all(!vec2<bool>(var_0, false)), true), Struct_2(~var_2.yw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1322f)), 241f))), Struct_1(~vec2<i32>(-1i, 2147483647i), !any(vec4<bool>(var_0, var_0, false, true)), var_2.x, select(!vec3<bool>(var_0, true, false), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0)), true && var_0), Struct_1(~var_2.yw, var_0, 0i, vec3<bool>(true, true, u_input.b.x < var_1.x), countOneBits(var_2.x) < _wgslsmith_div_i32(-43456i, u_input.c))), Struct_2(max(reverseBits(vec2<i32>(u_input.c, 4799i)), var_2.yy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-714f)) * -1616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1889f)) + -691f)), Struct_1(max(vec2<i32>(u_input.c, -1i) & var_2.xx, ~vec2<i32>(u_input.c, -1i)), any(vec3<bool>(var_0, false, var_0)) != (80816u < var_1.x), 1i, vec3<bool>(any(vec4<bool>(var_0, true, false, true)), var_0 & var_0, true), false), Struct_1(select(-vec2<i32>(var_2.x, 0i), vec2<i32>(-2147483647i, -2147483647i), var_0), false, var_2.x, vec3<bool>(select(var_0, var_0, var_0), any(vec4<bool>(true, false, true, var_0)), any(vec3<bool>(true, var_0, var_0))), true)), Struct_1(countOneBits(-var_2.xy >> (~var_1.yw % vec2<u32>(32u))), -firstLeadingBit(u_input.c) < -(~1i), -2147483647i, vec3<bool>(true, select(false, var_0, var_0), var_0), var_0 | var_0));
    var var_4 = select(var_2.yyz, ~var_2.yyw, var_3.b.c.d);
    return Struct_5(Struct_2(var_4.yz, _wgslsmith_f_op_f32(exp2(var_3.c.b)), Struct_1(vec2<i32>(_wgslsmith_mod_i32(8909i, var_3.b.c.a.x), select(1i, u_input.c, var_3.c.d.d.x)), false, _wgslsmith_sub_i32(var_3.b.d.c, var_2.x), !(!var_3.c.c.d), var_0), Struct_1(select(vec2<i32>(-2147483647i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.c.a.x, u_input.c), var_4.xz), true), _wgslsmith_f_op_f32(select(var_3.c.b, var_3.b.b, false)) <= var_3.c.b, firstTrailingBit(abs(var_3.c.c.a.x)), vec3<bool>(!var_3.c.d.d.x, all(vec4<bool>(false, var_0, true, var_0)), all(vec2<bool>(var_0, var_3.a.x))), true)), !select(vec2<bool>(true, false), select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(var_0, false)), var_3.c.d.e));
}

fn func_1() -> bool {
    var var_0 = true;
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = false;
    var var_4 = var_1.a.c.d.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(func_1(), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(1i, -12163i, -2147483647i)) >= ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, u_input.c))));
    var var_1 = func_2().a;
    var_1 = Struct_2(var_1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-231f)) * var_1.b), var_1.d, func_2().a.c);
    let var_2 = var_1.d.c | 2147483647i;
    let var_3 = !func_1();
    var var_4 = Struct_4(Struct_2(select(var_1.c.a, vec2<i32>(_wgslsmith_mult_i32(var_2, var_2), var_1.c.a.x), !vec2<bool>(var_1.d.d.x, var_1.c.e)), var_1.b, var_1.c, func_2().a.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(62876i, var_1.a.x, -1475i, var_4.a.a.x)), ~(~0u));
}

