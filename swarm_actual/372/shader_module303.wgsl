struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(560f, 245f, 366f));

var<private> global1: array<vec4<bool>, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(vec3<bool>(u_input.b >= _wgslsmith_mult_i32(-16967i, u_input.c), true, all(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, false, false))), vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(true, any(vec2<bool>(select(false, false, true), true)), all(vec3<bool>(true, true, true))));
    var_0 = vec3<bool>(var_0.x, true, false);
    let var_1 = ~vec4<i32>(min(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, 1i, -36345i), countOneBits(vec4<i32>(u_input.a, -37297i, 0i, 2147483647i))), -2147483647i & u_input.d.x), countOneBits(-71586i), u_input.a, firstLeadingBit(1i));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(max(~1u, _wgslsmith_mult_u32(20099u, 1u)), firstLeadingBit(1u), 4294967295u, firstTrailingBit(~0u)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(1u, 4294967295u, 1u, 6987u), vec4<u32>(20552u, 22472u, 1u, 12915u)), ~vec4<u32>(1u, 46372u, 15051u, 0u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(17344u, _wgslsmith_add_u32(~21934u, _wgslsmith_clamp_u32(4294967295u, 10510u, 1u)), reverseBits(countOneBits(0u))), 1u, _wgslsmith_add_u32(~0u, firstLeadingBit(firstTrailingBit(30247u))), 1u));
    let var_3 = Struct_1(-1586f, ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_2.x, var_2.x), var_2.zww), abs(vec3<u32>(0u, 3925u, var_2.x))), var_2.x, ~(~1u)), vec2<i32>(50591i, _wgslsmith_add_i32(u_input.b, -_wgslsmith_div_i32(u_input.c, 0i))));
    return vec4<u32>(~firstTrailingBit(4294967295u), var_2.x, var_2.x, var_2.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, 346f, _wgslsmith_f_op_f32(f32(-1f) * -479f)) - global0.a));
    var var_0 = ~4294967295u;
    var var_1 = u_input.d.xz;
    let var_2 = 4294967295u;
    var var_3 = 0u >> (arg_0 % 32u);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -819f), ~select(~vec4<u32>(arg_0, 0u, 13404u, 4294967295u), vec4<u32>(0u, var_2, 10878u, var_2), !global1[_wgslsmith_index_u32(4294967295u, 3u)]) | _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_2, 19884u, 32622u, 4542u)), func_3()), _wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.yy, u_input.d.yy), vec2<i32>(48528i, u_input.c) >> (vec2<u32>(var_2, arg_0) % vec2<u32>(32u))), select(select(firstTrailingBit(vec2<i32>(-2147483647i, var_1.x)), ~vec2<i32>(var_1.x, 0i), select(true, false, true)), countOneBits(firstTrailingBit(u_input.d.zx)), select(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(~79779u);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2085f))), 1038f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - _wgslsmith_f_op_f32(global0.a.x * var_0.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-694f, var_0.a, global0.a.x))))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_add_u32(var_0.b.x, 1u ^ ~var_0.b.x) | var_0.b.x;
    var var_3 = func_2(~var_0.b.x);
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = func_2(_wgslsmith_mult_u32(24753u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 8543u), vec2<u32>(4294967295u, 1u)))));
    var var_1 = Struct_2(vec3<f32>(func_1(arg_2, vec3<bool>(arg_2.a.x != 1000f, u_input.d.x == var_0.c.x, false)).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * arg_0) - -136f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1967f))), 164f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.yz - vec2<f32>(var_0.a, var_1.a.x)), _wgslsmith_f_op_vec2_f32(select(arg_2.a.yy, var_1.a.zy, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.a.xx))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(914f, 635f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.a.x)) * _wgslsmith_f_op_vec2_f32(-arg_2.a.zx)) * arg_2.a.yy) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1519f, -103f))))));
    var var_3 = select(!vec4<bool>(all(vec4<bool>(true, true, true, false)), true, false, true), select(select(select(global1[_wgslsmith_index_u32(60353u, 3u)], vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(select(global1[_wgslsmith_index_u32(54321u, 3u)], global1[_wgslsmith_index_u32(var_0.b.x, 3u)], true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), !global1[_wgslsmith_index_u32(var_0.b.x, 3u)]), global1[_wgslsmith_index_u32(~(var_0.b.x >> (var_0.b.x % 32u)), 3u)]), global1[_wgslsmith_index_u32(6817u << (var_0.b.x % 32u), 3u)], select(!select(global1[_wgslsmith_index_u32(var_0.b.x, 3u)], global1[_wgslsmith_index_u32(870u, 3u)], true), vec4<bool>(true, true, var_0.b.x > 39375u, false), select(!global1[_wgslsmith_index_u32(27069u, 3u)], vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))))), global1[_wgslsmith_index_u32(~(~var_0.b.x), 3u)]);
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.c, -_wgslsmith_mod_i32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(621f, 1190f, global0.a.x), global0.a)), func_1(Struct_2(global0.a), vec3<bool>(false, false, true))), _wgslsmith_add_i32(-u_input.d.x, func_4(204f, vec3<f32>(1085f, 1000f, global0.a.x), Struct_2(vec3<f32>(global0.a.x, -1228f, 961f))))), 0i, 1i);
    global1 = array<vec4<bool>, 3>();
    let var_1 = ~u_input.d.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(global0.a.x)), ~(vec4<u32>(~1u, ~37982u, ~0u, ~64259u) & select(~vec4<u32>(2181u, 4294967295u, 4294967295u, 4294967295u), min(vec4<u32>(11565u, 1u, 1u, 98719u), vec4<u32>(1u, 1u, 9696u, 22228u)), !global1[_wgslsmith_index_u32(67081u, 3u)])), u_input.d.xz);
    var var_3 = u_input.d.yy;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(var_2.a)), vec4<u32>(var_2.b.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_2.b, var_2.b), var_2.b.x) % 32u), 15462u, 0u, 33105u), _wgslsmith_mult_vec2_i32(~u_input.d.xx, abs(vec2<i32>(func_4(global0.a.x, global0.a, Struct_2(global0.a)), 1i))));
    var var_5 = vec3<bool>(any(select(!select(global1[_wgslsmith_index_u32(var_2.b.x, 3u)], vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(var_4.b.x, 3u)]), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), select(all(vec2<bool>(false, true)), false, any(vec2<bool>(false, true))))), any(!vec2<bool>(global0.a.x > var_4.a, false)), !(select(false, true, any(vec4<bool>(false, false, false, true))) != true));
    var var_6 = func_1(func_1(Struct_2(global0.a), !(!vec3<bool>(true, false, var_5.x))), vec3<bool>(false, all(vec2<bool>(all(vec4<bool>(var_5.x, var_5.x, true, true)), var_5.x)), false));
    var_5 = select(!vec3<bool>(any(select(global1[_wgslsmith_index_u32(var_2.b.x, 3u)], global1[_wgslsmith_index_u32(var_4.b.x, 3u)], var_5.x)), var_4.b.x > ~0u, var_5.x), vec3<bool>(var_5.x, var_5.x, !(!var_5.x) & !var_5.x), select(vec3<bool>(var_5.x, !(!var_5.x), var_5.x), !vec3<bool>(var_5.x, false, var_5.x), select(!select(vec3<bool>(var_5.x, var_5.x, true), vec3<bool>(var_5.x, var_5.x, var_5.x), vec3<bool>(var_5.x, var_5.x, var_5.x)), vec3<bool>(var_4.c.x < -1i, true, var_5.x & true), all(select(vec2<bool>(var_5.x, true), var_5.yy, var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(716f, func_2(16828u).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(209f - _wgslsmith_f_op_f32(var_4.a + var_2.a))))), global0.a.x, abs(10030i) << (0u % 32u));
}

