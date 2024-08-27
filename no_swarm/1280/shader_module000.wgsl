struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 11>;

var<private> global2: array<i32, 28> = array<i32, 28>(0i, -1i, -4071i, i32(-2147483648), 46883i, 1i, 0i, 2280i, 1i, i32(-2147483648), 1i, 0i, -1i, 64437i, -1i, -13724i, 14745i, i32(-2147483648), 1i, i32(-2147483648), 19061i, i32(-2147483648), 2147483647i, 1i, 0i, 0i, -5347i, 45807i);

var<private> global3: array<vec3<i32>, 24>;

var<private> global4: array<f32, 23> = array<f32, 23>(-1222f, 250f, 812f, 257f, -1000f, -342f, -1788f, 134f, -1195f, 882f, 317f, 484f, -1015f, -1000f, -833f, -1046f, 926f, -966f, -1866f, 134f, -1794f, -372f, -305f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = Struct_3(vec3<bool>(global0.d.x, arg_1.c.x, any(!vec2<bool>(false, arg_1.c.x))));
    global3 = array<vec3<i32>, 24>();
    var var_1 = Struct_3(select(arg_1.d.xxy, !global0.c.yzw, !(!all(arg_0.d.a))));
    global4 = array<f32, 23>();
    global1 = array<vec3<u32>, 11>();
    return vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(arg_0.c.c | arg_1.a.x), ~_wgslsmith_div_u32(arg_1.a.x, arg_0.c.c), arg_1.a.x) & 16050u, 1u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_u32(func_3(Struct_4(global0.b.x, !(!vec2<bool>(arg_1.a.x, false)), Struct_1(true, global4[_wgslsmith_index_u32(~0u, 23u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.a.x), vec2<u32>(52494u, global0.a.x))), arg_1, -countOneBits(arg_0.b.x)), arg_0), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, ~u_input.b.x), ~(~global0.a), u_input.d.xx), _wgslsmith_clamp_vec2_u32(~(~u_input.b.zx), abs(vec2<u32>(arg_0.a.x, 4294967295u)), arg_0.a), ~vec2<u32>(arg_0.a.x, ~global0.a.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1383f, -370f, 805f, -801f) * vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], -441f, 423f, -1412f)) * vec4<f32>(-570f, global4[_wgslsmith_index_u32(global0.a.x, 23u)], global4[_wgslsmith_index_u32(33175u, 23u)], 450f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-117f, 1000f, global4[_wgslsmith_index_u32(11224u, 23u)], global4[_wgslsmith_index_u32(1u, 23u)]), vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(14567u, 23u)], global4[_wgslsmith_index_u32(global0.a.x, 23u)], global4[_wgslsmith_index_u32(var_0.x, 23u)])), vec4<f32>(-1320f, global4[_wgslsmith_index_u32(13738u, 23u)], 162f, -1279f))))));
    global1 = array<vec3<u32>, 11>();
    let var_2 = select(vec2<u32>(~1u, _wgslsmith_add_u32(abs(4294967295u), ~(~global0.a.x))), vec2<u32>(var_0.x, func_3(Struct_4(-global0.b.x, select(vec2<bool>(arg_0.d.x, false), vec2<bool>(false, false), arg_1.a.yz), Struct_1(arg_0.d.x, var_1.x, 1u), arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, 0i), vec2<i32>(global0.b.x, arg_2))), arg_0).x), arg_1.a.xz);
    let var_3 = 4294967295u;
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = arg_2;
    var_0 = func_2(arg_2, Struct_3(!select(!global0.d.wyz, var_0.c.zwz, true)), u_input.a.x);
    global1 = array<vec3<u32>, 11>();
    var var_1 = arg_2;
    var var_2 = Struct_3(vec3<bool>(!any(!var_0.d), arg_2.d.x | true, true));
    return Struct_3(!arg_2.c.zxw);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = -global0.b;
    global2 = array<i32, 28>();
    var_0 = abs(reverseBits(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-1i) * -vec4<i32>(global0.b.x, -8565i, -1i, var_0.x), -vec4<i32>(global2[_wgslsmith_index_u32(65151u, 28u)], 12093i, 0i, global2[_wgslsmith_index_u32(17310u, 28u)]))));
    global4 = array<f32, 23>();
    let var_1 = func_4(max(global0.b, vec4<i32>(var_0.x, min(2147483647i, -862i), firstLeadingBit(-1i), -global2[_wgslsmith_index_u32(global0.a.x, 28u)]) ^ ((global0.b & global0.b) | firstTrailingBit(u_input.a))), -2147483647i, Struct_2(~u_input.d.yz, u_input.a, vec4<bool>(true | func_4(vec4<i32>(var_0.x, 1i, global2[_wgslsmith_index_u32(22049u, 28u)], u_input.e.x), -79683i, Struct_2(u_input.d.wy, vec4<i32>(var_0.x, 0i, global0.b.x, global0.b.x), global0.c, vec4<bool>(global0.d.x, false, false, arg_1.a.x)), vec2<f32>(-370f, 304f)).a.x, false, true, !all(vec2<bool>(true, false))), global0.d), _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(~global0.a.x, 23u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-271f)), -574f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1396f, -914f)))) + vec2<f32>(_wgslsmith_f_op_f32(989f - 103f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0.a.x, 23u)])))));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(-27835i, reverseBits(29627i), abs(64496i), -abs(-11607i)), vec4<i32>(-2147483647i, max(reverseBits(-12417i), ~u_input.e.x), abs(~max(0i, var_0.x)), _wgslsmith_mult_i32(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(27173i, 2147483647i))) & ~reverseBits(var_0.x)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_2(global0.a, -func_5(countOneBits(-19248i) >= _wgslsmith_sub_i32(u_input.e.x, global0.b.x), Struct_3(!vec3<bool>(false, false, global0.c.x)), func_4(_wgslsmith_clamp_vec4_i32(global0.b, global0.b, u_input.a), max(u_input.e.x, u_input.a.x), func_2(Struct_2(global0.a, global0.b, vec4<bool>(false, global0.d.x, false, true), vec4<bool>(false, true, false, global0.c.x)), Struct_3(global0.d.xyw), u_input.a.x), vec2<f32>(270f, 190f))), global0.d, vec4<bool>(func_4(select(vec4<i32>(global2[_wgslsmith_index_u32(40536u, 28u)], 1i, global2[_wgslsmith_index_u32(4294967295u, 28u)], 0i), -u_input.a, -2729f > global4[_wgslsmith_index_u32(1u, 23u)]), u_input.a.x, Struct_2(vec2<u32>(31624u, 14479u), u_input.a, select(global0.d, global0.c, global0.d), global0.c), vec2<f32>(_wgslsmith_f_op_f32(-1546f - arg_0.x), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(55633u, 23u)] + arg_0.x))).a.x, all(select(vec3<bool>(global0.d.x, false, global0.c.x), !vec3<bool>(false, false, global0.c.x), true)), func_2(func_2(func_2(Struct_2(u_input.d.zw, vec4<i32>(-48396i, -12172i, -41163i, global0.b.x), vec4<bool>(global0.c.x, true, false, true), vec4<bool>(false, global0.c.x, false, global0.c.x)), Struct_3(vec3<bool>(global0.d.x, false, global0.c.x)), u_input.a.x), Struct_3(vec3<bool>(global0.d.x, global0.c.x, false)), ~1i), Struct_3(global0.d.wyy), _wgslsmith_mod_i32(abs(global2[_wgslsmith_index_u32(57247u, 28u)]), 1i)).d.x, global0.c.x));
    let var_1 = min(_wgslsmith_div_vec2_u32(u_input.d.yz, ~_wgslsmith_mod_vec2_u32(vec2<u32>(25691u, 0u), var_0.a)), firstTrailingBit(vec2<u32>(~var_0.a.x, 30217u)));
    global2 = array<i32, 28>();
    global2 = array<i32, 28>();
    let var_2 = ~reverseBits(~var_0.a.x);
    return func_4(global0.b, countOneBits(global2[_wgslsmith_index_u32(6332u, 28u)]), func_2(var_0, func_4(select(u_input.a, global0.b, vec4<bool>(true, var_0.c.x, true, false)) << (~u_input.d % vec4<u32>(32u)), countOneBits(func_5(true, Struct_3(vec3<bool>(var_0.d.x, global0.d.x, var_0.c.x)), Struct_3(vec3<bool>(global0.c.x, false, var_0.d.x))).x), func_2(Struct_2(global0.a, vec4<i32>(0i, 0i, u_input.a.x, 2147483647i), vec4<bool>(true, true, var_0.c.x, false), vec4<bool>(var_0.d.x, var_0.c.x, true, false)), Struct_3(var_0.c.xxz), _wgslsmith_sub_i32(var_0.b.x, -23005i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-743f, arg_0.x)), _wgslsmith_f_op_vec2_f32(floor(arg_0)))), max(_wgslsmith_dot_vec4_i32(select(vec4<i32>(15520i, -20635i, global0.b.x, u_input.e.x), u_input.a, global0.c.x), var_0.b), u_input.a.x)), arg_0);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = Struct_4(0i, arg_0.d.a.xy, Struct_1(!(_wgslsmith_sub_i32(28423i, global0.b.x) < _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], arg_0.a, 0i, global2[_wgslsmith_index_u32(1u, 28u)]), vec4<i32>(global2[_wgslsmith_index_u32(global0.a.x, 28u)], arg_0.a, -2147483647i, arg_0.e))), -1000f, 1u), func_4(-_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, global0.b.x, 22699i), vec4<i32>(-1i, -1i, global2[_wgslsmith_index_u32(1u, 28u)], 0i)), firstTrailingBit(global0.b)), 24969i, Struct_2(u_input.d.yy, vec4<i32>(9263i, u_input.a.x, -1i ^ arg_0.e, u_input.c ^ -862i), select(!vec4<bool>(global0.c.x, true, true, global0.d.x), !vec4<bool>(false, true, global0.d.x, true), func_2(Struct_2(vec2<u32>(global0.a.x, u_input.d.x), global0.b, vec4<bool>(true, global0.d.x, true, false), global0.c), arg_0.d, global2[_wgslsmith_index_u32(1u, 28u)]).d), vec4<bool>(false, func_4(vec4<i32>(global0.b.x, global0.b.x, 0i, u_input.a.x), -2147483647i, Struct_2(global0.a, vec4<i32>(-1i, global0.b.x, -7383i, global0.b.x), vec4<bool>(true, false, true, true), global0.d), arg_1.zy).a.x, true, !arg_0.c.a)), arg_1.xz), reverseBits(arg_0.a) >> (~(~(4294967295u << (arg_0.c.c % 32u))) % 32u));
    var var_1 = var_0.d;
    let var_2 = Struct_4(-var_0.a, vec2<bool>(arg_0.d.a.x, true), Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(var_0.c.b - 181f), u_input.d.x), var_0.d, ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, 1i, 2147483647i), arg_0.a & -1i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(166f)) * _wgslsmith_f_op_f32(-2477f + -1988f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - -490f));
    let var_4 = ~vec3<u32>(var_2.c.c, _wgslsmith_div_u32(~abs(46741u), select(func_3(arg_0, Struct_2(vec2<u32>(119114u, u_input.d.x), global0.b, global0.c, global0.d)).x, select(4294967295u, 0u, var_2.d.a.x), all(global0.d.xx))), _wgslsmith_div_u32(~120712u ^ func_2(Struct_2(vec2<u32>(global0.a.x, global0.a.x), vec4<i32>(arg_0.e, 0i, 13576i, global2[_wgslsmith_index_u32(arg_0.c.c, 28u)]), global0.d, vec4<bool>(false, global0.d.x, var_2.d.a.x, false)), Struct_3(vec3<bool>(var_0.c.a, var_2.c.a, var_1.a.x)), var_2.a).a.x, 0u));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(select(select(!vec2<bool>(global0.d.x, false), global0.d.ww, all(vec3<bool>(false, global0.d.x, false))), !select(global0.c.zx, global0.d.zw, true), true)), -677f, func_6(Struct_4(min(2358i, _wgslsmith_clamp_i32(2147483647i, global2[_wgslsmith_index_u32(0u, 28u)], global0.b.x)), vec2<bool>(any(global0.c), false), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -115f), global0.a.x), func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], -536f)))), _wgslsmith_sub_i32(2147483647i, firstLeadingBit(global0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global4[_wgslsmith_index_u32(u_input.b.x, 23u)], -345f, -795f)) - vec4<f32>(_wgslsmith_f_op_f32(939f - 268f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b.x, 23u)] - 296f), _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global0.a.x, 23u)])), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(102429u, 23u)])))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~u_input.d, vec4<u32>(global0.a.x, 20650u, u_input.d.x, u_input.d.x)), 23u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(221f * _wgslsmith_f_op_f32(min(-437f, -1193f))), -532f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -680f), -1074f, _wgslsmith_f_op_f32(select(-973f, var_0.b, true)))))));
    let var_2 = vec3<f32>(424f, global4[_wgslsmith_index_u32(global0.a.x, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-568f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b) * _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1151f, -1164f)) - _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(u_input.b.x, 23u)]))))));
    let var_3 = u_input.d.x;
    var var_4 = Struct_3(func_1(var_1.zz).a);
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(524f, 890f, func_4(vec4<i32>(1i, global0.b.x, 11666i, global0.b.x), -1456i, Struct_2(vec2<u32>(1u, 86217u), u_input.a, vec4<bool>(global0.c.x, false, true, true), vec4<bool>(var_0.a, false, var_0.a, true)), var_2.zz).a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_0.b, u_input.c > -1i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(max(1694f, 1156f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(1205f - 499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), 1220f))));
}

