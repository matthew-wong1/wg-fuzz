struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-23917i, vec2<f32>(287f, -264f)));

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    let var_0 = 21130i;
    global1 = array<Struct_1, 31>();
    let var_1 = arg_0;
    global0 = var_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)) + global0.a.b.x);
    return _wgslsmith_f_op_f32(trunc(-842f));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec2<f32> {
    let var_0 = vec4<i32>(70839i, ~global0.a.a, i32(-1i) * -select(firstLeadingBit(global0.a.a), 46992i, !arg_1.b.x), -14586i);
    let var_1 = Struct_2(arg_1.c);
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    let var_2 = max(arg_1.a.x, _wgslsmith_add_u32(u_input.b.x, u_input.c.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.a.b))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global0 = Struct_2(Struct_1(1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c.b.x, global0.a.b.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.b.x, 663f), _wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(arg_0.c.b.x, -771f, arg_0.c.b.x), arg_0, 0i, -397f)))))));
    let var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = -firstLeadingBit(var_1.c.a);
    let var_3 = arg_0.c.b;
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = u_input.c;
    var_0 = u_input.c;
    let var_1 = select(vec4<bool>(true, true, !all(vec3<bool>(true, true, true)), any(vec3<bool>(true, u_input.c.x == 0u, select(false, true, false)))), !vec4<bool>(!all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, false, false)), false, false), u_input.c.x <= (u_input.c.x & (16755u ^ select(4650u, var_0.x, true))));
    let var_2 = var_1.wz;
    var var_3 = -min(_wgslsmith_mult_i32(u_input.d, func_2(Struct_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 41436u), vec4<bool>(true, var_1.x, false, var_2.x), global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), 30460i).a), abs(i32(-1i) * -5484i));
    return _wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_add_u32(~var_0.x, 4294967295u)), ~u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 31u)]);
    var var_0 = _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(-1210f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(827f)))))));
    let var_1 = 31105u;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.a, vec2<f32>(global0.a.b.x, global0.a.b.x))), var_1 & _wgslsmith_mult_u32(84850u << (u_input.c.x % 32u), var_1 >> (var_1 % 32u)), global0.a.b)));
    var_0 = _wgslsmith_f_op_f32(-global0.a.b.x);
    let var_2 = Struct_2(global0.a);
    var var_3 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-var_2.a.a, ~global0.a.a, var_3.a.a >> (u_input.b.x % 32u)) >> ((vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, var_1, 13407u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>((var_2.a.a >> (30913u % 32u)) & var_3.a.a, _wgslsmith_mult_i32(41340i, var_3.a.a) | (global0.a.a >> (var_1 % 32u)), 2147483647i), select(true | any(vec2<bool>(false, false)), false, true)), vec3<u32>(1u, func_4(func_2(Struct_3(vec4<u32>(var_1, 0u, var_1, var_1), vec4<bool>(true, true, false, false), Struct_1(0i, vec2<f32>(219f, global0.a.b.x))), var_2.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(378f, 681f), 237f))), select(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.c), u_input.c.x), ~15947u, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, _wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(var_2.a.b.x, 604f, global0.a.b.x), Struct_3(vec4<u32>(44037u, var_1, 0u, 0u), vec4<bool>(false, true, false, true), var_3.a), -48145i, -1000f)).x, _wgslsmith_f_op_f32(ceil(1857f)), _wgslsmith_f_op_f32(global0.a.b.x + 1171f)))), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(1u, u_input.b.x) << (_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) % 32u)) << (select(~u_input.c.x, 22843u, true) % 32u));
}

