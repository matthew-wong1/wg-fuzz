struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 197f, -678f, -1468f);

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(false, false, false)), Struct_1(false, vec3<bool>(false, false, false)), Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(true, true, true)));

var<private> global2: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, u_input.d.x) & vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, -56169i, u_input.d.x)), vec4<i32>(u_input.d.x, 0i, 23485i, 47050i) << (~vec4<u32>(39371u, arg_0.a, arg_0.a, 0u) % vec4<u32>(32u)))), ~(~u_input.d.x << (abs(_wgslsmith_div_u32(0u, u_input.e.x)) % 32u)));
    global1 = array<Struct_1, 7>();
    let var_2 = Struct_2(global0.wxx, Struct_1(!all(global2[_wgslsmith_index_u32(abs(u_input.c.x), 2u)]), vec3<bool>(any(vec3<bool>(false, true, true)), global0.x > _wgslsmith_f_op_f32(trunc(global0.x)), true)));
    var var_3 = u_input.d.x ^ (i32(-1i) * -25784i);
    return u_input.d.zz;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, global0.x))))), global0.x), Struct_3(max(u_input.b, u_input.b)), u_input.d.x, vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(293f, global0.x)) + _wgslsmith_f_op_f32(216f - global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-257f))))));
    var var_1 = global1[_wgslsmith_index_u32(~1u, 7u)];
    global0 = vec4<f32>(var_0.a.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)));
    let var_2 = select(!select(select(vec4<bool>(var_1.b.x, var_1.b.x, false, false), !vec4<bool>(var_1.a, var_1.b.x, var_1.a, false), var_1.b.x), vec4<bool>(var_1.b.x, !var_1.b.x, var_1.a, any(vec4<bool>(var_1.a, var_1.b.x, false, var_1.a))), !select(vec4<bool>(var_1.a, false, var_1.b.x, false), vec4<bool>(var_1.b.x, var_1.a, var_1.a, false), vec4<bool>(false, true, var_1.a, var_1.a))), !(!(!(!vec4<bool>(false, var_1.a, var_1.b.x, false)))), vec4<bool>(all(!select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, true), false)), var_1.a, all(var_1.b), true));
    let var_3 = !var_2.x;
    return Struct_5(vec3<i32>(_wgslsmith_dot_vec2_i32(func_3(var_0.b), max(u_input.d.yx, reverseBits(u_input.d.zz))), ~(-(~u_input.d.x)), 16989i), var_0, u_input.d.x, vec3<bool>(!all(vec4<bool>(var_2.x, var_2.x, true, var_3)), false, all(vec3<bool>(!var_1.a, u_input.e.x >= var_0.b.a, var_1.b.x))), 345f);
}

fn func_1() -> Struct_3 {
    var var_0 = global0.x < -215f;
    global1 = array<Struct_1, 7>();
    global2 = array<vec2<bool>, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.zxz))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 699f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xxz)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, -1205f)))) - global0.yxx));
    var var_2 = func_2();
    return var_2.b.b;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> Struct_4 {
    let var_0 = u_input.b;
    var var_1 = ~(~(~u_input.c.x)) < func_1().a;
    global1 = array<Struct_1, 7>();
    var_1 = all(select(vec4<bool>(u_input.d.x == (-1i >> (u_input.c.x % 32u)), true, true != any(vec3<bool>(true, true, false)), true), vec4<bool>(true, _wgslsmith_clamp_i32(-18844i, 0i, 2147483647i) < -26575i, true, !func_2().d.x), false));
    var_1 = arg_2.x >= _wgslsmith_f_op_f32(abs(arg_3));
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2[_wgslsmith_index_u32(~1u, 2u)]);
    global1 = array<Struct_1, 7>();
    var var_1 = -2147483647i;
    var var_2 = func_4(func_1(), u_input.b & ~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, 1u), u_input.b ^ u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), global0.x, global0.x)), func_2().b.a.x);
    global2 = array<vec2<bool>, 2>();
    var_1 = select(u_input.d.x, firstLeadingBit(u_input.d.x), _wgslsmith_f_op_f32(min(424f, _wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(select(715f, 936f, var_0.x))))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x))));
    let var_3 = -u_input.d.xx;
    var var_4 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, 0i, ~select(max(vec2<u32>(u_input.c.x, var_2.b.a), vec2<u32>(1u, var_2.b.a)), u_input.e.yy | vec2<u32>(var_2.b.a, u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.b.a, 83714u), 2u)]) ^ u_input.c);
}

