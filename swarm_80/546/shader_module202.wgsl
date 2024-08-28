struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: Struct_1;

var<private> global4: array<u32, 17> = array<u32, 17>(11346u, 1u, 4294967295u, 4294967295u, 1u, 12074u, 4294967295u, 60880u, 11744u, 0u, 5519u, 16346u, 76953u, 4294967295u, 0u, 38003u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1681f, 584f), vec2<f32>(194f, 1342f), vec2<bool>(false, false))))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(-1150f, 2146f)), -1639f)))), !(_wgslsmith_clamp_u32(firstTrailingBit(global4[_wgslsmith_index_u32(u_input.e.x, 17u)]), 58984u, _wgslsmith_add_u32(1u, 0u)) == ~(u_input.e.x | 45803u)), Struct_1(vec2<i32>(global3.a.x, u_input.c.x)), ~abs(min(_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)], 1u, 27397u, 4294967295u), vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)], 20774u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 17u)], 10377u, global4[_wgslsmith_index_u32(u_input.e.x, 17u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)]), vec4<u32>(u_input.e.x, global4[_wgslsmith_index_u32(57521u, 17u)], global4[_wgslsmith_index_u32(4294967295u, 17u)], u_input.e.x)))), u_input.d.xxz & firstTrailingBit(~(-vec3<i32>(global3.a.x, -1440i, -2147483647i))));
    global4 = array<u32, 17>();
    return Struct_3(true);
}

fn func_3() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1078f + 913f), -1000f))), _wgslsmith_f_op_f32(abs(-931f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1367f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1006f + 669f), 913f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(519f)), 210f, -142f, -538f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1148f, -462f, 866f, 777f), vec4<f32>(433f, -1255f, 1098f, 798f)))), true)));
    var var_1 = Struct_3(select(true, any(vec3<bool>(false, true, true)), abs(u_input.b.x) < -global1.x));
    global1 = firstLeadingBit(min(select(vec2<i32>(~34731i, 2147483647i), -(global3.a << (vec2<u32>(u_input.e.x, u_input.e.x) % vec2<u32>(32u))), any(global2[_wgslsmith_index_u32(u_input.e.x, 23u)])), vec2<i32>(~global1.x, -23193i)));
    global3 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-global1.x, -3585i), ~(-global3.a.x)));
    let var_2 = select(select(vec3<bool>(true, var_1.a | true, var_1.a), select(!vec3<bool>(var_1.a, true, var_1.a), select(vec3<bool>(var_1.a, var_1.a, true), !vec3<bool>(var_1.a, false, true), all(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)], 17u)], 23u)])), vec3<bool>(all(vec3<bool>(var_1.a, var_1.a, true)), var_1.a | true, var_1.a)), select(select(!vec3<bool>(var_1.a, true, false), select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !vec3<bool>(var_1.a, true, true)), select(select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(true, true, true), true), select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, true, var_1.a), true), var_1.a), true)), select(vec3<bool>(true, var_1.a, all(vec4<bool>(var_1.a, var_1.a, true, false))), select(!(!vec3<bool>(var_1.a, var_1.a, var_1.a)), vec3<bool>(var_1.a, true, true), !vec3<bool>(var_1.a, false, true)), !(!vec3<bool>(true, var_1.a, var_1.a))), select(vec3<bool>(!any(vec4<bool>(var_1.a, var_1.a, true, false)), !var_1.a, true), !(!select(vec3<bool>(var_1.a, true, false), vec3<bool>(false, var_1.a, true), false)), var_1.a && true));
    return Struct_3(true);
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = vec2<bool>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, -433i), u_input.d), firstLeadingBit(global1.x)) > 2147483647i, any(!(!select(vec4<bool>(arg_0.a, false, true, true), vec4<bool>(arg_0.a, arg_0.a, false, false), true))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1670f, 784f)), -446f)), any(select(select(vec2<bool>(true, true), !global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 17u)], 23u)], func_2().a), !(!vec2<bool>(var_0.x, var_0.x)), true)), Struct_1(vec2<i32>(firstLeadingBit(-global1.x), i32(-1i) * -global1.x)), vec4<u32>(~31411u, _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], global4[_wgslsmith_index_u32(16453u, 17u)], u_input.e.x) & global4[_wgslsmith_index_u32(u_input.e.x, 17u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31932u | ~global4[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], u_input.e.x) & _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], global4[_wgslsmith_index_u32(12046u, 17u)], u_input.e.x)) | vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)], u_input.e.x), vec4<u32>(1u, 0u, ~1u, firstLeadingBit(global4[_wgslsmith_index_u32(u_input.e.x, 17u)]))), u_input.d.zyy);
    global1 = _wgslsmith_sub_vec2_i32(global3.a, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(countOneBits(var_1.c.a.x), _wgslsmith_mult_i32(global3.a.x, -41358i)), 2147483647i), -_wgslsmith_mod_vec2_i32(u_input.b.zx, abs(u_input.d.zx))));
    global1 = -_wgslsmith_mod_vec2_i32(countOneBits(var_1.e.yz), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global3.a.x, global3.a.x)), var_1.c.a));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(select(495f, var_1.a.x, true))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-736f, -686f), var_1.a)))), var_0.x, Struct_1(max(countOneBits(global3.a) >> (select(var_1.d.xz, vec2<u32>(global4[_wgslsmith_index_u32(1u, 17u)], 25978u), false) % vec2<u32>(32u)), max(select(global3.a, vec2<i32>(-29067i, -24940i), arg_0.a), vec2<i32>(1i, 1i)))), var_1.d, u_input.d.wxy);
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.x, 1522f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.x, var_2.a.x)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = ~10219u;
    let var_2 = -429f;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_1)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 179f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1312f, arg_3.x))))), var_0.a, Struct_1(select(-abs(vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(-2147483647i, global3.a.x), var_0.a)), vec4<u32>(u_input.e.x & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], u_input.e.x, 0u, 24810u), vec4<u32>(u_input.e.x, 0u, u_input.e.x, 60213u))), u_input.e.x, reverseBits(0u >> (_wgslsmith_add_u32(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(15599u, 17u)]) % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 48967u), vec3<u32>(9472u, 1u, 14833u)) & 67728u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 17u)], 17u)])), u_input.c.yxx);
    global2 = array<vec2<bool>, 23>();
    return Struct_1(vec2<i32>(reverseBits(u_input.a.x & _wgslsmith_clamp_i32(global3.a.x, 2147483647i, u_input.a.x)), global3.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~max(vec3<u32>(u_input.e.x, u_input.e.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)], 17u)]), min(vec3<u32>(u_input.e.x, 0u, 1u), vec3<u32>(global4[_wgslsmith_index_u32(52849u, 17u)], 79369u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 17u)], 17u)]))), vec3<u32>(1u, ~u_input.e.x, u_input.e.x)), firstTrailingBit(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 1u, 15871u), vec3<u32>(global4[_wgslsmith_index_u32(46553u, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 1u)), _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(24085u, 0u, 47424u), vec3<u32>(u_input.e.x, u_input.e.x, 28616u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, -654f)), vec2<f32>(-866f, 1797f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_1)), true, func_5(_wgslsmith_f_op_vec2_f32(select(var_1, var_1, true)), func_2(), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_3())))), abs(~select(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, global4[_wgslsmith_index_u32(1u, 17u)]), vec4<u32>(global4[_wgslsmith_index_u32(0u, 17u)], 1u, var_0.x, 4222u), true)) | ~((vec4<u32>(4294967295u, var_0.x, 87792u, u_input.e.x) >> (vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 1u, global4[_wgslsmith_index_u32(u_input.e.x, 17u)]) % vec4<u32>(32u))) & ~vec4<u32>(global4[_wgslsmith_index_u32(15446u, 17u)], 44988u, 1u, u_input.e.x)), vec3<i32>(global1.x, 1i, -min(firstLeadingBit(-6245i), global1.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1754f))));
    let var_4 = min(1059i, global3.a.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 17>();
    global0 = countOneBits(13420u << (max(0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], u_input.e.x)), max(vec2<u32>(50756u, 63914u), u_input.e))) % 32u));
    let var_0 = Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(-16326i, -2147483647i), vec2<i32>(u_input.a.x >> (0u % 32u), -1i)));
    global4 = array<u32, 17>();
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -(~32971i)), abs(~(~_wgslsmith_sub_u32(15122u, global4[_wgslsmith_index_u32(u_input.e.x, 17u)]))));
}

