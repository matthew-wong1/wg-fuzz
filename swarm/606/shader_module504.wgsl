struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: array<u32, 30>;

var<private> global2: array<u32, 16>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(firstTrailingBit(firstTrailingBit(0u) & firstTrailingBit(~u_input.a.x)), select(vec2<bool>(true, true), vec2<bool>(min(arg_0.a.x, arg_0.a.x) == 891u, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, 1932f, -370f, -1062f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(600f * -818f) + _wgslsmith_f_op_f32(sign(1289f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(557f)), -100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(442f - -1751f) + -364f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2550f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f - -403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-294f, 591f)))))));
    let var_2 = select(vec3<bool>(any(!(!vec4<bool>(var_0.b.x, false, false, true))), !(any(vec2<bool>(var_0.b.x, true)) & all(var_0.b)), !var_0.b.x), vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(3691u, 30u)] >= 4294967295u, var_0.b.x, global2[_wgslsmith_index_u32(arg_0.a.x, 16u)] <= arg_0.a.x, all(vec3<bool>(true, var_0.b.x, true)))), var_0.b.x && any(select(vec4<bool>(false, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.b.x, false, true), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x))), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, false), var_0.b.x))));
    let var_3 = Struct_4(var_2.x, _wgslsmith_mult_vec2_u32(arg_0.a.xy, arg_0.a.xy << (_wgslsmith_mult_vec2_u32(u_input.a.zz, global0[_wgslsmith_index_u32(~126457u, 2u)]) % vec2<u32>(32u))), Struct_3(Struct_1(u_input.a ^ ~arg_0.a), true, Struct_2(33563u, select(vec2<bool>(true, var_0.b.x), vec2<bool>(var_2.x, var_0.b.x), var_0.b)), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 1i), u_input.b, vec4<i32>(23617i, -2147483647i, -36830i, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -1i, -49021i), vec4<i32>(-42065i, -17486i, 1i, u_input.c.x))), -((vec2<i32>(u_input.b.x, u_input.c.x) & vec2<i32>(u_input.b.x, u_input.b.x)) << (~vec2<u32>(37145u, var_0.a) % vec2<u32>(32u)))), Struct_1(vec3<u32>(u_input.a.x | 46331u, 0u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 30u)], abs(6805u)))), Struct_2(~global2[_wgslsmith_index_u32(30292u, 16u)], vec2<bool>(true, var_2.x)));
    global2 = array<u32, 16>();
    return true;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_2.a, !arg_0 || any(vec3<bool>(true, true && arg_0, func_3(Struct_1(vec3<u32>(u_input.a.x, 3916u, 76754u))))), Struct_2(countOneBits(50677u), arg_2.c.b), 1i, u_input.b.zy);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-284f, 1445f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, arg_1))), vec2<f32>(-1280f, _wgslsmith_div_f32(arg_1, arg_1)))))), vec2<bool>(true, any(!select(vec4<bool>(false, arg_2.b, true, arg_0), vec4<bool>(true, true, var_0.b, true), true)))));
    global0 = array<vec2<u32>, 2>();
    let var_2 = Struct_4(any(vec3<bool>(all(vec4<bool>(arg_0, var_0.c.b.x, true, var_0.c.b.x)), true, (var_0.c.b.x && var_0.b) | all(var_0.c.b))), u_input.a.xx, arg_2, Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_2.a.a.x, arg_2.a.a.x), ~(~var_0.a.a))), var_0.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-arg_1)))));
    return _wgslsmith_add_u32(var_2.c.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(0u), ~107125u, ~global2[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_add_u32(4294967295u, var_2.e.a)), vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 101834u, 0u, 7182u), vec4<u32>(arg_2.c.a, global2[_wgslsmith_index_u32(var_0.c.a, 16u)], global1[_wgslsmith_index_u32(var_2.d.a.x, 30u)], global1[_wgslsmith_index_u32(1u, 30u)])))) << (~reverseBits(_wgslsmith_add_u32(abs(1u), countOneBits(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.b.x, 16u)], 30u)]))) % 32u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_3(arg_2, u_input.b.x <= _wgslsmith_add_i32(_wgslsmith_mod_i32(~29188i, -u_input.b.x), abs(~u_input.c.x)), Struct_2(62733u, select(vec2<bool>(arg_2.a.x <= 74952u, true), vec2<bool>(true, true), (u_input.b.x | 2147483647i) <= ~u_input.b.x)), i32(-1i) * -36487i, u_input.b.zx);
    var var_1 = var_0;
    var_1 = var_0;
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    return -u_input.c.x < 1i;
}

fn func_1() -> bool {
    global2 = array<u32, 16>();
    global2 = array<u32, 16>();
    return !(!func_4(reverseBits(global1[_wgslsmith_index_u32(func_2(false, 1673f, Struct_3(Struct_1(u_input.a), true, Struct_2(7919u, vec2<bool>(true, false)), u_input.b.x, vec2<i32>(u_input.b.x, u_input.b.x))), 30u)]), _wgslsmith_f_op_f32(abs(517f)), Struct_1(countOneBits(u_input.a))));
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f - 847f));
    let var_1 = select(select(arg_0.zz, vec2<bool>(arg_0.x, false), select(arg_0.zy, !select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), arg_0.x), vec2<bool>(arg_0.x == true, true))), arg_0.xz, select(select(vec2<bool>(true, true), !arg_0.zx, arg_0.yz), arg_0.zy, select(!(!vec2<bool>(true, arg_0.x)), arg_0.xx, !select(arg_0.zy, vec2<bool>(false, arg_0.x), arg_0.yy))));
    var var_2 = countOneBits(vec3<u32>(~4294967295u, u_input.a.x, max(1u, 0u)) ^ ~vec3<u32>(~20094u, 0u, ~1u));
    global1 = array<u32, 30>();
    var_2 = select(_wgslsmith_add_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(reverseBits(0u), 30u)], ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 16u)], 30u)], 16u)] ^ ~global2[_wgslsmith_index_u32(67084u, 16u)], 4294967295u), ~(~max(u_input.a, vec3<u32>(u_input.a.x, 73685u, 1u)))), firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], countOneBits(var_2.x) ^ (0u >> (global2[_wgslsmith_index_u32(0u, 16u)] % 32u)), u_input.a.x)), select(!(!(!vec3<bool>(false, var_1.x, var_1.x))), select(!arg_0, vec3<bool>(arg_0.x, 34879i <= u_input.b.x, true), all(select(vec2<bool>(arg_0.x, var_1.x), vec2<bool>(var_1.x, arg_0.x), false))), vec3<bool>(firstTrailingBit(u_input.b.x) == ~24815i, true, ~27241u > (global1[_wgslsmith_index_u32(19787u, 30u)] << (global2[_wgslsmith_index_u32(var_2.x, 16u)] % 32u)))));
    return Struct_1((vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, var_2.x, global2[_wgslsmith_index_u32(29091u, 16u)]), ~var_2.x, countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 16u)], 16u)])) << (u_input.a % vec3<u32>(32u))) & countOneBits(vec3<u32>(firstTrailingBit(0u), 38719u, abs(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!(!vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, true, true)), func_1())));
    let var_1 = Struct_2(func_5(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))).a.x, !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), func_3(var_0)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    let var_2 = all(!select(select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), var_1.b.x), select(vec4<bool>(true, false, var_1.b.x, false), vec4<bool>(var_1.b.x, true, var_1.b.x, false), vec4<bool>(var_1.b.x, true, var_1.b.x, false)), !vec4<bool>(false, var_1.b.x, true, var_1.b.x))) & true;
    global2 = array<u32, 16>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(1502f)), _wgslsmith_f_op_f32(-1000f + 1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_u32(var_1.a, _wgslsmith_div_u32(u_input.a.x, 57659u)) << (_wgslsmith_clamp_u32(1u, ~1u, 59093u) % 32u)), firstTrailingBit(u_input.c.x));
}

