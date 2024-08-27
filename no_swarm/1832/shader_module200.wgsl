struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 88487u, 68228u), vec3<f32>(2651f, -954f, -1000f), -32875i), Struct_1(false, vec4<u32>(4294967295u, 14900u, 1u, 1u), vec3<f32>(972f, 594f, 1932f), -34676i), Struct_1(false, vec4<u32>(0u, 4294967295u, 41918u, 4294967295u), vec3<f32>(153f, 423f, 404f), i32(-2147483648)), Struct_1(true, vec4<u32>(0u, 196u, 4294967295u, 1u), vec3<f32>(-1000f, 1575f, -270f), 0i), Struct_1(true, vec4<u32>(4286u, 101741u, 16405u, 39801u), vec3<f32>(614f, -1000f, 145f), -91270i), Struct_1(false, vec4<u32>(50177u, 41662u, 4294967295u, 0u), vec3<f32>(-1923f, 1479f, -1905f), 7259i), Struct_1(false, vec4<u32>(22941u, 7550u, 4294967295u, 0u), vec3<f32>(-767f, 1000f, 203f), i32(-2147483648)), Struct_1(false, vec4<u32>(42196u, 4294967295u, 101752u, 4294967295u), vec3<f32>(-575f, 885f, -387f), 24069i), Struct_1(true, vec4<u32>(1u, 48408u, 1u, 27519u), vec3<f32>(720f, -1548f, -1000f), 41325i), Struct_1(true, vec4<u32>(4294967295u, 1u, 1u, 0u), vec3<f32>(-1884f, -264f, 671f), 1i), Struct_1(true, vec4<u32>(25185u, 4294967295u, 0u, 21595u), vec3<f32>(1000f, 1630f, -661f), 0i), Struct_1(false, vec4<u32>(45362u, 4294967295u, 41424u, 32010u), vec3<f32>(791f, 1252f, -1183f), 2147483647i));

var<private> global1: bool = true;

var<private> global2: f32 = 157f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_1;
    let var_1 = min(firstLeadingBit(var_0.x) & arg_0.c.b.x, _wgslsmith_div_u32(~1316u, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(98017u, arg_1.x), _wgslsmith_add_u32(firstTrailingBit(arg_1.x), ~arg_1.x))));
    var var_2 = abs(vec3<i32>(arg_0.d.d, _wgslsmith_add_i32(arg_0.c.d, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.b.x, arg_3.b.x), arg_3.b.yw & arg_0.b.xx)), select(arg_3.a.d << (var_1 % 32u), min(-2147483647i, arg_3.c.d), !(!arg_0.d.a))));
    let var_3 = arg_0;
    let var_4 = u_input.a.x;
    return _wgslsmith_f_op_vec2_f32(-var_3.a.c.xz);
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(arg_0.c.c.zz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(arg_0, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 26378u), vec2<u32>(arg_0.d.b.x, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, arg_0.d.c.x, arg_0.a.c.x, -432f))), arg_0))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, arg_0.e.c.x)))), -1181f, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(arg_0.a.a, select(arg_0.c.b, arg_0.a.b, arg_0.c.a), vec3<f32>(var_0.x, arg_0.e.c.x, -404f), _wgslsmith_sub_i32(arg_0.c.d, 1i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(39529i, -11431i, arg_0.c.d, -2147483647i), vec4<i32>(-3476i, arg_0.b.x, -2147483647i, arg_0.a.d)), Struct_1(any(vec2<bool>(arg_0.c.a, true)), vec4<u32>(1u, 0u, arg_0.c.b.x, 0u) << (arg_0.a.b % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(arg_0.c.c, arg_0.c.c)), firstLeadingBit(-12275i)), arg_0.e, Struct_1(arg_0.e.a, arg_0.c.b ^ arg_0.c.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1609f, -1365f, 1584f), vec3<f32>(1145f, var_0.x, arg_0.a.c.x))), arg_0.a.d)), _wgslsmith_clamp_vec2_u32(arg_0.a.b.zx, firstLeadingBit(~vec2<u32>(arg_0.e.b.x, 0u)), vec2<u32>(0u, firstLeadingBit(u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1232f, -800f, 1834f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, arg_0.e.c.x, var_0.x, -161f), vec4<f32>(-461f, 1684f, var_0.x, arg_0.c.c.x))))), arg_0)).x);
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - 1192f), _wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -202f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) - arg_0.a.c.x), _wgslsmith_f_op_f32(-arg_0.e.c.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_1.x)), 622f), vec4<f32>(-413f, _wgslsmith_div_f32(-1902f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(-1153f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.c.x), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = true;
    let var_3 = Struct_2(arg_0.e, arg_0.b, arg_0.d, Struct_1(true, ~(~(~vec4<u32>(u_input.a.x, 1u, 23759u, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.yyx + arg_0.c.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1387f, arg_0.a.c.x, -784f)), arg_0.a.a)) * var_1.xwz), arg_0.d.d), global0[_wgslsmith_index_u32(5038u, 12u)]);
    return any(!vec3<bool>(var_3.e.a, arg_0.c.c.x > _wgslsmith_div_f32(-1389f, var_1.x), true));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(true, arg_2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, -328f, 539f)))), -_wgslsmith_sub_i32(-2147483647i, arg_1 ^ arg_0.d)), vec4<i32>(-2147483647i, min(arg_2.d ^ _wgslsmith_sub_i32(-13356i, -1i), ~min(-55093i, arg_2.d)), 1i, -1i), Struct_1(firstTrailingBit(max(arg_0.d, -14620i)) <= ~reverseBits(arg_0.d), arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, arg_2.c.x, -527f), arg_2.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c))), arg_0.d | (i32(-1i) * -arg_2.d)), Struct_1(!(!arg_0.a), ~firstTrailingBit(max(vec4<u32>(1u, 4294967295u, 58500u, arg_0.b.x), arg_2.b)), arg_0.c, -1i), arg_2);
    global0 = array<Struct_1, 12>();
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - -1357f) * arg_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)))))));
    var var_1 = ~var_0.b.xx;
    global1 = !var_0.a.a;
    return Struct_1(false, firstTrailingBit(_wgslsmith_mod_vec4_u32(arg_2.b, ~arg_2.b)), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(877f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c.x - arg_0.c.x)))))), firstTrailingBit(8568i));
}

fn func_1() -> Struct_1 {
    global1 = true;
    let var_0 = Struct_2(func_4(Struct_1(func_2(Struct_2(Struct_1(true, vec4<u32>(1u, u_input.a.x, u_input.a.x, 95274u), vec3<f32>(1000f, 1229f, 1000f), -1i), vec4<i32>(-2147483647i, -1i, 2147483647i, 23257i), global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], Struct_1(false, vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), vec3<f32>(364f, -298f, 796f), 66476i))), abs(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(min(394f, -708f)), _wgslsmith_f_op_f32(floor(-627f)), -627f), ~1i), firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(-17138i, -2147483647i, 1i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -44066i, 13084i, -2692i), vec4<i32>(1i, 32094i, 1i, -10694i)))), Struct_1(any(vec2<bool>(false, true)), vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(24948u, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 59225u, 0u), vec4<u32>(u_input.a.x, 4294967295u, 67022u, 4294967295u)), 35120u), vec3<f32>(_wgslsmith_f_op_f32(floor(385f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1509f * -1152f)), 2147483647i), true), min(countOneBits(vec4<i32>(~(-1i), 2147483647i, 1i, _wgslsmith_div_i32(-32713i, -7412i))), _wgslsmith_sub_vec4_i32(-firstLeadingBit(vec4<i32>(-51533i, -15804i, 51637i, 41107i)), vec4<i32>(~35614i, ~(-1i), _wgslsmith_sub_i32(-14975i, -2147483647i), 1i))), global0[_wgslsmith_index_u32(44704u, 12u)], func_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x | ~0u, 20010u, 78790u), 12u)], ~abs(_wgslsmith_mod_i32(2147483647i, 1i)), global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 12u)]);
    let var_1 = select(select(select(!(!vec2<bool>(true, var_0.c.a)), !vec2<bool>(var_0.c.a, false), vec2<bool>(!var_0.c.a, true)), !vec2<bool>(!var_0.c.a, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, var_0.c.a), vec2<bool>(true, var_0.c.a)))), select(vec2<bool>(true, true), !(!select(vec2<bool>(var_0.e.a, true), vec2<bool>(var_0.c.a, var_0.e.a), false)), var_0.a.a), var_0.d.a || var_0.a.a);
    global1 = any(vec2<bool>(var_0.d.a || true, true));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x + _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(var_0.a.c.x * var_0.d.c.x), var_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.c.x, _wgslsmith_f_op_vec2_f32(func_3(var_0, u_input.a.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -290f, 1140f) - vec4<f32>(588f, var_0.c.c.x, -646f, var_0.d.c.x)), var_0)).x) * 1261f));
    return func_4(Struct_1(all(select(!vec3<bool>(var_0.e.a, var_1.x, true), vec3<bool>(false, true, false), !vec3<bool>(var_0.c.a, var_0.c.a, var_0.a.a))), vec4<u32>(var_0.d.b.x, var_0.d.b.x, countOneBits(abs(1u)), reverseBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1164f + -361f) + _wgslsmith_f_op_f32(sign(-118f))), var_0.c.c.x, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-612f + 240f)))), 1i), -1i, var_0.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.c.x)) - 169f), var_0.a.c.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1121f - 873f) - 2015f)));
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> vec3<f32> {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_0 = Struct_2(Struct_1(!(u_input.a.x < arg_2.d.b.x) && arg_2.a.a, vec4<u32>(func_1().b.x, _wgslsmith_mod_u32(u_input.a.x, arg_1) << ((u_input.a.x & arg_1) % 32u), 0u, _wgslsmith_mult_u32(~24775u, u_input.a.x ^ arg_1)), arg_2.a.c, arg_2.c.d & -(~arg_2.b.x)), vec4<i32>(i32(-1i) * -9152i, arg_2.a.d, arg_0.x << (arg_1 % 32u), i32(-1i) * -arg_2.c.d) ^ arg_2.b, Struct_1(arg_2.d.a, ~vec4<u32>(arg_1, arg_2.a.b.x, u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-arg_2.e.c), max(reverseBits(50981i), 8662i)), global0[_wgslsmith_index_u32(abs(u_input.a.x), 12u)], func_1());
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(~var_0.d.d, i32(-1i) * -11725i), arg_0.x), vec2<i32>(var_0.b.x, ~(func_1().d << (_wgslsmith_mod_u32(u_input.a.x, var_0.c.b.x) % 32u))), ~select(arg_0, vec2<i32>(0i, countOneBits(arg_0.x)), true));
    var var_2 = vec4<i32>(~_wgslsmith_add_i32(-4174i, 0i), arg_0.x ^ var_1.x, 1i, _wgslsmith_add_i32(-11775i, var_1.x));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0, vec2<u32>(arg_1, var_0.d.b.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.c.x, var_0.d.c.x, 100f, var_0.d.c.x))), Struct_2(Struct_1(var_0.e.a, arg_2.e.b, var_0.c.c, var_2.x), var_0.b, arg_2.c, var_0.c, Struct_1(var_0.e.a, arg_2.d.b, vec3<f32>(var_0.c.c.x, 1052f, 172f), var_1.x)))).x), var_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)) + _wgslsmith_f_op_f32(-var_0.a.c.x))) - func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(~12514u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x | u_input.a.x)));
    global1 = false;
    let var_1 = Struct_1(true, ~(_wgslsmith_sub_vec4_u32(vec4<u32>(31053u, var_0.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, var_0.x, 10460u)) >> (~vec4<u32>(49022u, var_0.x, 36217u, u_input.a.x) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(35231u, 1u, u_input.a.x << (u_input.a.x % 32u), 25436u & var_0.x), ~min(vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, 29197u), vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, 25153u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 38205u), ~u_input.a.x, 1u, 18849u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_5(vec2<i32>(1i, 1i), 4294967295u, Struct_2(Struct_1(true, vec4<u32>(41568u, 1u, u_input.a.x, var_0.x), vec3<f32>(2849f, 632f, 817f), -2147483647i), ~vec4<i32>(-46877i, 0i, 1i, -34416i), func_1(), Struct_1(true, vec4<u32>(var_0.x, u_input.a.x, 1u, var_0.x), vec3<f32>(216f, 127f, -1551f), 2147483647i), func_4(Struct_1(false, vec4<u32>(u_input.a.x, 1u, var_0.x, 1u), vec3<f32>(701f, 905f, 713f), 0i), -1i, Struct_1(true, vec4<u32>(5498u, var_0.x, 65258u, 10158u), vec3<f32>(883f, -123f, 1560f), -2147483647i), true)))))), i32(-1i) * -abs(abs(1i)));
    var var_2 = Struct_2(var_1, vec4<i32>(firstTrailingBit(~var_1.d), 0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.d, 31214i), vec2<i32>(var_1.d, -35660i) | vec2<i32>(var_1.d, var_1.d)), select(2147483647i, func_4(global0[_wgslsmith_index_u32(var_0.x, 12u)], 0i, var_1, false).d & (i32(-1i) * -28237i), var_1.a)), var_1, func_4(global0[_wgslsmith_index_u32(~0u, 12u)], _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-9438i, 44668i, var_1.d)), -vec3<i32>(var_1.d, 56956i, var_1.d) & max(vec3<i32>(var_1.d, var_1.d, -20275i), vec3<i32>(29299i, -8736i, var_1.d))), Struct_1(false, var_1.b, var_1.c, 2147483647i), var_1.a), func_1());
    var var_3 = Struct_2(var_1, countOneBits((vec4<i32>(-2147483647i, 17895i, 26519i, -18428i) | -var_2.b) >> (~vec4<u32>(52677u, var_0.x, 52320u, var_1.b.x) % vec4<u32>(32u))), func_4(var_2.c, 6023i, var_2.c, var_1.a), func_1(), var_2.e);
    var var_4 = !func_2(Struct_2(global0[_wgslsmith_index_u32(1u, 12u)], var_2.b, Struct_1(var_3.c.c.x > var_1.c.x, ~vec4<u32>(33139u, 17147u, 4294967295u, 1u), _wgslsmith_f_op_vec3_f32(max(var_2.d.c, vec3<f32>(var_2.c.c.x, -696f, var_3.d.c.x))), select(var_3.c.d, 50122i, var_3.c.a)), global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(50870u << (~4294967295u % 32u), 12u)]));
    let var_5 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1694f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.e.c.x)) - _wgslsmith_f_op_f32(1218f * var_2.c.c.x)), 124f, var_3.a.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, -335f, 261f, -951f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1065f, var_2.c.c.x, -166f, var_1.c.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_1.d, -var_3.e.d), firstLeadingBit(~var_2.e.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-124f, _wgslsmith_f_op_f32(f32(-1f) * -2136f))), 1850f)));
}

