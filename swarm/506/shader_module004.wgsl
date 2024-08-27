struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 24> = array<bool, 24>(false, false, true, false, true, true, false, true, false, false, true, true, true, true, false, false, true, true, false, true, true, true, false, false);

var<private> global3: array<f32, 21> = array<f32, 21>(-1038f, 331f, -1821f, 120f, 833f, -107f, 508f, -2003f, 1000f, 1207f, -153f, -274f, -1469f, 746f, 1647f, -792f, 572f, -892f, 993f, 373f, 1074f);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global2 = array<bool, 24>();
    var var_0 = Struct_3(select(select(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 24u)], true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], true, false), vec3<bool>(true, global2[_wgslsmith_index_u32(44825u, 24u)], false)), select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.x, global0.x), true || global0.x), global0.x), vec3<bool>(all(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 24u)], true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], true, true), vec3<bool>(false, true, false))), false, false), !(_wgslsmith_dot_vec3_i32(global4.a, arg_0.c.a) >= -global4.a.x)), !vec4<bool>(false, true, global0.x == (global0.x & global2[_wgslsmith_index_u32(13822u, 24u)]), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1000f, -540f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-329f, -124f, global3[_wgslsmith_index_u32(1u, 21u)]), vec3<f32>(global1.x, -1138f, global1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(1047f)), global3[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e, 21u)])))));
    let var_1 = Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)] || true, any(select(vec4<bool>(true, var_0.a.x, false, global0.x), vec4<bool>(var_0.b.x, false, var_0.a.x, true), true))), var_0.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-373f, arg_0.a, 1069f), var_0.c, var_0.a)), var_0.c)) + _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_div_vec3_f32(vec3<f32>(-2677f, global3[_wgslsmith_index_u32(0u, 21u)], global1.x), var_0.c))))));
    global4 = arg_0.c;
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-global4.a.x, 2147483647i, ~global4.b, _wgslsmith_clamp_i32(u_input.d, 0i, 25930i)), reverseBits(vec4<i32>(u_input.d, global4.a.x, 1i, 3892i)));
    return vec2<bool>(all(select(select(select(vec2<bool>(var_0.a.x, var_1.b.x), global0.xz, var_0.b.x), vec2<bool>(true, true), select(vec2<bool>(true, false), var_0.b.yy, var_0.b.wz)), vec2<bool>(any(vec3<bool>(global0.x, var_0.b.x, global0.x)), global0.x), ~u_input.b <= _wgslsmith_add_u32(0u, u_input.a))), !((var_2.x <= _wgslsmith_div_i32(-37011i, -46574i)) & select(!global2[_wgslsmith_index_u32(19600u, 24u)], !global2[_wgslsmith_index_u32(u_input.e, 24u)], global2[_wgslsmith_index_u32(~32375u, 24u)])));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<bool, 24>();
    var var_0 = Struct_3(vec3<bool>(!(u_input.d == -36677i), true, all(func_3(Struct_2(global1.x, Struct_1(global4.a, u_input.d), Struct_1(global4.a, global4.b))))), select(vec4<bool>(false, global1.x == global1.x, arg_0 != true, global2[_wgslsmith_index_u32(reverseBits(u_input.a), 24u)]), select(vec4<bool>(true, arg_0, global3[_wgslsmith_index_u32(0u, 21u)] >= global1.x, any(vec3<bool>(false, arg_0, global0.x))), vec4<bool>(true, true, 0i < u_input.d, any(vec2<bool>(false, arg_0))), all(global0.zx)), select(select(!vec4<bool>(true, false, global0.x, global0.x), select(vec4<bool>(arg_0, global0.x, arg_0, arg_0), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], true, arg_0, global0.x), vec4<bool>(false, global0.x, arg_0, false)), select(vec4<bool>(arg_0, global2[_wgslsmith_index_u32(0u, 24u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(61820u, 24u)], false, true, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false, true, global2[_wgslsmith_index_u32(56368u, 24u)]))), select(!vec4<bool>(global0.x, true, arg_0, true), !vec4<bool>(arg_0, true, true, false), arg_0 | true), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 21u)]) <= 699f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-325f))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~u_input.b, 21u)], _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(60242u, 21u)], global3[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 21u)]))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(843f, global3[_wgslsmith_index_u32(firstLeadingBit(u_input.e), 21u)], -471f))))));
    var var_1 = 11494i;
    var var_2 = Struct_3(select(vec3<bool>(any(vec2<bool>(true, arg_0)), !(true || global2[_wgslsmith_index_u32(0u, 24u)]), true), select(vec3<bool>(86834u == u_input.e, !global0.x, true), !var_0.a, !(!vec3<bool>(var_0.b.x, false, false))), !(!(!var_0.b.xxy))), !vec4<bool>(global0.x, true, !arg_0, var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.c))));
    global0 = select(var_2.b.zyx, vec3<bool>(global2[_wgslsmith_index_u32(abs(select(0u, u_input.e, arg_0)) & u_input.c, 24u)], any(vec4<bool>(468f != var_2.c.x, false, !arg_0, true)), true), !func_3(Struct_2(var_0.c.x, Struct_1(global4.a, u_input.d), Struct_1(vec3<i32>(0i, -25698i, -35023i), global4.b))).x);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) - 622f)) - 140f), Struct_1(~_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(global4.a.x, global4.a.x, -1i)), -global4.a), min(countOneBits(-1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, global4.b, global4.a.x)))), Struct_1(global4.a, 2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    let var_0 = arg_0.c;
    global0 = select(vec3<bool>(true, arg_1.x, !(~(-15646i) > u_input.d)), select(select(!(!vec3<bool>(global0.x, global0.x, false)), arg_1, select(!vec3<bool>(global2[_wgslsmith_index_u32(5853u, 24u)], false, true), vec3<bool>(false, arg_1.x, false), any(vec3<bool>(true, true, global0.x)))), !(!(!vec3<bool>(global0.x, false, true))), !arg_1), all(vec2<bool>(true, func_3(func_2(false)).x)));
    global4 = arg_0.c;
    var var_1 = ~select(firstTrailingBit(vec2<u32>(u_input.e, u_input.a << (1u % 32u))), ~reverseBits(select(vec2<u32>(u_input.e, 26732u), vec2<u32>(u_input.a, 6672u), global0.zy)), false);
    let var_2 = Struct_1(abs(-vec3<i32>(-50496i, firstLeadingBit(-11846i), firstTrailingBit(-51403i))), ~(2147483647i ^ _wgslsmith_div_i32(-2147483647i, func_2(false).c.b)));
    return var_2.a.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(649f, 586f, global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1129f)))))));
    var var_0 = reverseBits(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, u_input.d), ~global4.a.x), firstTrailingBit(_wgslsmith_mod_i32(global4.a.x | u_input.d, u_input.d)), func_4(func_2(false), select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(1u, 24u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], global0.x)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 24u)], false), vec3<bool>(global2[_wgslsmith_index_u32(32091u, 24u)], global0.x, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(52420u, 24u)]), global0.x)))));
    let var_1 = !global0.x;
    let var_2 = _wgslsmith_mod_i32(1i, ~var_0.x);
    return func_2(true);
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(abs(-327f)))), _wgslsmith_div_f32(-1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.x, 429f)), _wgslsmith_f_op_f32(floor(1251f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-627f, global1.x, 1370f))))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -2052f), global1.x))))));
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.zx, arg_0.xx, vec2<u32>(1u, arg_1)) | arg_0.zx, arg_0.zy) >> (u_input.c % 32u));
    var var_1 = global1.yx;
    let var_2 = ~5522i;
    return -(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-29555i, 4968i, arg_2.c.b, 1i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(254i, -2147483647i, global4.a.x, 92772i), vec4<i32>(var_2, arg_3, -40769i, arg_2.c.b))) ^ _wgslsmith_div_vec4_i32(~(vec4<i32>(var_2, -1789i, arg_3, arg_2.b.a.x) & vec4<i32>(-1i, -56221i, 59759i, arg_2.b.b)), vec4<i32>(~1i, u_input.d, arg_2.c.a.x, ~20312i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_5(countOneBits(vec3<u32>(1u, 1u, 40375u) << (vec3<u32>(u_input.b, 1u, 54025u) % vec3<u32>(32u))), 0u, func_1(global1.yz), 7674i));
    var var_1 = ~max(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.c, 0u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(13853u, 4294967295u), vec2<u32>(u_input.b, u_input.c)), abs(vec2<u32>(11862u, 52987u)))), vec2<u32>((u_input.e ^ u_input.b) & select(u_input.a, u_input.a, false), u_input.a));
    let var_2 = global1.yy;
    let var_3 = global0.yx;
    global4 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.yy)))))).c;
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.x, -2147483647i, -1i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-168f, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(61110u, 21u)]))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), global3[_wgslsmith_index_u32(4294967295u ^ var_1.x, 21u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_1.x, 21u)]))))), global1.x, _wgslsmith_f_op_f32(global1.x * global3[_wgslsmith_index_u32(var_1.x, 21u)])), 916f, 0i, vec4<u32>(firstTrailingBit(21095u), var_1.x, 755u & (u_input.a >> (3708u % 32u)), _wgslsmith_sub_u32(abs(u_input.b), ~u_input.a)) & _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, var_1.x, 0u, 7400u)), ~abs(vec4<u32>(0u, var_1.x, u_input.e, u_input.e))));
}

