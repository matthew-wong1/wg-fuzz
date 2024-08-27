struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global2: array<bool, 12> = array<bool, 12>(false, true, true, true, true, false, false, true, true, false, false, false);

var<private> global3: array<u32, 32> = array<u32, 32>(18720u, 39279u, 1u, 4294967295u, 16542u, 0u, 12717u, 8187u, 39374u, 4294967295u, 4601u, 4294967295u, 28408u, 4294967295u, 9816u, 59447u, 1u, 91730u, 0u, 46818u, 0u, 4294967295u, 1800u, 12172u, 11734u, 1u, 15336u, 878u, 0u, 1u, 4294967295u, 1u);

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(30252u, 19801i, 1000f), Struct_3(1u, 0i, 851f), Struct_3(99049u, -1i, 941f), Struct_3(4881u, 0i, -690f), Struct_3(19438u, -1i, 158f), Struct_3(4294967295u, -1i, 710f), Struct_3(44833u, -17898i, 700f), Struct_3(1u, 2147483647i, 1000f), Struct_3(68178u, 2147483647i, -1255f), Struct_3(54781u, 31099i, 175f), Struct_3(0u, 38729i, 791f), Struct_3(4294967295u, 1i, -791f), Struct_3(65531u, 0i, 233f), Struct_3(60597u, -3819i, -686f), Struct_3(16608u, 2147483647i, 1526f), Struct_3(27965u, 97920i, -2432f), Struct_3(18258u, 2147483647i, -212f), Struct_3(0u, -1840i, -438f), Struct_3(0u, 38504i, 433f), Struct_3(23209u, -8191i, -2528f), Struct_3(4309u, 36332i, -252f), Struct_3(1u, -52669i, -971f), Struct_3(1u, i32(-2147483648), -1150f), Struct_3(0u, i32(-2147483648), 804f), Struct_3(7027u, -1i, 174f), Struct_3(0u, 1i, 2830f), Struct_3(101774u, 2147483647i, -1098f), Struct_3(0u, -30383i, -312f), Struct_3(1u, 2147483647i, -1000f), Struct_3(4294967295u, -1i, -951f), Struct_3(17612u, i32(-2147483648), -832f), Struct_3(30377u, -15609i, -916f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    global4 = array<Struct_3, 32>();
    let var_0 = 1i;
    global1 = u_input.d.yz;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-860f, -530f), vec2<f32>(1375f, 1249f))) * vec2<f32>(1000f, -306f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2346f, 461f), vec2<f32>(999f, 127f), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, -810f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-775f, _wgslsmith_f_op_f32(-1321f * -380f))))));
    let var_2 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), global0.xz), _wgslsmith_clamp_i32(arg_1.b, max(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, global1.x), global1.x), -(u_input.b ^ u_input.d.x)), global1.x), _wgslsmith_f_op_f32(trunc(var_1.x)));
    return true;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> bool {
    let var_0 = select(select(vec3<bool>(any(!vec2<bool>(false, global2[_wgslsmith_index_u32(3946u, 12u)])), true, false), vec3<bool>(true, !global2[_wgslsmith_index_u32(arg_3.x, 12u)] || all(vec3<bool>(true, global2[_wgslsmith_index_u32(arg_1, 12u)], true)), true), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5118u, 32u)], 12u)], false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_0.x, 12u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(57450u, 12u)])))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, u_input.c.x, 0u), vec3<u32>(38419u, global3[_wgslsmith_index_u32(arg_3.x, 32u)], 23661u)), arg_3.xzy), arg_0.xzy), 12u)], !select(!global2[_wgslsmith_index_u32(27871u, 12u)], global2[_wgslsmith_index_u32(~0u, 12u)], true), true), global2[_wgslsmith_index_u32(~arg_0.x, 12u)]);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)), var_0.x))))));
    let var_2 = -64546i;
    var var_3 = Struct_3(global0.x, u_input.b, arg_2.x);
    var var_4 = ~(~0u);
    return !(func_1(1u, Struct_1(arg_1, var_3.b)) != (arg_2.x != _wgslsmith_f_op_f32(min(arg_2.x, -756f)))) && func_1(~1u, Struct_1(firstLeadingBit(max(global3[_wgslsmith_index_u32(arg_3.x, 32u)], global0.x)), reverseBits(_wgslsmith_add_i32(u_input.b, var_3.b))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    global1 = u_input.d.xw;
    var var_0 = Struct_1(4294967295u ^ ~_wgslsmith_mod_u32(~global0.x, _wgslsmith_add_u32(86360u, global3[_wgslsmith_index_u32(28581u, 32u)])), 6490i);
    var var_1 = Struct_2(vec4<f32>(arg_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2728f * 274f)))), 838f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1028f, 593f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c))))), arg_2.x);
    var var_2 = firstTrailingBit(vec2<i32>(arg_3.b ^ global1.x, -27987i));
    let var_3 = var_1.a.x;
    return ~_wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_2, arg_2), -2147483647i), arg_3.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], 75450u) >> (arg_0.wx % vec2<u32>(32u)), select(vec2<u32>(38077u, u_input.c.x), vec2<u32>(u_input.c.x, 22670u), arg_1.zx)) | firstLeadingBit(_wgslsmith_mod_u32(1u, arg_0.x))), global1.x, 213f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, var_0.c, -795f, -2213f)))), func_4(!arg_1, vec4<bool>(arg_1.x, func_3(vec4<u32>(68230u, 7189u, 17342u, 18906u), u_input.c.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c, var_0.c, -1000f))), arg_0), global2[_wgslsmith_index_u32(arg_0.x, 12u)], _wgslsmith_f_op_f32(1605f + var_0.c) == var_0.c), _wgslsmith_mod_vec4_i32(-reverseBits(vec4<i32>(0i, -11325i, 0i, var_0.b)), u_input.d >> (vec4<u32>(13313u, global0.x, 1u, u_input.a) % vec4<u32>(32u))), Struct_3(u_input.a, var_0.b << (global3[_wgslsmith_index_u32(4294967295u, 32u)] % 32u), -916f)));
    var var_2 = Struct_4(select(-vec4<i32>(483i, var_1.b ^ 0i, ~var_1.b, ~u_input.b), _wgslsmith_mult_vec4_i32(u_input.d, firstTrailingBit(min(vec4<i32>(u_input.b, -11930i, var_1.b, u_input.d.x), u_input.d))), vec4<bool>(global2[_wgslsmith_index_u32(~var_0.a, 12u)], all(select(vec4<bool>(arg_1.x, true, global2[_wgslsmith_index_u32(77711u, 12u)], true), vec4<bool>(arg_1.x, false, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.a, 12u)], true, global2[_wgslsmith_index_u32(4294967295u, 12u)]))), arg_1.x, any(!arg_1.xy))), ~vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a, global3[_wgslsmith_index_u32(u_input.a, 32u)]) << (abs(106825u) % 32u), 4294967295u, reverseBits(~0u), var_0.a), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(global1.x, _wgslsmith_sub_i32(2147483647i, 9276i), -2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 1i, var_1.b) | vec3<i32>(global1.x, -22367i, var_1.b), vec3<i32>(-22977i, var_1.b, var_1.b)), global1.x, (var_0.b ^ global1.x) & -u_input.b), ~select(~u_input.d.wyx, vec3<i32>(-16166i, global1.x, -23030i), !vec3<bool>(true, arg_1.x, true))), Struct_1(12979u, var_1.b));
    let var_3 = ~0u;
    global1 = vec2<i32>(var_2.d.b, -var_0.b << ((global3[_wgslsmith_index_u32(u_input.a, 32u)] >> (reverseBits(23274u) % 32u)) % 32u));
    return select(!select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 12u)], true, arg_1.x), vec4<bool>(false, false, false, false), select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_3, 12u)], true, false), vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(45180u, 12u)], true, arg_1.x), vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(var_2.b.x, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], arg_1.x))), vec4<bool>(var_1.b == -20262i, arg_1.x, true, any(arg_1)), select(true, true, false)), select(select(vec4<bool>(true, false, true, arg_1.x), !select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], true, true, global2[_wgslsmith_index_u32(var_2.d.a, 12u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 12u)], global2[_wgslsmith_index_u32(21246u, 12u)], global2[_wgslsmith_index_u32(global0.x, 12u)], true), vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 12u)], arg_1.x, true, true)), vec4<bool>(global2[_wgslsmith_index_u32(~1u, 12u)], select(false, true, true), false, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(global2[_wgslsmith_index_u32(148609u, 12u)], false, true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(7326u, 12u)], true, global2[_wgslsmith_index_u32(0u, 12u)]))), true), !vec4<bool>(true, !arg_1.x, false, true)), vec4<bool>(arg_1.x == (_wgslsmith_f_op_f32(-var_0.c) > var_1.a.x), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_2.d.a, _wgslsmith_sub_u32(var_2.d.a, var_0.a)), 12u)], arg_1.x & true, arg_1.x || arg_1.x));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: i32) -> bool {
    var var_0 = 1437f;
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(max(countOneBits(vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 32u)], 32u)], global0.x) & vec3<u32>(u_input.c.x, arg_2.a, global3[_wgslsmith_index_u32(53772u, 32u)])), ~(~vec3<u32>(global0.x, 4294967295u, 54889u))), vec3<u32>(107212u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 32u)], 7378u, arg_2.a), vec3<u32>(u_input.c.x, 4294967295u, 1u)), 0u), ~(~global3[_wgslsmith_index_u32(55431u, 32u)]))), countOneBits(arg_2.a), u_input.c.x);
    var var_1 = arg_2.c;
    global0 = _wgslsmith_div_vec3_u32(min(firstTrailingBit(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, 1u, arg_2.a), vec3<u32>(u_input.c.x, 11872u, 87930u), vec3<bool>(true, true, true)), vec3<u32>(u_input.c.x, 21932u, u_input.a))), countOneBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 38556u, 0u), vec3<u32>(global0.x, global0.x, global0.x))))), countOneBits(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(13432u, u_input.a, 86318u), vec3<u32>(arg_2.a, arg_2.a, 50747u), false), firstTrailingBit(vec3<u32>(u_input.c.x, 4294967295u, global3[_wgslsmith_index_u32(2746u, 32u)])), abs(vec3<u32>(global0.x, u_input.c.x, 4294967295u)))) | abs(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 32u)], 41219u, arg_2.a)));
    let var_2 = !vec2<bool>(arg_0, func_1(~37798u, Struct_1(global0.x, max(14994i, arg_3))));
    return global2[_wgslsmith_index_u32(~max(30399u, 47256u), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(6815u, ~u_input.c.x >> (4294967295u % 32u)), -1i);
    var var_1 = global4[_wgslsmith_index_u32(24608u, 32u)];
    let var_2 = vec4<bool>(select(true || (_wgslsmith_dot_vec2_u32(u_input.c, global0.xz) <= 4294967295u), func_1(_wgslsmith_sub_u32(0u, 0u), var_0) & all(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 12u)], true), vec4<bool>(true, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(var_1.a, 12u)], global2[_wgslsmith_index_u32(var_0.a, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], true))), false), global2[_wgslsmith_index_u32(~var_0.a, 12u)], func_5(all(func_2(vec4<u32>(1u, 4294967295u, 1u, global3[_wgslsmith_index_u32(global0.x, 32u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(29878u, 12u)]))), vec2<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c)) + var_1.c)), global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(u_input.a, 11235u)), 32u)], ~u_input.b), any(select(func_2(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(var_1.a, 32u)], 0u, global0.x), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(var_0.a, 12u)], false)).wy, select(vec2<bool>(false, false), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(var_1.a, 12u)]), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(24145u, 12u)], true)), !vec2<bool>(false, global2[_wgslsmith_index_u32(73373u, 12u)])), func_2(vec4<u32>(var_0.a, 7979u, var_0.a, global0.x) >> (vec4<u32>(0u, 21376u, global3[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u) % vec4<u32>(32u)), !vec3<bool>(false, global2[_wgslsmith_index_u32(global0.x, 12u)], global2[_wgslsmith_index_u32(var_0.a, 12u)])).xy)));
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * 1000f) + _wgslsmith_f_op_f32(sign(-370f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c), var_1.c))), -131f), var_0.b);
    global2 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1512f)))), vec4<f32>(1000f, _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(849f - 1258f)))), var_3.a.x, var_1.c), _wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(var_0.b & 1i), select(func_4(vec3<bool>(var_2.x, true, true), vec4<bool>(true, var_2.x, true, false), vec4<i32>(1i, -31161i, -16343i, 0i), global4[_wgslsmith_index_u32(72543u, 32u)]), -global1.x, !global2[_wgslsmith_index_u32(1u, 12u)])), 1i), 4294967295u, ~vec2<u32>(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(0u, 32u)], 46359u), abs(var_1.a >> (var_0.a % 32u))));
}

