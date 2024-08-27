struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: bool;

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 47380u), true, vec2<bool>(false, true));

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(51030u, 67452u, 10630u), vec3<u32>(0u, 78859u, 46915u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 238u), vec3<u32>(72434u, 51361u, 42550u), vec3<u32>(36721u, 1u, 1u), vec3<u32>(12832u, 12398u, 0u), vec3<u32>(4294967295u, 75355u, 0u), vec3<u32>(1u, 0u, 6126u), vec3<u32>(4294967295u, 3925u, 44381u), vec3<u32>(1u, 93154u, 23082u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(11065u, 17149u, 1u), vec3<u32>(10708u, 4294967295u, 116180u), vec3<u32>(11678u, 4294967295u, 16726u), vec3<u32>(4294967295u, 4294967295u, 56421u), vec3<u32>(0u, 1u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = -(~(-_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), -vec4<i32>(-2147483647i, -4927i, u_input.b.x, -44112i))));
    global2 = arg_1;
    let var_1 = select(false, false, true) | false;
    let var_2 = arg_1;
    var var_3 = Struct_1(~vec2<u32>(countOneBits(77452u), ~arg_1.a.x) << (var_2.a % vec2<u32>(32u)), true, !(!var_2.c));
    return !var_2.c;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = arg_0.a.x;
    let var_1 = arg_0;
    global3 = Struct_1(vec2<u32>(arg_0.a.x, ~(~global3.a.x)), any(select(select(!vec4<bool>(true, global2.c.x, false, arg_0.c.x), vec4<bool>(true, var_1.c.x, true, false), !vec4<bool>(false, global2.c.x, false, global2.b)), select(vec4<bool>(global3.c.x, false, false, global3.c.x), vec4<bool>(false, true, global2.c.x, global2.c.x), false), false & !global2.c.x)), select(select(func_3(_wgslsmith_f_op_f32(sign(-920f)), arg_0), global3.c, vec2<bool>(true, global2.b)), arg_0.c, select(global2.c, arg_0.c, any(vec4<bool>(arg_0.b, true, global2.b, var_1.b)))));
    global0 = any(var_1.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, -1000f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(ceil(1985f))), vec2<f32>(_wgslsmith_f_op_f32(round(1250f)), -389f), select(vec2<bool>(true, global3.b), global2.c, select(arg_0.c, vec2<bool>(var_1.c.x, global3.b), arg_0.c.x))))));
    return ~(~(~vec4<u32>(var_1.a.x, _wgslsmith_mult_u32(1u, 7075u), _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(47150u, 18u)]), abs(113609u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, (global3.a.x <= 6917u) || select(global2.c.x, false, false), !global2.b), vec3<bool>(false == !arg_0.b, true, false), select(select(vec3<bool>(false, arg_1.c.x, true), !vec3<bool>(true, global2.c.x, false), all(global3.c)), select(select(vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_0.b, arg_1.b, global2.b), false), !vec3<bool>(false, arg_0.c.x, global3.c.x), func_3(1000f, arg_1).x), vec3<bool>(arg_1.c.x, all(vec4<bool>(false, global3.c.x, arg_2.b, global2.b)), any(arg_2.c))));
    global3 = arg_1;
    let var_1 = min(reverseBits(~(u_input.b.x >> (_wgslsmith_div_u32(4377u, 108720u) % 32u))), -25064i);
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    global4 = array<vec3<u32>, 18>();
    return Struct_1(var_2.a, ~(~func_2(Struct_1(arg_0.a, var_2.b, arg_0.c)).x) != 4294967295u, vec2<bool>(!(all(vec3<bool>(arg_2.b, false, false)) | (40371u != global2.a.x)), var_2.c.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = true;
    global1 = array<Struct_1, 2>();
    global3 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    global3 = func_4(global1[_wgslsmith_index_u32(abs(0u), 2u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(80771u, global2.a.x, 67146u, u_input.c), vec4<u32>(48845u, u_input.a, 3248u, u_input.c)), global2.a.x), _wgslsmith_mod_vec4_u32(func_2(Struct_1(vec2<u32>(global2.a.x, 0u), global3.c.x, vec2<bool>(true, global2.c.x))), vec4<u32>(68819u, 4294967295u, u_input.c, u_input.c))), 4294967295u), 2u)], global1[_wgslsmith_index_u32(0u, 2u)]);
    let var_0 = global3.a.x;
    return Struct_1(global2.a, all(!vec4<bool>(all(vec4<bool>(true, true, true, true)), global3.b, 33560u <= global3.a.x, false)), global2.c);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<i32> {
    let var_0 = func_4(func_1(arg_2.b), arg_2, arg_2);
    let var_1 = func_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -965f) * -1132f)), func_1(func_3(171f, arg_2).x)).x);
    let var_2 = vec2<bool>(var_0.b, !global3.c.x);
    var var_3 = !vec4<bool>(var_0.b, var_0.c.x, true, !var_0.b);
    let var_4 = func_2(global1[_wgslsmith_index_u32(var_0.a.x, 2u)]).xx;
    return reverseBits(~(-(vec3<i32>(-1i, u_input.b.x, u_input.b.x) | vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))) | -(select(vec3<i32>(u_input.b.x, 28147i, u_input.b.x), vec3<i32>(-19190i, 6998i, u_input.b.x), var_3.wyw) >> ((vec3<u32>(0u, 1u, var_0.a.x) & vec3<u32>(97706u, 0u, 2461u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_u32(global2.a.x, ~(abs(u_input.a) & ~27621u)), global3.a, func_1(!global2.c.x), vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, global2.a.x, 4294967295u), vec4<u32>(0u, 100254u, global2.a.x, global3.a.x)), u_input.c, ~(global2.a.x << (5485u % 32u))), global2.a.x));
    var var_1 = u_input.b.x;
    var var_2 = u_input.a == u_input.c;
    global3 = Struct_1(~(global3.a | vec2<u32>(4294967295u << (global3.a.x % 32u), abs(1u))), !(!func_1(true).b), vec2<bool>(!select(any(global2.c), global2.b, u_input.a < 1u), (_wgslsmith_f_op_f32(sign(-345f)) < -1588f) && (true | func_1(true).b)));
    var_2 = (_wgslsmith_div_u32(abs(_wgslsmith_div_u32(71813u, global3.a.x)), _wgslsmith_mod_u32(global3.a.x | 28920u, min(global2.a.x, u_input.a))) << (select(62778u, reverseBits(~u_input.c), global3.b) % 32u)) < _wgslsmith_mod_u32(0u, ~global3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

