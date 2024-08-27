struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<vec3<u32>, 29>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-421f - 1000f)))));
}

fn func_2() -> Struct_5 {
    var var_0 = vec4<bool>(u_input.c.x <= abs(_wgslsmith_div_i32(-25570i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -22131i, u_input.c.x), vec4<i32>(-1i, -9794i, u_input.c.x, 2147483647i)))), (false && any(vec3<bool>(true, true, false))) && global1.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f - 537f)) == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1751f, -1083f)))) && false, -672f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var_0 = vec4<bool>(global2.x, true, !all(select(select(vec4<bool>(global1.x, global1.x, var_0.x, true), vec4<bool>(global2.x, false, false, var_0.x), vec4<bool>(global1.x, var_0.x, true, global1.x)), select(vec4<bool>(var_0.x, global1.x, global1.x, false), vec4<bool>(var_0.x, global2.x, global2.x, false), global1.x), true)), 37364u == u_input.b);
    global3 = array<vec3<u32>, 29>();
    global0 = _wgslsmith_dot_vec3_i32(max(u_input.c.wzy, u_input.c.wxz & firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(20009i, u_input.c.x, 38659i), u_input.c.yxz))), abs(abs(vec3<i32>(u_input.c.x, 1i, u_input.c.x) >> (global3[_wgslsmith_index_u32(6985u, 29u)] % vec3<u32>(32u)))));
    var var_1 = vec3<i32>(18385i, max(2147483647i, reverseBits(u_input.c.x)), _wgslsmith_sub_i32(select(u_input.c.x, u_input.c.x, true), -19364i));
    return Struct_5(Struct_1(-22914i), !(!global1.x), _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(u_input.c.x, 2147483647i, 0i, 0i)), _wgslsmith_add_vec4_i32(firstTrailingBit(u_input.c), u_input.c), vec4<bool>(!global2.x, select(var_0.x, global2.x, false), false, true)), u_input.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(372f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1165f, -1173f) + vec2<f32>(1926f, 1645f))), vec2<f32>(-381f, 1586f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f))), !global2.zy)));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    global0 = reverseBits(reverseBits(arg_0.a.a));
    global3 = array<vec3<u32>, 29>();
    global0 = firstTrailingBit(min(func_2().c, 24530i));
    global2 = !global1.xyy;
    var var_0 = Struct_2(func_2().a, !(!vec3<bool>(false, any(vec4<bool>(global1.x, false, arg_0.b, global1.x)), !global2.x)));
    return Struct_3(-1351f, u_input.c.xz, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(-21992i, -13212i), 2147483647i, _wgslsmith_mult_i32(arg_0.a.a, 11825i), _wgslsmith_mod_i32(46284i, var_0.a.a))), ~_wgslsmith_mult_vec4_i32(~u_input.c, u_input.c)));
}

fn func_1() -> vec2<f32> {
    let var_0 = func_4(func_2());
    global1 = !vec4<bool>(all(select(global1.yz, !vec2<bool>(global2.x, false), false)), false, _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, var_0.b.x), 0i >> (1u % 32u)) <= _wgslsmith_add_i32(1i, -1i), global2.x);
    global1 = select(select(select(select(!vec4<bool>(false, global1.x, global1.x, true), select(vec4<bool>(global2.x, global1.x, global2.x, true), vec4<bool>(global1.x, global1.x, false, global1.x), true), !vec4<bool>(global2.x, true, global2.x, global2.x)), vec4<bool>(all(vec4<bool>(false, global2.x, global2.x, global1.x)), false, var_0.c != var_0.b.x, false), true), !(!(!vec4<bool>(false, global1.x, false, true))), select(select(!vec4<bool>(global1.x, true, true, global2.x), vec4<bool>(false, global1.x, global2.x, false), !global1.x), vec4<bool>(false, !global2.x, var_0.c < u_input.c.x, true), false)), select(vec4<bool>(true, false, !(false || global1.x), !(var_0.a <= var_0.a)), !select(select(vec4<bool>(true, global2.x, global1.x, true), vec4<bool>(false, false, global1.x, false), global1.x), vec4<bool>(global2.x, true, false, global2.x), global2.x), vec4<bool>(global1.x, func_2().b, all(!vec2<bool>(global2.x, global1.x)), !func_2().b)), !vec4<bool>(true, global2.x, true, global1.x));
    var var_1 = ~(~(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.b), vec4<u32>(u_input.d, u_input.e.x, u_input.b, u_input.a), vec4<bool>(false, global2.x, true, false)), vec4<u32>(u_input.b, u_input.b, 0u, u_input.d) & vec4<u32>(u_input.a, u_input.d, u_input.b, 0u), vec4<u32>(u_input.d, 0u, 4294967295u, 93262u) << (vec4<u32>(u_input.a, 35609u, 0u, u_input.a) % vec4<u32>(32u))) & ~(~vec4<u32>(u_input.a, 79724u, u_input.e.x, 1u))));
    let var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.d, var_1.x, 54735u, 881u)), vec4<u32>(43453u, 7827u, 47303u, var_1.x) >> (vec4<u32>(1u, u_input.e.x, u_input.b, u_input.e.x) % vec4<u32>(32u))), vec4<u32>(1u, 0u, ~80424u, 20101u)), select(vec4<u32>(90073u, var_1.x, 25086u, ~0u) << (_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, 8115u, u_input.b, 4294967295u), vec4<u32>(4615u, var_1.x, 4294967295u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 4131u, var_1.x, u_input.e.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(66404u, 17218u, u_input.b, u_input.a), vec4<u32>(39614u, 1u, 1u, u_input.e.x), vec4<u32>(var_1.x, 66592u, 34087u, var_1.x)), vec4<u32>(abs(var_1.x), 1u, u_input.b, 29065u)), vec4<bool>(global2.x, !(!global1.x), true, global1.x)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(467f - 1884f), -153f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(301f, var_0.a) * vec2<f32>(var_0.a, var_0.a)), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1426f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-861f, var_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 588f) * vec2<f32>(481f, -295f))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), func_4(Struct_5(Struct_1(u_input.c.x), global2.x, -25017i, vec2<f32>(var_0.a, var_0.a))).a))))));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_4) -> vec3<f32> {
    global3 = array<vec3<u32>, 29>();
    let var_0 = min(reverseBits(abs(abs(1i))), u_input.c.x);
    var var_1 = arg_2;
    var var_2 = arg_3;
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(~(-1i)), ~(-14400i), -var_0, u_input.c.x) & -u_input.c, vec4<i32>(-1i, _wgslsmith_add_i32(firstTrailingBit(1i), 2147483647i), _wgslsmith_mod_i32(~(i32(-1i) * -5482i), -_wgslsmith_add_i32(1i, var_0)), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_0) << (((u_input.e.x & u_input.d) << (0u % 32u)) % 32u)), max(u_input.c, _wgslsmith_sub_vec4_i32(u_input.c, abs(vec4<i32>(u_input.c.x, -70950i, var_2.a.a, -16328i)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, func_4(Struct_5(Struct_1(var_3.x), false, 1i, vec2<f32>(var_1.x, arg_0))).a, _wgslsmith_f_op_f32(sign(arg_2.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1514f, 763f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1241f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -705f, -210f))))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b, 4294967295u), 29u)];
    let var_1 = vec3<u32>(4294967295u, u_input.d << (~_wgslsmith_add_u32(abs(u_input.a), 11144u) % 32u), u_input.e.x);
    var var_2 = var_1.x;
    var var_3 = arg_1.x;
    let var_4 = Struct_3(arg_2.d.x, _wgslsmith_div_vec2_i32(vec2<i32>(min(arg_2.c, ~(-70226i)), firstLeadingBit(arg_2.c)), vec2<i32>(arg_0.c, -firstTrailingBit(u_input.c.x))), ~(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.b.x, -66288i), _wgslsmith_sub_i32(arg_2.c, u_input.c.x))));
    return !vec4<bool>(true, any(vec4<bool>(true, global2.x & false, !global1.x, global2.x && global1.x)), false, all(!(!global1.zwz)));
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_1 {
    var var_0 = arg_1.a;
    var_0 = Struct_1(~(-u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(1000f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~_wgslsmith_div_u32(u_input.e.x, 21648u)), _wgslsmith_sub_u32(u_input.e.x & 4294967295u, max(u_input.a, u_input.e.x))), 29u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.x, 586f), vec2<f32>(arg_1.d.x, arg_1.d.x)))), Struct_4(Struct_1(1i), select(true, _wgslsmith_f_op_f32(1208f * arg_1.d.x) <= 2315f, arg_1.c != (7559i << (1u % 32u))), vec4<bool>(global2.x, true, ~var_0.a < _wgslsmith_dot_vec4_i32(vec4<i32>(-47876i, -2147483647i, -14825i, arg_1.a.a), vec4<i32>(19756i, 6288i, arg_1.c, -2147483647i)), all(vec4<bool>(arg_1.b, global1.x, true, arg_0.x))))));
    global2 = vec3<bool>(!any(select(!vec2<bool>(true, arg_1.b), select(global1.wy, arg_0.xz, global1.yx), false)), func_6(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), _wgslsmith_f_op_f32(ceil(1449f))), firstLeadingBit(u_input.c.xw) ^ _wgslsmith_div_vec2_i32(u_input.c.zx, u_input.c.yw), u_input.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, -1007f)), _wgslsmith_f_op_f32(-1390f - -1821f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -196f, -2046f)) * _wgslsmith_f_op_vec3_f32(func_5(307f, global3[_wgslsmith_index_u32(1u, 29u)], var_1.yz, Struct_4(arg_1.a, false, vec4<bool>(false, arg_0.x, true, false)))))), Struct_5(arg_1.a, true, _wgslsmith_dot_vec3_i32(u_input.c.zzy, max(u_input.c.xxz, u_input.c.xyw)), arg_1.d)).x, false);
    var var_2 = Struct_5(Struct_1(~u_input.c.x), all(arg_0) && false, reverseBits((-var_0.a >> (u_input.a % 32u)) ^ 21682i), _wgslsmith_f_op_vec2_f32(func_1()));
    return Struct_1(-firstTrailingBit(0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_7(func_6(Struct_3(_wgslsmith_f_op_f32(132f + 416f), -u_input.c.wz, -19670i), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-2020f - -235f), vec3<u32>(u_input.a, u_input.a, 8314u), _wgslsmith_f_op_vec2_f32(func_1()), Struct_4(Struct_1(u_input.c.x), true, vec4<bool>(global2.x, true, global1.x, global1.x)))), func_2()), func_2()), u_input.c.x > ((reverseBits(-2147483647i) ^ u_input.c.x) & ~(~u_input.c.x)), vec4<bool>(global2.x || any(func_6(Struct_3(1823f, vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.x), vec3<f32>(-194f, -2368f, 1000f), Struct_5(Struct_1(u_input.c.x), false, 24939i, vec2<f32>(-2185f, -1300f))).ww), !(!global1.x), select(true, global1.x, true), !(_wgslsmith_add_i32(1i, u_input.c.x) <= u_input.c.x)));
    global3 = array<vec3<u32>, 29>();
    let var_1 = ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.b), 22048u, 1u, 1u), abs(vec4<u32>(u_input.d, 14869u, 103013u, 80598u))), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(42402u, u_input.a, 8740u, 4294967295u), vec4<u32>(1u, u_input.e.x, 4294967295u, u_input.a)), ~vec4<u32>(u_input.d, 1u, 1u, u_input.b), select(var_0.c, select(vec4<bool>(global2.x, global1.x, true, false), vec4<bool>(false, global2.x, global2.x, true), true), var_0.c)), var_0.b || (-1i == _wgslsmith_mult_i32(64779i, var_0.a.a)));
    var var_2 = !var_0.c;
    global1 = !var_0.c;
    let var_3 = Struct_2(var_0.a, !select(!var_2.zwz, !(!var_2.xwx), select(func_6(Struct_3(-1078f, u_input.c.wz, -24674i), vec3<f32>(-841f, -402f, -1000f), Struct_5(var_0.a, false, var_0.a.a, vec2<f32>(147f, -395f))).zzw, func_6(Struct_3(1434f, vec2<i32>(35208i, 10868i), -2147483647i), vec3<f32>(-163f, 255f, -689f), Struct_5(var_0.a, var_0.b, var_0.a.a, vec2<f32>(267f, 989f))).zww, var_0.c.xwz)));
    let var_4 = 1000f;
    var var_5 = !any(var_0.c);
    let var_6 = 1165f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(326f, var_4, var_6), select(u_input.b, _wgslsmith_div_u32(select(u_input.d, var_1.x, global2.x), ~u_input.a) ^ 4294967295u, !var_0.b), u_input.c.x, u_input.e, ~(u_input.a | u_input.a));
}

