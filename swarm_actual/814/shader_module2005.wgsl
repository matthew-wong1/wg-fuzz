struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20>;

var<private> global1: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: Struct_3 = Struct_3(false, Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec2<f32>(-1500f, 1000f)), Struct_1(vec2<f32>(172f, -308f)), false), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<f32>(836f, -631f)), Struct_1(vec2<f32>(-1061f, -783f)), true), vec4<f32>(796f, -1031f, -387f, 654f), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec2<f32>(828f, 123f)), Struct_1(vec2<f32>(1810f, 2379f)), true));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    global0 = array<Struct_5, 20>();
    global1 = array<vec2<bool>, 4>();
    var var_0 = u_input.c;
    return ~abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(0u, arg_0)), vec2<u32>(arg_3, 0u) << (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u))), arg_1.yx));
}

fn func_3() -> vec3<i32> {
    var var_0 = u_input.d;
    let var_1 = Struct_5(-select(u_input.c.xzw, vec3<i32>(2147483647i, i32(-1i) * -49703i, u_input.a.x), false), ~(vec3<i32>(~(-1i), u_input.a.x, _wgslsmith_mult_i32(u_input.b, -13656i)) & (max(u_input.c.yyx, vec3<i32>(39661i, 0i, 39018i)) >> ((vec3<u32>(4294967295u, 1u, u_input.d) | vec3<u32>(u_input.d, u_input.d, u_input.d)) % vec3<u32>(32u)))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.c.x), vec3<i32>(0i, -1i, u_input.b))));
    var var_2 = global2.d.www;
    let var_3 = Struct_2(vec4<bool>(global2.a, all(vec2<bool>(global2.a, all(global2.c.a.xxy))), true, global2.b.a.x), global2.e.c, global2.e.b, all(global2.c.a.zw));
    let var_4 = Struct_4(Struct_1(vec2<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.b.a.x * global2.c.b.a.x)))), global2.d.xy, !all(vec3<bool>(all(global2.c.a.yx), true && var_3.a.x, false)), Struct_3(any(vec4<bool>(any(global2.c.a), global2.a, true | var_3.a.x, true)), Struct_2(vec4<bool>(global2.c.d, !var_3.a.x, all(var_3.a.yyz), all(vec2<bool>(global2.b.d, global2.e.d))), Struct_1(var_3.b.a), global2.b.c, true), global2.e, vec4<f32>(_wgslsmith_f_op_f32(select(var_3.c.a.x, global2.c.b.a.x, true)), var_3.c.a.x, global2.c.b.a.x, var_2.x), global2.e));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(~(~min(u_input.c.yxw, vec3<i32>(u_input.a.x, 2147483647i, u_input.c.x))), vec3<i32>(-28362i, 1i, _wgslsmith_clamp_i32(u_input.b, -46138i, var_1.c.x) | u_input.c.x)), ~u_input.c.x | firstLeadingBit(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_1.a.x), u_input.a))), 31979i);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = array<Struct_5, 20>();
    var var_0 = select(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(19947u, 25333u, u_input.d)), vec3<u32>(16024u << (0u % 32u), arg_2.x, arg_2.x ^ 14583u)) << (~select(~vec3<u32>(u_input.d, 4294967295u, 1u), ~vec3<u32>(359u, 0u, arg_2.x), global2.c.a.yzx) % vec3<u32>(32u)), select(countOneBits(vec3<u32>(50025u, ~0u, arg_2.x)), ~vec3<u32>(u_input.d, ~arg_2.x, ~u_input.d), !vec3<bool>(true & global2.e.a.x, global2.c.a.x || global2.a, true)), !select(vec3<bool>(true, any(global2.b.a), any(vec3<bool>(global2.e.a.x, global2.b.d, true))), !select(vec3<bool>(false, global2.e.d, global2.b.a.x), global2.b.a.wyx, vec3<bool>(global2.e.d, global2.a, global2.b.d)), !global2.e.a.wyz));
    global2 = Struct_3(false, global2.e, Struct_2(global2.b.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.e.c.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(621f, arg_1)))), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1295f, arg_1), vec2<f32>(global2.d.x, arg_1)))), true), vec4<f32>(_wgslsmith_f_op_f32(trunc(-917f)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-176f))))), 671f), Struct_2(select(select(global2.b.a, vec4<bool>(global2.a, global2.a, global2.b.d, false), select(vec4<bool>(global2.a, global2.a, false, global2.b.d), vec4<bool>(global2.e.a.x, global2.a, global2.b.d, global2.c.a.x), global2.e.a)), select(select(global2.b.a, vec4<bool>(global2.b.a.x, global2.b.d, true, true), vec4<bool>(false, global2.c.d, global2.c.a.x, true)), !vec4<bool>(global2.a, true, global2.a, true), !global2.b.d), true), Struct_1(global2.c.c.a), global2.e.b, all(!(!global2.b.a.www))));
    let var_1 = _wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(exp2(global2.c.c.a.x)));
    var_0 = ~firstTrailingBit(abs(abs(vec3<u32>(4294967295u, 524u, var_0.x) >> (vec3<u32>(0u, var_0.x, var_0.x) % vec3<u32>(32u)))));
    return ~firstLeadingBit(vec2<u32>(1u, reverseBits(arg_2.x)));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec2<bool>, 4>();
    var var_0 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(func_2(u_input.d, vec3<u32>(28860u, u_input.d, 4294967295u), global2.b.b, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d))), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(6209u, 0u)), vec2<u32>(u_input.d, u_input.d) & vec2<u32>(0u, 1u))), func_4(func_3(), global2.b.c.a.x, reverseBits(vec2<u32>(u_input.d, 15694u)) & ~vec2<u32>(u_input.d, u_input.d)), select(select(global2.c.a.yz, vec2<bool>(true, false), select(global2.c.a.yz, vec2<bool>(global2.b.a.x, true), global2.c.a.x)), vec2<bool>(false, global2.c.a.x), !select(vec2<bool>(global2.a, false), vec2<bool>(false, global2.b.a.x), vec2<bool>(global2.b.a.x, global2.b.d)))) << (~(~(~vec2<u32>(38493u, 35377u)) ^ ~min(vec2<u32>(u_input.d, 1u), vec2<u32>(62110u, 39329u))) % vec2<u32>(32u));
    var var_1 = Struct_2(select(global2.e.a, !select(vec4<bool>(global2.e.a.x, global2.c.d, global2.e.a.x, global2.a), select(vec4<bool>(true, true, global2.e.d, global2.e.a.x), vec4<bool>(global2.c.d, true, false, global2.c.d), vec4<bool>(global2.e.d, true, true, global2.a)), !vec4<bool>(global2.c.a.x, false, global2.a, global2.a)), ~abs(-2147483647i) > u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.e.b.a, global2.e.c.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.c.b.a, vec2<f32>(2076f, -180f)), _wgslsmith_f_op_vec2_f32(global2.d.wz * vec2<f32>(1568f, global2.c.b.a.x)), global2.e.d))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c.a.x)), -1533f)), global2.e.a.x);
    var_1 = global2.e;
    global0 = array<Struct_5, 20>();
    return StorageBuffer(firstTrailingBit(1u), _wgslsmith_f_op_f32(global2.e.c.a.x * var_1.c.a.x), global2.d.zxw, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_div_f32(-722f, var_1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) + -887f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.c.a.x, _wgslsmith_f_op_f32(abs(-1993f)))))), vec2<u32>(_wgslsmith_add_u32(~u_input.d, ~0u), _wgslsmith_div_u32(min(func_4(vec3<i32>(u_input.b, u_input.b, -6494i), -741f, vec2<u32>(0u, var_0.x)).x, ~13236u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.d), vec4<u32>(43125u, u_input.d, u_input.d, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.b.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.a.x) + _wgslsmith_f_op_f32(-global2.d.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c.b.a.x, global2.b.b.a.x), global2.d.zy, !global2.c.a.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-354f, global2.b.c.a.x), global2.c.c.a))))))));
    let x = u_input.a;
    s_output = func_1();
}

