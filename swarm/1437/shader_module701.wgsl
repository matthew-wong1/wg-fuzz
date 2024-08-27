struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, false, false, false, false, true, true, true, true, false, true, true, false, false, false);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1028f)))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + _wgslsmith_f_op_f32(trunc(global1.x)))))));
    let var_0 = global2[_wgslsmith_index_u32(arg_0.x, 3u)];
    var var_1 = -787f;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1354f, global1.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, 537f, global1.x), vec4<f32>(global1.x, global1.x, 239f, 235f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(min(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(-268f * -176f)), !all(vec4<bool>(var_0.a.x, false, var_0.a.x, global0[_wgslsmith_index_u32(var_0.c, 16u)])) || true)));
    let var_2 = Struct_5(global1.x, vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, ~arg_0.x, ~37983u, 0u), arg_0), 16u)], false), global2[_wgslsmith_index_u32(var_0.c, 3u)]);
    return !vec3<bool>(all(select(var_0.a.zz, var_0.a.zx, select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(false, var_0.a.x), vec2<bool>(var_2.c.a.x, false)))), global0[_wgslsmith_index_u32(4294967295u, 16u)], select(false, var_0.a.x, any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 16u)]))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_4(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(777f - global1.x), _wgslsmith_f_op_f32(exp2(global1.x)))))), _wgslsmith_f_op_f32(floor(-336f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zzx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.wzy))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1356f, -438f, -484f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 620f, 1216f)))))), ~firstTrailingBit(vec4<u32>(u_input.a, arg_0.a.c.x, ~arg_2.c, arg_0.a.c.x & 31247u)));
    let var_1 = arg_0.a;
    global2 = array<Struct_1, 3>();
    var_0 = Struct_4(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) - var_0.c), -980f, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-881f - var_0.b))), _wgslsmith_f_op_f32(trunc(931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-988f, var_0.b, arg_0.a.d.a.x))))), select(arg_0.a.c, countOneBits(~_wgslsmith_sub_vec4_u32(var_1.c, var_0.e)), vec4<bool>(all(arg_0.a.d.a), all(func_3(vec4<u32>(arg_0.a.c.x, 4294967295u, 1u, 0u))), true, 22705u <= (arg_0.a.c.x | 31720u))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 651f, 947f, var_0.c), vec4<f32>(var_0.d.x, -723f, var_0.b, var_0.c))))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0.c + -678f), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(-892f, -1000f), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 274f, global1.x, -1150f)), vec4<f32>(1042f, 308f, global1.x, var_0.b)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0.b, _wgslsmith_f_op_f32(-1013f * _wgslsmith_f_op_f32(floor(var_0.c))), _wgslsmith_f_op_f32(-var_0.c)) - vec4<f32>(240f, -1027f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))))));
    return !vec3<bool>(any(!vec3<bool>(var_0.a.a.d.a.x, arg_2.a.x, arg_1.x)), any(!(!vec4<bool>(arg_0.a.d.a.x, false, arg_2.a.x, arg_1.x))), 1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 1508f)));
}

fn func_2() -> Struct_3 {
    var var_0 = firstTrailingBit(countOneBits(~0u));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1105f, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1798f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global1.x))), global1.x));
    var var_1 = ~select(select(select(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 25739u), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(37882u, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)])), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), func_4(Struct_3(Struct_2(0i, vec2<u32>(u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), global2[_wgslsmith_index_u32(u_input.a, 3u)])), func_3(vec4<u32>(4294967295u, 32754u, 93304u, u_input.a)), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-1i, 62761i), u_input.a))), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(1u, 0u, u_input.a)), vec3<u32>(4171u, 0u, 4294967295u)) & (vec3<u32>(u_input.a, u_input.a, 1u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 20220u), vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u))), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(606u, 16u)], true, global0[_wgslsmith_index_u32(u_input.a, 16u)]), func_4(Struct_3(Struct_2(-44834i, vec2<u32>(u_input.a, u_input.a), vec4<u32>(u_input.a, 71514u, u_input.a, u_input.a), global2[_wgslsmith_index_u32(4294967295u, 3u)])), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], false, true), Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec2<i32>(-1i, -2147483647i), 44669u)), true | global0[_wgslsmith_index_u32(u_input.a, 16u)]), !select(vec3<bool>(global0[_wgslsmith_index_u32(25302u, 16u)], false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 16u)], false), false), select(func_3(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], false, true), func_3(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), vec3<bool>(func_4(Struct_3(Struct_2(0i, vec2<u32>(4294967295u, var_1.x), vec4<u32>(8576u, u_input.a, 0u, var_1.x), Struct_1(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1.x, 16u)]), vec2<i32>(0i, 1i), 23441u))), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], !global0[_wgslsmith_index_u32(91881u, 16u)]), global2[_wgslsmith_index_u32(~7913u >> (var_1.x % 32u), 3u)]).x, !(all(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 16u)], false, false)) & all(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(101151u, 16u)]))), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(36043u, var_1.x), var_1.xy)), 16u)]), global2[_wgslsmith_index_u32(~(~(~u_input.a)), 3u)]);
    var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(global1.x * global1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f - _wgslsmith_f_op_f32(-var_2.a)))), !(!vec3<bool>(true, var_2.b.x, var_1.x >= var_2.c.c)), Struct_1(var_2.c.a, vec2<i32>(-1i) * -(~var_2.c.b), ~(~_wgslsmith_div_u32(var_2.c.c, 52922u))));
    return Struct_3(Struct_2(~(-_wgslsmith_mult_i32(66330i, var_2.c.b.x)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.zy, vec2<u32>(1u, u_input.a)) & (vec2<u32>(var_2.c.c, 73486u) & var_1.xz), ~_wgslsmith_mult_vec2_u32(vec2<u32>(32321u, 1u), vec2<u32>(64085u, 2669u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.c, 2576u, 4294967295u, 5942u) & vec4<u32>(12088u, u_input.a, var_1.x, var_2.c.c), vec4<u32>(0u, 44656u, 38150u, var_1.x)), ~var_1.x, ~0u, 4294967295u), Struct_1(vec3<bool>(true, all(vec3<bool>(var_2.b.x, global0[_wgslsmith_index_u32(39174u, 16u)], false)), true), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.b.x, 1i, -1i, var_2.c.b.x), vec4<i32>(var_2.c.b.x, var_2.c.b.x, -850i, var_2.c.b.x))), var_2.c.c)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = func_2();
    let var_1 = ~arg_2.d.c;
    var var_2 = -(~_wgslsmith_mod_vec2_i32((vec2<i32>(arg_2.d.b.x, 2147483647i) & arg_2.d.b) ^ (arg_0.c.b | vec2<i32>(var_0.a.d.b.x, arg_1.b.x)), ~min(vec2<i32>(8821i, arg_1.b.x), arg_1.b)));
    let var_3 = arg_2.d;
    var var_4 = vec3<i32>(var_3.b.x, min(var_2.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.b, arg_0.c.b), vec2<i32>(var_0.a.a, 28580i) ^ var_3.b)), _wgslsmith_div_i32(32755i, ~(-3309i)) << (u_input.a % 32u));
    return ~_wgslsmith_mult_u32(0u, arg_1.c);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    global0 = array<bool, 16>();
    var var_0 = vec3<u32>(firstLeadingBit(firstLeadingBit(arg_2.e.x)), 1u, _wgslsmith_div_u32(u_input.a, arg_0 >> (arg_2.a.a.b.x % 32u))) & vec3<u32>(0u, ~max(1u, ~0u), _wgslsmith_mod_u32(1u >> (~arg_0 % 32u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(52921u, arg_2.e.x, 74607u), vec3<u32>(0u, u_input.a, 4294967295u)))));
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(35844u, ~0u, firstLeadingBit(~_wgslsmith_sub_u32(1u, u_input.a))), arg_2.e.zzw);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.b * 631f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)), arg_2.d.x)), arg_2.c);
    global0 = array<bool, 16>();
    return arg_2.a.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> bool {
    let var_0 = Struct_3(arg_1.a);
    var var_1 = firstLeadingBit(firstTrailingBit(~arg_1.a.d.b));
    global2 = array<Struct_1, 3>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), -1430f, !(!any(vec3<bool>(var_0.a.d.a.x, true, arg_0.d.a.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(any(vec3<bool>(false, true, true)), any(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 16u)])), global0[_wgslsmith_index_u32(1u, 16u)] || true));
    let var_1 = vec4<bool>(all(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(51128u, 16u)], true))), !(var_0.x && false), func_6(func_5(~0u, -2147483647i >> (func_1(Struct_5(-3094f, vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(u_input.a, 3u)]), global2[_wgslsmith_index_u32(u_input.a, 3u)], Struct_2(2147483647i, vec2<u32>(150036u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 3u)])) % 32u), Struct_4(Struct_3(Struct_2(1i, vec2<u32>(0u, u_input.a), vec4<u32>(0u, u_input.a, 0u, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 3u)])), _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(ceil(global1.x)), global1.yzz, firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 28543u)))), func_2(), func_2().a.d.b), global0[_wgslsmith_index_u32(4294967295u, 16u)]);
    let var_2 = Struct_3(Struct_2(func_5((u_input.a & u_input.a) & _wgslsmith_mod_u32(u_input.a, u_input.a), max(47783i, ~(-11656i)), Struct_4(func_2(), _wgslsmith_f_op_f32(floor(-396f)), _wgslsmith_f_op_f32(exp2(global1.x)), global1.zyz, ~vec4<u32>(9948u, u_input.a, 11363u, 50698u))).a, func_5(u_input.a, 69961i & _wgslsmith_dot_vec4_i32(vec4<i32>(-26838i, 28114i, 0i, 0i), vec4<i32>(-2147483647i, 0i, 28871i, -5119i)), Struct_4(Struct_3(Struct_2(-27012i, vec2<u32>(0u, 0u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 3u)])), _wgslsmith_f_op_f32(1951f + global1.x), 314f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 678f, 873f)), vec4<u32>(41854u, 0u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 1u, u_input.a, 17834u) % vec4<u32>(32u)))).b, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(15350u, u_input.a, u_input.a, u_input.a))), func_5(u_input.a, ~_wgslsmith_div_i32(1i, -34544i), Struct_4(func_2(), -1043f, _wgslsmith_f_op_f32(select(1000f, 688f, true)), _wgslsmith_f_op_vec3_f32(round(global1.zwy)), vec4<u32>(u_input.a, u_input.a, 0u, 7170u) | vec4<u32>(0u, 8717u, u_input.a, 4294967295u))).d));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1575f, global1.x, -1154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + 597f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), -686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(round(130f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-576f, 1199f, -2059f, 1172f) - vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-396f, 785f, global1.x, global1.x)))))))));
    global2 = array<Struct_1, 3>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-912f, global1.x, global1.x, -178f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, global1.x, global1.x, global1.x)), vec4<f32>(956f, 1142f, global1.x, -1058f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -221f, global1.x, 2352f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-374f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, global1.x, 959f, 205f)))))));
    var var_3 = Struct_3(func_2().a);
    var var_4 = global1.x != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + -1416f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.x, -125f))))))));
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(var_2.a.c.yyx, _wgslsmith_mod_vec3_u32(vec3<u32>(14003u, _wgslsmith_div_u32(var_2.a.b.x, 48009u), min(var_5.a.d.c, var_2.a.b.x)), vec3<u32>(112u, ~var_3.a.d.c, 0u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-887f, -500f))), _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(global1.x * global1.x)), !(!var_5.a.d.a.x))))), (reverseBits(~vec3<i32>(var_3.a.d.b.x, -2147483647i, -1i)) ^ abs(~vec3<i32>(var_3.a.a, var_3.a.d.b.x, 46153i))) ^ -vec3<i32>(var_2.a.a, var_3.a.a << (59215u % 32u), -var_5.a.d.b.x));
}

