struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<f32, 23> = array<f32, 23>(-242f, 929f, -224f, 240f, -269f, 998f, 395f, 300f, 827f, -490f, 343f, -1418f, 1687f, -1334f, 772f, -732f, 368f, -506f, 169f, 388f, 1000f, -706f, 838f);

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<bool, 32> = array<bool, 32>(false, true, false, true, true, true, true, false, false, false, true, true, false, true, false, false, true, false, false, true, false, false, false, false, true, true, false, true, false, false, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = ((u_input.a >> (~(~0u) % 32u)) & _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 59286u), vec3<u32>(77770u, 39615u, 0u))), u_input.a)) & ~(~17960u);
    global3 = array<bool, 32>();
    var var_1 = vec3<u32>(u_input.a, 1u, 0u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1446f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 23u)] * _wgslsmith_div_f32(-428f, 1278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-776f, -210f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)], 808f)))) - vec3<f32>(-2052f, -964f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 23u)])))), false);
    let var_3 = u_input.a;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1527f - var_2.a.x), 328f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)));
}

fn func_2(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(-vec4<i32>(1i, 1i, 1i, 1i), (vec3<i32>(35885i, 27972i, -35193i) >> (arg_0 % vec3<u32>(32u))) ^ ~vec3<i32>(-40795i, 1i, 2147483647i))), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), arg_0)), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(54935u, arg_0.x), 23u)]) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(621f)))))), false);
    var var_1 = u_input.a;
    global2 = array<Struct_1, 6>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, arg_0.x), 6u)];
    var var_3 = global2[_wgslsmith_index_u32(~(~(~(~select(arg_0.x, 37404u, false)))), 6u)];
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(var_2.a))));
}

fn func_1(arg_0: u32) -> bool {
    global3 = array<bool, 32>();
    let var_0 = !(!select(select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, true, global1.x), false), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 32u)], false, global3[_wgslsmith_index_u32(arg_0, 32u)], global3[_wgslsmith_index_u32(34744u, 32u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(u_input.a, 32u)], false)), select(vec4<bool>(global1.x, true, global3[_wgslsmith_index_u32(8625u, 32u)], global1.x), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0, 32u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 32u)], global3[_wgslsmith_index_u32(arg_0, 32u)], global3[_wgslsmith_index_u32(u_input.a, 32u)], global3[_wgslsmith_index_u32(u_input.a, 32u)]))), !vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 32u)], global3[_wgslsmith_index_u32(arg_0, 32u)], global1.x, false), false));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(4294967295u, 4294967295u, 87515u))))))));
    var var_2 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0)), ~0u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, arg_0, 1u) << (vec4<u32>(0u, 22312u, arg_0, arg_0) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, u_input.a, arg_0, 1u))), ~vec4<u32>(61462u, 55357u, 7446u, arg_0)))), 6u)];
    global0 = array<f32, 23>();
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: u32) -> vec3<bool> {
    var var_0 = ~(arg_3 << (_wgslsmith_mod_u32(48032u, 7976u) % 32u));
    var_0 = abs(_wgslsmith_div_u32(min(~arg_3, u_input.a), ~_wgslsmith_mult_u32(u_input.a, reverseBits(arg_3))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1293f, 1465f), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(36506u, 23u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 1449f)), arg_1 & global3[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(58820u, 23u)], global0[_wgslsmith_index_u32(arg_3, 23u)]), vec2<f32>(global0[_wgslsmith_index_u32(arg_3, 23u)], global0[_wgslsmith_index_u32(arg_3, 23u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<f32>(-983f, global0[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2064f, global0[_wgslsmith_index_u32(10954u, 23u)]), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 23u)])))))))));
    global2 = array<Struct_1, 6>();
    global2 = array<Struct_1, 6>();
    return select(select(select(!select(vec3<bool>(false, global1.x, arg_0), vec3<bool>(global1.x, global3[_wgslsmith_index_u32(70729u, 32u)], arg_1), vec3<bool>(false, arg_1, true)), select(!vec3<bool>(arg_1, global3[_wgslsmith_index_u32(45095u, 32u)], global3[_wgslsmith_index_u32(101874u, 32u)]), !vec3<bool>(arg_2, false, false), false), all(!vec3<bool>(arg_0, global3[_wgslsmith_index_u32(u_input.a, 32u)], arg_0))), !select(vec3<bool>(global1.x, false, true), vec3<bool>(global3[_wgslsmith_index_u32(38781u, 32u)], arg_1, global1.x), vec3<bool>(true, true, true)), !any(global1.xx) && true), !(!vec3<bool>(true, arg_0, true)), global3[_wgslsmith_index_u32(~u_input.a, 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.zz;
    global1 = !func_4(select(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 32u)], global1.x, global3[_wgslsmith_index_u32(u_input.a, 32u)])) == (global1.x && true), !(global0[_wgslsmith_index_u32(u_input.a, 23u)] != global0[_wgslsmith_index_u32(74648u, 23u)]), global1.x), !global3[_wgslsmith_index_u32(~(~59167u), 32u)], func_1(1u), select(reverseBits(u_input.a), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), false & global3[_wgslsmith_index_u32(u_input.a, 32u)]));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-759f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 23u)])) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -112f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(28690u, 23u)]), -658f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<i32>(-28480i, 2147483647i, 2147483647i, 0i), vec3<i32>(-6020i, -11055i, 1i))))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(-1000f - 529f))));
    let var_2 = var_1;
    global0 = array<f32, 23>();
    var var_3 = ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, 53681u, 24425u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 8421u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4574u)), vec3<bool>(true, true, false)), vec3<u32>(abs(u_input.a), abs(u_input.a), 0u)) & reverseBits(~(~max(vec3<u32>(55584u, u_input.a, u_input.a), vec3<u32>(24280u, u_input.a, 30239u))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(~_wgslsmith_mod_i32(0i, -1i), _wgslsmith_sub_i32(-2147483647i, 1i), var_0.x));
}

