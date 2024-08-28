struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 1u, 4294967295u, 68626u), vec4<u32>(3587u, 35603u, 1u, 102412u), vec4<u32>(0u, 0u, 60928u, 25851u), vec4<u32>(16737u, 0u, 1u, 68522u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1u, 0u, 98790u, 51018u), vec4<u32>(73873u, 0u, 0u, 1u), vec4<u32>(0u, 4294967295u, 51826u, 4294967295u), vec4<u32>(1u, 33440u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 1603u), vec4<u32>(1u, 5880u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 26603u, 45736u), vec4<u32>(1u, 1u, 11655u, 56652u), vec4<u32>(0u, 117429u, 6330u, 0u), vec4<u32>(22406u, 1u, 58194u, 42869u), vec4<u32>(0u, 71289u, 0u, 4294967295u), vec4<u32>(39911u, 4294967295u, 16378u, 17671u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = 1u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~arg_0.c.b, ~arg_0.c.b), 0u);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(361f - _wgslsmith_f_op_f32(arg_0.c.e * _wgslsmith_div_f32(-793f, 840f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.c.c)))) - 523f)))));
    let var_2 = firstLeadingBit(u_input.c);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a, 1u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-672f + var_1) + arg_0.c.c), arg_0.c.c), vec3<f32>(var_1, _wgslsmith_div_f32(arg_0.c.e, -1082f), _wgslsmith_f_op_f32(var_1 + 758f)));
    let var_4 = var_3.x;
    return arg_0.c.b.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = arg_0;
    return Struct_1(all(!select(!vec3<bool>(true, global2.x, false), !vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, false))), vec3<u32>(_wgslsmith_add_u32(~u_input.a, abs(4294967295u)) >> (_wgslsmith_mod_u32(func_3(Struct_2(arg_0, u_input.c.wyw, Struct_1(false, vec3<u32>(u_input.a, u_input.a, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 1u)], -2147483647i, global0[_wgslsmith_index_u32(14211u, 1u)]), vec2<i32>(var_0, u_input.c.x))), u_input.a) % 32u), 1u, ~(~(~u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4580u) & vec2<u32>(u_input.a, 75498u), vec2<u32>(u_input.a, 1u))) ^ min(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 41984u, u_input.a), vec3<u32>(1u, 1u, 23491u)))), 1u)], u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 1u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u << (u_input.a % 32u), 1u)]))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = !all(select(vec2<bool>(true, arg_0.c.a), vec2<bool>(any(vec2<bool>(arg_0.c.a, arg_0.c.a)), all(vec4<bool>(true, global2.x, arg_0.c.a, false))), select(vec2<bool>(arg_0.c.a, true), !vec2<bool>(global2.x, arg_0.c.a), !vec2<bool>(arg_0.c.a, arg_0.c.a))));
    var var_1 = arg_0;
    let var_2 = !select(!vec3<bool>(!var_1.c.a, true, any(vec2<bool>(var_1.c.a, true))), select(select(!vec3<bool>(true, global2.x, false), vec3<bool>(false, global2.x, true), -211f != arg_0.c.c), select(!vec3<bool>(false, var_1.c.a, true), !vec3<bool>(false, var_1.c.a, true), !vec3<bool>(true, var_1.c.a, false)), any(select(vec4<bool>(var_1.c.a, false, true, global2.x), vec4<bool>(var_1.c.a, arg_0.c.a, false, true), var_1.c.a))), vec3<bool>(false, !var_1.c.a != !var_1.c.a, _wgslsmith_f_op_f32(-168f * var_1.c.c) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c.b.x, 1u)])));
    let var_3 = func_2(_wgslsmith_add_i32(1i, max(var_1.c.d, u_input.c.x)));
    var var_4 = arg_0.c.b.x;
    return _wgslsmith_f_op_f32(var_1.c.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.e), _wgslsmith_f_op_f32(-var_3.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c.x, vec3<i32>(0i, u_input.b.x, u_input.b.x), Struct_1(global2.x, vec3<u32>(27283u, 45164u, 0u), global0[_wgslsmith_index_u32(46986u, 1u)], 2147483647i, global0[_wgslsmith_index_u32(44627u, 1u)]), u_input.b))) + 983f)));
    global2 = vec2<bool>(global2.x || !all(select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(var_0, false, true, false), vec4<bool>(false, var_0, var_0, true))), (~_wgslsmith_mult_u32(37403u, 0u) > _wgslsmith_mod_u32(0u | u_input.a, select(0u, u_input.a, false))) | var_0);
    global2 = select(!(!vec2<bool>(all(vec4<bool>(false, true, true, true)), !var_0)), vec2<bool>(global2.x, !(reverseBits(u_input.a) <= _wgslsmith_add_u32(62830u, u_input.a))), !select(vec2<bool>(var_0 & true, all(vec4<bool>(global2.x, false, false, global2.x))), select(vec2<bool>(true, false), select(vec2<bool>(var_0, global2.x), vec2<bool>(var_0, global2.x), vec2<bool>(var_0, var_0)), vec2<bool>(var_0, var_0)), var_0));
    var var_1 = select(1u, u_input.a, !var_0 && global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(reverseBits(vec3<i32>(-27353i, u_input.b.x, u_input.c.x)) & vec3<i32>(-u_input.c.x, i32(-1i) * -51454i, firstLeadingBit(u_input.c.x))), 2147483647i, vec3<i32>(39577i, -2147483647i, u_input.c.x), ~_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, firstTrailingBit(u_input.b.x)));
}

