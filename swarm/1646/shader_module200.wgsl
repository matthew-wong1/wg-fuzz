struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(43272i, 38002i, 0i, 1i));

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(i32(-2147483648), 6261i, i32(-2147483648), -25858i), vec4<i32>(-63583i, -1i, 1i, i32(-2147483648)), vec4<i32>(-805i, 0i, -1255i, 28447i), vec4<i32>(i32(-2147483648), -38968i, 23328i, 2147483647i), vec4<i32>(2270i, 40215i, 3930i, -1i), vec4<i32>(18157i, 34215i, 2147483647i, -17214i), vec4<i32>(i32(-2147483648), 0i, 23349i, -15713i), vec4<i32>(2147483647i, 2147483647i, -1i, 16714i), vec4<i32>(26455i, 10691i, -1i, -1438i), vec4<i32>(31175i, 21516i, -27542i, -33312i), vec4<i32>(-18775i, -43539i, 1i, -1i), vec4<i32>(-1i, -1i, -1i, 0i), vec4<i32>(-13741i, 0i, -1i, 13948i), vec4<i32>(-33873i, -202i, 46229i, i32(-2147483648)), vec4<i32>(-44950i, 59079i, -1i, 34954i), vec4<i32>(i32(-2147483648), 1i, 0i, 25662i), vec4<i32>(-4552i, i32(-2147483648), 1i, 1i), vec4<i32>(2147483647i, 131i, 12363i, 15536i), vec4<i32>(43490i, -7447i, i32(-2147483648), 1i), vec4<i32>(-5234i, -20726i, 0i, 82977i), vec4<i32>(3331i, 65975i, -42205i, -1i), vec4<i32>(0i, 2147483647i, -1i, 65514i), vec4<i32>(i32(-2147483648), 0i, 0i, 15080i), vec4<i32>(2147483647i, -6971i, 2147483647i, -13909i));

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec4<i32>(-4560i, 2147483647i, -2229i, -1i)), Struct_2(vec4<i32>(18051i, 26842i, -23242i, 1i)), Struct_2(vec4<i32>(-32700i, -28399i, -1i, -14846i)), Struct_2(vec4<i32>(-38537i, -59428i, -71118i, -1i)), Struct_2(vec4<i32>(6726i, -26153i, 2147483647i, -1i)), Struct_2(vec4<i32>(-8288i, 1i, 28430i, 0i)), Struct_2(vec4<i32>(-12088i, 47136i, -44764i, -3289i)), Struct_2(vec4<i32>(5278i, -1i, 2147483647i, -50124i)), Struct_2(vec4<i32>(5254i, 38464i, -25664i, -31411i)), Struct_2(vec4<i32>(1i, 71438i, -1i, -23533i)), Struct_2(vec4<i32>(-34834i, -27649i, -9892i, 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), -7047i, 0i, 20838i)), Struct_2(vec4<i32>(63201i, 24887i, 0i, 0i)), Struct_2(vec4<i32>(10959i, -27740i, 18720i, 62493i)), Struct_2(vec4<i32>(15153i, 8741i, 6793i, i32(-2147483648))), Struct_2(vec4<i32>(-1i, 2147483647i, i32(-2147483648), -22835i)), Struct_2(vec4<i32>(-216i, 19416i, -1i, -41988i)), Struct_2(vec4<i32>(2147483647i, 1i, -20186i, 2147483647i)), Struct_2(vec4<i32>(10541i, -17771i, -5730i, -1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f - 267f)))), _wgslsmith_f_op_f32(abs(1585f)));
    var var_1 = ~(~vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), 21196u), _wgslsmith_dot_vec2_u32(vec2<u32>(11293u, u_input.a), ~vec2<u32>(103667u, u_input.a))));
    var var_2 = Struct_1(vec4<bool>(true, !(!any(vec3<bool>(true, true, true))), true, var_1.x < reverseBits(1u << (1u % 32u))), all(vec2<bool>(true, true)), ~(~_wgslsmith_add_i32(6674i, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -816f, 106f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, -182f, var_0.x, var_0.x) - vec4<f32>(-1424f, 433f, var_0.x, var_0.x)), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1070f, var_0.x, 998f) - vec4<f32>(906f, 1620f, var_0.x, var_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(215f, 251f, var_0.x, -793f) + vec4<f32>(var_0.x, -1810f, 752f, var_0.x)) + vec4<f32>(-2066f, var_0.x, var_0.x, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-2046f - var_0.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(860f - var_0.x)))), vec4<bool>(true, true, true, true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.d.x)) * var_0.x);
    var var_4 = _wgslsmith_clamp_vec3_i32(u_input.b, firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(arg_0.a.xwy, arg_0.a.wxz))) << (vec3<u32>(abs(var_1.x), (var_1.x & var_1.x) ^ 37522u, var_1.x) % vec3<u32>(32u)), u_input.b);
    return ~(-22621i);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(-arg_3.a >> (vec4<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 52470u), 49636u), ~select(7740u, 44789u, false), _wgslsmith_clamp_u32(51490u, 34831u, u_input.a)) % vec4<u32>(32u)));
    var var_1 = ~firstLeadingBit(func_3(arg_3) ^ 32959i);
    let var_2 = ~reverseBits(7953i);
    var var_3 = Struct_1(!vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, true, true)) || (arg_1.x < 1014f), false, !any(vec2<bool>(true, true))), _wgslsmith_sub_i32(arg_0, max(var_0.a.x, i32(-1i) * -32936i)) <= var_0.a.x, 1i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(max(-357f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -1377f)))), arg_1.x, _wgslsmith_f_op_f32(-arg_2)), vec4<bool>(true, any(vec4<bool>(true, all(vec2<bool>(true, true)), false, arg_1.x != -147f)), true, true));
    return Struct_3(var_3.d.x, !(!select(var_3.e.ywy, vec3<bool>(false, var_3.e.x, true), var_3.a.xyz)), Struct_1(vec4<bool>(any(!var_3.e), var_3.e.x, true, false), var_3.e.x, firstTrailingBit(var_3.c), arg_1, vec4<bool>(any(var_3.e), all(vec2<bool>(var_3.e.x, var_3.b)), var_3.a.x, any(select(var_3.e, vec4<bool>(true, var_3.b, false, true), var_3.a.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(59157u, _wgslsmith_mult_u32(1u, 29976u), arg_2), 24u)], vec4<i32>(-u_input.b.x, ~5981i, -2338i, _wgslsmith_mult_i32(-22105i, arg_1.c))), -_wgslsmith_mod_i32(-1i, -1i), max(arg_1.c, -global0.x) << ((abs(u_input.a) ^ _wgslsmith_div_u32(u_input.a, 10503u)) % 32u)) | vec3<i32>(5885i, 6717i, global0.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1.d.x, _wgslsmith_f_op_f32(-arg_1.d.x)));
    let var_1 = arg_1.a.xw;
    var var_2 = global3[_wgslsmith_index_u32(max(37070u, ~(~abs(select(u_input.a, u_input.a, arg_0.b.x)))), 19u)];
    return arg_1.a.wyx;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = array<vec4<i32>, 24>();
    global3 = array<Struct_2, 19>();
    var var_0 = Struct_3(1785f, func_4(func_2(_wgslsmith_sub_i32(1i | global0.x, global1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(607f, -374f, 583f, -1275f), vec4<f32>(383f, -400f, -1362f, -575f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1490f)), global3[_wgslsmith_index_u32(0u, 19u)]), Struct_1(!func_2(global1.a.x, vec4<f32>(-1711f, 1374f, 721f, 2153f), -309f, Struct_2(vec4<i32>(-27728i, global1.a.x, u_input.b.x, u_input.b.x))).c.a, any(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true))), _wgslsmith_dot_vec2_i32(~u_input.b.xz, global0.zy), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, arg_0, arg_0 | true, false)), u_input.a), Struct_1(!func_2(global1.a.x, vec4<f32>(-1138f, -698f, -1246f, -582f), _wgslsmith_f_op_f32(f32(-1f) * -948f), Struct_2(global2[_wgslsmith_index_u32(37907u, 24u)])).c.e, false, ~(-1i) | (~global0.x ^ (8935i >> (u_input.a % 32u))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(select(1120f, -277f, arg_0)), -291f, _wgslsmith_f_op_f32(f32(-1f) * -1117f)))), select(vec4<bool>(func_4(Struct_3(-2047f, vec3<bool>(arg_0, true, arg_0), Struct_1(vec4<bool>(false, arg_0, arg_0, true), arg_0, 1i, vec4<f32>(-1008f, -2204f, 388f, -228f), vec4<bool>(false, arg_0, true, arg_0))), Struct_1(vec4<bool>(true, false, arg_0, true), arg_0, global1.a.x, vec4<f32>(-392f, 397f, -594f, -168f), vec4<bool>(arg_0, true, arg_0, false)), 3616u).x, select(true, true, arg_0), arg_0, true), vec4<bool>(true, true, true, true), !func_2(15670i, vec4<f32>(1119f, 475f, -424f, -1000f), 778f, global3[_wgslsmith_index_u32(611u, 19u)]).c.a)));
    var var_1 = vec2<f32>(func_2(global1.a.x, _wgslsmith_f_op_vec4_f32(max(var_0.c.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.x, 375f, 174f, var_0.c.d.x) + var_0.c.d))))), var_0.a, Struct_2(abs(vec4<i32>(-24583i, var_0.c.c, -5946i, global0.x)))).c.d.x, _wgslsmith_div_f32(1158f, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(trunc(var_0.c.d.x))))));
    var var_2 = vec3<bool>(arg_0, true, true);
    return Struct_1(func_2(1i, var_0.c.d, _wgslsmith_f_op_f32(-func_2(var_0.c.c, _wgslsmith_f_op_vec4_f32(var_0.c.d + vec4<f32>(var_0.c.d.x, var_1.x, var_0.a, 1078f)), _wgslsmith_f_op_f32(-155f * 220f), Struct_2(vec4<i32>(1i, var_0.c.c, u_input.b.x, var_0.c.c))).c.d.x), Struct_2(select(_wgslsmith_mult_vec4_i32(global1.a, global2[_wgslsmith_index_u32(u_input.a, 24u)]), ~vec4<i32>(-7219i, var_0.c.c, 1i, u_input.b.x), var_0.c.e))).c.a, arg_0, -1i, func_2(_wgslsmith_mod_i32(u_input.b.x, -_wgslsmith_sub_i32(global1.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(914f, -104f, var_0.a, -773f) - vec4<f32>(var_1.x, var_1.x, var_0.c.d.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(var_0.c.d - var_0.c.d)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))), Struct_2(global2[_wgslsmith_index_u32(~(~u_input.a), 24u)])).c.d, var_0.c.a);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_i32(u_input.b.x, -2147483647i);
    global1 = Struct_2(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 12445i, 2147483647i, 1i), vec4<i32>(var_0, 24844i, global1.a.x, u_input.b.x), -vec4<i32>(31706i, global1.a.x, arg_1.a.x, 0i)), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.yw, vec2<i32>(global1.a.x, -5426i)), max(arg_2.c, global1.a.x), ~global1.a.x, max(global1.a.x, -1i)), arg_2.e));
    global0 = u_input.b;
    let var_1 = abs(arg_2.c);
    let var_2 = arg_0;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(20625i, countOneBits(~global1.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(select(21244i, 18075i, arg_2.b), global1.a.x), countOneBits(var_0), 0i ^ arg_2.c), select(-(arg_2.c ^ global1.a.x), -26907i, true)), vec4<i32>(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(max(2147483647i, 1i), -arg_2.c), countOneBits(u_input.b.zy)), _wgslsmith_mod_i32(3777i, -2147483647i), -_wgslsmith_add_i32(u_input.b.x, var_0)));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = !(true || (func_1(true).a.x & false));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 24u)];
    var var_2 = max(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 0u, 1u)), _wgslsmith_mult_u32(u_input.a, ~50629u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, select(u_input.a, 0u, true)), ~(~vec2<u32>(4294967295u, 0u))), abs(abs(~(~vec2<u32>(u_input.a, u_input.a)))));
    var var_3 = arg_0.zy;
    var var_4 = max(~(firstLeadingBit(17455u) >> (var_2.x % 32u)), firstLeadingBit(var_2.x));
    return func_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<f32>(_wgslsmith_f_op_f32(abs(-337f)), -795f, -433f), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(533f, _wgslsmith_f_op_f32(max(-745f, -587f)), _wgslsmith_f_op_f32(f32(-1f) * -666f))), global3[_wgslsmith_index_u32(13744u << (u_input.a % 32u), 19u)], func_1(true)));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x) + var_0.d.x)) <= _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x) * _wgslsmith_f_op_f32(f32(-1f) * -173f))), !func_4(Struct_3(var_0.d.x, vec3<bool>(var_0.e.x, var_0.b, true), Struct_1(vec4<bool>(var_0.b, var_0.a.x, var_0.b, var_0.a.x), false, var_0.c, var_0.d, vec4<bool>(true, var_0.e.x, var_0.a.x, var_0.b))), func_6(_wgslsmith_div_vec3_f32(var_0.d.ywx, var_0.d.zwz), abs(global2[_wgslsmith_index_u32(u_input.a, 24u)])), u_input.a).x);
    global0 = -(abs(firstLeadingBit(vec3<i32>(-2147483647i, 35214i, global0.x))) & -u_input.b);
    var var_2 = countOneBits(~global1.a);
    var var_3 = func_2(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x))))), _wgslsmith_f_op_f32(floor(-292f)), _wgslsmith_f_op_f32(-var_0.d.x), func_2(u_input.b.x, _wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(var_0.d.x, 1051f, var_0.d.x, 1406f))), _wgslsmith_f_op_f32(func_2(global0.x, var_0.d, -458f, Struct_2(global2[_wgslsmith_index_u32(u_input.a, 24u)])).a - _wgslsmith_f_op_f32(-421f * var_0.d.x)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a, reverseBits(u_input.a)), 19u)]).c.d.x), _wgslsmith_f_op_f32(max(-498f, -410f)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~abs(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 46536u), vec3<u32>(u_input.a, 17837u, 76736u)), firstTrailingBit(u_input.a)), u_input.a), vec4<u32>(u_input.a, abs(13650u), u_input.a, ~4294967295u) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 1u), vec4<u32>(27378u, u_input.a, 59134u, 51u))), 19u)]).c.a.zw;
    var var_4 = 7855u;
    let var_5 = func_2(_wgslsmith_dot_vec4_i32(global1.a, global2[_wgslsmith_index_u32(49157u, 24u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -378f))) + var_0.d.x), _wgslsmith_f_op_f32(step(func_2(~0i, vec4<f32>(-2452f, var_0.d.x, var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x * -635f), Struct_2(global1.a)).a, -147f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)))), var_0.d.x), 266f, Struct_2(global1.a));
    global2 = array<vec4<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global1.a.x), vec2<f32>(914f, _wgslsmith_f_op_f32(abs(287f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(var_5.c.d.x, _wgslsmith_f_op_f32(-var_5.c.d.x)), -1129f))), ~firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(57813u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(6600u, u_input.a, 56642u)))), max(u_input.a >> (~_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), u_input.a & ~(~4294967295u)));
}

