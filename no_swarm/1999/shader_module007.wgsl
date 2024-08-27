struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-488f, 428f, -665f, -441f), vec3<f32>(-983f, 746f, 483f), vec3<f32>(-194f, 709f, 1000f), vec2<bool>(true, true), 23596u);

var<private> global1: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(45720u, 10481u, 28150u, 7719u), vec4<u32>(39058u, 4294967295u, 1u, 38838u), vec4<u32>(4294967295u, 43493u, 4294967295u, 1u), vec4<u32>(4294967295u, 26649u, 18436u, 4294967295u), vec4<u32>(4294967295u, 0u, 56537u, 23032u));

var<private> global2: array<f32, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    global2 = array<f32, 19>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 9381u)), vec2<u32>(~global0.e, global0.e)), countOneBits(_wgslsmith_add_u32(global0.e, ~global0.e))), ~_wgslsmith_add_vec2_u32(select(~vec2<u32>(1u, global0.e), ~vec2<u32>(global0.e, 1u), !arg_0), ~select(vec2<u32>(global0.e, global0.e), vec2<u32>(global0.e, global0.e), global0.d.x)));
    let var_1 = u_input.a.wxw;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(225f)), global2[_wgslsmith_index_u32(var_0, 19u)], _wgslsmith_f_op_f32(ceil(-2037f)), _wgslsmith_f_op_f32(round(-232f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, 1630f, 1078f, global0.c.x) + global0.a)))) * vec4<f32>(global0.b.x, -918f, 720f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0, global0.e), var_0), 19u)])), global0.b, _wgslsmith_f_op_vec3_f32(-global0.b), select(!select(!arg_0, vec2<bool>(true, true), true), select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, !arg_0.x), vec2<bool>(any(vec4<bool>(arg_0.x, false, global0.d.x, arg_0.x)), any(arg_0)), !all(vec4<bool>(false, false, false, global0.d.x))), !(!select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, false), true))), global0.e);
    var_2 = Struct_1(global0.a, vec3<f32>(260f, global2[_wgslsmith_index_u32(var_2.e, 19u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, -307f))))), var_2.a.wwy, !select(!select(var_2.d, var_2.d, var_2.d), select(vec2<bool>(true, true), vec2<bool>(true, global0.d.x), !arg_0.x), select(vec2<bool>(true, false), global0.d, select(global0.d, global0.d, vec2<bool>(arg_0.x, true)))), ~4294967295u);
    return vec3<bool>(any(!global0.d), true, !(true | (arg_0.x || (var_2.d.x & true))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = true;
    var_0 = !all(select(!vec3<bool>(true, global0.d.x, global0.d.x), vec3<bool>(true, global0.d.x || false, false), func_3(select(global0.d, global0.d, global0.d.x))));
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    let var_1 = Struct_2(~(~(u_input.a.wxy >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.e, 103943u), vec3<u32>(global0.e, global0.e, 1701u)) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2263f, 355f) * -725f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-485f)) - 1216f))));
}

fn func_1() -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 19u)], 274f, global0.b.x, 835f) + vec4<f32>(1578f, global2[_wgslsmith_index_u32(79816u, 19u)], -571f, global2[_wgslsmith_index_u32(4294967295u, 19u)])) * vec4<f32>(global0.a.x, -920f, global2[_wgslsmith_index_u32(abs(global0.e), 19u)], _wgslsmith_f_op_f32(global0.a.x * -273f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.e), vec2<u32>(global0.e, global0.e)), 19u)], _wgslsmith_f_op_f32(-218f + 384f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1249f, _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.e, 19u)], global0.b.x) - _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(global0.e, 19u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 19u)]) + -416f))), vec2<bool>(global0.d.x & global0.d.x, true), 0u);
    var var_0 = vec4<bool>(global0.d.x, !global0.d.x, false, any(select(global0.d, vec2<bool>(true, select(global0.d.x, global0.d.x, global0.d.x)), !global0.d.x)));
    var_0 = !select(vec4<bool>(u_input.a.x <= 239i, any(func_3(vec2<bool>(global0.d.x, true))), !any(vec4<bool>(false, global0.d.x, var_0.x, var_0.x)), !(global0.e <= 82900u)), vec4<bool>(true, false, (true || var_0.x) & var_0.x, u_input.a.x == _wgslsmith_sub_i32(1257i, u_input.a.x)), var_0.x);
    let var_1 = Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.e, ~29758u) >> (abs(~4294967295u) % 32u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.a.x, global0.c.x))) - -930f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.e, 19u)] * -159f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, global0.c.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, 2399f, global0.b.x), global0.a.wyx, vec3<bool>(false, false, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.a.zyz))))), _wgslsmith_f_op_vec3_f32(max(global0.a.wxw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(40514u, 19u)])), -346f, 1f)))), vec2<bool>(true, true), global0.e << (countOneBits(_wgslsmith_sub_u32(~16690u, select(global0.e, global0.e, false))) % 32u));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(abs(global0.a)), vec4<bool>(!global0.d.x, var_1.d.x, false, var_1.e >= (var_1.e >> (var_1.e % 32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), -144f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(9078u, 19u)])))) - var_1.c), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(f32(-1f) * -448f)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, var_1.e), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.b.x)))) - var_1.b.x)), !vec2<bool>(!func_3(var_0.yx).x, true), 44114u);
    return select(!var_0.xx, vec2<bool>(!any(select(vec3<bool>(true, false, true), var_0.wyw, false)), any(vec2<bool>(true, var_1.d.x)) | false), var_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec2<u32> {
    global1 = array<vec4<u32>, 6>();
    var var_0 = Struct_1(vec4<f32>(208f, _wgslsmith_f_op_f32(-113f * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(global1[_wgslsmith_index_u32(global0.e, 6u)], vec4<u32>(arg_1, arg_1, 4294967295u, global0.e)), ~global1[_wgslsmith_index_u32(arg_1, 6u)]), 19u)]), _wgslsmith_f_op_f32(trunc(global0.b.x)), 279f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.a.wyw - vec3<f32>(global2[_wgslsmith_index_u32(13882u, 19u)], global0.c.x, -1425f)))))), vec3<f32>(422f, global0.c.x, global2[_wgslsmith_index_u32(arg_1, 19u)]), !vec2<bool>(arg_2.x, all(select(global0.d, vec2<bool>(global0.d.x, arg_2.x), true))), 1u);
    let var_1 = Struct_2(u_input.a.zzz);
    var var_2 = firstTrailingBit(~4294967295u);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.b.x, var_0.c.x, var_0.b.x, var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26917u, 19u)]), _wgslsmith_f_op_f32(f32(-1f) * -1357f), -162f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.e, 19u)], -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0.e, 19u)])), 550f) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, global2[_wgslsmith_index_u32(9798u, 19u)], global0.a.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.x, -645f, -1389f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(-global0.c)))), vec2<bool>(func_1().x, func_1().x), ~arg_1);
    return ~abs(~arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(!(global0.d.x || global0.d.x), !global0.d.x), !global0.d, !vec2<bool>(global0.d.x, select(true, select(global0.d.x, global0.d.x, global0.d.x), !global0.d.x)));
    global1 = array<vec4<u32>, 6>();
    var var_1 = func_4(select(func_1(), !vec2<bool>(true, var_0.x), global0.d.x), global0.e, select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, global0.d.x, global0.d.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(!var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, false)), false), vec3<bool>(true, global0.d.x, false)), select(vec3<bool>(true, global0.e > global0.e, var_0.x), select(vec3<bool>(false, false, true), !vec3<bool>(true, global0.d.x, global0.d.x), vec3<bool>(false, true, var_0.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, global0.d.x, false), vec3<bool>(false, global0.d.x, global0.d.x)), select(vec3<bool>(global0.d.x, true, global0.d.x), vec3<bool>(false, global0.d.x, true), vec3<bool>(true, var_0.x, false)))), !func_3(!global0.d)), abs(~firstTrailingBit(vec2<u32>(global0.e, global0.e))));
    var var_2 = Struct_2(~(-(-u_input.a.xxz ^ _wgslsmith_sub_vec3_i32(vec3<i32>(24152i, -1i, u_input.a.x), u_input.a.yzw))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(global2[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(abs(552f)), _wgslsmith_f_op_f32(floor(global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), _wgslsmith_f_op_vec3_f32(-global0.a.yyx), _wgslsmith_mod_i32(24254i, 41736i) < max(u_input.a.x, 1i))) + global0.c), var_2.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), select(vec2<u32>(var_1.x, countOneBits(0u)), vec2<u32>(62823u, max(19497u, global0.e)), true)), 19u)]);
}

