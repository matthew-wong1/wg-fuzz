struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 19> = array<i32, 19>(-1i, 8061i, -1206i, 60002i, 1i, 1i, 3844i, 5760i, -27498i, -67641i, -17304i, 46547i, -1i, 1917i, 0i, 2147483647i, -56899i, 11997i, 0i);

var<private> global2: vec3<bool>;

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    let var_0 = select(!vec4<bool>(all(vec2<bool>(global2.x, global2.x)), any(select(vec4<bool>(arg_0.c, arg_1.x, true, arg_0.c), vec4<bool>(false, true, true, arg_0.c), true)), arg_1.x, false), select(vec4<bool>(any(!vec2<bool>(arg_0.c, false)), arg_1.x, any(vec3<bool>(arg_1.x, false, true)), !all(arg_1)), vec4<bool>(true, false, all(!vec3<bool>(global2.x, arg_0.c, true)), false), select(vec4<bool>(true, any(arg_1.xz), true, all(vec2<bool>(true, true))), select(select(vec4<bool>(global2.x, false, true, false), vec4<bool>(arg_0.d.a, global2.x, arg_1.x, global2.x), vec4<bool>(global2.x, false, false, false)), select(vec4<bool>(global2.x, false, global2.x, arg_0.c), vec4<bool>(true, arg_1.x, false, true), vec4<bool>(arg_1.x, false, true, false)), vec4<bool>(false, arg_1.x, arg_1.x, arg_0.c)), true)), select(true || all(vec4<bool>(arg_1.x, true, true, global2.x)), arg_0.d.a, (global3.x | 1u) == (~global3.x ^ 1u)));
    global2 = vec3<bool>(false, ~arg_0.e.a.x > _wgslsmith_div_u32(4294967295u, firstTrailingBit(1u)), true);
    global2 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, 366f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(999f, arg_0.b, 1370f), vec3<f32>(354f, 994f, arg_0.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, -1211f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 175f, arg_0.b)) + vec3<f32>(202f, arg_0.b, arg_0.b)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(trunc(-907f))))), 758f, arg_0.b));
    let var_2 = select(select(!(!arg_1), !arg_1, true), vec3<bool>(all(!var_0), false, !var_0.x), !(arg_0.b <= 480f) || false);
    return _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_sub_u32(abs(global3.x), ~arg_0.a.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, arg_2, global3.x) ^ vec4<u32>(0u, global3.x, global3.x, 47126u), vec4<u32>(8725u, arg_0.d.b.x, arg_2, 2172u) >> (vec4<u32>(global3.x, 3453u, 0u, global3.x) % vec4<u32>(32u)), ~vec4<u32>(1u, 66233u, arg_2, 4294967295u)), vec4<u32>(arg_0.e.a.x, arg_2, 1u, arg_0.e.a.x)), arg_0.e.a.x) << (global3.x % 32u);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    return Struct_1(arg_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)), vec3<u32>(arg_2.a.x, min(global3.x, ~func_3(Struct_3(arg_2, 227f, arg_0.x, Struct_1(true, vec3<u32>(arg_2.a.x, global3.x, 0u), vec2<i32>(arg_3, arg_3), vec4<i32>(2147483647i, arg_3, global1[_wgslsmith_index_u32(103186u, 19u)], arg_3)), Struct_2(vec2<u32>(arg_2.a.x, arg_2.a.x))), vec3<bool>(true, global2.x, false), global3.x)), select(28499u, arg_2.a.x, arg_0.x)), -vec2<i32>(u_input.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.a.x, u_input.a.x))), ~select(abs(vec4<i32>(u_input.b, -34512i, -35188i, -36899i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 16294i, -11648i, u_input.a.x), vec4<i32>(21822i, global1[_wgslsmith_index_u32(12433u, 19u)], arg_3, 0i), vec4<i32>(u_input.a.x, -2691i, -8840i, arg_3)), global2.x) ^ (vec4<i32>(global1[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_sub_i32(u_input.a.x, arg_3), reverseBits(global1[_wgslsmith_index_u32(0u, 19u)]), -8276i) | firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(arg_2.a.x, 19u)], u_input.b, -76647i, -15966i))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(arg_2.b.zy), 201f, true, Struct_1(func_2(global2.xz, arg_1.b, arg_1.a, u_input.a.x).c.x < -26295i, vec3<u32>(arg_2.b.x, ~0u, 4294967295u) ^ arg_2.b, arg_1.d.c, countOneBits(vec4<i32>(arg_1.d.c.x, 0i, arg_1.d.d.x, arg_1.d.c.x)) & firstTrailingBit(vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(global3.x, 19u)], global1[_wgslsmith_index_u32(arg_2.b.x, 19u)], u_input.b) >> (vec4<u32>(0u, 4294967295u, 0u, arg_1.a.a.x) % vec4<u32>(32u)))), Struct_2(func_2(select(!vec2<bool>(global2.x, false), select(global2.zy, vec2<bool>(arg_1.d.a, false), global2.x), select(global2.xx, vec2<bool>(global2.x, false), arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-684f))), arg_1.e, u_input.b).b.yz));
    let var_1 = ~_wgslsmith_add_u32(~_wgslsmith_mult_u32(arg_2.b.x, 1u), arg_2.b.x);
    global3 = vec4<u32>(_wgslsmith_sub_u32(30947u, 27053u), ~firstTrailingBit(19212u) & _wgslsmith_mod_u32(arg_2.b.x, ~abs(var_1)), global3.x ^ arg_1.a.a.x, var_0.d.b.x);
    var var_2 = ~(~(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global3.x, global3.x, var_0.a.a.x), arg_2.b), select(global3.zxx, var_0.d.b, global2.x)) | _wgslsmith_mod_u32(func_3(arg_1, vec3<bool>(global2.x, var_0.c, false), var_1), 0u)));
    let var_3 = arg_2;
    return Struct_2(select(vec2<u32>(1u, 1u), (vec2<u32>(18440u, 22679u) ^ ~arg_1.e.a) | _wgslsmith_mod_vec2_u32(global3.xz, abs(var_0.d.b.yy)), global2.xy));
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    global2 = vec3<bool>(any(select(!(!vec3<bool>(global2.x, false, false)), select(!vec3<bool>(true, global2.x, true), !vec3<bool>(false, global2.x, global2.x), true), vec3<bool>(arg_0.a.x == arg_0.a.x, true, true))), true, any(!(!vec2<bool>(global2.x, global2.x))));
    let var_0 = arg_0.a.x | _wgslsmith_mult_u32(global3.x, _wgslsmith_mult_u32(~(~45370u), 1u));
    var var_1 = func_2(vec2<bool>(select(!(!global2.x), false, global2.x), !all(select(global2.yy, global2.yz, global2.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1247f - 847f), -359f)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1232f, 1260f, 562f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 2014f)))), Struct_3(Struct_2(~vec2<u32>(arg_0.a.x, global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1367f)) * 1000f), abs(global1[_wgslsmith_index_u32(0u, 19u)]) != (global1[_wgslsmith_index_u32(var_0, 19u)] >> (44744u % 32u)), Struct_1(global2.x & global2.x, select(global3.yyw, vec3<u32>(global3.x, arg_0.a.x, 0u), vec3<bool>(false, true, global2.x)), vec2<i32>(1i, 2147483647i), abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], global1[_wgslsmith_index_u32(var_0, 19u)], 10317i))), Struct_2(~global3.yw)), func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1901f, -1373f))), func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(254f, 129f, -843f), vec3<f32>(-1000f, -171f, 2063f))), Struct_3(arg_0, -349f, false, Struct_1(false, vec3<u32>(4294967295u, 1u, 133617u), u_input.c.zx, vec4<i32>(-14783i, u_input.c.x, -1i, 2147483647i)), arg_0), Struct_1(global2.x, vec3<u32>(global3.x, 19873u, global3.x), u_input.a, vec4<i32>(-2266i, 0i, 0i, 40972i))), -global1[_wgslsmith_index_u32(1u, 19u)] ^ -6140i)), abs(_wgslsmith_dot_vec3_i32(u_input.c, abs(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, u_input.c)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-312f, 135f), vec2<f32>(885f, -1450f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1968f, 285f) + vec2<f32>(871f, 393f))))), vec2<f32>(_wgslsmith_f_op_f32(-2069f - 251f), _wgslsmith_f_op_f32(-170f * -1712f)))));
    global2 = vec3<bool>(func_2(global2.xx, -1812f, arg_0, global1[_wgslsmith_index_u32(0u, 19u)]).a, var_1.a, false);
    return select(vec4<bool>(var_1.a, abs(var_1.b.x) < 4294967295u, var_1.a, any(select(vec4<bool>(true, true, var_1.a, var_1.a), !vec4<bool>(var_1.a, false, var_1.a, var_1.a), var_1.a))), vec4<bool>(all(select(vec2<bool>(false, true), select(global2.xx, global2.zz, false), var_2.x == -1187f)), false, !all(!vec2<bool>(var_1.a, global2.x)), select(false, !any(vec3<bool>(var_1.a, true, true)), true)), any(select(select(!vec4<bool>(false, true, true, global2.x), vec4<bool>(false, true, false, true), select(vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec4<bool>(var_1.a, global2.x, true, global2.x), var_1.a)), vec4<bool>(var_2.x <= var_2.x, global2.x, !global2.x, false && var_1.a), vec4<bool>(true, select(true, global2.x, true), true, all(vec3<bool>(global2.x, var_1.a, global2.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -728f);
    var var_1 = global3.x;
    var var_2 = !select(func_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1388f, -573f, 1000f)), Struct_3(Struct_2(arg_0.b.yz), 388f, global2.x, Struct_1(false, vec3<u32>(arg_0.b.x, arg_0.b.x, 1u), arg_1, arg_0.d), Struct_2(arg_0.b.zy)), func_2(global2.xz, 628f, Struct_2(global3.ww), 0i))), !vec4<bool>(arg_0.a, func_2(vec2<bool>(arg_0.a, false), 215f, Struct_2(global3.xw), arg_2.x).a, true, true), true);
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1555f))), _wgslsmith_f_op_f32(f32(-1f) * -887f)))), Struct_3(Struct_2(~arg_0.b.zx), -1604f, select(_wgslsmith_mult_u32(0u, global3.x) > ~57604u, (var_2.x | false) && true, any(select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(global2.x, true, var_2.x, true), false))), func_2(vec2<bool>(arg_0.b.x > arg_0.b.x, !global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1748f, 1017f)), Struct_2(arg_0.b.yx), arg_0.c.x), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-756f, -1041f, 799f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, 674f, -1000f))), Struct_3(Struct_2(vec2<u32>(arg_0.b.x, 4294u)), -468f, true, arg_0, func_4(vec3<f32>(164f, -471f, 215f), Struct_3(Struct_2(global3.zx), 2016f, var_2.x, arg_0, Struct_2(arg_0.b.yy)), Struct_1(true, arg_0.b, vec2<i32>(global1[_wgslsmith_index_u32(global3.x, 19u)], 2147483647i), vec4<i32>(-1i, global1[_wgslsmith_index_u32(1u, 19u)], -2147483647i, global1[_wgslsmith_index_u32(1u, 19u)])))), arg_0)), Struct_1(all(select(vec2<bool>(false, var_2.x), var_2.xx, 39286i >= arg_2.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, global3.x, ~3784u), ~vec3<u32>(0u, global3.x, arg_0.b.x)), -vec2<i32>(~(-3265i), 1i), -select(abs(vec4<i32>(arg_2.x, -10472i, global1[_wgslsmith_index_u32(0u, 19u)], arg_2.x)), ~arg_0.d, !vec4<bool>(true, arg_0.a, true, true))));
    global2 = var_2.zyx;
    return var_3.a.x;
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(673f, _wgslsmith_f_op_f32(f32(-1f) * -194f)))), _wgslsmith_f_op_f32(-1226f + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(126f + -386f), 1f), _wgslsmith_f_op_f32(f32(-1f) * -1533f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) * _wgslsmith_f_op_f32(164f - _wgslsmith_f_op_f32(sign(-468f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 19>();
    let var_0 = (-vec3<i32>(~2147483647i, global1[_wgslsmith_index_u32(69020u, 19u)], 43166i << (0u % 32u)) << ((_wgslsmith_sub_vec3_u32(select(vec3<u32>(74436u, global3.x, global3.x), global3.zwx, global2.x), global3.zxw & vec3<u32>(global3.x, global3.x, 0u)) & global3.yxy) % vec3<u32>(32u))) & (vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 69738u), global3.yz), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.x & global3.x, 18300u), 19u)], 1i) | _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(-global1[_wgslsmith_index_u32(0u, 19u)], ~global1[_wgslsmith_index_u32(global3.x, 19u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-739i, global1[_wgslsmith_index_u32(global3.x, 19u)]), u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-355f)) * -180f);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2461f, 1000f, -1123f)))))), _wgslsmith_f_op_vec3_f32(func_6(u_input.c, ~min(93421u, ~22229u), Struct_1(any(!vec4<bool>(true, global2.x, true, true)), vec3<u32>(func_1(Struct_1(true, vec3<u32>(global3.x, global3.x, 0u), var_0.xx, vec4<i32>(1i, var_0.x, u_input.a.x, -3975i)), u_input.c.xx, var_0), 1u, _wgslsmith_add_u32(global3.x, 46087u)), var_0.zz, _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, u_input.a.x, 1i, var_0.x), select(vec4<i32>(1i, -337i, global1[_wgslsmith_index_u32(37046u, 19u)], -1i), vec4<i32>(16941i, -1i, 46179i, -1738i), global2.x))))));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global3.wy);
}

