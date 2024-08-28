struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(4908i, 6184i, 77878i), 1i, 10907u, -1347f, vec3<u32>(17206u, 31976u, 0u)), Struct_1(vec3<i32>(29231i, -30054i, 0i), 1i, 46197u, 466f, vec3<u32>(0u, 0u, 2467u)), Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 1i, 11110u, 507f, vec3<u32>(24038u, 29410u, 0u)), Struct_1(vec3<i32>(-1i, 43455i, -21693i), 0i, 0u, 756f, vec3<u32>(4294967295u, 1u, 10690u)), Struct_1(vec3<i32>(10118i, 0i, 70424i), -39236i, 1437u, 283f, vec3<u32>(26141u, 1u, 4468u)), Struct_1(vec3<i32>(-59438i, -1i, -72254i), 0i, 26705u, -508f, vec3<u32>(67024u, 5815u, 41909u)), Struct_1(vec3<i32>(33355i, -3935i, -18584i), -24813i, 0u, 1000f, vec3<u32>(4294967295u, 4294967295u, 39807u)), Struct_1(vec3<i32>(-25825i, 0i, -20609i), 6192i, 26206u, -745f, vec3<u32>(4294967295u, 8426u, 12503u)), Struct_1(vec3<i32>(42819i, 1i, -1i), 1i, 4294967295u, -625f, vec3<u32>(0u, 36397u, 4294967295u)), Struct_1(vec3<i32>(-21497i, 1i, 0i), 1i, 38921u, 868f, vec3<u32>(7280u, 15417u, 1u)), Struct_1(vec3<i32>(-12941i, 1i, 2147483647i), 2147483647i, 5771u, -608f, vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<i32>(1i, -1i, -18593i), 1i, 24585u, 1344f, vec3<u32>(30839u, 22145u, 1u)), Struct_1(vec3<i32>(-1i, 1i, -1i), 2147483647i, 9906u, -645f, vec3<u32>(1u, 31985u, 55352u)), Struct_1(vec3<i32>(-8207i, 2902i, 1i), 2147483647i, 4294967295u, 427f, vec3<u32>(0u, 43282u, 29368u)), Struct_1(vec3<i32>(2147483647i, -16111i, -1i), 1i, 1u, 306f, vec3<u32>(33835u, 0u, 32439u)), Struct_1(vec3<i32>(1i, 32069i, i32(-2147483648)), 5170i, 1u, -781f, vec3<u32>(4294967295u, 4294967295u, 75429u)), Struct_1(vec3<i32>(19301i, 2147483647i, 0i), 2147483647i, 0u, 1313f, vec3<u32>(16766u, 8394u, 20520u)), Struct_1(vec3<i32>(-6082i, 47951i, i32(-2147483648)), -23837i, 64692u, 185f, vec3<u32>(4294967295u, 4294967295u, 6357u)), Struct_1(vec3<i32>(-796i, 4697i, -19050i), 1i, 53214u, -1248f, vec3<u32>(0u, 19015u, 4294967295u)), Struct_1(vec3<i32>(1i, -16994i, -38368i), -80989i, 4294967295u, 802f, vec3<u32>(1u, 159217u, 1u)), Struct_1(vec3<i32>(-14440i, i32(-2147483648), 2147483647i), 3909i, 4294967295u, -562f, vec3<u32>(8836u, 1u, 4294967295u)), Struct_1(vec3<i32>(39408i, -31245i, -1i), 53747i, 1u, 1751f, vec3<u32>(1u, 64233u, 70264u)), Struct_1(vec3<i32>(2147483647i, 8693i, 19877i), 6638i, 0u, -1007f, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<i32>(1i, 47028i, -42642i), 2147483647i, 55620u, -123f, vec3<u32>(1u, 41622u, 65722u)), Struct_1(vec3<i32>(2147483647i, 26777i, 1i), 27177i, 26155u, -747f, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<i32>(2147483647i, 21619i, -28715i), -4135i, 3809u, 1000f, vec3<u32>(0u, 0u, 0u)), Struct_1(vec3<i32>(1i, 2147483647i, 9248i), i32(-2147483648), 4294967295u, -1368f, vec3<u32>(27982u, 0u, 4294967295u)), Struct_1(vec3<i32>(-78523i, 2732i, -20270i), 44826i, 0u, -1480f, vec3<u32>(1u, 4294967295u, 4294967295u)));

var<private> global1: array<u32, 5>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_mod_u32(11727u, _wgslsmith_mult_u32(min(firstTrailingBit(~1u), firstTrailingBit(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 5u)])), global1[_wgslsmith_index_u32(~12484u << (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(19696u, 59645u, u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 60231u, 21826u), vec3<u32>(47354u, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(11832u, 5u)]))) % 32u), 5u)]));
    return _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(max(u_input.a.x, u_input.a.x), 1i), u_input.a.yy)), u_input.a.zx);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<u32>) -> u32 {
    global1 = array<u32, 5>();
    let var_0 = ~vec2<i32>(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, arg_1.x, arg_1.x), firstLeadingBit(vec3<i32>(arg_1.x, -2147483647i, -1i))), 2147483647i), firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(37683i, -2147483647i, u_input.a.x, -1i), ~u_input.a)));
    return _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, ~min(1u, u_input.b.x), ~4294967295u)), arg_2.xwy << (vec3<u32>(4294967295u, arg_2.x, arg_2.x) % vec3<u32>(32u)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_4(!(!(!arg_0) & !arg_0), ~select(func_3(), _wgslsmith_clamp_vec2_i32(u_input.a.zw, u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x)), !vec2<bool>(true, arg_0)) << (u_input.b % vec2<u32>(32u)), countOneBits(~(_wgslsmith_mod_vec4_u32(vec4<u32>(18303u, 0u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 32642u, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec4<u32>(u_input.b.x, u_input.b.x, 70478u, global1[_wgslsmith_index_u32(14910u, 5u)]))))), 5u)], 3u)];
    var var_1 = !(!vec3<bool>(arg_0, true, arg_0));
    let var_2 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44047u, 5u)], 28u)];
    let var_3 = _wgslsmith_div_vec4_u32((vec4<u32>(var_2.c ^ var_2.c, 1236u << (1u % 32u), _wgslsmith_mult_u32(18292u, var_2.c), firstLeadingBit(var_2.e.x)) ^ reverseBits(abs(vec4<u32>(29624u, 4294967295u, global1[_wgslsmith_index_u32(1u, 5u)], u_input.b.x)))) >> (vec4<u32>(var_0.e.x, _wgslsmith_add_u32(~5757u, _wgslsmith_mod_u32(0u, u_input.b.x)), 8167u ^ (49121u >> (var_2.c % 32u)), firstLeadingBit(_wgslsmith_clamp_u32(var_0.c, 26042u, 1u))) % vec4<u32>(32u)), abs(abs(countOneBits(vec4<u32>(var_0.c, 64380u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16486u, 5u)], 5u)], 37443u)))));
    let var_4 = reverseBits(select(~(~var_2.b), _wgslsmith_clamp_i32(-1i, 10863i, ~var_2.a.x), true));
    return var_0.d;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: f32) -> vec3<f32> {
    global2 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(true)), -1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -564f)), _wgslsmith_f_op_f32(select(-718f, arg_0.x, any(vec4<bool>(true, false, false, true))))));
    let var_1 = arg_0;
    global1 = array<u32, 5>();
    var var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 3u)];
    return _wgslsmith_f_op_vec3_f32(var_0.yyz - arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    global0 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 392f, 612f), vec3<f32>(-194f, 1000f, -1167f))), _wgslsmith_add_i32(46344i, u_input.a.x), _wgslsmith_f_op_f32(165f * -928f), _wgslsmith_f_op_f32(f32(-1f) * -910f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, -625f, -1080f)), vec3<f32>(-1634f, -1058f, -518f)))))));
    var var_1 = global2[_wgslsmith_index_u32(3041u, 3u)];
    global1 = array<u32, 5>();
    global2 = array<Struct_1, 3>();
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_1.e.x | 4035u, ~u_input.b.x, firstLeadingBit(2901u)), 0u, max(~reverseBits(u_input.b.x), ~(~var_1.e.x))) & ~(~min(34030u, 2553u) & ~(~var_1.e.x)), 3u)];
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + 582f), -1005f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, var_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1229f, -176f), vec2<f32>(424f, var_1.d), false)))) * vec2<f32>(_wgslsmith_f_op_f32(func_2(false)), var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(982f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-1117f * var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_2.d, -1888f) + vec3<f32>(-2528f, var_2.d, var_2.d)), vec3<f32>(-1000f, 1268f, var_1.d)))), countOneBits(u_input.a.x));
}

