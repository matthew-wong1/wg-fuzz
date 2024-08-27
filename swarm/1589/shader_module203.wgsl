struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<f32, 3>;

var<private> global3: array<i32, 23> = array<i32, 23>(-16981i, 28888i, 0i, 12560i, 1i, 37414i, 20730i, 32442i, 48800i, 0i, 2147483647i, -1i, 0i, -15344i, -27837i, -30463i, 1i, i32(-2147483648), 19256i, -11389i, 27813i, i32(-2147483648), 27010i);

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_3(470f, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.yxw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 879f, global2[_wgslsmith_index_u32(u_input.c.x, 3u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zxz)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.xyx, vec3<f32>(global4.x, arg_1.x, global4.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1742f, -1000f))))), abs(-2147483647i), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(4294967295u, u_input.a.x, false), u_input.a.x), 3u)], vec3<f32>(-1611f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + arg_0.x))), Struct_1(arg_1.wwy), 4294967295u, 0i), global1[_wgslsmith_index_u32(u_input.c.x, 3u)]);
    var var_1 = -24709i;
    global0 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec2<bool>(false, false)))));
    let var_2 = arg_0.x;
    var var_3 = true;
    return var_0.b.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_3(1066f, vec3<f32>(arg_1, _wgslsmith_f_op_f32(func_3(global4.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, arg_1, -956f))) * vec4<f32>(-1455f, -1000f, global2[_wgslsmith_index_u32(arg_0, 3u)], -708f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(29842u, 3u)]))))), 2147483647i, global1[_wgslsmith_index_u32(~u_input.c.x, 3u)], Struct_2(2588f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1127f, arg_1, arg_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -713f, global4.x) * vec3<f32>(arg_1, arg_1, 741f)) * vec3<f32>(982f, 155f, global2[_wgslsmith_index_u32(arg_0, 3u)])))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1156f))))), abs(arg_0), global3[_wgslsmith_index_u32(~(arg_0 ^ 4294967295u), 23u)] ^ _wgslsmith_mod_i32(2147483647i, 2147483647i)));
    global0 = arg_2.x;
    global0 = any(arg_2);
    let var_1 = var_0.e.c;
    let var_2 = var_0.d;
    return firstTrailingBit(-select(vec4<i32>(0i, 0i, var_0.c, u_input.b) << (vec4<u32>(arg_0, var_0.e.d, var_0.d.d, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.e, 2147483647i, -1i, var_0.e.e), vec4<i32>(var_2.e, 0i, global3[_wgslsmith_index_u32(39560u, 23u)], global3[_wgslsmith_index_u32(var_0.d.d, 23u)])), arg_2.x)) << ((~u_input.c ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 21602u, 20866u) ^ u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_2.d, 4294967295u, var_0.e.d), vec4<u32>(0u, 1u, 1u, arg_0)), u_input.a ^ vec4<u32>(u_input.c.x, 51696u, 1u, 4294967295u))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_5 {
    let var_0 = -func_2(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !arg_2) & vec4<i32>(_wgslsmith_sub_i32(653i, select(-1i, arg_1, arg_2.x)) | u_input.b, max(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-61532i, -40779i, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), abs(vec3<i32>(23193i, 0i, 0i))), min(firstTrailingBit(u_input.b), 2147483647i << (u_input.a.x % 32u))), u_input.b >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(79809u, 0u), u_input.a.ww), u_input.c.wx) % 32u), _wgslsmith_sub_i32(min(select(global3[_wgslsmith_index_u32(66876u, 23u)], 1i, false), ~0i), _wgslsmith_div_i32(abs(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 32977i, arg_1), vec4<i32>(u_input.b, -13338i, -16257i, u_input.b)))));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(53315u, 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -252f, global4.x)))) + vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(96279u, 3u)], global4.x, true)), _wgslsmith_f_op_f32(662f - -1224f), global4.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zwy))), countOneBits(1u), select(1i, _wgslsmith_add_i32(~_wgslsmith_add_i32(-10163i, -9856i), global3[_wgslsmith_index_u32(0u, 23u)]), select(arg_2.x, arg_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 3u)] != global2[_wgslsmith_index_u32(~4294967295u, 3u)])));
    let var_2 = Struct_2(-1058f, _wgslsmith_f_op_vec3_f32(-arg_0.wyw), var_1.c, _wgslsmith_div_u32(firstTrailingBit(~(~22918u)), _wgslsmith_dot_vec4_u32(min(~u_input.a, _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(4294967295u, u_input.a.x, var_1.d, u_input.c.x))), u_input.a)), _wgslsmith_dot_vec3_i32(var_0.xww, vec3<i32>(firstLeadingBit(arg_1), _wgslsmith_div_i32(~var_1.e, var_0.x), 1i)));
    return Struct_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + var_1.c.a.x)))), vec3<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 3u)], var_1.c.a.x)), -1084f), var_1.c, ~(~1u), _wgslsmith_dot_vec2_i32(var_0.yy, var_0.wz)), ~(~(~select(1u, 11512u, arg_2.x))), Struct_2(var_2.c.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, 204f) - vec3<f32>(1997f, 763f, -1170f)), _wgslsmith_f_op_vec3_f32(arg_0.yyx - vec3<f32>(global2[_wgslsmith_index_u32(var_1.d, 3u)], global4.x, -718f))))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.c.a)))), abs(abs(countOneBits(u_input.c.x))), u_input.b), ~min(1i, global3[_wgslsmith_index_u32(18472u, 23u)]) & 2147483647i);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = arg_1.c.a;
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, -280f, global4.x) - vec4<f32>(-1000f, -581f, arg_0.a.b.x, 455f)))))), -2147483647i, !(!vec4<bool>(true, all(vec4<bool>(false, false, false, false)), false, true))).a;
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1549f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(787f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(global4.x, -1061f, var_0.x)))), _wgslsmith_mod_i32(-select(0i, 0i, true), -9708i), Struct_2(-1034f, vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.a), 3u)], var_0.x, _wgslsmith_f_op_f32(max(-348f, -882f))), arg_1.c, _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(var_1.d, u_input.a.x)), u_input.b), arg_1), vec4<u32>(~48597u, var_1.d, abs(arg_1.d), select(var_1.d, ~_wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(var_1.d, 1u)), !any(vec4<bool>(false, false, false, false)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = select(!(!select(!vec2<bool>(false, var_2.c), vec2<bool>(true, true), select(vec2<bool>(true, var_2.c), vec2<bool>(true, true), var_2.c))), vec2<bool>(var_2.c, var_1.d > 1u), var_2.c);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(~(~arg_1.d), 3u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global2[_wgslsmith_index_u32(52586u, 3u)]) + _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_1.d, 3u)]))), 1613f) + _wgslsmith_f_op_vec3_f32(-arg_1.b)));
    return 122f;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = arg_1.e.e;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(arg_3 - -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(34878u, 3u)])), _wgslsmith_f_op_f32(-arg_1.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1365f))), -37091i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(3461u & arg_2)), arg_2), 3u)], Struct_2(arg_1.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.d.b + arg_1.d.c.a), arg_1.b), arg_1.e.c, 1072u, 0i));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(global4.x + 1048f))) * global4.x), _wgslsmith_f_op_f32(sign(-1244f)))), vec3<f32>(405f, _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.b.x, -660f, global4.x, global4.x), vec4<f32>(global4.x, 382f, -1385f, arg_3)), u_input.b & global3[_wgslsmith_index_u32(arg_2, 23u)], !vec4<bool>(arg_0, true, arg_0, true)), Struct_2(_wgslsmith_div_f32(1000f, global2[_wgslsmith_index_u32(var_1.d.d, 3u)]), vec3<f32>(-1453f, global4.x, -1407f), func_1(vec4<f32>(global4.x, arg_1.b.x, global4.x, global4.x), arg_1.c, vec4<bool>(arg_0, true, arg_0, arg_0)).c.c, var_1.e.d, var_0), _wgslsmith_sub_i32(4797i, var_0) >> (49790u % 32u), 635f)), _wgslsmith_f_op_f32(ceil(arg_1.b.x))), _wgslsmith_sub_i32((i32(-1i) * -40782i) >> ((1u << (countOneBits(0u) % 32u)) % 32u), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 6941i), vec2<i32>(1i, global3[_wgslsmith_index_u32(arg_2, 23u)]) << (vec2<u32>(var_1.d.d, 12417u) % vec2<u32>(32u)))), arg_1.e, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, arg_1.e.b.x, -171f, -960f))))), 1i, !vec4<bool>(select(arg_0, true, true), arg_0, !arg_0, arg_0)).a);
    var_1 = Struct_3(var_2.b.x, var_1.b, global3[_wgslsmith_index_u32(arg_1.d.d, 23u)], func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.x, global2[_wgslsmith_index_u32(1u, 3u)], arg_1.a, global4.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(153f, 929f, 962f, 1000f), vec4<f32>(-317f, 243f, 109f, arg_1.e.c.a.x), arg_0))))), var_1.c, vec4<bool>(true, true, !all(vec4<bool>(true, arg_0, arg_0, true)), all(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0))))).a, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.a, 473f, -1103f, 1657f))), 1i, !select(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(false, arg_0, false, false), arg_0), !vec4<bool>(arg_0, false, arg_0, false), !vec4<bool>(arg_0, arg_0, arg_0, true))).c);
    var var_3 = arg_1;
    return arg_1.e.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(true && !(_wgslsmith_f_op_f32(-638f * global2[_wgslsmith_index_u32(u_input.a.x, 3u)]) <= global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(func_1(vec4<f32>(1338f, 338f, -660f, global4.x), global3[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<bool>(true, true, false, false)), Struct_2(global4.x, vec3<f32>(global4.x, -1017f, -557f), Struct_1(vec3<f32>(-678f, -340f, -655f)), 92020u, -29674i), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b), global2[_wgslsmith_index_u32(u_input.a.x, 3u)])))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(471f, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], -1072f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], -494f, -336f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 595f, -423f))))), u_input.b ^ 2147483647i, Struct_2(global2[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1752f, -2021f, global4.x)), max(0i, 1i), vec4<bool>(true, true, true, true)).c.c, _wgslsmith_dot_vec3_u32(u_input.c.yxx, ~u_input.c.xxz), u_input.b & global3[_wgslsmith_index_u32(~u_input.c.x, 23u)]), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1099f, -935f, -911f, -1021f) * vec4<f32>(2332f, global4.x, -1000f, global4.x))), countOneBits(0i), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), true)).a), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 7493u), u_input.a.ww), global2[_wgslsmith_index_u32(~(~(u_input.a.x & countOneBits(u_input.a.x))), 3u)]));
    global4 = vec3<f32>(var_0, _wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, 1103f, var_0, -215f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, 983f, global4.x) + vec4<f32>(-1289f, 226f, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)])))), 62061i, select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, var_0, global4.x, var_0)), global3[_wgslsmith_index_u32(max(max(u_input.a.x, 64541u), func_1(vec4<f32>(-550f, global4.x, -1000f, global4.x), global3[_wgslsmith_index_u32(u_input.c.x, 23u)], vec4<bool>(true, false, true, false)).a.d), 23u)], select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), global4.x <= global4.x)).a, _wgslsmith_sub_i32(~select(global3[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b, true), _wgslsmith_sub_i32(-1i, min(1i, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-559f - 515f), _wgslsmith_f_op_f32(f32(-1f) * -788f)) - var_0))));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 297f, -488f, global2[_wgslsmith_index_u32(4294967295u, 3u)]) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], -596f, global4.x, -120f))))))), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.c.x << (func_1(vec4<f32>(193f, var_0, 1938f, global4.x), global3[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(false, false, true, false)).a.d % 32u)), 23u)], select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), !vec4<bool>(any(vec2<bool>(false, true)), true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, false))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), true))));
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(27216u, 23u)], ~(-1i)), (-28614i | _wgslsmith_clamp_i32(~var_1.c.e, _wgslsmith_div_i32(-1i, global3[_wgslsmith_index_u32(var_1.b, 23u)]), u_input.b)) & var_1.c.e, _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i) ^ u_input.b, _wgslsmith_mult_i32(2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(40501u, 23u)], u_input.b, var_1.c.e), vec4<i32>(u_input.b, var_1.c.e, -1i, 2147483647i)), _wgslsmith_sub_i32(abs(u_input.b), var_1.d))));
    var_2 = _wgslsmith_mod_vec3_i32(~max(select(~vec3<i32>(var_2.x, -2147483647i, var_2.x), vec3<i32>(-1i, 1i, u_input.b), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<i32>(var_2.x, var_2.x, var_2.x) << (vec3<u32>(var_1.c.d, u_input.a.x, var_1.c.d) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(u_input.b | ~(-3611i), _wgslsmith_dot_vec3_i32(func_2(0u, var_0, vec4<bool>(true, true, false, false)).yww, ~vec3<i32>(0i, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], var_1.a.e))), _wgslsmith_clamp_i32(-var_1.a.e, -2147483647i, firstTrailingBit(-10608i)), _wgslsmith_mult_i32(0i, var_2.x) << (var_1.a.d % 32u)));
    global3 = array<i32, 23>();
    var var_3 = u_input.a.wx;
    let var_4 = var_1.c.c;
    let var_5 = vec4<i32>(_wgslsmith_sub_i32(u_input.b, max(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, u_input.b, 0i), vec4<i32>(var_1.c.e, -1i, global3[_wgslsmith_index_u32(var_1.a.d, 23u)], global3[_wgslsmith_index_u32(var_1.b, 23u)])))), 11240i, ~(-5492i), _wgslsmith_mod_i32(abs(-45570i & var_1.d) ^ firstTrailingBit(-var_1.c.e), firstTrailingBit(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_5.x, -_wgslsmith_mult_i32(var_5.x, 2147483647i), var_2.x, 47460i), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(countOneBits(39049u), 23u)], 24096i), ~_wgslsmith_clamp_i32(20780i, -50201i, -16899i)), _wgslsmith_mod_i32(~min(2147483647i, 0i), -(~(-76224i))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~var_5, var_5), (var_1.d >> (682u % 32u)) & -var_5.x), max(29944i | global3[_wgslsmith_index_u32(1u, 23u)], var_1.a.e)), ~(~1u));
}

