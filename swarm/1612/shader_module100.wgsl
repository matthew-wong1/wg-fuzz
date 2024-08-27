struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -991f;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(global2.b.x >> (_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(reverseBits(u_input.b), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(1u, 49752u, 13154u), u_input.b), ~u_input.b, !global1[_wgslsmith_index_u32(11174u, 3u)]), u_input.b)) % 32u), 3u)];
    let var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), (17027u | global2.b.x) == ~0u), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], false, global1[_wgslsmith_index_u32(3126u, 3u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(global2.b.x, 3u)], true, false), true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(global2.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(22856u, 3u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(12831u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), select(vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 3u)], false, global1[_wgslsmith_index_u32(global2.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)]), true)), vec4<bool>(all(vec3<bool>(false, true, true)), !global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(~global2.b.x, 3u)], all(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)])))), vec4<bool>(true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 3u)])), global1[_wgslsmith_index_u32(15603u, 3u)], false)), vec4<bool>(false, any(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(global2.b.x, 3u)]))), true, all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(global2.b.x, 3u)], true, global1[_wgslsmith_index_u32(global2.b.x, 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], false, global1[_wgslsmith_index_u32(4294967295u, 3u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(48356u, 3u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(9604u, 3u)], true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global2.b.x, 3u)], false))))), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], select(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global1[_wgslsmith_index_u32(4294967295u, 3u)] && global1[_wgslsmith_index_u32(20103u, 3u)]), !global1[_wgslsmith_index_u32(~97052u, 3u)], any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 3u)], false), global1[_wgslsmith_index_u32(12432u, 3u)]))));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global2.a, global2.a, var_1)), u_input.b.zy, _wgslsmith_f_op_f32(global2.c * 1965f));
    global0 = -2137f;
    var var_2 = Struct_3(1228f, Struct_2(global2.a, max(countOneBits(u_input.b.yy), vec2<u32>(firstTrailingBit(global2.b.x), ~1u)), _wgslsmith_div_f32(-933f, _wgslsmith_f_op_f32(global2.a.x * -1215f))), select(_wgslsmith_div_vec4_u32(vec4<u32>(global2.b.x, 4294967295u, 1u, 0u), max(vec4<u32>(73193u, global2.b.x, 1u, 11016u), vec4<u32>(4294967295u, 2313u, 15999u, global2.b.x))), vec4<u32>(1u, ~0u, max(39535u, 42200u), reverseBits(global2.b.x)), false) << (~(~min(vec4<u32>(3803u, global2.b.x, global2.b.x, 1u), vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u))) % vec4<u32>(32u)), vec4<i32>(-reverseBits(-u_input.d), 2147483647i, firstLeadingBit(u_input.d ^ u_input.d), -1i));
    return reverseBits(_wgslsmith_div_vec2_u32(u_input.b.xx, vec2<u32>(abs(4294967295u), 1u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = Struct_4(select(max(firstTrailingBit(~vec2<u32>(global2.b.x, arg_1)), ~func_3()), vec2<u32>(firstTrailingBit(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1, 32583u, global2.b.x) >> (vec4<u32>(3760u, global2.b.x, arg_1, global2.b.x) % vec4<u32>(32u)), ~vec4<u32>(0u, 6877u, arg_1, 33807u))), !(!(global1[_wgslsmith_index_u32(45872u, 3u)] || true))), arg_3, arg_3);
    global1 = array<bool, 3>();
    var var_1 = firstLeadingBit(1u);
    let var_2 = Struct_2(vec4<f32>(-541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.c)))), _wgslsmith_f_op_f32(ceil(global2.a.x)), global2.c), ~vec2<u32>(86618u, ~firstLeadingBit(41852u)), 749f);
    var var_3 = -vec2<i32>(46813i, u_input.d);
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_4(u_input.b.xy, -select(abs(firstLeadingBit(-7485i)), _wgslsmith_div_i32(-39618i, u_input.d) << (4294967295u % 32u), (global1[_wgslsmith_index_u32(arg_1, 3u)] | arg_2.a) | global1[_wgslsmith_index_u32(firstTrailingBit(global2.b.x), 3u)]), _wgslsmith_clamp_i32(u_input.d << (u_input.b.x % 32u), countOneBits(abs(u_input.a.x)), ~(-26543i)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)));
    global2 = Struct_2(vec4<f32>(1033f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.c, -1690f)) + 1f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.c)), global2.c))), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))), max(vec2<u32>(~0u, abs(~30084u)), u_input.b.zy), 1142f);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1251f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.a.wzx)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-2100f, 293f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.c, global2.a.x))))))));
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x) > arg_0.x;
    let var_1 = Struct_1(global2.b.x <= abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.c), countOneBits(31309u))));
    var var_2 = vec4<bool>(func_4(~_wgslsmith_mult_u32(4294967295u, 1u), (reverseBits(global2.b.x) >> (_wgslsmith_mult_u32(66271u, 0u) % 32u)) << (~func_2(var_1, global2.b.x, arg_1, 28278i) % 32u), Struct_1(all(!vec3<bool>(arg_1, arg_1, false)))), true, true, arg_1);
    var var_3 = Struct_4(~(~global2.b), _wgslsmith_dot_vec3_i32(u_input.a.wxz, ~vec3<i32>(u_input.d, u_input.a.x, 2882i) & ~_wgslsmith_div_vec3_i32(u_input.a.yzz, vec3<i32>(u_input.d, 32416i, 2147483647i))), -2147483647i);
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1092f * _wgslsmith_f_op_f32(floor(-491f))))), _wgslsmith_sub_vec2_u32(global2.b >> (vec2<u32>(~global2.b.x, var_3.a.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u) ^ u_input.c, ~_wgslsmith_mod_u32(global2.b.x, u_input.b.x))), _wgslsmith_f_op_f32(abs(global2.a.x)));
    return Struct_3(_wgslsmith_f_op_f32(var_4.c + _wgslsmith_f_op_f32(max(-476f, 174f))), Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-748f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(trunc(global2.c))))), u_input.b.yz, -2081f), ~min(vec4<u32>(12242u << (var_3.a.x % 32u), ~8924u, 1u, 17785u >> (0u % 32u)), ~vec4<u32>(75794u, 1u, u_input.c, u_input.c)), vec4<i32>(-(-var_3.b | ~0i), 1i, _wgslsmith_dot_vec2_i32(u_input.a.yz, (vec2<i32>(-1i, 22339i) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(34630u, global2.b.x) % vec2<u32>(32u))), var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, global2.a.x, global2.a.x)))))), true);
    global2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-29077i, vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), global2.b), select(~20173u, global2.b.x >> (1u % 32u), any(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.c.x, 3u)], global1[_wgslsmith_index_u32(global2.b.x, 3u)], true))) & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(u_input.b, var_0.c.zxy)), ~var_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.c, global2.a.x, 530f)))) * global2.a.zxx), ~(~vec3<u32>(var_0.b.b.x, 1u, 80078u)));
}

