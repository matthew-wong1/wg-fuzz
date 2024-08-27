struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, false, false, false, false, true, true, false, true, false);

var<private> global1: array<i32, 19>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1161f, _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(step(896f, _wgslsmith_f_op_f32(f32(-1f) * -655f)))), vec3<f32>(1f, -1172f, _wgslsmith_f_op_f32(f32(-1f) * -988f)), all(vec3<bool>(true, arg_3, all(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b.x, 11u)], arg_3)))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(573f - -129f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-599f, _wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_f32(191f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(608f + -1805f))))), abs(~(~(~u_input.b.x))));
    global0 = array<bool, 11>();
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1300f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.b.x)) * _wgslsmith_div_f32(var_0.a.x, 446f))))), vec3<f32>(-529f, var_0.b.x, -608f), ~arg_1.b.x);
    global1 = array<i32, 19>();
    let var_2 = arg_0;
    return false;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = select(select(!vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(33350u, 11u)], global0[_wgslsmith_index_u32(15590u, 11u)], true)), false, true, arg_0.b.x), !vec4<bool>(true, false, all(vec3<bool>(false, true, true)), true), select(vec4<bool>(true, false, true, true), vec4<bool>(any(arg_0.b.yw), true, any(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 11u)])), true), vec4<bool>(!arg_0.b.x, !global0[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global0[_wgslsmith_index_u32(abs(1u), 11u)]))), !select(select(select(arg_0.b, arg_0.b, true), !vec4<bool>(arg_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.b.x, true), !arg_0.b.x), vec4<bool>(true, arg_0.a.x <= 13196u, true, select(true, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], true)), func_3(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 2147483647i, 0i), Struct_2(arg_0.a.x, arg_0.a), Struct_2(15604u, arg_0.a), true)), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)])), vec4<bool>(true, !arg_0.b.x, arg_0.b.x, true), select(arg_0.b, vec4<bool>(select(true, global0[_wgslsmith_index_u32(0u, 11u)], false), true, true, true), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0.b.x), arg_0.b, arg_0.b.x), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 11u)], true), arg_0.b, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), arg_0.b, arg_0.b)))));
    var var_1 = vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(111f, -1378f, 1198f), vec3<f32>(-1600f, 384f, 1418f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, 1561f, -1375f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1565f), 597f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1627f, -683f)), _wgslsmith_f_op_f32(853f + -669f)))), ~23125u);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_3.b.x;
    var_0 = false;
    let var_1 = true;
    var var_2 = func_2(arg_3);
    var var_3 = min(arg_3.d.x, i32(-1i) * -_wgslsmith_div_i32(global1[_wgslsmith_index_u32(~arg_3.a.x, 19u)], -10843i));
    return vec3<f32>(-1001f, _wgslsmith_div_f32(-788f, -2376f), var_2.a.x);
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x));
    var var_1 = arg_0.a.x;
    global0 = array<bool, 11>();
    var_1 = 1100f;
    let var_2 = (abs(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, -12249i), vec3<i32>(16921i, global1[_wgslsmith_index_u32(14757u, 19u)], -2147483647i)))) >> (vec3<u32>(11387u, u_input.b.x, ~1u) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(2147483647i), u_input.a), global1[_wgslsmith_index_u32(arg_0.c, 19u)], -2147483647i), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 2056i), vec3<i32>(0i, -36862i, 38270i)), i32(-1i) * -71056i, ~(-2147483647i >> (arg_0.c % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1544f, -415f, -2464f) + vec3<f32>(466f, 469f, -1210f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1052f, -603f, -1000f) * vec3<f32>(218f, 917f, -530f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(121f, -502f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -500f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.b.x, vec3<bool>(global0[_wgslsmith_index_u32(45307u, 11u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec4<i32>(global1[_wgslsmith_index_u32(38456u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 15699i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 51491u, 15892u), vec4<bool>(global0[_wgslsmith_index_u32(64436u, 11u)], global0[_wgslsmith_index_u32(62221u, 11u)], false, global0[_wgslsmith_index_u32(4294967295u, 11u)]), 1i, vec3<i32>(u_input.a, u_input.a, -7634i)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-730f, -1000f, -1000f), vec3<f32>(637f, 1896f, 1000f))))), _wgslsmith_div_u32(countOneBits(u_input.b.x) << ((1u >> (u_input.b.x % 32u)) % 32u), u_input.b.x))));
    global0 = array<bool, 11>();
    var var_1 = Struct_2(min(u_input.b.x, func_2(Struct_1(vec3<u32>(78366u, 4294967295u, 4294967295u), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(91334u, 11u)]), -1i, vec3<i32>(global1[_wgslsmith_index_u32(16395u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.a))).c) | abs(abs(~58338u)), u_input.b.wyx);
    var_1 = Struct_2(func_2(Struct_1(select(var_1.b, vec3<u32>(54676u, u_input.b.x, var_1.a), false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.b.x, 11u)], global0[_wgslsmith_index_u32(48309u, 11u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(3390u, 11u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(var_1.b.x, 11u)])), -u_input.a, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, -47433i) | vec3<i32>(2147483647i, -2147483647i, global1[_wgslsmith_index_u32(0u, 19u)]))).c >> ((1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(24030u, var_1.b.x), _wgslsmith_add_vec2_u32(u_input.b.ww, vec2<u32>(var_1.a, 4294967295u))) % 32u)) % 32u), firstLeadingBit(vec3<u32>(~var_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 76225u, var_1.b.x, u_input.b.x) >> (u_input.b % vec4<u32>(32u)), ~u_input.b), min(~22303u, ~0u))));
    var var_2 = Struct_2(1u, select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a, 4294967295u, var_1.a) & vec3<u32>(1u, 61839u, var_1.b.x), vec3<u32>(var_1.b.x, 0u, 1u)) << (~(~vec3<u32>(u_input.b.x, u_input.b.x, 1u)) % vec3<u32>(32u)), reverseBits(u_input.b.xzy), true));
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-419f - 434f))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 1000f)))))))), ~abs(u_input.b.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-820f, _wgslsmith_f_op_f32(func_4(Struct_3(var_3.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, var_0, -201f)), var_2.a))), _wgslsmith_f_op_f32(select(var_3.b.x, 408f, func_3(u_input.a, Struct_2(var_1.b.x, vec3<u32>(u_input.b.x, 1u, 19521u)), Struct_2(1u, vec3<u32>(var_3.c, 30094u, u_input.b.x)), all(vec3<bool>(global0[_wgslsmith_index_u32(28347u, 11u)], false, global0[_wgslsmith_index_u32(23080u, 11u)])))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(109f, var_3.a.x)))), var_0, _wgslsmith_div_f32(-107f, -1000f))));
    var_2 = Struct_2(~var_1.b.x >> (_wgslsmith_div_u32(31514u, 1u) % 32u), vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b) | 47322u, 0u, _wgslsmith_add_u32(~(~u_input.b.x), 61201u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_3.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2154f * var_0))), _wgslsmith_f_op_f32(var_3.b.x - 980f)))), 18597u);
}

