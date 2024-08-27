struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(106f, 1608f, -359f), vec3<f32>(330f, 1816f, -797f), vec3<f32>(-515f, -396f, -303f), vec3<f32>(-329f, -174f, 409f), vec3<f32>(603f, -478f, 787f), vec3<f32>(315f, -1215f, 915f), vec3<f32>(-922f, -105f, 945f), vec3<f32>(319f, -504f, 110f), vec3<f32>(633f, -1360f, -1108f), vec3<f32>(1913f, -1896f, -699f), vec3<f32>(-777f, -2492f, -311f), vec3<f32>(181f, 855f, -594f), vec3<f32>(222f, 1600f, -1302f));

var<private> global3: array<Struct_4, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: f32) -> vec3<bool> {
    return arg_2;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), global1.x)), _wgslsmith_f_op_vec2_f32(-global1.yz), select(vec2<bool>(u_input.b.x >= -2147483647i, true), vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(false, true, false))))));
    let var_1 = Struct_3(select(var_0.a, select(!var_0.a, vec3<bool>(all(var_0.a.yx), !var_0.b.c.x, all(vec2<bool>(true, false))), select(func_3(var_0.b.c.x, global2[_wgslsmith_index_u32(30661u, 13u)], var_0.a, -126f), func_3(false, global1.zwz, var_0.a, 1000f), true)), !var_0.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1362f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b.b)))), select(var_0.b.c, vec2<bool>(select(var_0.b.c.x, false, var_0.a.x), true), select(vec2<bool>(true, var_0.a.x), vec2<bool>(true, var_0.b.c.x), func_3(var_0.a.x, global2[_wgslsmith_index_u32(u_input.d, 13u)], vec3<bool>(false, true, true), global1.x).yy))));
    var_0 = Struct_3(vec3<bool>(any(vec4<bool>(u_input.b.x != 1i, var_1.b.c.x, all(vec4<bool>(false, false, var_0.b.c.x, var_1.a.x)), true)), -681f > _wgslsmith_f_op_f32(var_1.b.b.x + _wgslsmith_f_op_f32(f32(-1f) * -181f)), !(!select(false, false, true))), var_0.b);
    let var_2 = var_0.b;
    var var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~42757u), _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(4294967295u, u_input.c.x)), abs(u_input.a.x | 48390u))), 13u)];
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    global2 = array<vec3<f32>, 13>();
    let var_0 = 1000f;
    let var_1 = vec2<u32>(~42621u, 4294967295u);
    var var_2 = Struct_4(var_0, -2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b));
    return vec2<bool>(!arg_0.c.x, (var_1.x >= 67650u) | arg_0.c.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = func_4(func_2());
    var var_2 = max(-(vec3<i32>(-1i) * -countOneBits(vec3<i32>(20784i, u_input.b.x, u_input.b.x))), reverseBits(vec3<i32>(_wgslsmith_div_i32(1i, 7916i), -(~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -29605i), -vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x)))));
    var var_3 = Struct_3(!select(vec3<bool>(true, true, false), !select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false)), all(!vec4<bool>(false, false, var_0.x, true))), Struct_1(arg_0.x, arg_0, func_4(func_2())));
    let var_4 = u_input.d;
    return Struct_1(1358f, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(func_3(var_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1111f, arg_3.x, arg_2))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(arg_1.x, 13u)]))), select(select(var_3.a, vec3<bool>(var_0.x, var_0.x, var_0.x), var_3.a), func_3(var_0.x, global1.xzx, vec3<bool>(false, false, var_1.x), -636f), var_3.a), global1.x).x, !(arg_3.x <= _wgslsmith_f_op_f32(-var_3.b.a))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = global1.x;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-814f * arg_1.b.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * arg_1.b.a) - _wgslsmith_f_op_f32(f32(-1f) * -1093f)) + _wgslsmith_f_op_f32(func_2().b.x - _wgslsmith_f_op_f32(1005f + arg_1.b.b.x))), func_2().a));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + global1.x)))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.b.x)));
    var var_1 = abs(-25690i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(396f, global1.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, arg_1.b.a))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.a), arg_1.b.a))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)), arg_1.b.b, arg_1.a.yz);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_4 {
    global2 = array<vec3<f32>, 13>();
    let var_0 = Struct_3(vec3<bool>((abs(23688u) < min(u_input.e.x, arg_0)) & (!arg_2.c.x && arg_1.e.c.x), arg_1.b.c.x, true), arg_1.e);
    global3 = array<Struct_4, 13>();
    global3 = array<Struct_4, 13>();
    let var_1 = arg_2;
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.e.x, select(~(~1u), arg_0, var_1.c.x)), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.d), u_input.e.x), 4294967295u), Struct_2(Struct_1(143f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global1.ww, global1.wx))), vec2<bool>(true, all(vec3<bool>(true, true, true)))), func_5(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-52159i, u_input.b.x, u_input.b.x, 2170i), vec4<i32>(-35104i, u_input.b.x, u_input.b.x, u_input.b.x))), Struct_3(vec3<bool>(true, true, true), func_1(global1.zx, u_input.a.wwz, 938f, vec4<f32>(-830f, global1.x, global1.x, 1280f))), ~u_input.b.x), Struct_1(631f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))), !select(vec2<bool>(true, true), vec2<bool>(true, false), false)), _wgslsmith_mod_i32(u_input.b.x >> (~66924u % 32u), ~select(u_input.b.x, -11325i, true)), Struct_1(global1.x, vec2<f32>(global1.x, global1.x), !func_1(global1.zz, vec3<u32>(27645u, 0u, u_input.e.x), global1.x, vec4<f32>(-1619f, -226f, -179f, global1.x)).c)), func_1(vec2<f32>(func_5(i32(-1i) * -35677i, Struct_3(vec3<bool>(false, false, true), Struct_1(1528f, global1.zw, vec2<bool>(true, false))), ~(-13460i)).b.x, _wgslsmith_div_f32(global1.x, 985f)), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, 30332u), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x))), -263f, vec4<f32>(global1.x, _wgslsmith_div_f32(func_5(u_input.b.x, Struct_3(vec3<bool>(true, true, true), Struct_1(global1.x, global1.wz, vec2<bool>(true, true))), u_input.b.x).b.x, -517f), global1.x, 921f)));
    global3 = array<Struct_4, 13>();
    var var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.zw))), vec2<bool>(false, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(sign(var_0.a))) + _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_div_f32(global1.x, 271f), true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - vec2<f32>(var_0.a, -1041f)), global1.xx))), !func_5(countOneBits(u_input.b.x), Struct_3(vec3<bool>(false, true, false), Struct_1(1000f, vec2<f32>(global1.x, var_0.a), vec2<bool>(false, true))), reverseBits(37293i)).c), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(round(global1.wx)), func_3(any(vec4<bool>(true, true, true, true)), global1.ywx, select(func_3(false, vec3<f32>(global1.x, 1157f, var_0.a), vec3<bool>(false, true, true), -184f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -1823f)).zx), var_0.b ^ -((u_input.b.x >> (u_input.e.x % 32u)) & 2147483647i), Struct_1(_wgslsmith_f_op_f32(-global1.x), func_2().b, func_1(global1.wz, u_input.a.zyw, _wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-419f, var_0.a, 905f, var_0.a), vec4<f32>(1400f, -649f, global1.x, 1330f))))).c));
    global3 = array<Struct_4, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(13888u);
}

