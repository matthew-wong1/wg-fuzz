struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 25>;

var<private> global2: array<vec4<bool>, 14>;

var<private> global3: vec4<f32> = vec4<f32>(541f, 1000f, 699f, 109f);

var<private> global4: array<i32, 16> = array<i32, 16>(2147483647i, 62110i, -1i, 0i, -12424i, 0i, 8164i, 2147483647i, 23004i, 47691i, -30376i, -3819i, 1i, -49345i, 2147483647i, 1i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-830f, 1581f, _wgslsmith_f_op_f32(-1102f - _wgslsmith_f_op_f32(sign(-649f))), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 25u)])))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-global3.x), -103f, _wgslsmith_f_op_f32(ceil(-627f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-133f, arg_1.b.x, global1[_wgslsmith_index_u32(u_input.c, 25u)], 2036f))))), select(arg_2.a, global0.a, arg_1.d))));
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(u_input.c), u_input.c, select(countOneBits(1u), 4294967295u, arg_2.a.x), 1u), vec4<u32>(93256u, ~firstTrailingBit(0u), _wgslsmith_clamp_u32(u_input.c, 54139u, firstTrailingBit(u_input.c)), u_input.c));
    var var_1 = arg_2;
    return global0.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x - -1361f), _wgslsmith_f_op_f32(abs(704f)), _wgslsmith_f_op_f32(func_3(arg_0.a.zy, Struct_3(global0.a, vec2<f32>(1686f, global1[_wgslsmith_index_u32(u_input.c, 25u)]), global0.c, vec4<bool>(global0.d.x, arg_0.d.x, false, global0.a.x)), Struct_1(vec4<bool>(true, true, true, arg_0.a.x)), vec3<i32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], u_input.d, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-386f, -372f, -1659f, 141f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global0.b.x, global0.c.x, -1095f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(366f, arg_0.b.x, -856f, global3.x), vec4<f32>(arg_0.b.x, -1952f, 410f, global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(690f, -734f, -512f, arg_0.c.x) + vec4<f32>(arg_0.b.x, global1[_wgslsmith_index_u32(1u, 25u)], arg_0.c.x, 1606f)))));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-214f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 25u)] * global1[_wgslsmith_index_u32(1u, 25u)])) + _wgslsmith_div_f32(global0.b.x, -168f))), arg_0.b.x, true));
    let var_1 = vec3<bool>(arg_0.d.x, arg_0.d.x, !arg_0.a.x);
    global2 = array<vec4<bool>, 14>();
    var var_2 = arg_0.d.x;
    return _wgslsmith_dot_vec3_u32((vec3<u32>(_wgslsmith_mult_u32(u_input.c, 5236u), 1u >> (0u % 32u), abs(0u)) >> (firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.c, 19594u, 4294967295u))) % vec3<u32>(32u))) >> (~(~vec3<u32>(u_input.c, u_input.c, 1u) & vec3<u32>(0u, u_input.c, u_input.c)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(12952u, u_input.c, 55081u)), ~(vec3<u32>(0u, u_input.c, 1267u) ^ vec3<u32>(0u, u_input.c, u_input.c))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 7194u, 4294967295u), vec3<u32>(u_input.c, 0u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 19677u, 4294967295u), vec3<u32>(1u, u_input.c, 17125u)), vec3<u32>(4294967295u, u_input.c, 1u)), vec3<u32>(u_input.c, u_input.c, abs(0u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec4<f32> {
    global0 = Struct_3(!(!(!arg_2.b.a)), global0.c, arg_3.b, global2[_wgslsmith_index_u32(18823u, 14u)]);
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(firstTrailingBit(firstTrailingBit(arg_1.c)), vec2<u32>(~u_input.c, arg_2.a.x), _wgslsmith_mult_u32(0u, 2280u) <= arg_2.c.x), firstLeadingBit(vec2<u32>(firstLeadingBit(arg_2.a.x), ~u_input.c))), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(arg_1.c.x, 1u))), ~(~arg_2.c)));
    global0 = arg_3;
    var_0 = arg_1.a.x;
    var var_1 = arg_3;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, global0.d.x), arg_3, Struct_1(vec4<bool>(false, true, true, true)), vec3<i32>(global4[_wgslsmith_index_u32(28634u, 16u)], u_input.b, u_input.d))), 116f, _wgslsmith_f_op_f32(global0.b.x - global3.x), _wgslsmith_f_op_f32(-arg_3.c.x))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x + global1[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.c.x | 0u, 25u)] - _wgslsmith_f_op_f32(-162f * 1075f)), _wgslsmith_f_op_f32(func_3(arg_3.d.xw, arg_3, arg_2.b, reverseBits(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.x, arg_3.b.x, var_1.d.x)) - _wgslsmith_div_f32(-1370f, arg_3.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, arg_3.b.x, 597f, 261f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.b.x, global1[_wgslsmith_index_u32(u_input.c, 25u)], var_1.c.x, global0.c.x), vec4<f32>(498f, var_1.c.x, 1878f, global1[_wgslsmith_index_u32(42292u, 25u)])))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(536f, global3.x, -277f, -128f))), _wgslsmith_div_vec4_f32(vec4<f32>(-666f, arg_3.b.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], var_1.c.x), vec4<f32>(-303f, arg_3.c.x, global0.b.x, 669f))))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: f32) -> vec4<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(func_4(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(u_input.c, 1u, true), select(~u_input.c, 1u, arg_0.a.x)), 16u)], Struct_2(~vec3<u32>(u_input.c, func_2(Struct_3(vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), vec2<f32>(arg_3, global0.c.x), global3.ww, vec4<bool>(global0.d.x, arg_0.a.x, arg_0.a.x, true)), vec3<i32>(global4[_wgslsmith_index_u32(66847u, 16u)], global4[_wgslsmith_index_u32(u_input.c, 16u)], u_input.d)), 1u), Struct_1(select(global2[_wgslsmith_index_u32(u_input.c, 14u)], vec4<bool>(true, arg_0.a.x, false, true), true)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, u_input.c)), firstLeadingBit(vec2<u32>(u_input.c, u_input.c)))), Struct_2(vec3<u32>(u_input.c << (~u_input.c % 32u), ~108193u, (u_input.c ^ 17872u) >> (~u_input.c % 32u)), arg_0, ~vec2<u32>(60354u, 12979u)), Struct_3(vec4<bool>(false, any(select(arg_0.a, vec4<bool>(global0.a.x, false, global0.d.x, arg_0.a.x), global0.a.x)), true || all(vec4<bool>(false, true, false, arg_0.a.x)), all(global0.a.wyw) | global0.d.x), global0.c, arg_1, !(!(!global2[_wgslsmith_index_u32(u_input.c, 14u)])))));
    let var_0 = ~reverseBits(func_2(Struct_3(global2[_wgslsmith_index_u32(1u, 14u)], vec2<f32>(1050f, arg_1.x), _wgslsmith_f_op_vec2_f32(abs(global3.yy)), vec4<bool>(global0.a.x, true, false, global0.d.x)), arg_2.wzw));
    let var_1 = -1260f;
    global1 = array<f32, 25>();
    global0 = Struct_3(select(global0.a, vec4<bool>(-global4[_wgslsmith_index_u32(0u, 16u)] < u_input.b, any(select(vec4<bool>(global0.a.x, global0.d.x, global0.d.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, false, global0.a.x), vec4<bool>(arg_0.a.x, false, global0.a.x, arg_0.a.x))), global0.a.x, !arg_0.a.x), false), vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * global1[_wgslsmith_index_u32(~4294967295u, 25u)]) + var_1)), vec4<bool>(!global0.a.x | !all(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)), global0.d.x, all(vec3<bool>(-56232i <= u_input.a.x, global0.a.x, any(arg_0.a.zx))), false));
    return select(arg_0.a, vec4<bool>(any(vec4<bool>(!global0.a.x, global0.d.x && true, arg_0.a.x && false, true)), -1i > _wgslsmith_clamp_i32(select(2147483647i, -55702i, false), 0i, countOneBits(2147483647i)), false, any(vec4<bool>(global0.d.x, global0.a.x || global0.d.x, all(vec2<bool>(false, true)), true))), !select(vec4<bool>(!global0.d.x, false, true, any(global0.d)), select(select(vec4<bool>(global0.d.x, true, true, true), vec4<bool>(global0.a.x, arg_0.a.x, arg_0.a.x, global0.a.x), false), vec4<bool>(false, global0.d.x, true, arg_0.a.x), global0.d.x), !(!vec4<bool>(arg_0.a.x, false, global0.a.x, arg_0.a.x))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = true;
    let var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, select(max(global4[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a.x), -14603i << (arg_2.x % 32u), select(true, true, true)), u_input.b, global4[_wgslsmith_index_u32(u_input.c, 16u)]), _wgslsmith_add_vec4_i32(max(vec4<i32>(global4[_wgslsmith_index_u32(1u, 16u)], u_input.a.x, u_input.d, global4[_wgslsmith_index_u32(u_input.c, 16u)]), vec4<i32>(16342i, -2147483647i, global4[_wgslsmith_index_u32(4294967295u, 16u)], 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], u_input.b, 11038i, global4[_wgslsmith_index_u32(arg_2.x, 16u)]), vec4<i32>(2147483647i, 1i, -2147483647i, 0i))) << (_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_2.x, arg_2.x, 4294967295u, arg_2.x), vec4<u32>(31847u, arg_2.x, arg_2.x, arg_2.x), arg_1.a.x), firstLeadingBit(vec4<u32>(4294967295u, u_input.c, arg_2.x, 0u))) % vec4<u32>(32u)));
    var var_2 = Struct_3(func_1(arg_1, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, arg_0.x)))))), (var_1 << (_wgslsmith_div_vec4_u32(vec4<u32>(12585u, arg_2.x, 23167u, arg_2.x), vec4<u32>(0u, 21720u, 16095u, 38769u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_sub_u32(29810u, u_input.c), 1u, u_input.c, 4294967295u << (0u % 32u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global0.b.x) + arg_3.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zx - arg_0.xy) + arg_3.b), _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 347f)))), select(select(vec4<bool>(true, arg_3.d.x && false, global0.d.x, arg_3.a.x), vec4<bool>(arg_3.d.x, false, true, !arg_3.d.x), true), arg_3.a, arg_3.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(-71716i, Struct_2(vec3<u32>(u_input.c, 50000u, u_input.c), Struct_1(global2[_wgslsmith_index_u32(80338u, 14u)]), arg_2), Struct_2(vec3<u32>(0u, 0u, u_input.c), Struct_1(vec4<bool>(global0.a.x, false, arg_3.a.x, false)), vec2<u32>(u_input.c, 0u)), arg_3)).x + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2329f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1407f, 611f, arg_3.a.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], var_2.b.x, -531f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 25u)]), -317f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-461f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(-34764i, Struct_2(vec3<u32>(88949u, 40279u, u_input.c), Struct_1(arg_1.a), arg_2), Struct_2(vec3<u32>(0u, 0u, arg_2.x), Struct_1(vec4<bool>(false, global0.d.x, false, var_0)), arg_2), Struct_3(arg_1.a, vec2<f32>(arg_0.x, global0.c.x), vec2<f32>(342f, global3.x), global0.d))).x - global3.x), var_2.b.x))));
    global0 = arg_3;
    return Struct_3(vec4<bool>(any(var_2.a.wxx), 839f == _wgslsmith_f_op_f32(826f + _wgslsmith_f_op_f32(938f * var_3.x)), all(vec3<bool>(true, arg_0.x == var_3.x, func_1(arg_1, global3.yx, var_1, arg_0.x).x)), global0.c.x <= _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 25u)])), 1043f))), vec2<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-global0.b.x)), -258f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_2.x, 25u)], 1000f)) < 294f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(abs(-var_1.x), Struct_2(vec3<u32>(36426u, 23435u, 68513u), arg_1, ~vec2<u32>(arg_2.x, arg_2.x)), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec4<bool>(false, false, true, global0.a.x)), arg_2), Struct_3(vec4<bool>(arg_1.a.x, var_2.a.x, false, global0.a.x), vec2<f32>(var_2.b.x, 1083f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(17130u, 25u)], 199f), var_3.zx, false)), vec4<bool>(false, false, arg_3.a.x, false)))).xw), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 14>();
    let var_0 = u_input.a;
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0.c.x - 364f), global1[_wgslsmith_index_u32(u_input.c, 25u)], 1238f))))), Struct_1(select(!vec4<bool>(global0.d.x, global0.a.x, global0.a.x, false), select(!global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), func_1(Struct_1(global0.a), global0.c, vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], 36610i, global4[_wgslsmith_index_u32(u_input.c, 16u)], global4[_wgslsmith_index_u32(u_input.c, 16u)]), global0.c.x)), true)), ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 16908u), vec2<u32>(0u, 27507u)))), Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xy - global3.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 25u)], global3.x)) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 25u)], 2315f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-436f, 464f), global3.yw, false))) + vec2<f32>(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(global0.c.x * global0.c.x))), !global0.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(4294967295u), abs(u_input.c)), 25u)], global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -575f), 186f)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 986f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(global0.c.x + var_1.b.x)) - 1139f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2444f + global1[_wgslsmith_index_u32(6638u, 25u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(-11544i, Struct_2(vec3<u32>(u_input.c, 4294967295u, 0u), Struct_1(vec4<bool>(false, false, var_1.a.x, true)), vec2<u32>(u_input.c, u_input.c)), Struct_2(vec3<u32>(u_input.c, u_input.c, u_input.c), Struct_1(global0.d), vec2<u32>(u_input.c, u_input.c)), Struct_3(vec4<bool>(global0.a.x, false, var_1.a.x, false), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 25u)], var_2.x), vec2<f32>(1051f, 770f), var_1.d))).x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(2147483647i, Struct_2(vec3<u32>(u_input.c, 36563u, u_input.c), Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, false)), vec2<u32>(u_input.c, 1485u)), Struct_2(vec3<u32>(u_input.c, u_input.c, 4294967295u), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<u32>(32099u, u_input.c)), Struct_3(var_1.a, global3.zz, var_2.wx, var_1.d))).x))) * _wgslsmith_f_op_f32(704f + _wgslsmith_f_op_f32(-global3.x))));
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-1183f, vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(708f + var_3.x) - _wgslsmith_f_op_f32(-1856f + -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(0i, Struct_2(vec3<u32>(u_input.c, 37361u, 14511u), Struct_1(vec4<bool>(global0.d.x, var_1.d.x, var_1.d.x, true)), vec2<u32>(9462u, 67012u)), Struct_2(vec3<u32>(0u, 10231u, 20889u), Struct_1(global2[_wgslsmith_index_u32(u_input.c, 14u)]), vec2<u32>(51371u, u_input.c)), Struct_3(vec4<bool>(true, var_1.a.x, false, true), global3.ww, vec2<f32>(-1635f, -459f), vec4<bool>(var_1.d.x, false, false, var_1.d.x)))).x))), -u_input.b, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(firstTrailingBit(abs(1u))), _wgslsmith_div_u32(func_2(func_5(vec3<f32>(global3.x, 1000f, global1[_wgslsmith_index_u32(u_input.c, 25u)]), Struct_1(vec4<bool>(var_1.a.x, false, var_1.a.x, true)), vec2<u32>(1u, 4294967295u), Struct_3(vec4<bool>(global0.d.x, global0.a.x, true, true), vec2<f32>(305f, -103f), vec2<f32>(global3.x, -1084f), global2[_wgslsmith_index_u32(u_input.c, 14u)])), -vec3<i32>(-12627i, -2147483647i, -57396i)), u_input.c)), 16u)]);
}

