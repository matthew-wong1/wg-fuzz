struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-251f, _wgslsmith_f_op_f32(-1368f - _wgslsmith_f_op_f32(max(-669f, 1449f))))) - -1197f) - -528f);
    let var_1 = Struct_5(global1.a, all(select(vec4<bool>(global1.c.x != global1.c.x, true, global1.b, true), !vec4<bool>(false, global1.b, true, global1.b), !select(vec4<bool>(global1.c.x, true, global1.b, global1.c.x), vec4<bool>(global1.b, global1.c.x, true, global1.c.x), vec4<bool>(global1.c.x, true, global1.c.x, true)))), vec3<bool>(any(global1.c.yx), false, true));
    var_0 = -272f;
    global1 = Struct_5(var_1.a, all(select(vec3<bool>(global1.b, true, all(vec4<bool>(false, global1.c.x, false, global1.c.x))), vec3<bool>(true, true, true), select(select(var_1.c, global1.c, vec3<bool>(global1.c.x, global1.b, true)), global1.c, vec3<bool>(true, true, true)))), global1.c);
    var_0 = _wgslsmith_f_op_f32(1125f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1158f)))) + _wgslsmith_f_op_f32(f32(-1f) * -972f)));
    return var_1.a.b;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_2, 1>();
    var var_1 = Struct_5(global1.a, !global1.b, vec3<bool>(!(false & global1.c.x), global1.b, true));
    var var_2 = -186f;
    global1 = Struct_5(var_1.a, var_1.c.x, select(select(select(select(var_1.c, vec3<bool>(true, false, global1.b), global1.c), vec3<bool>(false, true, global1.c.x), vec3<bool>(false, true, var_1.b)), !(!vec3<bool>(true, false, global1.b)), var_1.c), select(vec3<bool>(!var_0, var_0 && var_1.c.x, var_0 != global1.c.x), select(!vec3<bool>(false, var_0, var_1.c.x), var_1.c, vec3<bool>(var_1.c.x, true, var_0)), select(vec3<bool>(global1.c.x, global1.b, var_1.c.x), !var_1.c, !vec3<bool>(var_0, var_0, var_1.c.x))), !(!(!vec3<bool>(var_1.b, true, var_1.b)))));
    return Struct_1(vec2<bool>(_wgslsmith_sub_u32(u_input.c, 1u) == var_1.a.d.x, var_0), global1.c, vec2<i32>(-(~global1.a.b), _wgslsmith_dot_vec4_i32(global1.a.a, vec4<i32>(var_1.a.c.x, u_input.b, firstLeadingBit(-2147483647i), -54724i))), !all(global1.c.yx), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a.a.zy, vec2<i32>(u_input.e, func_3())), -81012i));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    return _wgslsmith_mod_i32(global1.a.c.x, ~(~(-3010i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.c.yy, global1.c, _wgslsmith_add_vec2_i32(vec2<i32>(global1.a.a.x ^ u_input.b, 2147483647i), global1.a.a.yw), u_input.c > ~(~100091u), select(global1.a.a.yw, global1.a.a.yx, select(vec2<bool>(!global1.b, any(vec4<bool>(global1.b, global1.c.x, global1.b, true))), !select(global1.c.yx, global1.c.zz, global1.c.yx), global1.c.x)));
    let var_1 = -(~var_0.c.x);
    var var_2 = 56293u;
    var_0 = Struct_1(select(!vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, var_0.a.x), global1.c.zy), !(!(!global1.c)), min(min(var_0.e, ~(-vec2<i32>(-32518i, -37084i))), vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a.a.xy ^ var_0.c, abs(vec2<i32>(-2147483647i, var_0.c.x))), u_input.d)), global1.c.x, vec2<i32>(func_1(), var_1));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(47750u & _wgslsmith_dot_vec3_u32(abs(global1.a.d), ~global1.a.d), ~0u), ~select(_wgslsmith_dot_vec2_u32(global1.a.d.xy, global1.a.d.yz), _wgslsmith_mult_u32(4294967295u, ~u_input.c), !func_2().b.x)), 1u)];
    global0 = array<Struct_2, 1>();
    var_0 = Struct_1(vec2<bool>(!var_0.a.x, true || all(var_3.b.b)), !func_2().b, vec2<i32>(-1i) * -(~global1.a.c.xx), all(global1.c.zy), _wgslsmith_mult_vec2_i32(select(var_3.c.xy, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, global1.a.b), global1.a.a.wz), vec2<i32>(var_1, 20821i)), !vec2<bool>(var_0.a.x, true)), -vec2<i32>(12236i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(1304f * -687f)))), func_3(), select(~vec4<u32>(4294967295u, global1.a.d.x, u_input.c, 0u) | vec4<u32>(u_input.c ^ 4294967295u, _wgslsmith_mult_u32(13099u, u_input.c), 65125u, abs(u_input.a.x)), vec4<u32>(abs(firstLeadingBit(global1.a.d.x)), u_input.a.x, ~1u, ~(1u | global1.a.d.x)), !select(select(global1.b, true, var_3.b.d), global1.c.x, var_0.b.x)));
}

