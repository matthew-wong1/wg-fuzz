struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: f32 = -136f;

var<private> global2: bool = true;

var<private> global3: array<vec3<f32>, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(864f)), _wgslsmith_f_op_f32(-173f - -539f))), 1u);
    var var_1 = var_0.b;
    global2 = select(!all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), !(!select(false, false, false)) && all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), false);
    global2 = all(select(vec2<bool>(false, all(vec3<bool>(true, true, true))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(select(true, false, true), select(false, false, false)), !(var_0.b > var_0.b)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true)))));
    let var_2 = -1172f;
    return select(vec3<bool>(true, false, true), vec3<bool>(false, u_input.a.x >= ~_wgslsmith_add_u32(0u, 102760u), var_2 > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2)))), all(!vec4<bool>(arg_0.x < arg_0.x, select(true, true, false), all(vec3<bool>(false, false, false)), all(vec2<bool>(false, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    let var_0 = vec2<i32>(-abs(max(select(50071i, -9284i, arg_0.x), ~1i)), -29559i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(ceil(arg_1)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = abs(global0[_wgslsmith_index_u32(u_input.a.x, 6u)]);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(select(vec4<i32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 2147483647i, 30225i), vec4<i32>(13212i, arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 1i), vec4<bool>(true, false, true, true))), 262f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(abs(-356f))))));
    var var_1 = 2147483647i;
    let var_2 = Struct_2(-1225f, 331f, true, Struct_1(countOneBits(firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 10771u, u_input.a.x))))));
    var var_3 = var_2.d;
    return _wgslsmith_dot_vec3_u32(~(~(var_3.a << (vec3<u32>(7487u, 4294967295u, 1u) % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u))), firstLeadingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a.x, 3045u, 1u), u_input.a), firstLeadingBit(vec3<u32>(26740u, 0u, 27491u)))));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~select(-max(~vec2<i32>(12840i, -44167i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 28491i)), ~_wgslsmith_add_vec2_i32(select(vec2<i32>(-10499i, 2147483647i), vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), false), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 0i) | vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), vec2<bool>(all(vec4<bool>(true, true, false, false)) || (47151u <= u_input.a.x), false));
    var var_1 = u_input.a.x;
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 11u)];
    let var_3 = Struct_3(Struct_1(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x))), _wgslsmith_f_op_f32(-1599f * var_2.x), u_input.a.x);
    let var_4 = vec2<i32>(global0[_wgslsmith_index_u32(25580u, 6u)] >> (_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x | var_3.a.a.x, func_2(vec3<i32>(-6538i, var_0.x, 1i)))) % 32u), var_0.x);
    return func_3(reverseBits(~vec4<i32>(global0[_wgslsmith_index_u32(99188u, 6u)] << (u_input.a.x % 32u), ~0i, ~1i, 0i))).yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(0u, select(~(~1u), u_input.a.x, false)), 1u, _wgslsmith_mod_u32(103024u, _wgslsmith_dot_vec2_u32(select(~u_input.a.xy, _wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(24560u, u_input.a.x)), true), _wgslsmith_mod_vec2_u32(~u_input.a.zx, vec2<u32>(0u, u_input.a.x)))));
    let var_1 = ~vec3<u32>(43749u, var_0.x, ~(~reverseBits(var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))));
    let var_3 = !(!select(vec2<bool>(true, false), select(func_1(), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)));
    var var_4 = var_3.x;
    var_4 = !(_wgslsmith_f_op_f32(max(2004f, var_2)) == 1f);
    let var_5 = Struct_1(_wgslsmith_add_vec3_u32(u_input.a, abs(firstTrailingBit(var_1))));
    global3 = array<vec3<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-4392i, _wgslsmith_dot_vec4_i32(max(~vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<i32>(1i, 38335i, global0[_wgslsmith_index_u32(23819u, 6u)], global0[_wgslsmith_index_u32(30676u, 6u)]) & vec4<i32>(3323i, global0[_wgslsmith_index_u32(14548u, 6u)], 17825i, global0[_wgslsmith_index_u32(var_0.x, 6u)])), vec4<i32>(53661i, -30753i, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_5.a.x, 6u)]) & -vec4<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 25572i, -22109i, -2147483647i))), (~vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], -33709i, 9769i) ^ min(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(global0[_wgslsmith_index_u32(1638u, 6u)], 12966i, global0[_wgslsmith_index_u32(0u, 6u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(32043u, 6u)])))) | reverseBits(~(vec3<i32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(11777u, 6u)], 1i) << (u_input.a % vec3<u32>(32u)))), _wgslsmith_dot_vec3_i32(~(vec3<i32>(12921i, global0[_wgslsmith_index_u32(26715u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]) & vec3<i32>(0i, global0[_wgslsmith_index_u32(var_5.a.x, 6u)], 23963i)), firstTrailingBit(~vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)], global0[_wgslsmith_index_u32(38653u, 6u)]))) ^ _wgslsmith_dot_vec3_i32(~select(vec3<i32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(21418u, 6u)], 2745i), vec3<i32>(2147483647i, -2147483647i, -53199i), vec3<bool>(true, var_3.x, var_3.x)), vec3<i32>(-2147483647i, ~33930i, 0i)));
}

