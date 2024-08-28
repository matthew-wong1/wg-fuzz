struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> u32 {
    global3 = array<Struct_2, 24>();
    let var_0 = select(select(select(vec4<bool>(true, global2.a.b.x == -1i, arg_0.b, arg_0.a.c.x), !select(vec4<bool>(global2.c.c.x, true, global2.a.c.x, true), vec4<bool>(arg_0.a.c.x, global2.a.c.x, arg_0.a.c.x, arg_0.b), vec4<bool>(false, arg_0.a.c.x, global2.a.c.x, true)), select(vec4<bool>(true, false, global2.b, arg_0.b), vec4<bool>(false, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), !vec4<bool>(true, global2.c.c.x, false, true))), !(!vec4<bool>(global2.b, arg_0.a.c.x, arg_0.c.c.x, false)), !(all(vec4<bool>(arg_0.c.c.x, arg_0.b, arg_0.a.c.x, true)) || global2.a.c.x)), vec4<bool>(all(!global2.a.c), true, !(_wgslsmith_f_op_f32(sign(-604f)) < _wgslsmith_f_op_f32(ceil(-1000f))), false), select(!(!(!vec4<bool>(true, global2.a.c.x, true, false))), !vec4<bool>(false && global2.a.c.x, global2.b, select(arg_0.b, global2.c.c.x, true), !arg_0.b), select(vec4<bool>(all(vec2<bool>(global2.b, global2.c.c.x)), true, global2.b, true), !vec4<bool>(false, true, arg_0.b, false), true)));
    let var_1 = global3[_wgslsmith_index_u32(69044u, 24u)];
    var var_2 = u_input.d.xx;
    let var_3 = 44225i;
    return firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(u_input.d.x, arg_1.x, 2581u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, 22220u), u_input.d)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(82813u, arg_0.a.a, u_input.d.x, var_1.a.a), vec4<u32>(30926u, 14176u, arg_1.x, 36687u))));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a;
    global0 = array<Struct_1, 29>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(~(~global2.a.a), 36853u), -global2.c.b, select(global2.c.c, select(!vec2<bool>(global2.b, global2.c.c.x), global2.a.c, select(vec2<bool>(true, false), global2.c.c, vec2<bool>(global2.c.c.x, global2.c.c.x))), true)), !select(true, func_3(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], vec2<u32>(u_input.d.x, global2.a.a)) > 88521u, true), global0[_wgslsmith_index_u32(u_input.d.x, 29u)]);
    var var_2 = global3[_wgslsmith_index_u32(abs(select(_wgslsmith_mult_u32(u_input.d.x, 871u), u_input.d.x, true)), 24u)];
    var var_3 = var_1.a;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-arg_0.a.b.x, -86061i), ~(-(arg_0.a.b.x << (u_input.d.x % 32u)))) | -2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), 232f)))));
}

fn func_5(arg_0: f32) -> i32 {
    global1 = global2.a.a;
    global2 = global3[_wgslsmith_index_u32(52426u, 24u)];
    var var_0 = global0[_wgslsmith_index_u32(8900u, 29u)];
    let var_1 = global3[_wgslsmith_index_u32(~42189u, 24u)];
    var_0 = func_2().c;
    return var_0.b.x;
}

fn func_1() -> bool {
    let var_0 = select(u_input.d.xz, vec2<u32>(~50468u, ~1u), !vec2<bool>(!(27850u != global2.a.a), false));
    global3 = array<Struct_2, 24>();
    var var_1 = global2.a;
    var var_2 = vec2<i32>(i32(-1i) * -_wgslsmith_mult_i32(-38965i, -6883i), func_5(_wgslsmith_f_op_f32(func_4(func_2(), vec3<bool>(global2.c.c.x & var_1.c.x, true, !global2.b)))));
    global3 = array<Struct_2, 24>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (max(-_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), global2.c.b.x) | abs(u_input.c)) == u_input.b.x;
    global2 = Struct_2(global2.a, func_1(), global0[_wgslsmith_index_u32(~2218u, 29u)]);
    var var_1 = Struct_2(func_2().c, global2.c.c.x, func_2().c);
    global2 = global3[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.c.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(40735u, global2.a.a, global2.c.a, var_1.a.a), vec4<u32>(u_input.d.x, global2.a.a, u_input.d.x, 67655u))), global2.a.b, select(!var_1.a.c, vec2<bool>(true, true), !global2.c.c.x)), any(vec3<bool>(false, false, false)) || true, Struct_1(min(32013u, 41601u) << (var_1.a.a % 32u), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.a.b, global2.c.b), var_1.c.b), vec2<bool>(var_1.c.c.x && global2.b, true && var_1.c.c.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global2.c.a, var_1.a.a, 0u), vec4<u32>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.c.a)), 1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.a, 4294967295u, 1u, var_1.c.a) >> (vec4<u32>(4294967295u, 0u, 44670u, global2.c.a) % vec4<u32>(32u)), vec4<u32>(44589u, global2.a.a, global2.a.a, var_1.a.a) & vec4<u32>(27879u, 4294967295u, 0u, global2.a.a)), _wgslsmith_dot_vec3_u32(countOneBits(u_input.d), ~u_input.d)))), 24u)];
    let var_2 = func_2();
    var_0 = true;
    var var_3 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1589f, 1371f, 250f))))))));
}

