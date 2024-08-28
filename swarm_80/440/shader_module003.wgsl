struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-32706i, 9253i), vec2<i32>(-1i, 26049i), vec2<i32>(0i, -8668i));

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<bool>, 16>;

var<private> global3: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(64196u));

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = global4[_wgslsmith_index_u32(arg_0.b, 16u)];
    var var_1 = 0u;
    var_1 = 726u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c, var_0.b.c, 2316f) + vec3<f32>(-1167f, 691f, arg_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-587f, var_0.a, var_0.b.c), vec3<f32>(-662f, var_0.a, var_0.b.c), var_0.b.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(623f, arg_0.c, 472f)), vec3<bool>(true, global1.x, true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c, -1732f, -1178f), vec3<f32>(arg_0.c, arg_0.c, var_0.a))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, arg_0.c, 1067f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c, arg_0.c, -132f) - vec3<f32>(1859f, -577f, var_0.a)))), var_0.b.d.x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, 1868f, arg_0.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 687f, 591f))))), vec3<f32>(182f, _wgslsmith_f_op_f32(max(1664f, _wgslsmith_div_f32(arg_0.c, arg_0.c))), var_0.a))));
    var var_3 = Struct_1(i32(-1i) * -2147483647i, 4294967295u, -497f, !vec2<bool>(global1.x, true), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(var_0.b.e.yz, select(var_0.b.e.yy, arg_0.e.yy, true)), var_0.b.e.x), vec3<i32>(-1i) * -firstLeadingBit(arg_0.e)));
    return vec2<bool>(var_0.b.d.x | !global1.x, false);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: bool) -> u32 {
    global2 = array<vec3<bool>, 16>();
    global4 = array<Struct_2, 16>();
    let var_0 = (countOneBits(arg_1) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~41974u, countOneBits(1u), _wgslsmith_div_u32(10183u, 1u)), _wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(0u, 3369u), 4294967295u)) % 32u)) | u_input.a;
    let var_1 = Struct_1(32417i, ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(280f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1160f * -762f))), arg_2))), !select(vec2<bool>(true, true), select(!vec2<bool>(global1.x, false), vec2<bool>(global1.x, arg_2), func_3(Struct_1(-53201i, 0u, 591f, vec2<bool>(global1.x, global1.x), vec3<i32>(u_input.a, 43178i, -2147483647i))).x), true), abs(reverseBits(vec3<i32>(i32(-1i) * -46210i, abs(arg_1), select(-25292i, 11389i, true)))));
    var var_2 = var_1.a;
    return var_1.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    global4 = array<Struct_2, 16>();
    let var_0 = global3[_wgslsmith_index_u32(0u, 1u)];
    let var_1 = Struct_1(~_wgslsmith_sub_i32(u_input.a << (48091u % 32u), 27302i), func_4(arg_2.x, 0i, any(func_3(Struct_1(u_input.a, 55836u, 1988f, vec2<bool>(arg_1, arg_1), arg_2.xxy)))) & abs(countOneBits(firstLeadingBit(4294967295u))), -1735f, select(!select(arg_0, select(arg_0, vec2<bool>(arg_1, true), arg_0), vec2<bool>(arg_0.x, global1.x)), arg_0, !all(vec2<bool>(true, true)) & !all(vec2<bool>(false, global1.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(24979i) & firstTrailingBit(arg_2.x), 66820i, arg_2.x), max(~(vec3<i32>(arg_2.x, u_input.a, u_input.a) | vec3<i32>(-1i, -24393i, -19033i)), min(select(vec3<i32>(-2147483647i, -16874i, u_input.a), arg_2.wyz, vec3<bool>(true, true, true)), -arg_2.yzw)), _wgslsmith_div_vec3_i32(abs(arg_2.yyy), vec3<i32>(arg_2.x, _wgslsmith_clamp_i32(arg_2.x, arg_2.x, 1i), -u_input.a))));
    let var_2 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(func_4(var_1.a ^ arg_2.x, _wgslsmith_add_i32(u_input.a, var_1.a), true), ~(~var_1.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_1.b, 0u), _wgslsmith_sub_u32(var_0.a, 1u)), vec2<u32>(~var_1.b, countOneBits(1u))), 22962u));
    global1 = select(vec2<bool>(arg_1, false), arg_0, var_1.d);
    return Struct_3(_wgslsmith_add_u32(1u, var_0.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-arg_0.c)));
    global4 = array<Struct_2, 16>();
    var var_1 = min(~(~vec3<u32>(~arg_0.b, arg_2.a, arg_1.x)), ~countOneBits(reverseBits(abs(vec3<u32>(arg_0.b, 1u, arg_1.x)))));
    let var_2 = _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_mult_u32(min(15814u, 47515u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yy, vec2<u32>(arg_0.b, arg_0.b)), var_1.zy) ^ func_2(arg_0.d, true, ~vec4<i32>(0i, u_input.a, arg_0.a, arg_0.e.x)).a));
    let var_3 = arg_0.b;
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = func_5(arg_2, vec4<u32>(~(~arg_2.b) & _wgslsmith_sub_u32(arg_2.b, _wgslsmith_div_u32(arg_2.b, 65767u)), ~(~(~4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2.b, 1u, 10120u), min(vec4<u32>(arg_2.b, arg_2.b, arg_2.b, 0u), vec4<u32>(61940u, arg_2.b, arg_2.b, 48563u))), vec4<u32>(52006u, arg_2.b, firstLeadingBit(0u), arg_2.b)), ~_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(arg_2.b, arg_2.b))), func_2(vec2<bool>(true, false), true || global1.x, reverseBits(-vec4<i32>(arg_2.e.x, 2147483647i, arg_0, 7358i) << (~vec4<u32>(arg_2.b, arg_2.b, 93075u, 4294967295u) % vec4<u32>(32u)))), 925f);
    var var_1 = func_2(!vec2<bool>(true, any(!arg_2.d)), false, ~_wgslsmith_div_vec4_i32(~abs(vec4<i32>(1i, u_input.a, arg_3, u_input.a)), vec4<i32>(u_input.a, ~arg_1.x, 3519i, arg_1.x)));
    global0 = array<vec2<i32>, 3>();
    global3 = array<Struct_3, 1>();
    global2 = array<vec3<bool>, 16>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1u);
    let var_1 = all(select(vec4<bool>(true, true, global1.x, global1.x), select(vec4<bool>(4294967295u == var_0.a, var_0.a != var_0.a, true, func_1(u_input.a, global0[_wgslsmith_index_u32(var_0.a, 3u)], Struct_1(u_input.a, var_0.a, 336f, vec2<bool>(global1.x, true), vec3<i32>(u_input.a, u_input.a, -10915i)), 2147483647i)), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, false, global1.x, true), !vec4<bool>(true, global1.x, false, global1.x)), any(vec3<bool>(global1.x, global1.x, true))), vec4<bool>(global1.x | false, true, any(global2[_wgslsmith_index_u32(1u, 16u)]), all(global2[_wgslsmith_index_u32(var_0.a, 16u)]))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1529f, _wgslsmith_f_op_f32(ceil(-959f))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(-var_2.x)))), var_2.x);
    var var_4 = firstTrailingBit(u_input.a);
    let var_5 = !vec2<bool>(!(true || func_1(-32905i, global0[_wgslsmith_index_u32(0u, 3u)], Struct_1(16422i, 0u, var_2.x, vec2<bool>(global1.x, true), vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a)), var_1);
    var var_6 = ~1u;
    var var_7 = select(select(all(vec3<bool>(global1.x, true, var_5.x)), func_1(_wgslsmith_clamp_i32(u_input.a, -2147483647i >> (var_0.a % 32u), 20819i), ~_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(var_0.a, 3u)], vec2<i32>(-45510i, 27793i)), Struct_1(_wgslsmith_div_i32(u_input.a, -9629i), 1u, _wgslsmith_f_op_f32(var_2.x + var_3.x), vec2<bool>(var_5.x, var_5.x), vec3<i32>(u_input.a, 2147483647i, u_input.a) & vec3<i32>(u_input.a, -2147483647i, u_input.a)), u_input.a), var_5.x), false, all(vec4<bool>(true, any(vec2<bool>(var_1, true)), all(!vec2<bool>(true, var_5.x)), !(-8281i > u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, ~vec3<u32>(~(~var_0.a), min(4294967295u, abs(61412u)), ~0u));
}

