struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)));

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, true, false, true, true, true, false, false, true, false, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec3<u32> {
    let var_0 = true;
    var var_1 = Struct_4(global1.b.a.x, ((max(u_input.b, 1u) & 4294967295u) >> (u_input.b % 32u)) >> ((_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 4294967295u)) ^ 13908u) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, 248f)), _wgslsmith_f_op_f32(-global0.x)))), -919f) - global0.zy);
    var_1 = Struct_4(select(!global1.a.b.x, -1i > u_input.d, true), u_input.b);
    let var_3 = Struct_5(vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_div_u32(u_input.b, _wgslsmith_sub_u32(50183u, u_input.b))) | abs(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 68384u, 44433u), vec3<u32>(1u, var_1.b, u_input.b)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(569f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.x)))), -1000f), Struct_2(global1.b, global1.c, global1.b), Struct_1(vec2<bool>(var_1.a, u_input.c > (u_input.d | u_input.c)), !select(global1.a.b, vec3<bool>(false, var_1.a, global2[_wgslsmith_index_u32(u_input.b, 13u)]), !var_1.a)), vec4<i32>(-1i, -6447i, -13228i, u_input.a.x));
    return ~var_3.a;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: bool) -> i32 {
    global2 = array<bool, 13>();
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1762f, _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -115f, arg_2)))), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, global0.x, -546f) * vec3<f32>(-2287f, global0.x, 1665f))) + vec3<f32>(arg_2, global0.x, _wgslsmith_div_f32(823f, arg_1))))));
    let var_0 = !select(!vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], arg_3, arg_3, false)), global1.c.b.x && true, true, !arg_3), vec4<bool>(!global2[_wgslsmith_index_u32(reverseBits(arg_0), 13u)], global1.b.a.x, false, !(!global2[_wgslsmith_index_u32(4294967295u, 13u)])), !select(select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<bool>(global2[_wgslsmith_index_u32(36751u, 13u)], false, true, global1.c.b.x), true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 13u)], arg_3), global1.c.b.x && arg_3));
    var var_1 = Struct_2(Struct_1(global1.c.a, select(select(var_0.zxw, var_0.ywy, global0.x >= arg_2), var_0.xyw, vec3<bool>(!arg_3, !var_0.x, 346f >= arg_1))), global1.a, global1.a);
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1016f + _wgslsmith_f_op_f32(step(-739f, -323f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-313f, 655f)) * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f - _wgslsmith_f_op_f32(trunc(arg_1)))))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1214f, 681f))))));
    return countOneBits(_wgslsmith_clamp_i32(0i, ~_wgslsmith_div_i32(u_input.a.x, u_input.d | u_input.d), u_input.a.x));
}

fn func_1() -> vec4<bool> {
    var var_0 = ~func_2();
    let var_1 = u_input.c < _wgslsmith_clamp_i32(~(~(-1i)), 34545i, -func_3(u_input.b | var_0.x, _wgslsmith_f_op_f32(259f - global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), true));
    var var_2 = select(vec4<bool>(abs(_wgslsmith_sub_i32(u_input.a.x, u_input.c)) <= _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 2147483647i), vec3<i32>(u_input.c, -2147483647i, u_input.d)), abs(vec3<i32>(u_input.a.x, -7863i, -2147483647i))), true, !var_1, min(u_input.b, var_0.x) != var_0.x), !select(vec4<bool>(global2[_wgslsmith_index_u32(abs(0u), 13u)], true | global2[_wgslsmith_index_u32(35810u, 13u)], false, global1.a.b.x), vec4<bool>(global1.c.b.x, global2[_wgslsmith_index_u32(0u >> (0u % 32u), 13u)], all(global1.a.b), true), !vec4<bool>(global1.a.a.x, true, true, var_1)), global1.b.b.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -706f)), global0.x));
    var_2 = !select(vec4<bool>(any(select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(true, global1.b.b.x, var_1, global1.b.b.x), vec4<bool>(var_1, false, global1.a.b.x, false))), false, !(var_1 | var_1), all(select(vec4<bool>(global2[_wgslsmith_index_u32(10287u, 13u)], var_2.x, var_1, global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<bool>(false, global1.b.a.x, var_1, true), vec4<bool>(var_2.x, var_1, var_2.x, false)))), select(!vec4<bool>(global2[_wgslsmith_index_u32(77397u, 13u)], global1.b.a.x, var_1, false), vec4<bool>(var_1, var_1, true, global2[_wgslsmith_index_u32(var_0.x, 13u)] && var_1), all(select(var_2.yw, vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(27120u, 13u)], false)))), global1.a.a.x);
    return !select(vec4<bool>(var_1, var_2.x, any(vec3<bool>(true, false, false)), !global2[_wgslsmith_index_u32(u_input.b << (0u % 32u), 13u)]), !vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 13u)], false)), var_0.x < var_0.x, true, var_2.x), !select(vec4<bool>(true, var_1, var_2.x, true), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(var_0.x, 13u)], global2[_wgslsmith_index_u32(var_0.x, 13u)], true), vec4<bool>(var_1, true, global2[_wgslsmith_index_u32(4294967295u, 13u)], global1.c.b.x), vec4<bool>(var_1, true, global2[_wgslsmith_index_u32(var_0.x, 13u)], false)), !vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 13u)], true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 13>();
    var var_0 = select(select(select(vec4<bool>(any(global1.a.a), !global1.c.a.x, true, global2[_wgslsmith_index_u32(u_input.b, 13u)]), select(select(vec4<bool>(false, global1.c.b.x, false, global1.a.b.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 13u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(64565u, 13u)], true, global1.b.a.x)), vec4<bool>(true, true, global1.c.a.x, global1.b.a.x), !vec4<bool>(global2[_wgslsmith_index_u32(49206u, 13u)], true, global1.a.b.x, global2[_wgslsmith_index_u32(u_input.b, 13u)])), func_1()), !select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], global1.b.b.x, true), select(vec4<bool>(global1.a.a.x, false, true, global2[_wgslsmith_index_u32(33190u, 13u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 13u)], false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 13u)], true, global2[_wgslsmith_index_u32(u_input.b, 13u)])), global1.c.a.x), all(func_1())), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f - global0.x)) == 722f, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(~6282u, 13u)], global2[_wgslsmith_index_u32(select(0u, 1u, global0.x == global0.x) ^ _wgslsmith_sub_u32(4294967295u, firstLeadingBit(1u)), 13u)]), vec4<bool>(!global1.c.b.x, !select(global1.c.a.x, !global2[_wgslsmith_index_u32(u_input.b, 13u)], !global2[_wgslsmith_index_u32(u_input.b, 13u)]), true, (any(global1.c.a) & false) | select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 13u)], true == global2[_wgslsmith_index_u32(u_input.b, 13u)], any(vec4<bool>(global1.b.a.x, global2[_wgslsmith_index_u32(113008u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], false)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -202f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1472f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), false)), global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1000f)))), -1193f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1407f, -1472f, global0.x, 1256f) - vec4<f32>(var_1.x, 191f, global0.x, 1204f)))) * vec4<f32>(-769f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), var_1.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(849f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(742f * global0.x) * _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(673f))), _wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c ^ ~_wgslsmith_div_i32(_wgslsmith_mult_i32(35934i, u_input.c), 1i), 44963u, u_input.b << (u_input.b % 32u));
}

