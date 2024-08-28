struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-1818f, 813f, -609f), vec4<f32>(-957f, -303f, -942f, 583f), 432f), vec2<i32>(-1i, -1i), 96970u, vec3<u32>(50350u, 1u, 4294967295u), 4294967295u), Struct_2(Struct_1(vec2<u32>(41530u, 69657u), vec3<f32>(622f, -315f, 1342f), vec4<f32>(1286f, -1300f, -480f, -268f), -469f), vec2<i32>(1i, 38926i), 6272u, vec3<u32>(80305u, 43401u, 4294967295u), 0u), Struct_2(Struct_1(vec2<u32>(4294967295u, 55757u), vec3<f32>(-848f, 874f, -920f), vec4<f32>(-361f, -733f, -743f, -1129f), -952f), vec2<i32>(8555i, 2147483647i), 0u, vec3<u32>(849u, 0u, 0u), 1u), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(373f, 964f, 1188f), vec4<f32>(-234f, -221f, 683f, 144f), 220f), vec2<i32>(30942i, -33133i), 45303u, vec3<u32>(4294967295u, 0u, 54673u), 21546u), Struct_2(Struct_1(vec2<u32>(4294967295u, 12819u), vec3<f32>(-1523f, -853f, 374f), vec4<f32>(925f, 1000f, -389f, -1000f), 743f), vec2<i32>(27526i, -1i), 0u, vec3<u32>(1u, 20498u, 10265u), 21966u), Struct_2(Struct_1(vec2<u32>(1u, 35028u), vec3<f32>(1000f, 1685f, -760f), vec4<f32>(-2620f, 348f, 372f, 134f), -696f), vec2<i32>(0i, 12433i), 4294967295u, vec3<u32>(1u, 44682u, 0u), 28463u), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-305f, -582f, -940f), vec4<f32>(-865f, 760f, 2611f, 301f), -888f), vec2<i32>(i32(-2147483648), 1i), 0u, vec3<u32>(3317u, 1u, 35899u), 4294967295u), Struct_2(Struct_1(vec2<u32>(30874u, 60470u), vec3<f32>(754f, 878f, 305f), vec4<f32>(343f, 446f, 200f, 2075f), -120f), vec2<i32>(2147483647i, 0i), 1u, vec3<u32>(32356u, 4294967295u, 1u), 1u));

var<private> global1: bool = true;

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: array<f32, 29>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_vec3_i32(min(countOneBits(~vec3<i32>(5952i, 1i, arg_1.b.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.b, u_input.a), vec3<i32>(-2147483647i, 0i, arg_1.b.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.b) ^ vec3<i32>(61683i, u_input.a, arg_1.b.x), vec3<i32>(24675i, u_input.b, 0i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 6294i, -51219i), vec3<i32>(u_input.a, -1042i, arg_1.b.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, 0i), vec3<i32>(arg_1.b.x, u_input.a, -54437i))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(9745i, -2147483647i, -2147483647i) & vec3<i32>(1i, arg_1.b.x, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-55198i, 36338i, -19624i), vec3<i32>(u_input.b, -28000i, -1i))))) << (arg_0 % vec3<u32>(32u));
    var var_1 = Struct_1(vec2<u32>(~select(17087u, 43669u, false), firstLeadingBit(arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -563f), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1772f)), 206f, arg_3.x))), _wgslsmith_f_op_f32(floor(641f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.c.x))), arg_1.a.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(-arg_2.x)))), 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1054f))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(89551u, 26u)]), global2[_wgslsmith_index_u32(53640u, 26u)]);
    global0 = array<Struct_2, 8>();
    var var_3 = min(reverseBits(min(~var_1.a.x ^ arg_0.x, ~0u)), 1u);
    return _wgslsmith_f_op_vec4_f32(ceil(arg_1.a.c));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.x), 29u)] - 1767f));
    global0 = array<Struct_2, 8>();
    global3 = array<f32, 29>();
    global0 = array<Struct_2, 8>();
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(13378u, 4294967295u, arg_0.a.x, 1726u) << (vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, arg_0.a.x) % vec4<u32>(32u))), ~(~vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1u))) & select(min(vec4<u32>(arg_0.a.x, 4294967295u, 11718u, 8928u), abs(vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, 21312u))), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x), vec4<u32>(arg_0.a.x, 6672u, 11335u, 1u)), arg_3));
    return _wgslsmith_f_op_vec3_f32(arg_2.zzy - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1673f))), -1000f, _wgslsmith_f_op_f32(step(1009f, arg_0.c.x))));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global2 = array<vec4<f32>, 26>();
    var var_0 = Struct_1(min(arg_0.a, ~(~vec2<u32>(arg_0.a.x, arg_0.a.x))), arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), -554f) + arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(556f)))) + _wgslsmith_f_op_f32(round(arg_0.b.x))), global3[_wgslsmith_index_u32(4984u, 29u)], arg_0.c.x), global3[_wgslsmith_index_u32(0u, 29u)]);
    global1 = !all(vec3<bool>(-974f <= _wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_0.a.x, 29u)], -2732f), true, true));
    global0 = array<Struct_2, 8>();
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(680u, 1u), ~var_0.a), 8u)];
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.a.x, 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(63266u, 29u)]) * 320f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-635f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(21958u, 29u)] * 449f)))) * _wgslsmith_f_op_vec3_f32(func_4(Struct_1(countOneBits(abs(arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1137f, -735f, global3[_wgslsmith_index_u32(var_1.a.a.x, 29u)])), _wgslsmith_f_op_vec4_f32(func_3(var_1.d, Struct_2(Struct_1(vec2<u32>(var_1.c, 28214u), var_0.c.xxw, vec4<f32>(var_0.c.x, arg_0.d, arg_0.b.x, var_1.a.b.x), var_1.a.d), var_1.b, var_1.a.a.x, vec3<u32>(var_1.d.x, 0u, arg_0.a.x), var_0.a.x), arg_0.c.yy, vec4<bool>(true, true, false, false))), global3[_wgslsmith_index_u32(3592u >> (~arg_0.a.x % 32u), 29u)]), ~(-75081i) << (max(0u, arg_0.a.x | var_1.a.a.x) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.a.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_1.a.b.x, 298f, arg_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), !(var_0.d <= 429f))), vec4<bool>(true, true, true, 68070i <= u_input.a))));
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    global3 = array<f32, 29>();
    let var_0 = Struct_2(Struct_1(~vec2<u32>(~0u, ~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1941f, -937f, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(933f, 622f, arg_0.x) * vec3<f32>(arg_0.x, global3[_wgslsmith_index_u32(26139u, 29u)], arg_0.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(384f, global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(1u, 29u)]))), vec3<bool>(true, true, true)))), _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(751f, global3[_wgslsmith_index_u32(0u, 29u)], arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(47675u, 29u)])))), _wgslsmith_f_op_f32(684f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(1000f, 628f)))))), vec2<i32>(~_wgslsmith_mod_i32(~(-2147483647i), 15662i), u_input.a), abs(~select(1u, 0u, true) & min(42848u, ~44148u)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(46563u, 7718u, 73765u), vec3<u32>(1u, 95523u, 0u)), ~vec3<u32>(62295u, 31812u, 39892u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), reverseBits(16565u));
    let var_1 = select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, var_0.d.x > 3002u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), false), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, u_input.a < u_input.b, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-arg_0.x)), !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), vec3<bool>(true, true, true));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 29u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.d * -1000f), global3[_wgslsmith_index_u32(var_0.d.x, 29u)]))), var_0.a.d, _wgslsmith_f_op_f32(-982f - -1076f));
    global3 = array<f32, 29>();
    return 1u & var_0.a.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(arg_0.a.x), 1u), arg_0.a.x, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_0)))), func_5(_wgslsmith_f_op_vec3_f32(floor(arg_0.c.zxy))));
    var var_1 = select(select(select(arg_1.xxw, arg_1.yzx, select(!arg_1.yyx, select(vec3<bool>(arg_2, arg_1.x, arg_1.x), vec3<bool>(true, arg_2, arg_2), true), vec3<bool>(true, arg_2, arg_1.x))), select(!vec3<bool>(arg_1.x, arg_2, false), !select(vec3<bool>(arg_2, false, arg_1.x), arg_1.wzx, arg_1.zyw), arg_1.x), select(!vec3<bool>(arg_2, true, arg_1.x), !vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, true))), !arg_1.ywy, arg_1.wxw);
    var var_2 = !arg_1.x;
    var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(9665u, arg_0.a.x, _wgslsmith_add_u32(max(var_0.x, var_0.x), ~arg_0.a.x), reverseBits(var_0.x) >> ((var_0.x & 4294967295u) % 32u)), abs(~(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x) | vec4<u32>(110065u, arg_0.a.x, var_0.x, 4294967295u))) ^ ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 0u, arg_0.a.x, 4294967295u), vec4<u32>(22929u, 1u, var_0.x, 70684u))), vec4<u32>(func_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(237f, -1578f, -634f)))), _wgslsmith_clamp_u32(~var_0.x, arg_0.a.x, _wgslsmith_mod_u32(10087u, 50123u)), ~var_0.x, _wgslsmith_mod_u32(var_0.x, ~4294967295u)) << (_wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, var_0.x, 0u, arg_0.a.x) & vec4<u32>(16280u, var_0.x, 4294967295u, var_0.x)), reverseBits(firstTrailingBit(vec4<u32>(var_0.x, 0u, 2813u, arg_0.a.x)))) % vec4<u32>(32u)));
    global1 = any(!(!arg_1.zwz));
    return all(arg_1.wwz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(5239u, 29u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f - global3[_wgslsmith_index_u32(117165u, 29u)]) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(37753u, 29u)])))));
    global0 = array<Struct_2, 8>();
    let var_1 = ((!func_1(Struct_1(vec2<u32>(55552u, 46311u), vec3<f32>(-855f, global3[_wgslsmith_index_u32(81216u, 29u)], 555f), vec4<f32>(2304f, -842f, global3[_wgslsmith_index_u32(7322u, 29u)], global3[_wgslsmith_index_u32(33837u, 29u)]), 1644f), vec4<bool>(true, false, false, false), false) & (_wgslsmith_f_op_f32(861f + -254f) <= _wgslsmith_f_op_f32(round(-345f)))) && true) & all(vec3<bool>(true, true, true));
    let var_2 = global0[_wgslsmith_index_u32(select(~abs(firstLeadingBit(118747u)), ~(~_wgslsmith_add_u32(1u, ~53871u)), any(vec3<bool>(false, firstTrailingBit(0u) <= 10956u, !(!var_1)))), 8u)];
    var_0 = 527f;
    var var_3 = Struct_2(Struct_1(firstLeadingBit(vec2<u32>(~var_2.c, 41524u)), _wgslsmith_f_op_vec3_f32(var_2.a.b * _wgslsmith_f_op_vec3_f32(-var_2.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.c.x, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_2.d.x, 29u)])), -864f, _wgslsmith_f_op_f32(step(var_2.a.d, var_2.a.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.b.x)))))), ~vec2<i32>(~16802i, ~(~1i)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 65477u, var_2.c, var_2.e), ~vec4<u32>(4294967295u, 6964u, var_2.a.a.x, var_2.c)), vec4<u32>(4294967295u, ~49141u, var_2.a.a.x, ~var_2.e)) >> (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 1u, 6020u, var_2.a.a.x), vec4<u32>(4294967295u, var_2.c, var_2.c, var_2.c))) % 32u), var_2.d, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(10419u, 33531u, 1u, 10223u)), vec4<u32>(1u, ~0u, abs(var_2.a.a.x), ~var_2.d.x)), max(~var_2.a.a.x, 0u ^ ~var_2.c)));
    var var_4 = max(~(-vec4<i32>(32192i, firstTrailingBit(var_2.b.x), ~var_3.b.x, 65033i)), ((vec4<i32>(var_2.b.x, u_input.a, 1i, -1i) & -vec4<i32>(-1i, 2147483647i, var_2.b.x, u_input.a)) ^ (-vec4<i32>(u_input.a, 10704i, 2147483647i, var_3.b.x) << (vec4<u32>(var_3.c, 4294967295u, var_3.c, 17199u) % vec4<u32>(32u)))) | vec4<i32>(abs(var_3.b.x ^ 39984i), 40488i, _wgslsmith_clamp_i32(firstTrailingBit(0i), var_3.b.x ^ -1i, -2147483647i), ~(~(-1i))));
    let var_5 = firstTrailingBit(min(~var_4.xyx & _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.x, u_input.a, 1i), vec3<i32>(var_3.b.x, var_4.x, var_4.x)), reverseBits(select(var_4.xxx, vec3<i32>(var_2.b.x, -1i, 1i), var_1))) << (var_3.d % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), var_3.d.x, var_2.a.a.x, var_3.d.xz);
}

