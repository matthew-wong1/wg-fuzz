struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(abs(-u_input.b & _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, -1i, u_input.b), -29888i, 7789i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1574f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1551f * -269f))), _wgslsmith_f_op_f32(f32(-1f) * -1475f)))), Struct_1(vec4<i32>(-1i) * -vec4<i32>(1i, -1233i, u_input.b, u_input.c)), Struct_2(-1021f, Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, u_input.b, u_input.c, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, -12146i, -69298i), vec4<i32>(1i, 22167i, u_input.c, u_input.c))))));
    let var_1 = !vec2<bool>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.d.b.a.zy, vec2<i32>(u_input.b, -2147483647i)), firstTrailingBit(u_input.c), u_input.c) != u_input.c, any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(40066u, 31u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 31u)])));
    var var_2 = Struct_4(1i, var_0.d, var_0.c.a.zy);
    var var_3 = abs(reverseBits(~vec3<u32>(u_input.a, u_input.a, u_input.a))) & vec3<u32>(~(~0u), firstTrailingBit(u_input.a), 0u);
    var_2 = Struct_4(var_0.a, Struct_2(-228f, var_0.d.b), -vec2<i32>(i32(-1i) * -7419i, 0i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.b.a, _wgslsmith_f_op_f32(-var_0.b)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_4(u_input.b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), Struct_1(_wgslsmith_mod_vec4_i32(arg_2.b.a, vec4<i32>(arg_2.b.a.x, arg_2.b.a.x, -8348i, u_input.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 81410u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 0u, 49439u)) % vec4<u32>(32u)))), -vec2<i32>(~(u_input.b ^ -1i), arg_2.b.a.x));
    var var_1 = vec2<bool>(false, true);
    let var_2 = var_0;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(223f, _wgslsmith_div_f32(1036f, var_2.b.a))) + 1000f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a - arg_2.a))))), var_0.b.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = func_2(!select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)])), true), !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false)), vec2<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)], true, true)), true)), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(~u_input.a, 31u)], true), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true, true), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 31u)], false, global0[_wgslsmith_index_u32(1u, 31u)]), !select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true, global0[_wgslsmith_index_u32(arg_1.x, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, true), false)), vec3<bool>(true, true, true)), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false, global0[_wgslsmith_index_u32(arg_1.x, 31u)]), Struct_2(arg_2.d.a, Struct_1(vec4<i32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_2.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, 914f))).a, arg_2.b)));
    let var_1 = Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(min(var_0.b.a.x, arg_2.a), u_input.b), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(u_input.c, arg_2.d.b.a.x))) << (arg_1.x % 32u), _wgslsmith_f_op_f32(trunc(var_0.a)), func_2(vec2<bool>(select(all(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 20551u, arg_1.x, 0u), vec4<u32>(4294967295u, arg_1.x, u_input.a, 4294967295u)), 31u)], !global0[_wgslsmith_index_u32(u_input.a, 31u)]), all(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 31u)], true))), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false, global0[_wgslsmith_index_u32(130872u, 31u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(17398u, 31u)], global0[_wgslsmith_index_u32(arg_1.x, 31u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(arg_1.x, 31u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 31u)], global0[_wgslsmith_index_u32(arg_1.x, 31u)]))), Struct_2(1136f, arg_2.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(arg_0.a * -1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1446f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, 1758f)))))).b, var_0);
    global0 = array<bool, 31>();
    let var_2 = Struct_4(-1i, func_2(!select(vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(31413u, 31u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(43804u, 31u)])), !vec3<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 31u)])), true), Struct_2(_wgslsmith_f_op_f32(-arg_2.d.a), arg_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1268f, 1588f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(768f, 1000f), vec2<f32>(-1020f, arg_2.d.a), global0[_wgslsmith_index_u32(arg_1.x, 31u)]))))), vec2<i32>(-6359i, abs(~1i)));
    global0 = array<bool, 31>();
    return 4294967295u;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = ~u_input.a;
    let var_1 = Struct_2(1521f, func_2(select(select(arg_1.xz, !arg_1.wx, true), select(select(vec2<bool>(arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true)), arg_1.yx, arg_1.zz), select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true), vec2<bool>(true, arg_1.x), true)), select(arg_1.yyy, vec3<bool>(false, arg_1.x, !arg_1.x), vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(countOneBits(var_0), 31u)], u_input.a >= var_0)), func_2(vec2<bool>(true, !arg_1.x), !vec3<bool>(global0[_wgslsmith_index_u32(42432u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], true), Struct_2(1f, Struct_1(vec4<i32>(u_input.b, -58468i, u_input.c, -5997i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, 152f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1943f, 409f) + vec2<f32>(-923f, -1206f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(144f * -205f), _wgslsmith_f_op_f32(-1303f * 583f)), vec2<f32>(-1190f, _wgslsmith_f_op_f32(max(747f, 2981f))))).b);
    global0 = array<bool, 31>();
    let var_2 = global0[_wgslsmith_index_u32(arg_0, 31u)];
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))), Struct_1(func_2(!select(arg_1.zy, arg_1.wx, vec2<bool>(false, arg_1.x)), select(!arg_1.zyz, select(vec3<bool>(global0[_wgslsmith_index_u32(12462u, 31u)], true, global0[_wgslsmith_index_u32(u_input.a, 31u)]), arg_1.xwx, vec3<bool>(true, arg_1.x, arg_1.x)), 0u == u_input.a), Struct_2(_wgslsmith_f_op_f32(var_1.a + var_1.a), Struct_1(var_1.b.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1255f), _wgslsmith_f_op_f32(var_1.a * 255f))).b.a));
    return func_2(select(select(select(arg_1.yz, arg_1.xw, vec2<bool>(arg_1.x, arg_1.x)), arg_1.wy, true), !arg_1.wy, select(arg_1.xw, !(!arg_1.ww), select(arg_1.xy, select(arg_1.xw, arg_1.xx, true), arg_1.yy))), select(select(arg_1.ywy, !(!vec3<bool>(false, false, arg_1.x)), any(select(arg_1.wyx, vec3<bool>(arg_1.x, false, arg_1.x), arg_1.yxy))), arg_1.xwy, true & global0[_wgslsmith_index_u32(7444u, 31u)]), Struct_2(_wgslsmith_div_f32(-1037f, var_1.a), var_1.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1375f, _wgslsmith_f_op_f32(trunc(-1278f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, var_3.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1639f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(1721f, -1614f)))))).b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global0 = array<bool, 31>();
    var var_0 = 995f;
    let var_1 = vec2<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(24153u, u_input.a, u_input.a, 0u)), ~(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) << (vec4<u32>(63750u, 8019u, u_input.a, 26028u) % vec4<u32>(32u)))), 31u)]);
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(arg_1.b.b.a, _wgslsmith_div_vec4_i32(-arg_0.a, reverseBits(arg_0.a)) | abs(~vec4<i32>(arg_3.b.a.x, 2147483647i, arg_0.a.x, arg_3.b.a.x))), arg_3.a, arg_0, Struct_2(arg_3.a, arg_1.b.b));
    var_0 = func_2(vec2<bool>(var_1.x, false), !(!select(!vec3<bool>(true, var_1.x, true), !vec3<bool>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(3146u, 31u)]), u_input.a <= 9476u)), Struct_2(_wgslsmith_f_op_f32(sign(281f)), Struct_1(vec4<i32>(~u_input.c, _wgslsmith_div_i32(-1i, 17168i), arg_1.c.x, ~7286i))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.b.a))).a;
    return func_5(u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(abs(~(89865u << (u_input.a % 32u))), 31u)], all(!select(vec2<bool>(var_1.x, true), var_1, var_1)), var_2.d.a > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_2.b.a)), 1606f)), true | !(u_input.a == 0u)));
}

fn func_1() -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 31u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-604f + -633f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(400f)))))), func_6(func_5(func_4(func_2(vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_2(-853f, Struct_1(vec4<i32>(50014i, u_input.c, 1i, u_input.c))), vec2<f32>(-962f, 223f)), ~vec2<u32>(11328u, 5957u), Struct_3(u_input.c, 289f, Struct_1(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), Struct_2(529f, Struct_1(vec4<i32>(54399i, u_input.b, -36356i, u_input.b))))), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 31u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(21074u, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 31u)])), Struct_4(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-63946i, 50366i, u_input.c)), ~vec3<i32>(u_input.c, u_input.c, -1i)), func_2(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(true, true, true), func_2(vec2<bool>(global0[_wgslsmith_index_u32(49506u, 31u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 31u)], false), Struct_2(170f, Struct_1(vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.c))), vec2<f32>(-1555f, 1115f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-988f, -1590f)))), ~vec2<i32>(u_input.b, u_input.c)), Struct_4(4647i, Struct_2(-1237f, func_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(15851u, 31u)]), Struct_2(345f, Struct_1(vec4<i32>(u_input.b, 79036i, u_input.b, u_input.b))), vec2<f32>(1143f, 365f)).b), vec2<i32>(-34559i, ~u_input.c)), func_2(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)]), !select(vec3<bool>(global0[_wgslsmith_index_u32(46026u, 31u)], false, global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], true)), func_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 31u)]), func_2(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], false), Struct_2(-456f, Struct_1(vec4<i32>(u_input.b, 20129i, 2147483647i, 2147483647i))), vec2<f32>(-435f, -253f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(703f, 1540f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(433f, -490f))))));
    let var_2 = select(select(!select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(13193u, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true), false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true), !global0[_wgslsmith_index_u32(u_input.a, 31u)]), select(select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(104530u, 31u)]), global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(false, false)), vec2<bool>(0i == var_1.b.a.x, true), global0[_wgslsmith_index_u32(u_input.a, 31u)]), select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)])), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(true, true), false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(50511u, 31u)]), vec2<bool>(true, true)), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false), vec2<bool>(false, false), vec2<bool>(false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a, 31u)]))), select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false), vec2<bool>(true, false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true))), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(31664u << (0u % 32u), u_input.a), 31u)], global0[_wgslsmith_index_u32(~(~u_input.a), 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a << (~0u % 32u), 31u)], global0[_wgslsmith_index_u32(0u >> (~u_input.a % 32u), 31u)])), !vec2<bool>(1f > _wgslsmith_f_op_f32(trunc(var_1.a)), false));
    global0 = array<bool, 31>();
    var var_3 = true;
    return Struct_4(var_1.b.a.x, var_1, vec2<i32>(0i, u_input.b));
}

fn func_7(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = array<bool, 31>();
    var var_0 = (select(~vec3<u32>(u_input.a, 22914u, 33028u) >> (~vec3<u32>(u_input.a, 58416u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(arg_0, 4294967295u, 612u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, u_input.a, u_input.a), vec3<u32>(55561u, u_input.a, 43648u), vec3<u32>(arg_0, u_input.a, 1u)) % vec3<u32>(32u)), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(6605u, 31u)]))) ^ vec3<u32>(min(arg_0, reverseBits(1u)), firstLeadingBit(~1u), u_input.a >> (~arg_2 % 32u))) | ~(~vec3<u32>(26457u, 0u, ~1u));
    var_0 = ~(~vec3<u32>(~firstLeadingBit(var_0.x), arg_0, func_4(func_2(arg_3.ww, arg_3.xyy, arg_1.b, vec2<f32>(arg_1.b.a, -655f)), var_0.yy, Struct_3(-11995i, 1502f, Struct_1(arg_1.b.b.a), Struct_2(1000f, arg_1.b.b)))));
    var var_1 = ~var_0.x;
    var var_2 = ~max(arg_2, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a) & abs(var_0.x), func_4(func_1().b, vec2<u32>(var_0.x, 1u), Struct_3(u_input.b, arg_1.b.a, arg_1.b.b, arg_1.b))));
    return min(~vec4<u32>(82036u, ~(~var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4538u, 29105u, arg_2) ^ vec4<u32>(0u, arg_2, arg_2, 112749u), vec4<u32>(arg_0, 12321u, var_0.x, 4294967295u) << (vec4<u32>(var_0.x, 0u, u_input.a, arg_0) % vec4<u32>(32u))), min(~0u, firstTrailingBit(arg_0))), ~((reverseBits(vec4<u32>(69931u, u_input.a, 24316u, 1u)) >> (vec4<u32>(u_input.a, arg_2, 14561u, arg_0) % vec4<u32>(32u))) >> (~(vec4<u32>(var_0.x, 80063u, 24612u, u_input.a) >> (vec4<u32>(0u, 32675u, var_0.x, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -478f);
    let var_1 = _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u) | vec4<u32>(1u, 18592u, 87644u, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), ~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 19362u)), vec4<u32>(4294967295u, u_input.a, 0u, 6680u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), reverseBits(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), min(vec4<u32>(56791u, 0u, u_input.a, 39069u), vec4<u32>(68936u, 1u, u_input.a, u_input.a))))), (vec4<u32>(4294967295u, 1u, 1u, 1u) ^ vec4<u32>(u_input.a >> (1u % 32u), ~79802u, u_input.a, u_input.a | 0u)) >> (func_7(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), func_1(), ~(~47649u), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 31u)], true, false)) % vec4<u32>(32u)));
    var var_2 = max(abs(abs(var_1.yz)), var_1.yy);
    var_2 = vec2<u32>(func_4(Struct_2(-118f, Struct_1(vec4<i32>(0i, -1i, u_input.c, -1i))), ~var_1.xz, Struct_3(_wgslsmith_mult_i32(u_input.b, 4267i), 429f, Struct_1(vec4<i32>(-2147483647i, 0i, -23583i, u_input.c)), Struct_2(146f, Struct_1(vec4<i32>(0i, u_input.b, u_input.c, -8232i))))) ^ _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(4294967295u, 66826u, u_input.a, 0u)), countOneBits(vec4<u32>(1u, 0u, u_input.a, 1u)) ^ var_1), firstTrailingBit(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(491f)), var_0, vec3<f32>(var_0, _wgslsmith_f_op_f32(func_3()), 236f));
}

