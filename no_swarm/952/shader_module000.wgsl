struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(486f, 2130f), vec2<f32>(-583f, 1886f), vec2<f32>(-540f, 115f), vec2<f32>(1622f, 309f), vec2<f32>(705f, -837f));

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 1u, 12295u), vec3<u32>(1u, 580u, 1u), vec3<u32>(57648u, 48943u, 26188u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 15127u, 27325u), vec3<u32>(60884u, 0u, 1u), vec3<u32>(1u, 88941u, 6981u));

var<private> global2: array<f32, 9>;

var<private> global3: array<Struct_1, 27>;

var<private> global4: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = vec3<bool>(any(vec4<bool>(true, true, true, false)), true, any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), true)));
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(10908i, 2147483647i, global4.x), -vec3<i32>(u_input.a, global4.x, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(1972i, 1i)), 1i, global4.x << (4294967295u % 32u))), u_input.b.x) | _wgslsmith_div_i32(max(-36432i, countOneBits(0i)) ^ u_input.b.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), global4.wz));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, global4.x), ~global4.zy), -u_input.a)), _wgslsmith_div_i32(-3916i, 24645i), ~func_3(), abs(global4.x));
    let var_1 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(vec2<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))), any(vec4<bool>(true, true, true, true))), false), select(vec2<bool>(false, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), !all(vec2<bool>(false, true))), vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false))));
    let var_2 = -abs(reverseBits(u_input.a | ~u_input.a));
    global2 = array<f32, 9>();
    global0 = array<vec2<f32>, 5>();
    return Struct_2(vec2<bool>(var_1.x, !all(var_1) & any(!vec4<bool>(false, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 9u)])), -235f, vec2<u32>(~min(~1u, min(0u, 0u)), 24752u), ~global1[_wgslsmith_index_u32(~40260u, 7u)]);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = func_2();
    var var_1 = 14733u;
    let var_2 = -firstLeadingBit(~vec4<i32>(35525i, -2147483647i, -42637i, global4.x)) ^ vec4<i32>(-1i, ~0i | _wgslsmith_dot_vec3_i32(vec3<i32>(-20557i, global4.x, u_input.b.x) << (vec3<u32>(var_0.e.x, 0u, var_0.d.x) % vec3<u32>(32u)), global4.xzw), firstTrailingBit(arg_0.b.x), -2147483647i);
    var var_3 = vec2<bool>(all(!select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(true, var_0.a.x, false, var_0.a.x), false), vec4<bool>(true, true, false, var_0.a.x), select(vec4<bool>(var_0.a.x, true, true, false), vec4<bool>(false, false, var_0.a.x, var_0.a.x), var_0.a.x))), var_0.a.x);
    var var_4 = arg_0;
    return 251f;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~(~1u), ~(firstTrailingBit(29870u) | ~124249u)), select(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(32552u, 0u, 0u), max(vec3<u32>(13407u, 4294967295u, 582u), vec3<u32>(4294967295u, 41199u, 63941u))) & ~abs(1u), select(arg_0, !any(vec4<bool>(true, true, arg_0, arg_0)), !arg_0)));
    global4 = _wgslsmith_div_vec4_i32(abs(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, -2147483647i, u_input.b.x), global4.yzw), _wgslsmith_clamp_i32(global4.x, 35961i, -1i), -13536i, i32(-1i) * -51478i)), min(min(select(vec4<i32>(-1i, -59374i, 2147483647i, global4.x), -vec4<i32>(1i, 11957i, -1i, 10809i), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, false, true), arg_0)), ~vec4<i32>(-1i, global4.x, u_input.b.x, -7193i)), vec4<i32>(min(0i, 0i ^ u_input.b.x), _wgslsmith_div_i32(u_input.a | 2147483647i, u_input.b.x), arg_2.b.x, max(global4.x, u_input.b.x | arg_2.b.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 9u)]), arg_1.x), arg_2.c))), reverseBits(~(~select(u_input.b, arg_2.b, vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(779f, global2[_wgslsmith_index_u32(var_0, 9u)])) - func_2().b)) + global0[_wgslsmith_index_u32(~0u, 5u)]));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1)))));
    return Struct_2(vec2<bool>(!(_wgslsmith_sub_u32(79053u, var_0) <= 0u), any(!vec3<bool>(arg_0, false, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(648f)), -700f))), func_2().b, _wgslsmith_div_vec2_u32(~(~(vec2<u32>(67902u, var_0) | vec2<u32>(0u, var_0))), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 11465u) & vec2<u32>(var_0, var_0), vec2<u32>(1u, 1u))), abs(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, 0u), vec4<u32>(4294967295u, 63257u, 20705u, var_0)) & ~var_0, 0u << (var_0 % 32u)), 7u)]));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<f32> {
    global0 = array<vec2<f32>, 5>();
    let var_0 = global3[_wgslsmith_index_u32((1u >> (arg_0.d.x % 32u)) << (arg_1.x % 32u), 27u)];
    global0 = array<vec2<f32>, 5>();
    global3 = array<Struct_1, 27>();
    let var_1 = global3[_wgslsmith_index_u32(arg_1.x, 27u)];
    return _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1769f, _wgslsmith_f_op_f32(f32(-1f) * -286f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), arg_0.a));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> StorageBuffer {
    var var_0 = arg_0.b.x;
    global0 = array<vec2<f32>, 5>();
    var var_1 = true;
    global4 = (firstTrailingBit(abs(vec4<i32>(6577i, 1i, global4.x, global4.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) & reverseBits(~select(vec4<i32>(26277i, u_input.b.x, global4.x, arg_0.b.x), vec4<i32>(u_input.b.x, arg_0.b.x, arg_0.b.x, 14222i), vec4<bool>(false, true, false, arg_1)))) | vec4<i32>(u_input.a & global4.x, ~abs(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~u_input.b, select(arg_0.b, vec3<i32>(8933i, 13779i, u_input.b.x), vec3<bool>(true, false, arg_2))), 7015i, global4.x), func_3());
    let var_2 = -539f;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, global2[_wgslsmith_index_u32(1u, 9u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(0u, 5u)])) + vec2<f32>(var_2, 1489f)))), _wgslsmith_sub_vec2_i32(max(-u_input.b.xx, countOneBits(firstLeadingBit(u_input.b.xy))), _wgslsmith_div_vec2_i32(-vec2<i32>(1i, 27732i), vec2<i32>(global4.x, _wgslsmith_mod_i32(-1i, u_input.a)))), vec3<u32>(1u, 20369u, 1u), _wgslsmith_f_op_f32(-475f * _wgslsmith_f_op_f32(-var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(u_input.a, global4.x, 27590i);
    global0 = array<vec2<f32>, 5>();
    global3 = array<Struct_1, 27>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(1334f)), -132f);
    global0 = array<vec2<f32>, 5>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~1u, 9u)], 1544f))), _wgslsmith_f_op_f32(abs(var_1.x)), global2[_wgslsmith_index_u32(1u, 9u)])));
    let x = u_input.a;
    s_output = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(func_5(func_4(true, vec4<f32>(-2281f, -386f, 587f, -816f), global3[_wgslsmith_index_u32(20825u, 27u)], _wgslsmith_f_op_f32(func_1(Struct_1(var_2.yy, u_input.b, vec2<f32>(-591f, var_1.x)), 1711f, var_1.x))), _wgslsmith_add_vec3_u32(func_4(true, vec4<f32>(-1000f, -187f, var_2.x, 2213f), global3[_wgslsmith_index_u32(7107u, 27u)], global2[_wgslsmith_index_u32(10015u, 9u)]).e, ~vec3<u32>(374u, 22138u, 1u)))), vec3<i32>(max(1i, var_0) << (reverseBits(4294967295u) % 32u), ~countOneBits(global4.x), ~min(-13382i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(select(4294967295u, 0u, false), 5u)])) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~96885u, 5u)]))), select(!(var_0 <= _wgslsmith_sub_i32(-2147483647i, var_0)), !(!all(vec3<bool>(false, true, false))), true), true);
}

