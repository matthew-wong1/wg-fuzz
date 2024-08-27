struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1476f;

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(5200i, 1i, -1i, i32(-2147483648)), vec4<i32>(1i, 1i, -1832i, -1i), vec4<i32>(-1i, -17850i, 36582i, -20306i), vec4<i32>(-20878i, 13391i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), vec4<i32>(-2362i, 18816i, -34565i, i32(-2147483648)), vec4<i32>(60738i, 2147483647i, 78777i, i32(-2147483648)), vec4<i32>(-1i, 1i, 36165i, -1820i));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(2147483647i, -1i, 24500i, -21610i), vec2<u32>(1u, 31804u), true, vec4<bool>(true, false, false, false)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = -abs(_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.b.zxw, vec3<i32>(global2.a.a.x, 1i, -12313i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, u_input.b.x, u_input.a.x), u_input.a, global2.a.a.zzz)));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-487f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-759f, 584f)) + _wgslsmith_f_op_f32(max(-1356f, -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -633f)))), _wgslsmith_f_op_f32(f32(-1f) * -302f), true));
    global1 = array<vec4<i32>, 8>();
    global1 = array<vec4<i32>, 8>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f * _wgslsmith_div_f32(2080f, 934f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(368f * 410f), -1942f, global2.a.c))))));
    return !global2.a.d.xy;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = firstLeadingBit(2857i);
    return any(func_3());
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3;
    let var_1 = ~arg_1.a;
    let var_2 = Struct_3(Struct_1(var_1, vec2<u32>(global2.a.b.x, ~arg_1.b.x | u_input.c), any(!vec3<bool>(global2.a.d.x, arg_0.c, false)) || true, select(arg_0.d, !select(arg_0.d, arg_0.d, global2.a.c), !(!vec4<bool>(arg_0.d.x, true, arg_1.d.x, arg_0.d.x)))));
    let var_3 = var_2.a.c;
    var var_4 = _wgslsmith_f_op_f32(sign(-168f));
    return !(!(!var_2.a.d));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2709f + -163f));
    global0 = 810f;
    var var_1 = select(func_4(Struct_1(global1[_wgslsmith_index_u32(~global2.a.b.x, 8u)], vec2<u32>(u_input.c ^ 75476u, ~0u), func_2(~u_input.a.x), vec4<bool>(true, global2.a.c, func_2(-1i), true)), Struct_1(~vec4<i32>(arg_0.a.x, arg_0.a.x, var_0.a.x, global2.a.a.x), vec2<u32>(u_input.c ^ 11339u, _wgslsmith_add_u32(27610u, global2.a.b.x)), _wgslsmith_f_op_f32(round(930f)) >= -793f, vec4<bool>(true, global2.a.d.x, true, any(vec4<bool>(global2.a.c, global2.a.d.x, global2.a.c, true)))), ~(~(~548u)), var_0), global2.a.d, !vec4<bool>(func_3().x, false, false, (true & global2.a.c) && all(vec4<bool>(false, global2.a.d.x, global2.a.c, global2.a.d.x))));
    var var_2 = vec3<u32>(countOneBits(~_wgslsmith_div_u32(u_input.c, u_input.c & u_input.c)), ~(~17058u >> (1u % 32u)), u_input.c);
    return _wgslsmith_mult_vec2_i32(u_input.b.xw, var_0.a.xy);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_i32(~(~global2.a.a.x), arg_1.a.x);
    global0 = _wgslsmith_f_op_f32(abs(-1202f));
    global1 = array<vec4<i32>, 8>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -907f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(833f - 1000f), -1308f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-592f * _wgslsmith_div_f32(-1400f, -1000f)) * _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = array<vec4<i32>, 8>();
    return Struct_3(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, any(global2.a.d.xx), true);
    global0 = -423f;
    var var_1 = ~u_input.b.x;
    var var_2 = func_5(var_0.xx, Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(func_1(Struct_2(vec3<i32>(16249i, u_input.b.x, u_input.b.x))), vec2<i32>(24111i, -2147483647i)), -global2.a.a.x | _wgslsmith_add_i32(global2.a.a.x, -1i), i32(-1i) * -6358i, ~(-u_input.a.x)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(102790u, 1u, 69285u), vec3<u32>(u_input.c, u_input.c, 1u)), select(4294967295u, global2.a.b.x, global2.a.c)), select(global2.a.c, true, any(vec4<bool>(var_0.x, false, global2.a.d.x, global2.a.d.x))), select(select(global2.a.d, vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(global2.a.c, global2.a.d.x, true, var_0.x)), global2.a.d, ~global2.a.b.x > _wgslsmith_mod_u32(4294967295u, global2.a.b.x))), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a.a.x, global2.a.a.x, global2.a.a.x), _wgslsmith_clamp_vec3_i32(abs(global2.a.a.wwx), ~u_input.a, vec3<i32>(-3054i, u_input.a.x, -1i)))));
    global2 = Struct_3(func_5(var_2.a.d.wz, Struct_1(vec4<i32>(func_1(Struct_2(u_input.a)).x, -global2.a.a.x, func_1(Struct_2(vec3<i32>(u_input.b.x, global2.a.a.x, global2.a.a.x))).x, i32(-1i) * -2147483647i), global2.a.b, false, vec4<bool>(any(vec2<bool>(global2.a.d.x, var_0.x)), true, true | var_2.a.c, true)), Struct_2(min(vec3<i32>(u_input.a.x, -21697i, 0i), ~global2.a.a.xxz))).a);
    var var_3 = var_2.a;
    var var_4 = (select(global2.a.d.x, (var_3.c && var_3.c) || func_4(Struct_1(var_2.a.a, vec2<u32>(43816u, 2331u), var_3.d.x, vec4<bool>(var_3.d.x, var_3.c, false, var_2.a.c)), global2.a, var_3.b.x, Struct_2(vec3<i32>(global2.a.a.x, -34186i, -2147483647i))).x, global2.a.d.x) & false) || (42942u < var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3.b));
}

