struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 25>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 32> = array<i32, 32>(0i, 0i, -1i, -1i, 2147483647i, 0i, -1i, 15867i, -47308i, -1344i, 6446i, 2243i, 23462i, 2147483647i, 2147483647i, -19507i, -49157i, -55668i, -43168i, 1i, 8412i, -11750i, -24153i, i32(-2147483648), 1i, i32(-2147483648), -1i, 0i, i32(-2147483648), -70252i, -14692i, -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec2<bool> {
    var var_0 = vec3<bool>(global2.b, !select(global2.b, false, true), (false != any(!vec3<bool>(global2.b, global2.b, global2.b))) && all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, global2.b, true, true), global2.b), vec4<bool>(true, false, false, global2.b), select(vec4<bool>(global2.b, global2.b, false, true), vec4<bool>(false, global2.b, global2.b, false), global2.b))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f * -223f) - _wgslsmith_div_f32(314f, -1000f));
    let var_1 = ~0u;
    global1 = array<vec3<f32>, 25>();
    var var_2 = !((true || (_wgslsmith_dot_vec3_u32(vec3<u32>(11183u, global2.c, u_input.c), vec3<u32>(global2.a.x, arg_1, u_input.c)) > var_1)) == global2.b);
    return var_0.xy;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-410f, -841f)));
    var var_2 = select(~select(vec4<u32>(arg_2.c, arg_2.a.x, 0u, 21435u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 0u, 43098u, 30381u), vec4<u32>(61261u, 4294967295u, var_0.a, 34146u)), select(vec4<bool>(false, global2.b, var_0.b.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), false)) >> (vec4<u32>(~(arg_2.a.x ^ global2.c), 2549u, firstTrailingBit(var_0.a), countOneBits(u_input.c << (arg_2.a.x % 32u))) % vec4<u32>(32u)), ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.c, arg_1.a, var_0.a, global2.a.x), vec4<u32>(53676u, u_input.c, var_0.a, 67612u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, var_0.a, arg_2.a.x), vec4<u32>(38600u, 425u, var_0.a, 64151u)))), all(select(select(vec4<bool>(var_0.c, true, arg_1.b.x, var_0.c), vec4<bool>(true, true, arg_0.x, arg_0.x), !arg_0.x), vec4<bool>(!arg_0.x, !arg_1.b.x, 107095u < arg_2.c, arg_2.b), all(select(vec4<bool>(true, true, arg_0.x, arg_2.b), vec4<bool>(true, arg_0.x, false, arg_1.c), arg_1.b.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(global2.d)));
    return ~var_2.x;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> bool {
    global3 = array<i32, 32>();
    let var_0 = Struct_2(vec2<u32>(arg_2, global2.c) >> (select(vec2<u32>(~84961u, _wgslsmith_mult_u32(arg_2, arg_2)), countOneBits(global2.a) & _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(0u, 31077u)), true) % vec2<u32>(32u)), true, 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global2.d, global2.d))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2.d, vec4<f32>(2127f, 986f, -308f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-719f, arg_0, -2094f, global2.d.x)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1705f, 492f))), arg_0)), global2.d.x);
    let var_1 = vec4<u32>(~arg_2, firstLeadingBit(_wgslsmith_div_u32(88076u, 1u)), ~(~_wgslsmith_sub_u32(func_4(vec2<bool>(var_0.b, false), Struct_3(u_input.c, vec2<bool>(var_0.b, global2.b), global2.b), Struct_2(global2.a, global2.b, 27051u, global2.d, arg_1.x)), select(var_0.c, var_0.a.x, false))), 66800u);
    var var_2 = ~vec4<i32>(-abs(u_input.b), u_input.b, -1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, 19921i), vec2<i32>(global3[_wgslsmith_index_u32(var_1.x, 32u)], global3[_wgslsmith_index_u32(var_0.c, 32u)])), vec2<i32>(global3[_wgslsmith_index_u32(47464u, 32u)], 70032i))) << ((~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(var_1, var_1), _wgslsmith_sub_vec4_u32(var_1, var_1)) >> ((var_1 << (var_1 % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_add_vec2_u32(max(~firstTrailingBit(global2.a << (vec2<u32>(arg_2, 4294967295u) % vec2<u32>(32u))), ~var_1.zw), ~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(36856u, 4294967295u)), vec2<u32>(countOneBits(u_input.c), 1u)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = firstLeadingBit(vec2<u32>(u_input.c, ~(~global2.c ^ _wgslsmith_clamp_u32(global2.c, global2.c, 1u))));
    let var_1 = select(~var_0.x, _wgslsmith_mod_u32(global2.a.x, 2147u ^ var_0.x), func_5(_wgslsmith_f_op_f32(f32(-1f) * -930f), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(-1144f, -1444f)), func_4(select(func_3(vec3<i32>(-27872i, -1i, u_input.b), var_0.x), !vec2<bool>(arg_1, true), vec2<bool>(arg_1, true)), Struct_3(var_0.x, select(vec2<bool>(true, false), vec2<bool>(false, true), global2.b), !global2.b), Struct_2(var_0, true, var_0.x, _wgslsmith_f_op_vec4_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a.x)))));
    var var_2 = Struct_2(~vec2<u32>(var_1, var_0.x), global2.b, ~_wgslsmith_mult_u32(var_1, min(~59136u, _wgslsmith_dot_vec4_u32(vec4<u32>(77128u, 1u, var_1, 24670u), vec4<u32>(global2.a.x, 0u, var_1, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, -1252f, global2.d.x, 122f), vec4<f32>(1132f, 135f, arg_0.a.x, -358f)) * global2.d), _wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(max(arg_2.a, arg_2.a))))) - _wgslsmith_f_op_vec4_f32(-arg_2.a)), -615f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(step(var_2.e, -313f))))))), arg_2.a.x);
    var var_4 = vec2<bool>(all(select(vec2<bool>(all(vec2<bool>(false, false)), 0u != var_2.a.x), vec2<bool>(global2.b || true, false), select(func_3(vec3<i32>(2147483647i, -2522i, 2618i), 1u), select(vec2<bool>(false, true), vec2<bool>(var_2.b, var_2.b), false), vec2<bool>(arg_1, true)))), func_5(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_2.a.x), arg_2.a.xx)), min(~var_0.x, (4294967295u | var_0.x) | 48251u)));
    return !var_4.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a.x + -135f)))));
    global3 = array<i32, 32>();
    var var_1 = vec3<bool>(any(select(!(!vec4<bool>(global2.b, true, true, global2.b)), !vec4<bool>(arg_0.x, true, arg_1.x, arg_1.x), false)), 26682u >= ~(_wgslsmith_sub_u32(global2.c, 24538u) & _wgslsmith_mod_u32(29607u, arg_3.a)), arg_3.c || select(true, func_2(Struct_1(global2.d), true, Struct_1(arg_2.a)), any(arg_1)));
    global3 = array<i32, 32>();
    var var_2 = false;
    return _wgslsmith_clamp_i32(-global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(arg_3.a, 39026u, global2.c)), 32u)], 1i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~global2.a), ~vec2<u32>(u_input.c, u_input.c)), 32u)] << (u_input.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, max(82532u, 48454u), 1u, 24938u), ~vec4<u32>(u_input.c, global2.c, 1205u, 0u))), ~u_input.c, _wgslsmith_add_u32(firstLeadingBit(u_input.c | ~u_input.c), ~71525u));
    var var_1 = select(vec3<u32>(_wgslsmith_mod_u32(countOneBits(_wgslsmith_sub_u32(u_input.c, u_input.c)), 1u), 1u, 21039u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 58580u, global2.c), ~vec3<u32>(62543u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(u_input.c, global2.c, 86324u)), u_input.c << (1664u % 32u))), all(vec2<bool>(global2.b, any(select(vec4<bool>(global2.b, false, true, global2.b), vec4<bool>(global2.b, global2.b, true, global2.b), vec4<bool>(global2.b, global2.b, global2.b, global2.b))))));
    var var_2 = min(global2.c, ~1u);
    let var_3 = u_input.a ^ -_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(func_1(vec2<bool>(false, false), vec3<bool>(false, global2.b, global2.b), Struct_1(vec4<f32>(global2.e, -203f, -1772f, -869f)), Struct_3(9405u, vec2<bool>(global2.b, global2.b), global2.b)), 27329i & global3[_wgslsmith_index_u32(1u, 32u)], firstLeadingBit(-30142i)));
    global3 = array<i32, 32>();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(global2.d + global2.d), _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(~(-64245i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) & (var_3 << (0u % 32u))), min(~global3[_wgslsmith_index_u32(var_0.x, 32u)], ~0i) & -51131i), -(global3[_wgslsmith_index_u32(1616u, 32u)] ^ 0i), global3[_wgslsmith_index_u32(var_1.x, 32u)] | 1i, 52079u);
}

