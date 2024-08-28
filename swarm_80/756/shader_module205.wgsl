struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(vec2<bool>(true, true)), select(global0.yw, vec2<bool>(true, true), any(select(vec4<bool>(global3[_wgslsmith_index_u32(22495u, 15u)], true, global3[_wgslsmith_index_u32(36619u, 15u)], global3[_wgslsmith_index_u32(global2.a, 15u)]), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 15u)], false, global1.x, global1.x), select(true, global2.c.x, global2.c.x)))));
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -1i), -5419i);
    global3 = array<bool, 15>();
    global2 = Struct_2(31451u, !(var_0.a.a.x || true), select(vec3<bool>(true, false, !all(global0.zy)), vec3<bool>(true, true, true), select(global2.c, global2.c, global3[_wgslsmith_index_u32(4294967295u, 15u)])));
    var var_2 = Struct_1(global2.c.yz);
    return global2.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec2<f32> {
    global0 = vec4<bool>(any(!(!vec4<bool>(true, true, false, global2.c.x))), any(!func_3()), !select(true, true, func_3().x) && (all(vec4<bool>(global1.x, false, global1.x, false)) & false), global2.a != abs(0u >> (_wgslsmith_add_u32(arg_1, arg_1) % 32u)));
    let var_0 = Struct_3(Struct_1(select(!vec2<bool>(global1.x, global0.x), vec2<bool>(true, !global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), !global2.b)), !(!(!global2.c.yx)));
    let var_1 = Struct_1(select(!global0.xx, func_3().xy, var_0.a.a));
    global1 = select(func_3(), global2.c, global2.c);
    global0 = vec4<bool>(select(select(true, !global2.b, false), all(vec4<bool>(true, false, select(global0.x, true, true), var_1.a.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-20226i, 0i, 2147483647i, -21283i), -vec4<i32>(-42742i, -2147483647i, -1i, -5995i)) <= -(-7951i >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) < _wgslsmith_f_op_f32(sign(arg_0.x)), true, true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yz * arg_0.xx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1690f) - _wgslsmith_f_op_f32(abs(-1466f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))));
}

fn func_4(arg_0: vec2<f32>) -> vec4<bool> {
    global3 = array<bool, 15>();
    let var_0 = Struct_3(Struct_1(!vec2<bool>(!global3[_wgslsmith_index_u32(0u, 15u)], true)), !vec2<bool>(any(vec2<bool>(false, global2.b)), !(-1027f <= arg_0.x)));
    let var_1 = global2.c.x;
    global2 = Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(~global2.a, global2.a >> (0u % 32u), abs(global2.a)), abs(_wgslsmith_add_vec3_u32(reverseBits(u_input.a.zyw), ~vec3<u32>(global2.a, global2.a, u_input.a.x)))), global1.x, global2.c);
    var var_2 = Struct_2(0u ^ global2.a, global2.c.x, vec3<bool>(true, true, any(select(vec4<bool>(global0.x, true, global3[_wgslsmith_index_u32(global2.a, 15u)], false), select(vec4<bool>(global1.x, false, global0.x, true), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(1u, 15u)], global0.x), vec4<bool>(global1.x, var_0.b.x, var_0.b.x, global1.x)), global3[_wgslsmith_index_u32(~1u, 15u)]))));
    return select(vec4<bool>(!any(global2.c) & (_wgslsmith_add_u32(var_2.a, 4294967295u) == ~var_2.a), arg_0.x >= _wgslsmith_f_op_f32(min(arg_0.x, 1f)), all(func_3().yx), (~23834u | _wgslsmith_mod_u32(var_2.a, 3647u)) <= 36123u), !select(!(!vec4<bool>(true, false, false, global2.c.x)), select(vec4<bool>(var_0.b.x, global2.c.x, global0.x, var_0.b.x), !vec4<bool>(var_0.a.a.x, global0.x, true, var_2.c.x), !global0.x), vec4<bool>(all(global2.c.yz), false, any(var_2.c.xy), true)), select(vec4<bool>(any(!global0.yyw), true, select(true, true, true), all(vec2<bool>(false, false))), select(vec4<bool>(true, !global3[_wgslsmith_index_u32(1u, 15u)], false, !var_2.c.x), !vec4<bool>(global0.x, global2.b, var_2.c.x, false), !(!vec4<bool>(global0.x, false, global2.b, false))), select(select(vec4<bool>(false, true, var_0.b.x, true), select(vec4<bool>(var_2.b, var_0.a.a.x, false, true), vec4<bool>(false, true, true, true), true), global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), select(vec4<bool>(global0.x, var_2.c.x, true, true), vec4<bool>(global0.x, false, false, global3[_wgslsmith_index_u32(1u, 15u)]), select(vec4<bool>(global0.x, true, false, global1.x), vec4<bool>(true, global2.b, global3[_wgslsmith_index_u32(var_2.a, 15u)], false), false)), false)));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    global0 = select(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1000f * 942f), _wgslsmith_f_op_f32(f32(-1f) * -567f)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1305f, -112f, 1000f)), 0u << (arg_0.a % 32u))), vec2<bool>(any(vec2<bool>(arg_0.c.x, global3[_wgslsmith_index_u32(4294967295u, 15u)])), true)))), vec4<bool>(any(select(!vec4<bool>(arg_0.c.x, false, global3[_wgslsmith_index_u32(24590u, 15u)], false), !vec4<bool>(global0.x, false, global2.c.x, false), vec4<bool>(false, global1.x, global3[_wgslsmith_index_u32(4294967295u, 15u)], arg_0.c.x))), global1.x, any(arg_0.c.yx), global2.c.x), !select(vec4<bool>(true, arg_0.b, global2.b & global2.c.x, global2.c.x && true), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1359f, 252f))), false));
    var var_0 = Struct_2(~u_input.a.x & 23747u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f * 427f)) - 1f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1646f + 315f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 983f)))), !vec3<bool>(global1.x, global2.c.x, false));
    global3 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-274f, -2260f), vec2<f32>(-1020f, -1008f))))))));
    global1 = arg_0.c;
    return var_0.c;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_3 {
    global0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_f32(trunc(-1646f))) != 1267f, true, false, arg_2.x);
    global3 = array<bool, 15>();
    var var_0 = -reverseBits(vec2<i32>(-1i) * -(~vec2<i32>(-2147483647i, -18206i)));
    let var_1 = min(abs(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 4294967295u), vec3<u32>(arg_1.a, arg_0, 4294967295u)), ~14643u))), vec2<u32>(111072u, ~min(arg_1.a, _wgslsmith_mod_u32(41969u, global2.a))));
    var var_2 = global2.a;
    return Struct_3(Struct_1(!select(vec2<bool>(global0.x, global1.x), func_1(arg_1).zy, vec2<bool>(arg_2.x, true))), vec2<bool>(arg_2.x, func_1(arg_1).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c;
    var var_1 = func_5(49258u, Struct_2(u_input.a.x, false, select(global0.zww, !global0.zxz, select(func_1(Struct_2(global2.a, var_0.x, global0.wwx)), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global0.x, global2.c.x), func_4(vec2<f32>(-869f, -525f)).xwy))), vec4<bool>(true, false, true & select(global2.b, var_0.x, false), global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-323f, -1000f, 683f), vec3<f32>(413f, 298f, -774f)) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1380f, 360f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(61949i);
}

