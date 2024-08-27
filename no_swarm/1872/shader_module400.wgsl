struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(0i, 0i, i32(-2147483648)), 16045u, vec3<i32>(1i, -16013i, 0i), 4294967295u, i32(-2147483648)), Struct_1(vec3<i32>(-61213i, 58119i, -46836i), 4294967295u, vec3<i32>(i32(-2147483648), 1i, -16870i), 16571u, i32(-2147483648)), Struct_1(vec3<i32>(29734i, -58835i, -2257i), 17908u, vec3<i32>(-1i, 15283i, 0i), 0u, -5293i), Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), 50456u, vec3<i32>(-466i, -4056i, -34450i), 1u, -26713i), Struct_1(vec3<i32>(1i, i32(-2147483648), -15061i), 1u, vec3<i32>(1i, 14930i, -1i), 75220u, 2147483647i), Struct_1(vec3<i32>(0i, 2147483647i, 52725i), 4294967295u, vec3<i32>(2147483647i, -1i, -49210i), 0u, -34073i), Struct_1(vec3<i32>(6242i, -40529i, i32(-2147483648)), 51811u, vec3<i32>(2147483647i, 0i, 2147483647i), 1u, 0i), Struct_1(vec3<i32>(4476i, 1i, 0i), 1u, vec3<i32>(22733i, -50922i, -1i), 0u, 0i), Struct_1(vec3<i32>(2147483647i, -11705i, -1i), 72052u, vec3<i32>(i32(-2147483648), 13338i, 30712i), 4294967295u, 27106i), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), 3013u, vec3<i32>(1i, 0i, 77654i), 4294967295u, i32(-2147483648)), Struct_1(vec3<i32>(1i, 1i, 2147483647i), 4294967295u, vec3<i32>(-1i, 2147483647i, -1i), 1u, i32(-2147483648)), Struct_1(vec3<i32>(-1i, 12678i, 1i), 1u, vec3<i32>(2147483647i, 11288i, i32(-2147483648)), 23821u, -181i), Struct_1(vec3<i32>(32392i, 2147483647i, -24389i), 4294967295u, vec3<i32>(1i, 9004i, -30529i), 0u, -68503i), Struct_1(vec3<i32>(-1i, 4155i, 39076i), 1u, vec3<i32>(-9186i, 35866i, 41288i), 3324u, 44943i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), 17562u, vec3<i32>(-7222i, -1i, 1i), 76414u, 35252i), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), 40620u, vec3<i32>(33070i, 1i, 0i), 4294967295u, 11853i));

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    global0 = array<bool, 13>();
    let var_1 = vec4<bool>(true | all(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], var_0, false, global0[_wgslsmith_index_u32(0u, 13u)]), !vec4<bool>(var_0, global0[_wgslsmith_index_u32(41061u, 13u)], var_0, var_0), any(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], false)))), true, global0[_wgslsmith_index_u32(0u, 13u)], !any(select(vec2<bool>(true, false), !vec2<bool>(false, var_0), true)));
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(~(~arg_0.b), u_input.b.x | reverseBits(u_input.b.x >> (1u % 32u)))), 16u)];
    return u_input.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(abs(u_input.c.x), -_wgslsmith_dot_vec2_i32(u_input.a.yy, -_wgslsmith_div_vec2_i32(u_input.c, u_input.c)), firstTrailingBit(u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1222f, 1295f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-690f, -464f)))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2009f, 702f), vec2<f32>(-1340f, 122f), true))), vec2<f32>(-729f, 1275f), vec2<bool>(false, !global0[_wgslsmith_index_u32(u_input.b.x, 13u)])))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-618f, _wgslsmith_f_op_f32(trunc(454f))))), _wgslsmith_f_op_f32(674f + 2697f)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x & u_input.b.x, ~u_input.b.x), u_input.b.x) % 32u), select(_wgslsmith_div_u32(1u, ~func_3(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])), ~_wgslsmith_clamp_u32(1u, func_3(Struct_1(u_input.a, u_input.b.x, u_input.a, 59379u, u_input.a.x), Struct_1(vec3<i32>(0i, var_0.x, -1i), 126121u, vec3<i32>(2147483647i, u_input.c.x, 62362i), u_input.b.x, u_input.c.x)), 1u), !global0[_wgslsmith_index_u32(4294967295u, 13u)]), select(~(u_input.b.x << (42334u % 32u)), 56029u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 50999u), 13u)])), 16u)];
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), 1000f));
    let var_3 = global2[_wgslsmith_index_u32(~(u_input.b.x ^ 4294967295u), 16u)];
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, var_3.d >> (~(~14569u) % 32u)) << (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), 8u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = Struct_1(~vec3<i32>(func_2().a.x, firstLeadingBit(-1i), i32(-1i) * -2147483647i), u_input.b.x, -vec3<i32>(max(2147483647i, -13190i), arg_2.c.x, ~max(arg_1.x, arg_2.a.x)), _wgslsmith_clamp_u32(1u, 1u, ~firstTrailingBit(4294967295u ^ arg_2.d)), 10500i);
    global3 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-390f - -1305f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(f32(-1f) * -279f))))), -1061f)));
    var var_2 = select(vec3<bool>(var_0.e < arg_1.x, true, !(arg_1.x != 1i)), !select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, true)), !vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b, 13u)], global0[_wgslsmith_index_u32(arg_3, 13u)], global0[_wgslsmith_index_u32(arg_2.d, 13u)]), firstLeadingBit(arg_2.e) <= (var_0.e | 0i)), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(arg_0.b, 13u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), !vec3<bool>(global0[_wgslsmith_index_u32(12921u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 13u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.d, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)], true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d, 13u)], false, global0[_wgslsmith_index_u32(0u, 13u)]), false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(arg_3, 13u)], false))), any(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(15590u, 13u)], false, global0[_wgslsmith_index_u32(arg_3, 13u)])))));
    let var_3 = Struct_1(vec3<i32>(min(~(i32(-1i) * -2147483647i), ~_wgslsmith_mult_i32(arg_2.c.x, 1786i)), _wgslsmith_clamp_i32(countOneBits(arg_1.x), var_0.e ^ countOneBits(var_0.a.x), _wgslsmith_add_i32(1i, var_0.e)), -2147483647i), ~(~(0u | _wgslsmith_dot_vec4_u32(vec4<u32>(36784u, arg_3, 1u, arg_3), vec4<u32>(0u, arg_2.d, 0u, arg_2.b)))), min(reverseBits(reverseBits(-u_input.a)), firstTrailingBit(arg_0.c) << (u_input.b % vec3<u32>(32u))), 122821u, -abs(-2147483647i));
    return -2147483647i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    return !vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 13u)], firstTrailingBit(arg_1.c.x) >= _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(1i, arg_2.e)), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(firstLeadingBit(abs(0i)), -arg_0.c.x, ~((u_input.c.x | u_input.c.x) << ((arg_0.b << (4294967295u % 32u)) % 32u))), countOneBits(~_wgslsmith_add_u32(_wgslsmith_mult_u32(78443u, arg_0.b), arg_1.b)), u_input.a >> (firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(0u, 0u, arg_1.b))) % vec3<u32>(32u)), _wgslsmith_add_u32(~(~53146u) << (_wgslsmith_sub_u32(arg_0.d, _wgslsmith_mod_u32(arg_1.d, 51973u)) % 32u), ~0u), arg_0.c.x);
    global3 = array<Struct_1, 8>();
    var var_1 = global3[_wgslsmith_index_u32(23495u, 8u)];
    var var_2 = func_5(vec4<i32>(-1i, func_4(Struct_1(var_0.c, 0u, var_1.c, 0u, max(var_1.a.x, u_input.a.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), -39084i & u_input.c.x), func_2(), u_input.b.x), 42138i, arg_0.c.x), var_0, func_2(), func_2());
    global0 = array<bool, 13>();
    return func_2();
}

fn func_6(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(vec3<i32>(func_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16728u, arg_0.d, u_input.b.x, 4294967295u), vec4<u32>(5205u, arg_0.b, 6658u, arg_0.b)) | func_2().b, 8u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_0.b, 4294967295u, 1u)), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), 8u)]).e, u_input.a.x, -u_input.c.x), 0u, ~vec3<i32>(~(-19888i), firstLeadingBit(0i), 1i), _wgslsmith_dot_vec2_u32(~u_input.b.yy, select(u_input.b.zy, ~vec2<u32>(4294967295u, u_input.b.x), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(28588u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])))), arg_0.a.x);
    global1 = min(_wgslsmith_add_u32(u_input.b.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 1u)), 1u >> ((var_0.d << (89356u % 32u)) % 32u))), var_0.d);
    global1 = ~(~0u);
    var var_1 = global3[_wgslsmith_index_u32(var_0.b, 8u)];
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f * -1475f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1671f, -406f) + -1441f)) - 1759f)));
    return firstLeadingBit(~(abs(arg_0.b) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, u_input.b.x, arg_0.b), vec3<u32>(var_1.b, arg_0.d, 20804u)) % 32u)));
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(478f, -411f, 590f, -1195f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1815f, 1000f, 913f, 400f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, 2179f, -242f, 291f) * vec4<f32>(526f, 2822f, 784f, 527f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(floor(579f)), -1435f, _wgslsmith_f_op_f32(f32(-1f) * -1389f), -879f)))));
    global1 = ~arg_1.d;
    let var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(func_3(global2[_wgslsmith_index_u32(~arg_1.b, 16u)], Struct_1(u_input.a, 0u, vec3<i32>(-1i, arg_0, -54747i), 94679u, -13618i)), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(arg_1.b, 67229u)), 0u), ~min(firstLeadingBit(u_input.b), vec3<u32>(arg_1.b, u_input.b.x, 4294967295u))));
    let var_2 = arg_1.d;
    let var_3 = ~min(vec4<u32>(_wgslsmith_div_u32(min(30586u, 46396u), arg_1.d | 53467u), max(16475u, _wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(var_1.x, var_1.x))), 4294967295u, var_2), vec4<u32>(~_wgslsmith_add_u32(arg_1.b, var_2), ~13979u, 0u, 77245u));
    return StorageBuffer(~(~_wgslsmith_mult_vec4_u32(var_3, var_3) >> (var_3 % vec4<u32>(32u))), 30764u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    let var_0 = ~u_input.a.zz;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f))));
    global2 = array<Struct_1, 16>();
    global3 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = func_7(1i, Struct_1(firstTrailingBit(u_input.a), ~func_6(func_1(global3[_wgslsmith_index_u32(11184u, 8u)], Struct_1(u_input.a, 49236u, u_input.a, u_input.b.x, var_0.x))), vec3<i32>(-1i >> (0u % 32u), u_input.c.x, 0i), ~(u_input.b.x >> (u_input.b.x % 32u)), -1i));
}

