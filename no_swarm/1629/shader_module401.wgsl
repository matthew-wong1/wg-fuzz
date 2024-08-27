struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1083f, -243f);

var<private> global1: Struct_1 = Struct_1(40201i, 17327i, 2342f);

var<private> global2: array<vec3<f32>, 8>;

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    global3 = Struct_2(0u, global3.b);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, global1.c)) + vec2<f32>(720f, arg_0)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, global3.b.c))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-586f, arg_0) * vec2<f32>(global1.c, arg_0))))))));
    let var_1 = global3.b;
    var var_2 = Struct_3(~u_input.a, vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(31388u, 4294967295u), max(65611u, global3.a))), global3.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(global3.a), global3.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.a, 33655u), _wgslsmith_div_vec2_u32(vec2<u32>(global3.a, global3.a), vec2<u32>(0u, 4294967295u)))), _wgslsmith_mult_u32(global3.a & 0u, global3.a)), select(select(vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, select(true, true, true)), vec3<bool>(all(vec4<bool>(true, false, false, false)), false, false))), Struct_2(4294967295u, global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1512f))));
    let var_3 = Struct_3(global1.a >> (_wgslsmith_dot_vec3_u32(var_2.b.yzz, select(vec3<u32>(4429u, global3.a, var_2.d.a) | vec3<u32>(0u, 22410u, 0u), vec3<u32>(var_2.d.a, var_2.d.a, global3.a), true)) % 32u), var_2.b, vec3<bool>(false, var_2.c.x, var_2.c.x | true), Struct_2(_wgslsmith_dot_vec2_u32(var_2.b.wy, vec2<u32>(1u, var_2.d.a)), global3.b), _wgslsmith_f_op_f32(abs(arg_0)));
    return ~(~vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.d.a), var_2.b.zw), var_3.d.a, var_3.c.x), 0u, _wgslsmith_sub_u32(countOneBits(var_3.b.x), reverseBits(var_3.b.x)), min(~1u, abs(23368u))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> bool {
    var var_0 = -arg_0.a;
    var_0 = arg_2.b.b;
    var_0 = -2147483647i;
    global3 = Struct_2(arg_2.a, Struct_1(-(global1.b | 0i) ^ -32161i, 0i, -1000f));
    var var_1 = ~arg_0.b;
    return arg_0.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = global3.b;
    var var_1 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))) & func_4(Struct_3(~0i, func_3(global0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_2(arg_1.x, global3.b), -1041f), 1i | global3.b.b, Struct_2(select(24710u, 11932u, true), global3.b), var_0.c), true, !(any(vec4<bool>(true, true, true, true)) | true), true);
    let var_2 = Struct_3(-2147483647i, _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(arg_1.x, 4294967295u, global3.a, global3.a)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(47342u, 0u)), 0u, arg_1.x, 4294967295u)), vec3<bool>(-64682i <= firstTrailingBit(-global3.b.b), !select(true, all(vec2<bool>(var_1.x, false)), true), var_1.x), Struct_2(firstLeadingBit(1u), global3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1235f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b.c * _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -2710f)))));
    let var_3 = Struct_2(23268u, Struct_1(~global3.b.a, global3.b.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3.b.c))))));
    var var_4 = var_3.b;
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a, i32(-1i) * -71839i, i32(-1i) * -14458i), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, -36339i), vec3<i32>(-1i, u_input.a, global1.b)), vec3<i32>(1i, global1.b, u_input.a), true))), vec2<u32>(global3.a, 1u ^ arg_0));
    global3 = func_2(vec3<i32>(u_input.a, -(~global3.b.b), (i32(-1i) * -35654i) | global1.a), var_0.b.zz).d;
    var var_1 = var_0;
    global1 = var_1.d.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.c, 206f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 2006f))))))));
    return Struct_2(var_0.d.a, var_1.d.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = func_2(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a, arg_0.b.a)), vec3<i32>(arg_0.b.a, u_input.a, 9129i)), arg_1.a), global3.b.a, _wgslsmith_mult_i32((arg_0.b.a | -13518i) | _wgslsmith_dot_vec3_i32(vec3<i32>(-28864i, 1i, global1.b), vec3<i32>(3075i, arg_1.a, u_input.a)), -1949i)), vec2<u32>(38889u, ~(~arg_1.b.x << (1u % 32u))));
    global1 = func_2(vec3<i32>(_wgslsmith_add_i32(1i, global3.b.b), ~func_2(firstLeadingBit(vec3<i32>(arg_0.b.a, var_0.d.b.a, 11625i)), reverseBits(vec2<u32>(14626u, var_0.d.a))).a, ~arg_0.b.a), var_0.b.xy).d.b;
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(2147483647i, global1.b), -global1.a), select(vec2<i32>(39659i, global3.b.a) ^ vec2<i32>(-38735i, global3.b.a), vec2<i32>(-64844i, -22978i), select(vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.c.yy, var_0.c.x))), -_wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, var_0.a), vec2<i32>(var_0.d.b.a, global3.b.a), ~vec2<i32>(arg_0.b.a, 1i))), abs(arg_1.a), global1.c);
    let var_1 = ~_wgslsmith_mult_vec3_i32(min(vec3<i32>(_wgslsmith_clamp_i32(-48014i, global3.b.b, arg_1.d.b.a), -global3.b.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-8826i, -2147483647i), vec2<i32>(global1.b, -37495i))), ~vec3<i32>(0i, 14054i, -1i) | vec3<i32>(0i, global1.b, 1i)), abs(vec3<i32>(1i, -1i, -1i)));
    global1 = func_1(global3.a).b;
    return Struct_3(~1i, ~var_0.b, select(arg_1.c, var_0.c, !(!select(true, var_0.c.x, arg_1.c.x))), func_2(vec3<i32>(var_0.a, arg_0.b.b, 1i), arg_1.b.xw).d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x + -170f))));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0.b.yz;
    let var_1 = vec4<bool>(arg_0.c.x, any(func_5(arg_0.d, func_2(select(vec3<i32>(0i, arg_2, 18730i), vec3<i32>(47630i, arg_2, 1011i), false), vec2<u32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global3.b.c, -2663f, arg_0.d.b.c), vec4<f32>(1000f, global3.b.c, global0.x, global1.c)))).c.xy), arg_0.c.x, false);
    global2 = array<vec3<f32>, 8>();
    let var_2 = ~arg_0.b.zxy;
    let var_3 = arg_1.x;
    return func_5(Struct_2(global3.a, func_5(func_5(func_1(41097u), Struct_3(u_input.a, arg_0.b, vec3<bool>(true, arg_0.c.x, var_1.x), Struct_2(14722u, Struct_1(0i, 2147483647i, -1000f)), var_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(270f, -108f, -501f, global0.x) * vec4<f32>(1246f, arg_0.d.b.c, global1.c, global0.x))).d, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 189f, var_3, -1410f) + vec4<f32>(global3.b.c, -1357f, global0.x, global3.b.c)))).d.b), func_2(vec3<i32>(arg_0.a, firstTrailingBit(-10425i), 6673i) & vec3<i32>(9307i >> (1u % 32u), 66094i, 1i), ~var_0), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.a, -1i, global3.b.b), var_2.zx).e - 1501f)), _wgslsmith_f_op_f32(ceil(global1.c)), arg_1.x)).d.b;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1188f, _wgslsmith_f_op_f32(-arg_0.c), 338f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 75740u), countOneBits(global3.a)), 8u)] - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(global3.a, 8u)] - global2[_wgslsmith_index_u32(arg_2.d.a, 8u)]), vec3<f32>(1000f, 552f, 353f), select(arg_2.c.x, arg_2.c.x, arg_2.c.x)))), vec3<f32>(global1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - arg_2.e))), -292f))));
    var var_2 = select(vec2<bool>(arg_2.c.x, arg_2.d.b.c >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1582f, -1075f)))), arg_2.c.zy, all(vec2<bool>(true, true)));
    var var_3 = func_5(func_1(~4294967295u), arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -140f, 461f, global3.b.c), vec4<f32>(-981f, arg_2.d.b.c, -1071f, -165f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e, arg_0.c, global3.b.c, arg_0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.e, 1000f)), arg_0.c, _wgslsmith_div_f32(796f, -802f), -420f) * vec4<f32>(_wgslsmith_f_op_f32(393f * 2066f), 541f, arg_2.e, _wgslsmith_f_op_f32(-global1.c))))).d;
    var var_4 = select(vec4<bool>(global1.a > u_input.a, arg_2.c.x, !arg_2.c.x, false), vec4<bool>(!all(vec4<bool>(arg_2.c.x, true, arg_2.c.x, var_2.x)), func_5(arg_2.d, arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(212f, global3.b.c, -287f, arg_0.c) + vec4<f32>(-1196f, -1255f, arg_0.c, arg_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.c, global3.b.c, global0.x, -153f)))).c.x, !arg_2.c.x, var_2.x), arg_2.c.x);
    return StorageBuffer(func_2(select(vec3<i32>(arg_1.x, arg_0.a, 1i), vec3<i32>(var_3.b.b, arg_1.x, var_3.b.b), true) | -vec3<i32>(arg_2.a, var_3.b.a, u_input.a), _wgslsmith_mult_vec2_u32(~arg_2.b.wz, vec2<u32>(global3.a, var_3.a))).a ^ ~(-2147483647i), _wgslsmith_f_op_f32(min(-532f, 1824f)), ~var_3.a, 308f, vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(842f + 451f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(1000f - -591f))), -1086f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1081f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))))));
    let var_0 = all(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, false)), true), true));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, global3.b.c) + vec2<f32>(-928f, -642f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2047f)))) * _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(458f, global3.b.c))))));
    global4 = _wgslsmith_sub_i32(-1i, -57856i);
    let x = u_input.a;
    s_output = func_7(func_6(func_5(func_1(~74703u), func_2(-vec3<i32>(23442i, u_input.a, global3.b.b), ~vec2<u32>(0u, global3.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.c, var_1, 1470f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.c, var_1))))), ~firstLeadingBit(global1.b)), firstLeadingBit(abs(vec2<i32>(-48718i, 1i))) & (~max(vec2<i32>(-17582i, u_input.a), vec2<i32>(u_input.a, 4623i)) >> (countOneBits(~vec2<u32>(global3.a, global3.a)) % vec2<u32>(32u))), Struct_3(-global3.b.a ^ func_2(vec3<i32>(u_input.a, -20639i, -47281i), func_5(Struct_2(global3.a, Struct_1(u_input.a, 45512i, global0.x)), Struct_3(-12371i, vec4<u32>(29601u, 0u, 0u, global3.a), vec3<bool>(var_0, false, false), Struct_2(global3.a, global3.b), -1000f), vec4<f32>(-2250f, global0.x, -1011f, var_1)).b.yw).d.b.a, abs(min(vec4<u32>(global3.a, 1806u, global3.a, global3.a), vec4<u32>(4294967295u, 22124u, 4294967295u, global3.a))) >> (vec4<u32>(select(global3.a, global3.a, var_0), firstLeadingBit(2112u), ~0u, _wgslsmith_sub_u32(35625u, global3.a)) % vec4<u32>(32u)), select(!vec3<bool>(true, false, var_0), !(!vec3<bool>(false, var_0, var_0)), false), func_1(~0u << (_wgslsmith_div_u32(global3.a, 0u) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.c), _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(abs(319f)), !var_0)))));
}

