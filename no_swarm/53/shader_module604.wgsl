struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_2(16798i, vec2<i32>(0i, 28973i), 40480i, Struct_1(vec3<f32>(-344f, -662f, 1247f), vec2<f32>(326f, 511f), 2414f, -427f)), 51700u, Struct_1(vec3<f32>(784f, 803f, -418f), vec2<f32>(-1000f, 139f), -375f, 652f), vec2<f32>(377f, -592f)), Struct_3(Struct_2(3176i, vec2<i32>(-74075i, i32(-2147483648)), -46115i, Struct_1(vec3<f32>(-744f, -1004f, -1909f), vec2<f32>(-1475f, 722f), -1361f, -749f)), 23708u, Struct_1(vec3<f32>(-747f, -312f, 523f), vec2<f32>(515f, 1247f), 1000f, -1005f), vec2<f32>(2000f, 120f)), Struct_3(Struct_2(-50739i, vec2<i32>(1i, -36883i), 2147483647i, Struct_1(vec3<f32>(116f, -419f, -1000f), vec2<f32>(-540f, 298f), 1000f, -246f)), 50956u, Struct_1(vec3<f32>(-904f, 752f, 1243f), vec2<f32>(1193f, 544f), 1502f, -330f), vec2<f32>(658f, 138f)), Struct_3(Struct_2(-43557i, vec2<i32>(-1i, 0i), -1i, Struct_1(vec3<f32>(1662f, -357f, 606f), vec2<f32>(-1671f, -730f), 1000f, 709f)), 69848u, Struct_1(vec3<f32>(-775f, 150f, -1648f), vec2<f32>(835f, -1326f), 655f, 1000f), vec2<f32>(828f, 397f)), Struct_3(Struct_2(-14982i, vec2<i32>(1i, i32(-2147483648)), 1i, Struct_1(vec3<f32>(-835f, 1428f, -846f), vec2<f32>(-833f, -1196f), -706f, -170f)), 41364u, Struct_1(vec3<f32>(-2664f, -281f, 512f), vec2<f32>(530f, 1000f), -336f, 1000f), vec2<f32>(1640f, -1422f)));

var<private> global2: Struct_3;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: u32) -> vec3<f32> {
    global2 = Struct_3(Struct_2(-(~(global2.a.c ^ -30999i)), arg_2.yx, 1i, Struct_1(arg_0.c.a, vec2<f32>(-236f, global2.d.x), 984f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.x - global2.a.d.b.x))))), ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(16630u, global2.b, arg_3), vec3<u32>(1u, 31757u, 0u)) | reverseBits(arg_0.b))), global2.c, arg_0.c.b);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.b)));
    let var_1 = vec4<i32>(5427i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1, _wgslsmith_add_vec3_i32(arg_1, vec3<i32>(6852i, 34458i, -2147483647i))), vec3<i32>(global2.a.a, -8286i, -arg_1.x)), firstTrailingBit(vec3<i32>(-1i) * -arg_2.wyy)), ~1i, min(0i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(135519u, arg_3, 1u), vec3<u32>(59703u, u_input.b, global2.b) ^ vec3<u32>(arg_0.b, arg_3, 66587u)) % 32u), arg_0.a.a));
    let var_2 = !(!any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
    var var_3 = vec2<i32>(firstLeadingBit(-15801i), -30860i >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_3 >> (arg_3 % 32u), 1u), u_input.a.x & min(6491u, arg_3), ~_wgslsmith_mult_u32(8080u, 30051u)) % 32u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, -328f, _wgslsmith_f_op_f32(-var_0.x)), vec3<f32>(-1733f, _wgslsmith_div_f32(411f, 2505f), arg_0.a.d.b.x)))) + _wgslsmith_f_op_vec3_f32(-global2.c.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32) -> vec2<f32> {
    global2 = global1[_wgslsmith_index_u32(1u, 5u)];
    global2 = Struct_3(global2.a, 0u, arg_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, 1295f)))) - global2.a.d.b));
    let var_0 = 17081i;
    var var_1 = ~arg_0.a.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.d - arg_0.d.x), 1191f), _wgslsmith_f_op_vec2_f32(global2.c.a.yx + _wgslsmith_f_op_vec2_f32(min(arg_0.a.d.a.xx, global2.c.a.yy)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.c.a.yy + global2.c.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(global2.d, _wgslsmith_f_op_vec2_f32(step(global2.c.b, vec2<f32>(global2.c.c, -436f))))))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(0u, 5u)];
    var var_1 = Struct_3(arg_0.a, var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d.b.x), 812f, _wgslsmith_f_op_f32(-770f + arg_0.c.d))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) + arg_0.d.x), _wgslsmith_f_op_f32(trunc(-236f))), -878f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1197f)) - _wgslsmith_div_f32(var_0.c.c, 332f))), _wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_2(var_0.a.c, vec2<i32>(2147483647i, 1i), -1i, Struct_1(vec3<f32>(643f, 739f, var_0.c.b.x), var_0.d, var_0.c.a.x, -1962f)), u_input.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(18659u, 4294967295u), u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(arg_0, vec3<i32>(2147483647i, var_0.a.a, -31615i), vec4<i32>(global2.a.a, 6749i, arg_0.a.b.x, -1i), global2.b)), arg_0.a.d.b, global2.c.b.x, _wgslsmith_f_op_f32(arg_0.d.x - 644f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1284f, arg_0.c.c) + var_0.c.b) + _wgslsmith_div_vec2_f32(arg_1.a.zy, arg_0.c.a.zy))), ~abs(abs(vec4<u32>(4294967295u, global2.b, 4294967295u, u_input.b))), -25598i)));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(global2.b, _wgslsmith_sub_u32(var_0.b, 0u), 1i <= ~(~var_1.a.c)), _wgslsmith_mod_u32(global2.b, ((76409u & u_input.b) ^ ~44866u) | ~var_0.b)), 5u)];
    let var_2 = min(vec3<i32>(-15534i, reverseBits(global2.a.c), -1i), vec3<i32>(var_1.a.b.x | abs(var_1.a.c | -48228i), 35887i << (abs(global2.b & global2.b) % 32u), global2.a.c));
    var var_3 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(func_4(arg_0, abs(abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, var_1.b, u_input.b, arg_0.b), vec4<u32>(1u, 53225u, 1u, 29236u), true), countOneBits(vec4<u32>(1u, 17654u, 24648u, 0u))))), _wgslsmith_div_i32(var_1.a.c, var_2.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = 9698u;
    var var_1 = Struct_2(61652i, max(vec2<i32>(global2.a.c, ~_wgslsmith_sub_i32(global2.a.b.x, 1i)), ~(~global2.a.b) ^ -firstTrailingBit(vec2<i32>(-60231i, -10119i))), reverseBits(i32(-1i) * -_wgslsmith_sub_i32(global2.a.c, -2147483647i)), Struct_1(_wgslsmith_div_vec3_f32(global2.a.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-477f, global2.c.b.x, global2.c.c), vec3<f32>(global2.d.x, global2.c.b.x, -574f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_div_f32(global2.c.d, global2.c.d)), _wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(global2.b >> (u_input.a.x % 32u), 5u)], Struct_1(vec3<f32>(global2.d.x, 880f, -987f), vec2<f32>(global2.c.d, -973f), 872f, global2.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.d) + _wgslsmith_f_op_f32(step(-963f, -433f))), -128f));
    var var_2 = ~(~(~(~vec3<u32>(u_input.a.x, 48228u, global2.b))));
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u), 0u, global2.b), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, var_2.x, 6002u), ~vec3<u32>(36476u, 53761u, var_2.x), ~vec3<u32>(1u, global2.b, 32701u))), global2.b);
    global0 = !select(select(global2.b != 98389u, true, false), !select(true, true, false), false);
    return global1[_wgslsmith_index_u32(0u, 5u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = !vec4<bool>((arg_1.a.d.d < arg_0.d.a.x) | true, true, true, all(vec3<bool>(arg_0.d.d != arg_3.d.a.x, true, false)));
    global0 = !(!all(var_0));
    global0 = 33962i <= ~(-min(17789i, arg_3.a) ^ arg_1.a.b.x);
    var var_1 = func_1().a.d;
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(arg_1.b, 48821u), arg_2), u_input.a), 5u)];
    return select(~(~(~(~vec3<u32>(15265u, 4294967295u, 1u)))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(vec3<u32>(0u, global2.b, global2.b)) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, arg_1.b, 0u), vec3<u32>(u_input.a.x, global2.b, 22271u))) ^ ~firstTrailingBit(vec3<u32>(arg_1.b, arg_2, arg_2) << (vec3<u32>(arg_2, 0u, 4294967295u) % vec3<u32>(32u))), select(vec3<bool>(false, var_0.x, var_0.x), !(!var_0.wxx), var_0.yzy));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = global2.a.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1815f, -826f, 518f, 875f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(140f, -912f, 558f, 1240f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.c.c, global2.a.d.b.x, -1789f, global2.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.d.b.x, -927f, -1174f, global2.d.x)))), vec4<f32>(global2.a.d.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.d.x * global2.d.x), global2.c.b.x)), func_1().a.d.d, global2.c.a.x), true))));
    let var_2 = !all(arg_1);
    var var_3 = !select(arg_1.zy, select(select(!arg_1.yw, arg_1.zz, vec2<bool>(var_2, true)), select(arg_1.zz, vec2<bool>(var_2, arg_1.x), true), select(select(vec2<bool>(false, arg_1.x), arg_1.zy, var_2), !arg_1.xz, !vec2<bool>(arg_1.x, true))), all(select(arg_1.wzy, vec3<bool>(arg_1.x, true, true), arg_1.zwx)));
    var var_4 = Struct_3(global2.a, func_5(Struct_2(global2.a.c, ~reverseBits(vec2<i32>(global2.a.c, global2.a.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.b.x, 0i) >> (arg_0.yx % vec2<u32>(32u)), global2.a.b), func_1().a.d), global1[_wgslsmith_index_u32(~(~4294967295u), 5u)], _wgslsmith_mod_u32(~(~5785u), 58375u), global2.a).x, global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-568f, var_1.x)) + 1470f))));
    return Struct_3(Struct_2(2147483647i, _wgslsmith_mod_vec2_i32(~global2.a.b, select(global2.a.b | vec2<i32>(global2.a.a, global2.a.b.x), reverseBits(vec2<i32>(global2.a.a, global2.a.a)), arg_1.x != arg_1.x)), abs(_wgslsmith_clamp_i32(11451i, global2.a.b.x, 12662i)), func_1().c), var_4.b >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(40739u, u_input.a.x) & vec2<u32>(global2.b, 6690u), u_input.a | u_input.a), vec2<u32>(~u_input.b, u_input.b)) % 32u), var_4.a.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.d.b * var_4.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz * var_4.a.d.b), _wgslsmith_f_op_vec2_f32(-var_4.d)))) - global2.a.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(Struct_2(~60057i, select(global2.a.b, reverseBits(vec2<i32>(global2.a.b.x, -2147483647i)), vec2<bool>(true, false)), ~global2.a.b.x, global2.a.d), func_1(), abs(8594u) >> (~(4294967295u << (global2.b % 32u)) % 32u), global2.a), vec4<bool>(!(global2.a.a != global2.a.b.x), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), true));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-697f, -254f) + global2.c.c) * _wgslsmith_div_f32(-1618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.c))));
    let var_1 = vec3<i32>(0i, global2.a.b.x | _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global2.a.b.x, global2.a.c), vec3<i32>(global2.a.c, global2.a.a, -1i), vec3<i32>(global2.a.c, global2.a.a, -20533i)), ~vec3<i32>(-37381i, global2.a.a, 1i)), vec3<i32>(_wgslsmith_mult_i32(global2.a.b.x, global2.a.c), _wgslsmith_mult_i32(global2.a.c, -1i), ~global2.a.c)), ~34882i);
    global2 = Struct_3(global2.a, _wgslsmith_sub_u32(~7191u, global2.b), global2.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.c, global2.c.c)), vec2<f32>(global2.a.d.c, 208f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2035f, global2.d.x) - global2.d)))));
    var var_2 = global2.a;
    let var_3 = 940f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1().b, abs(u_input.b)), -590f);
}

