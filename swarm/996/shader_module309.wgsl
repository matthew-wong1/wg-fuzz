struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-780f, 1202f), false, vec4<bool>(false, true, true, false), true);

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = true;
    global0 = Struct_1(global0.a, global2.x, vec4<bool>(any(global0.c), true, global2.x, false), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-725f, 102f)))) * _wgslsmith_f_op_vec2_f32(abs(global0.a)))), global2.x, !select(!(!global0.c), global0.c, true), 15032u >= u_input.b.x);
    var var_1 = ~u_input.c.ww << (u_input.c.xy % vec2<u32>(32u));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, 15135u | var_1.x), _wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.e.xzy, u_input.e.xzz), 36542u)) < select(u_input.e.x, ~1047u, true), !global0.c, global0.b);
    return _wgslsmith_f_op_f32(select(724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), global2.x));
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * vec2<f32>(2100f, arg_0.x)) - vec2<f32>(2149f, 1170f)), global0.a, !(!global2.zz))), _wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(-arg_0.xx))), !global2.x)), ~0u < u_input.b.x, vec4<bool>(any(global0.c), global2.x & global2.x, !all(!global2.yw), global2.x), -select(u_input.a.x, 1i, !global2.x) > (~max(-1i, u_input.a.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e.x), vec2<u32>(4294967295u, 9807u)) % 32u)));
    let var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 23u)];
    global1 = array<Struct_1, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 1843f, true))))), (arg_0.x >= _wgslsmith_f_op_f32(-var_0.a.x)) & false, select(!global0.c, vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(global2.wyx), (global0.d != false) || false), global0.c), global2.x);
    global0 = var_1;
    return vec2<f32>(_wgslsmith_f_op_f32(func_3()), var_0.a.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, arg_2.a.x) + vec3<f32>(arg_2.a.x, 1105f, global0.a.x)))))), any(global0.c), !select(!global0.c, select(!arg_2.c, select(vec4<bool>(true, global0.b, global0.d, true), vec4<bool>(false, arg_2.d, true, false), false), !global0.d), _wgslsmith_mod_i32(-1i, 76483i) != -u_input.a.x), all(global0.c));
    let var_0 = arg_2;
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), -1730f), !(false && !any(global0.c.zzy)), vec4<bool>(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1256f + -1000f) + _wgslsmith_f_op_f32(trunc(868f))), all(select(select(arg_2.c.xxy, arg_2.c.zyy, var_0.b), global2.zyz, arg_2.c.x)), select(global2.x, global0.b, global2.x)), arg_2.b);
    global1 = array<Struct_1, 23>();
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x) + 473f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(670f - 500f), _wgslsmith_f_op_f32(f32(-1f) * -683f)))), !(!global0.c.x) && true, global0.c, !global0.c.x);
    return -u_input.d.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(-791f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-503f, _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(-global0.a.x))), true, vec4<bool>(true, arg_2.x, true, arg_2.x), !all(vec2<bool>(arg_2.x, -263f >= global0.a.x)));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1886f - arg_3.a.x))), _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(arg_3.a.x, _wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(round(-683f))), _wgslsmith_f_op_f32(959f - arg_1.a.x)))).x, global0.a.x);
    var var_2 = 0u;
    let var_3 = Struct_1(vec2<f32>(-610f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_3.a.x)), arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) - global0.a.x))), any(select(select(select(global0.c.ww, vec2<bool>(arg_1.c.x, false), arg_3.b), !arg_3.c.wy, vec2<bool>(false, true)), select(select(arg_1.c.xy, vec2<bool>(arg_2.x, arg_2.x), var_0.c.yx), vec2<bool>(global2.x, false), true), select(!global2.zw, select(vec2<bool>(false, arg_3.c.x), global2.yy, true), select(arg_2.xz, arg_1.c.wz, arg_3.b)))), !(!vec4<bool>(true, all(vec4<bool>(arg_2.x, arg_2.x, true, var_0.b)), true, true)), true);
    var var_4 = _wgslsmith_f_op_f32(select(global0.a.x, -278f, !all(var_3.c.yz)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, ~0u), 23u)];
    var var_0 = global1[_wgslsmith_index_u32(~u_input.b.x, 23u)];
    let var_1 = 13705u;
    global0 = func_4(vec2<i32>(~u_input.d.x | func_1(~1u, _wgslsmith_mult_u32(91944u, 27491u), global1[_wgslsmith_index_u32(countOneBits(4294967295u), 23u)]), abs(-48363i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), global0.b, select(vec4<bool>(any(vec4<bool>(false, global0.d, global0.b, true)), any(var_0.c.wzx), all(vec3<bool>(global2.x, global0.d, var_0.d)), global0.d), global0.c, true), global0.d), vec4<bool>(!all(select(vec2<bool>(true, true), global2.xz, vec2<bool>(var_0.d, false))), !global0.b, false, global2.x), global1[_wgslsmith_index_u32(0u, 23u)]);
    global2 = !(!(!select(vec4<bool>(true, true, global2.x, var_0.c.x), !var_0.c, true)));
    let var_2 = global1[_wgslsmith_index_u32(u_input.e.x, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(u_input.e.x, var_1, 19311u >> (var_1 % 32u)), 1u)), u_input.d.x, global0.a.x);
}

