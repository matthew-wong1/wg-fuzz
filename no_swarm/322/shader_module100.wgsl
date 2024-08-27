struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(26339i, 16446i, 52156i, 1i)), Struct_1(vec4<i32>(0i, 2147483647i, 3525i, 1i)), Struct_1(vec4<i32>(-15803i, 2147483647i, -1i, -28934i)), Struct_1(vec4<i32>(i32(-2147483648), -32447i, 0i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, -48409i, -32193i, -67265i)), Struct_1(vec4<i32>(0i, 19594i, 16636i, 15218i)), Struct_1(vec4<i32>(-1i, -348i, -1451i, -1i)), Struct_1(vec4<i32>(2290i, -3154i, -41515i, 0i)), Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 0i)));

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = -vec2<i32>(2147483647i, arg_3.d.a);
    var var_1 = arg_1;
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 9u)];
    let var_3 = _wgslsmith_f_op_f32(select(arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.e.x), true));
    var var_4 = true;
    return arg_3.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<u32> {
    global2 = array<Struct_1, 9>();
    let var_0 = 35006i;
    var var_1 = arg_1.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) - _wgslsmith_div_f32(arg_0.x, -587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1181f))))), -412f, 243f, -297f)));
    var var_3 = func_2(~(-2180i), Struct_1(arg_2), ~vec3<u32>(_wgslsmith_div_u32(96620u, u_input.c.x), 6354u & u_input.e.x, 4294967295u) << (vec3<u32>(~19497u, u_input.c.x, 25305u) % vec3<u32>(32u)), Struct_3(Struct_2(-u_input.b, select(arg_1.b, select(vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(arg_1.b.x, false, global3.x, false), true), all(vec3<bool>(true, false, arg_1.b.x))), -vec2<i32>(-66206i, arg_2.x), select(-9798i, -21921i, u_input.a < 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1744f, -1366f), var_2.zx)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zx + vec2<f32>(1562f, -1000f)) - vec2<f32>(arg_0.x, -889f))), abs(u_input.c.x), func_2(countOneBits(arg_2.x), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.e.x, 1u)), 9u)], vec3<u32>(u_input.c.x, select(u_input.c.x, 4294967295u, false), select(u_input.c.x, 1u, true)), Struct_3(arg_1, vec2<f32>(-1157f, var_2.x), ~u_input.e.x, Struct_2(0i, vec4<bool>(true, true, false, true), vec2<i32>(-271i, arg_2.x), 15719i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_2.x, arg_0.x), vec3<f32>(var_2.x, 846f, var_2.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.wzw, vec3<f32>(arg_0.x, -163f, 571f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.yzx))), true))));
    return _wgslsmith_add_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(1u, 14285u, u_input.a) >> (vec3<u32>(u_input.e.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), countOneBits(firstLeadingBit(vec3<u32>(u_input.a, 87525u, u_input.e.x) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))))) | abs(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.e.x), ~vec3<u32>(u_input.a, 10932u, 24565u))));
}

fn func_4(arg_0: vec3<u32>) -> vec3<u32> {
    global2 = array<Struct_1, 9>();
    global1 = 38674u;
    return select(arg_0, ~(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2733f, -1000f), vec2<f32>(680f, -444f))), Struct_2(u_input.d, vec4<bool>(global3.x, false, false, global3.x), vec2<i32>(u_input.d, -1i), -35166i), _wgslsmith_mod_vec4_i32(vec4<i32>(4574i, u_input.b, -14413i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b))) ^ ~select(arg_0, vec3<u32>(0u, 4294967295u, 101016u), vec3<bool>(global3.x, global3.x, global3.x))), global3.x);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = func_4(min(~(vec3<u32>(u_input.a, 4294967295u, u_input.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.e.x, u_input.c.x), vec3<u32>(u_input.a, 21728u, 10397u)) % vec3<u32>(32u))), min((vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(12563u, u_input.e.x, 43615u) % vec3<u32>(32u))) ^ ~vec3<u32>(27039u, u_input.c.x, u_input.c.x), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1074f, 1000f) + vec2<f32>(868f, 119f)), func_2(arg_0.a.x, Struct_1(arg_0.a), vec3<u32>(u_input.e.x, 0u, 6802u), Struct_3(Struct_2(377i, vec4<bool>(true, true, global3.x, global3.x), arg_0.a.wy, u_input.d), vec2<f32>(-313f, -229f), 4294967295u, Struct_2(0i, vec4<bool>(global3.x, global3.x, true, global3.x), arg_0.a.wy, u_input.d), vec3<f32>(-1000f, 735f, 207f))), vec4<i32>(-1i, u_input.d, u_input.d, -2147483647i) << (vec4<u32>(u_input.e.x, u_input.c.x, u_input.a, u_input.e.x) % vec4<u32>(32u))))));
    var var_1 = Struct_3(Struct_2(8113i, !vec4<bool>(global3.x, all(vec4<bool>(global3.x, true, global3.x, true)), global3.x, true), -_wgslsmith_mod_vec2_i32(arg_0.a.wz, -vec2<i32>(-1i, u_input.d)), -u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-586f, _wgslsmith_f_op_f32(sign(1748f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-423f, -395f)))), !func_2(2147483647i, Struct_1(arg_0.a), var_0, Struct_3(Struct_2(1i, vec4<bool>(global3.x, global3.x, true, global3.x), vec2<i32>(arg_0.a.x, arg_0.a.x), arg_0.a.x), vec2<f32>(-1000f, -1461f), 5886u, Struct_2(u_input.d, vec4<bool>(true, true, true, false), arg_0.a.xz, -1i), vec3<f32>(-1163f, 632f, 1022f))).b.zw))), max(3910u, ~_wgslsmith_mult_u32(1u, ~4565u)), Struct_2(1i, vec4<bool>(global3.x, false, true, !(u_input.e.x < var_0.x)), firstLeadingBit(max(vec2<i32>(-1i, 20690i), arg_0.a.wz)), 1i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2545f, 1372f, -1685f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(632f, 1414f, -302f), vec3<f32>(1108f, 567f, 824f)), vec3<f32>(2003f, -1933f, -128f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(358f, 484f, 1000f))))))));
    var var_2 = func_2(0i, Struct_1(vec4<i32>(firstLeadingBit(arg_0.a.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), arg_0.a.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(-13491i, 26022i), u_input.d), arg_0.a.x | 3369i)), var_0, Struct_3(Struct_2(abs(-1i), vec4<bool>(var_1.d.b.x, var_1.e.x != var_1.e.x, true, false), _wgslsmith_clamp_vec2_i32(arg_0.a.zw, arg_0.a.yx << (vec2<u32>(u_input.a, var_0.x) % vec2<u32>(32u)), var_1.a.c), _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, arg_0.a.x), _wgslsmith_mult_i32(var_1.d.c.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(225f, 250f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(132f, var_1.b.x)))))), func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 1013f)), var_1.b)), Struct_2(-21657i, var_1.d.b, vec2<i32>(u_input.d, arg_0.a.x), ~var_1.d.c.x), -_wgslsmith_add_vec4_i32(vec4<i32>(-27588i, -1i, var_1.d.a, u_input.b), arg_0.a)).x, func_2(-108317i, Struct_1(~vec4<i32>(arg_0.a.x, var_1.d.c.x, var_1.a.a, var_1.d.a)), ~vec3<u32>(var_0.x, var_1.c, var_1.c), Struct_3(func_2(1i, global2[_wgslsmith_index_u32(37528u, 9u)], var_0, Struct_3(var_1.d, var_1.e.xz, 0u, Struct_2(u_input.b, vec4<bool>(global3.x, false, var_1.d.b.x, false), arg_0.a.xz, u_input.d), vec3<f32>(-713f, 1402f, var_1.e.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, var_1.e.x)), 0u, var_1.a, _wgslsmith_f_op_vec3_f32(-var_1.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e) - var_1.e) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, var_1.b.x, 153f) + vec3<f32>(-791f, 2558f, var_1.b.x)))));
    var_2 = var_1.d;
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b.x, var_1.b.x))))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(384f + 353f) - _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(floor(var_1.b.x)))), 26636u, func_2(~(-40900i), Struct_1(arg_0.a), vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.e.x, var_0.x, var_0.x))), 61230u), Struct_3(Struct_2(_wgslsmith_mod_i32(1i, var_1.a.a), var_1.a.b, arg_0.a.ww, 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, var_1.b.x))), ~func_3(vec2<f32>(748f, var_1.e.x), Struct_2(var_1.a.a, vec4<bool>(var_2.b.x, global3.x, var_2.b.x, false), vec2<i32>(6756i, -70714i), var_2.c.x), arg_0.a).x, var_1.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_1.e, vec3<f32>(var_1.b.x, -626f, -1000f), var_1.a.b.ywx)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.e, vec3<f32>(var_1.e.x, -1353f, -532f))))));
    return ~vec4<i32>(26461i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(27762i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, -16295i, arg_0.a.x), vec4<i32>(-11495i, var_2.d, 0i, arg_0.a.x))), var_1.d.a, 2147483647i) & vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(0i, u_input.d & 0i)), _wgslsmith_clamp_i32(-8279i, arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -9990i, 0i) << (var_0 % vec3<u32>(32u)), arg_0.a.wwx)), u_input.b, ~arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.e.x;
    let var_0 = -vec3<i32>(_wgslsmith_add_i32(u_input.d, 1i), u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(11209i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 39033i), vec3<i32>(-2147483647i, 2147483647i, -8566i)), u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)), vec4<i32>(u_input.b, firstLeadingBit(1i), u_input.d, -2147483647i)));
    var var_1 = -(~(~select(func_1(Struct_1(vec4<i32>(var_0.x, u_input.d, var_0.x, u_input.d))), abs(vec4<i32>(var_0.x, 83220i, -30221i, var_0.x)), all(vec2<bool>(global3.x, true)))));
    global4 = _wgslsmith_div_i32(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(~var_1.x, func_1(global2[_wgslsmith_index_u32(u_input.a, 9u)]).x, 17660i), -(-4164i << (firstLeadingBit(u_input.e.x) % 32u))), 57612i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(ceil(1125f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1561f), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1402f * -332f) + _wgslsmith_f_op_f32(f32(-1f) * -578f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, 968f, 1662f, 1308f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, -156f, 523f, -1260f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-854f, -1000f, 678f, -2388f), vec4<f32>(-1679f, 563f, -1080f, -2796f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-1255f * 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-854f + -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2258f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-943f))), 521f, _wgslsmith_f_op_f32(f32(-1f) * -1010f), 1495f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, 537f, -1788f, 564f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -218f, 1793f, 754f), vec4<f32>(552f, -485f, -1805f, 804f)))), vec4<f32>(-519f, _wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-1039f - -1152f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1453f, -298f, -869f)) + vec3<f32>(-1041f, _wgslsmith_f_op_f32(trunc(136f)), 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-652f, 987f, -246f))))))));
}

