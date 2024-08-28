struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<u32, 4>;

var<private> global2: array<vec4<i32>, 18>;

var<private> global3: vec3<i32> = vec3<i32>(60675i, -24998i, i32(-2147483648));

var<private> global4: vec2<u32> = vec2<u32>(10302u, 52950u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    var var_0 = 1u;
    global3 = vec3<i32>(firstLeadingBit(6299i), global3.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-29990i, -47394i, global3.x), -vec3<i32>(global3.x, 0i, global3.x)) << (3748u % 32u)));
    let var_1 = vec3<u32>(0u, ~(4294967295u | _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(~46962u, 4u)], 4294967295u)), _wgslsmith_mult_u32(56642u, 2549u));
    var var_2 = Struct_4(!(!(-202f < _wgslsmith_f_op_f32(-arg_0))), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(global3.xz, vec2<i32>(global3.x, global3.x)), -19011i);
    var_2 = Struct_4(false, vec2<i32>(global3.x, 0i), 61184i);
    return _wgslsmith_f_op_f32(1335f - -334f);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = arg_2;
    global0 = _wgslsmith_sub_vec4_u32((arg_0 ^ ~(~vec4<u32>(arg_2, 3091u, arg_2, global4.x))) << (select(u_input.a, ~(u_input.a >> (arg_0 % vec4<u32>(32u))), 4294967295u >= firstLeadingBit(global1[_wgslsmith_index_u32(global0.x, 4u)])) % vec4<u32>(32u)), ~firstLeadingBit(~vec4<u32>(33977u, 5439u, global0.x, 35839u)) ^ firstTrailingBit(u_input.a));
    var var_1 = Struct_1(vec2<f32>(-238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f))), abs((u_input.a.yyx >> (~global0.xxy % vec3<u32>(32u))) | select(~global0.zwy, arg_0.wzw >> (arg_0.wxx % vec3<u32>(32u)), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1218f)), 614f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1715f - 118f))), _wgslsmith_f_op_f32(758f + _wgslsmith_div_f32(-708f, 458f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1282f))), _wgslsmith_f_op_f32(-191f * _wgslsmith_f_op_f32(407f + 1320f)), _wgslsmith_f_op_f32(min(134f, _wgslsmith_f_op_f32(func_3(1350f, vec3<f32>(595f, -1427f, 908f))))))), ~vec2<u32>(20805u, ~arg_2), !select(arg_1.x, false, true) == (min(_wgslsmith_dot_vec3_u32(arg_0.xyx, vec3<u32>(global1[_wgslsmith_index_u32(global4.x, 4u)], var_0, 0u)), 64547u) <= 1u));
    var var_2 = arg_1.x && ((_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x + 936f), _wgslsmith_f_op_f32(func_3(var_1.c.x, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))) == _wgslsmith_f_op_f32(max(458f, _wgslsmith_f_op_f32(abs(var_1.a.x))))) && !all(arg_1));
    global3 = -_wgslsmith_add_vec3_i32((vec3<i32>(global3.x, -2642i, global3.x) >> (vec3<u32>(global1[_wgslsmith_index_u32(13302u, 4u)], 16045u, global1[_wgslsmith_index_u32(52503u, 4u)]) % vec3<u32>(32u))) | vec3<i32>(global3.x, global3.x, 17449i), reverseBits(vec3<i32>(global3.x, global3.x, global3.x))) << ((vec3<u32>(55394u, 4294967295u, 0u) >> (min(vec3<u32>(var_1.b.x ^ 23960u, u_input.a.x, var_1.d.x), vec3<u32>(~4294967295u, ~4294967295u, arg_0.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_2(arg_1.x, var_0, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-226f, -1000f)), vec3<u32>(4339u, max(var_0, 0u) >> (arg_2 % 32u), abs(~4294967295u)), var_1.c, vec2<u32>(30465u, 71286u), false));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1881f, _wgslsmith_f_op_f32(sign(121f))), _wgslsmith_f_op_f32(trunc(-1866f)))), func_2(u_input.a, vec3<bool>(4294967295u == u_input.a.x, (u_input.a.x == global0.x) & true, false), global0.x), func_2(u_input.a, select(vec3<bool>(true, all(vec2<bool>(false, false)), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), true), _wgslsmith_clamp_u32(1u, ~u_input.a.x, ~4294967295u) >> (_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(27829u, 4u)], ~54929u) % 32u)).c, ~(~firstLeadingBit(~global0.x)));
    let var_1 = select(!select(select(!vec2<bool>(var_0.c.e, var_0.b.a), select(vec2<bool>(var_0.c.e, var_0.c.e), vec2<bool>(var_0.b.c.e, true), vec2<bool>(var_0.b.a, var_0.c.e)), vec2<bool>(true, true)), vec2<bool>(var_0.b.c.e, var_0.b.a), vec2<bool>(var_0.b.a & var_0.b.a, true)), vec2<bool>(var_0.b.a, all(!(!vec4<bool>(false, var_0.c.e, var_0.b.c.e, false)))), !select(!(!vec2<bool>(false, var_0.c.e)), select(select(vec2<bool>(var_0.b.a, false), vec2<bool>(var_0.b.c.e, true), vec2<bool>(var_0.c.e, var_0.b.a)), vec2<bool>(var_0.c.e, false), vec2<bool>(var_0.b.a, true)), true));
    let var_2 = var_1.x;
    var var_3 = 0u;
    var_3 = ~(~min(0u, 4294967295u));
    return Struct_2(var_2, ~func_2(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a) & _wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, u_input.a.x, global1[_wgslsmith_index_u32(var_0.d, 4u)], var_0.b.c.d.x), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(var_0.d, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], 0u)), select(!vec3<bool>(false, var_2, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_2), false), func_2(u_input.a, vec3<bool>(var_1.x, var_0.b.a, var_2), 28983u).c.e), global1[_wgslsmith_index_u32(func_2(firstTrailingBit(vec4<u32>(global4.x, global4.x, var_0.d, 13199u)), !vec3<bool>(true, var_0.c.e, var_2), 0u).b, 4u)]).c.d.x, func_2(firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 26041u, 1u, global0.x), vec4<u32>(global4.x, 15530u, 4294967295u, global4.x)))), !select(select(vec3<bool>(var_2, var_0.b.a, false), vec3<bool>(false, var_2, false), vec3<bool>(true, var_0.c.e, false)), select(vec3<bool>(var_2, var_0.c.e, true), vec3<bool>(var_2, var_1.x, var_0.c.e), true), select(vec3<bool>(false, false, var_2), vec3<bool>(true, false, true), vec3<bool>(true, var_1.x, false))), 51693u).c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<u32>(~_wgslsmith_sub_u32(~global4.x, 10224u) << (select(_wgslsmith_dot_vec3_u32(abs(u_input.a.zzy), arg_0.c.b), 18693u, true) % 32u), _wgslsmith_mult_u32(~u_input.a.x, 16151u), u_input.a.x);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b.c.a.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, var_1.c.a.x)) + arg_0.c.c.x)))));
    let var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().c.c.x + arg_0.c.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-991f + arg_2.a), _wgslsmith_f_op_f32(exp2(arg_0.c.a.x)), arg_0.a == arg_2.b.a)) + _wgslsmith_f_op_f32(ceil(1216f)))));
    return func_1().c;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    global4 = func_2(min(~u_input.a << (firstLeadingBit(u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, global0.x, ~71874u, global4.x)), vec3<bool>(arg_2.c.e, all(vec2<bool>(false && arg_0.e, func_4(Struct_2(arg_0.e, 50339u, Struct_1(arg_2.c.c.yz, arg_2.b.c.b, arg_2.b.c.c, u_input.a.zx, false)), vec2<u32>(44121u, global4.x), Struct_3(arg_2.a, arg_2.b, arg_0, global4.x), global3.x).e)), any(!vec2<bool>(arg_2.b.c.e, arg_2.b.c.e))), _wgslsmith_add_u32(~1u, ~firstTrailingBit(global1[_wgslsmith_index_u32(global0.x, 4u)])) & 43514u).c.b.yz;
    global2 = array<vec4<i32>, 18>();
    return Struct_4(true, global3.xx & (_wgslsmith_clamp_vec2_i32(select(global3.xx, global3.yz, vec2<bool>(arg_2.b.a, true)), reverseBits(global3.yy), vec2<i32>(global3.x, global3.x)) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(13856u, 4294967295u), u_input.a.wx) % vec2<u32>(32u))), i32(-1i) * -2147483647i);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> vec3<i32> {
    var var_0 = arg_0;
    global0 = u_input.a;
    let var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(func_4(Struct_2(true, 12098u, Struct_1(vec2<f32>(-1115f, 109f), u_input.a.wzy, vec3<f32>(2086f, -584f, -1250f), u_input.a.xy, false)), ~vec2<u32>(u_input.a.x, global4.x), Struct_3(731f, Struct_2(true, 4294967295u, Struct_1(vec2<f32>(910f, -2567f), vec3<u32>(15318u, 0u, 52956u), vec3<f32>(1172f, 163f, 1000f), vec2<u32>(global0.x, global0.x), false)), Struct_1(vec2<f32>(-447f, 478f), vec3<u32>(u_input.a.x, 4814u, u_input.a.x), vec3<f32>(-375f, -390f, -492f), vec2<u32>(1u, global4.x), arg_0.a), u_input.a.x), arg_0.b.x).e, true, min(arg_2.x, -2147483647i) != _wgslsmith_sub_i32(arg_2.x, arg_0.c), func_1().a), func_5(func_4(func_2(u_input.a, vec3<bool>(var_0.a, true, arg_0.a), global1[_wgslsmith_index_u32(51773u, 4u)]), vec2<u32>(19654u, 4294967295u), Struct_3(-1746f, Struct_2(arg_0.a, 9045u, Struct_1(vec2<f32>(1801f, -693f), vec3<u32>(39678u, 110676u, 1u), vec3<f32>(-182f, -325f, -1173f), u_input.a.xz, true)), Struct_1(vec2<f32>(255f, -1267f), vec3<u32>(global4.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], global4.x), vec3<f32>(-2376f, -258f, -575f), global0.zy, true), 4294967295u), arg_3), _wgslsmith_f_op_f32(abs(228f)), Struct_3(_wgslsmith_f_op_f32(select(-183f, -243f, var_0.a)), func_1(), func_2(u_input.a, vec3<bool>(false, false, arg_0.a), global0.x).c, ~22721u)).a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-func_1().c.a.x), vec3<f32>(1f, 1f, 1f))) + func_2(_wgslsmith_add_vec4_u32(vec4<u32>(5022u, u_input.a.x, 4294967295u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global4.x, 4u)], global4.x, 0u, global4.x), u_input.a)), !var_1.ywy, _wgslsmith_mult_u32(54581u, ~u_input.a.x)).c.c.x));
    global0 = _wgslsmith_mod_vec4_u32((vec4<u32>(global1[_wgslsmith_index_u32(~u_input.a.x, 4u)], 36676u, global4.x, 4294967295u) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.yz), 4294967295u, ~27017u, 1248u) % vec4<u32>(32u))) & u_input.a, vec4<u32>(global1[_wgslsmith_index_u32(37186u, 4u)], 25235u & (global1[_wgslsmith_index_u32(u_input.a.x >> (global4.x % 32u), 4u)] | ~11084u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(reverseBits(vec4<u32>(1u, global0.x, 23713u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74475u, 4u)], 4u)], 4u)]))), vec4<u32>(1u, 103410u, 21388u, global0.x) | vec4<u32>(u_input.a.x, global0.x, global1[_wgslsmith_index_u32(55625u, 4u)], global0.x)), 4u)], ~45503u));
    return -arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 4>();
    global3 = func_6(func_5(func_4(func_1(), ~global0.wz, Struct_3(-1610f, Struct_2(false, u_input.a.x, Struct_1(vec2<f32>(-192f, -1876f), vec3<u32>(4294967295u, 4294967295u, global0.x), vec3<f32>(-684f, 1303f, 2320f), u_input.a.xw, true)), func_1().c, min(15879u, global1[_wgslsmith_index_u32(0u, 4u)])), -1i), func_2(vec4<u32>(31482u, 48632u, u_input.a.x, 40415u) | ~vec4<u32>(global4.x, 1u, 22014u, 35708u), vec3<bool>(true, true, func_4(Struct_2(true, u_input.a.x, Struct_1(vec2<f32>(-940f, 498f), u_input.a.wyx, vec3<f32>(-261f, 1755f, 132f), global0.wz, false)), u_input.a.xx, Struct_3(558f, Struct_2(false, 39829u, Struct_1(vec2<f32>(899f, -518f), vec3<u32>(1u, 1u, 4294967295u), vec3<f32>(-1746f, 2308f, 567f), vec2<u32>(28642u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), false)), Struct_1(vec2<f32>(1164f, 363f), u_input.a.wzw, vec3<f32>(343f, -1545f, 172f), vec2<u32>(22337u, u_input.a.x), true), global1[_wgslsmith_index_u32(0u, 4u)]), 2147483647i).e), global4.x).c.a.x, Struct_3(-928f, Struct_2(true, 12413u, func_1().c), func_1().c, 88030u)), countOneBits(global3.x), ~(-_wgslsmith_sub_vec3_i32(-vec3<i32>(30757i, 39527i, 2147483647i), abs(vec3<i32>(global3.x, global3.x, -31335i)))), 58891i);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1136f, -459f, 1639f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-875f, 1929f, -171f), vec3<f32>(-176f, -1583f, 254f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-339f, -719f, 631f))) * vec3<f32>(1f, 1f, 1f)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(131f, -1998f, -247f))), vec3<bool>(any(vec3<bool>(true, true, true)), func_5(func_2(u_input.a, vec3<bool>(false, false, true), 4294967295u).c, _wgslsmith_f_op_f32(f32(-1f) * -1315f), Struct_3(338f, Struct_2(true, global1[_wgslsmith_index_u32(global0.x, 4u)], Struct_1(vec2<f32>(-753f, -388f), global0.wxw, vec3<f32>(-543f, -137f, 1000f), global0.yx, true)), Struct_1(vec2<f32>(-1267f, 584f), u_input.a.xxz, vec3<f32>(282f, -666f, 155f), vec2<u32>(u_input.a.x, 6721u), false), u_input.a.x)).a, true))));
    var var_1 = global3.yx;
    global1 = array<u32, 4>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-func_1().c.a), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a.x, 4294967295u, 71072u)) ^ u_input.a.zxx, func_1().c.b | vec3<u32>(1u & global1[_wgslsmith_index_u32(global0.x, 4u)], select(global0.x, global4.x, true), global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-801f * var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-608f * var_0.x))), 1202f)), global0.wy, select(true, true | func_1().a, !(!all(vec4<bool>(true, true, false, false)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-274f, var_0.x, var_2.e)), _wgslsmith_f_op_f32(sign(var_0.x)), -296f)))));
    let var_4 = !var_2.e;
    var var_5 = _wgslsmith_clamp_vec3_i32(-(~(vec3<i32>(-12443i, -1i, global3.x) ^ vec3<i32>(2147483647i, global3.x, 10881i)) ^ ~vec3<i32>(var_1.x, 21836i, 12150i)), ~vec3<i32>(var_1.x ^ (var_1.x | 25309i), _wgslsmith_dot_vec4_i32(~global2[_wgslsmith_index_u32(var_2.d.x, 18u)], vec4<i32>(-889i, -11946i, 0i, -2147483647i) & global2[_wgslsmith_index_u32(4294967295u, 18u)]), var_1.x), select(~abs(abs(vec3<i32>(-32374i, 9809i, 1i))), max(-(vec3<i32>(var_1.x, var_1.x, 25398i) & vec3<i32>(-1i, var_1.x, var_1.x)), min(vec3<i32>(var_1.x, 3204i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, 1i, -6231i), vec3<i32>(var_1.x, 1i, var_1.x), vec3<i32>(global3.x, 69141i, 0i)))), select(vec3<bool>(true, !var_4, var_1.x >= 32010i), vec3<bool>(func_1().a, var_4, global3.x < global3.x), var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~max(vec3<i32>(12177i, var_5.x, var_5.x), vec3<i32>(9780i, global3.x, -1i)))), 1i);
}

