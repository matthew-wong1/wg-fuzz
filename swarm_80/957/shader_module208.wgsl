struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(647f, Struct_1(true, 7058u, 0i), vec4<f32>(1902f, -1692f, 271f, -1438f), Struct_1(true, 4294967295u, 0i));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_4, 6>;

var<private> global3: array<u32, 6>;

var<private> global4: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(1u, 65949u, 36467u), vec3<u32>(121141u, 0u, 4294967295u), vec3<u32>(24835u, 27507u, 42072u), vec3<u32>(18415u, 1u, 6860u), vec3<u32>(25884u, 0u, 58592u), vec3<u32>(0u, 6372u, 43095u), vec3<u32>(0u, 6550u, 4294967295u), vec3<u32>(40948u, 55143u, 52326u), vec3<u32>(4294967295u, 0u, 1261u), vec3<u32>(21268u, 52275u, 59514u), vec3<u32>(1u, 30610u, 1u), vec3<u32>(4294967295u, 21468u, 1u), vec3<u32>(4646u, 60050u, 80323u), vec3<u32>(4294967295u, 4294967295u, 30563u), vec3<u32>(1u, 4294967295u, 41262u), vec3<u32>(41458u, 23560u, 75860u), vec3<u32>(0u, 0u, 25595u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(5095u, 0u, 3443u), vec3<u32>(0u, 59794u, 0u), vec3<u32>(41857u, 0u, 0u), vec3<u32>(2713u, 4294967295u, 57245u), vec3<u32>(1u, 1u, 0u), vec3<u32>(48274u, 1u, 41198u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = vec4<i32>(arg_0.c.a.c, arg_0.c.a.c, firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, arg_0.d.c << (global3[_wgslsmith_index_u32(0u, 6u)] % 32u)), global0.d.c, arg_0.c.a.c)), -1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b - global0.c.x), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1540f, arg_0.c.c.a) + vec2<f32>(274f, -1512f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1071f, global0.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(494f, global0.c.x))))));
    global2 = array<Struct_4, 6>();
    var var_2 = select(select(select(!(!vec3<bool>(true, global0.d.a, arg_0.c.a.a)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(global0.d.a, false, true)), !(!vec3<bool>(global0.b.a, arg_0.d.a, arg_0.d.a))), !select(!vec3<bool>(true, false, arg_0.d.a), vec3<bool>(true, false, global0.b.a), !vec3<bool>(arg_0.d.a, false, arg_0.d.a)), select(!(!vec3<bool>(global0.d.a, true, false)), vec3<bool>(1i != arg_0.d.c, true, true), all(!vec3<bool>(false, arg_0.c.d.a, global0.d.a)))), !vec3<bool>(all(!vec2<bool>(global0.d.a, global0.d.a)), global3[_wgslsmith_index_u32(1u, 6u)] > _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global0.d.b, arg_0.d.b, u_input.b.x, arg_0.a)), !any(vec2<bool>(false, arg_0.c.a.a))), false);
    global0 = arg_0.c.c;
    return _wgslsmith_sub_u32(max(_wgslsmith_dot_vec2_u32(~arg_0.c.b.yw, ~arg_0.c.b.wz), 0u), max(u_input.a, global3[_wgslsmith_index_u32(min(4294967295u, arg_0.c.c.d.b), 6u)]));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = global0.a;
    var_1 = 580f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + -992f);
    let var_2 = Struct_1(global0.b.a, u_input.a, arg_0);
    return Struct_1(all(vec3<bool>(false, true, func_3(global2[_wgslsmith_index_u32(global0.d.b, 6u)]) != ~u_input.a)), 0u, 0i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    global0 = arg_3.c.c;
    global2 = array<Struct_4, 6>();
    var var_0 = true;
    var var_1 = arg_0;
    var var_2 = select(_wgslsmith_clamp_i32(countOneBits(1i), _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, var_1.b.c) | -2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(56483i, arg_0.d.c, -1i), vec3<i32>(arg_2.d.c, arg_3.c.c.b.c, var_1.d.c), arg_3.c.a.a), vec3<i32>(-6133i, arg_2.b.c, 2147483647i) & vec3<i32>(arg_1.c, var_1.d.c, -1945i))), -2147483647i), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(-45415i), abs(12545i)), abs(0i) | _wgslsmith_mod_i32(-1i, arg_2.b.c)), !(_wgslsmith_div_u32(arg_3.c.d.b, ~arg_3.c.b.x) >= ~(~1u)));
    return arg_3.c.d;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = arg_3.zz;
    global0 = Struct_2(808f, global0.b, _wgslsmith_f_op_vec4_f32(sign(global0.c)), func_4(arg_2.c.c, global0.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2362f))), func_2(-2147483647i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(174f, arg_1.x, global0.a, 1512f))), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.b.c), vec2<i32>(-2147483647i, arg_2.c.c.b.c)))), global2[_wgslsmith_index_u32(min(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global0.d.b, 6u)], arg_2.d.b), 8436u), 6u)]));
    var var_1 = ~_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(2729u, max(60801u, arg_2.d.b))), 6u)]);
    let var_2 = Struct_4(4294967295u, _wgslsmith_div_f32(arg_2.b, 734f), Struct_3(Struct_1(true, _wgslsmith_dot_vec3_u32(~u_input.b.zxw, _wgslsmith_mod_vec3_u32(global4[_wgslsmith_index_u32(1u, 24u)], u_input.b.wwy)), global0.d.c), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(48301u, global3[_wgslsmith_index_u32(27712u, 6u)], arg_2.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)])), ~arg_2.c.b, _wgslsmith_clamp_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 0u, u_input.b.x, u_input.a), vec4<u32>(4422u, global0.b.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26596u, 6u)], 6u)], 11671u), ~u_input.b)), Struct_2(-954f, global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-712f, -1372f, -840f, 1228f)), Struct_1(false, global0.b.b, _wgslsmith_mod_i32(arg_0, 2147483647i))), Struct_1(true, reverseBits(_wgslsmith_mod_u32(global0.d.b, u_input.b.x)), _wgslsmith_div_i32(arg_0, func_2(23264i).c))), global0.b);
    let var_3 = arg_1.xzz;
    return var_2.c.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = 111f;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1180f, _wgslsmith_f_op_f32(499f + arg_1.c.a), _wgslsmith_f_op_f32(exp2(global0.a)), 1256f))), arg_0.c.c) - arg_0.c.c);
    var var_2 = arg_1.c.d.c;
    var var_3 = true;
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -824f, var_0, 1560f) + global0.c)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, arg_0.c.c.x, var_0, arg_0.c.a), global0.c)))))))));
    return Struct_3(Struct_1(any(select(!vec3<bool>(arg_1.d.a, arg_0.d.a, global0.d.a), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), arg_1.a.a), select(vec3<bool>(arg_0.d.a, false, false), vec3<bool>(true, true, false), arg_0.a.a))), 18464u, arg_1.a.c), vec4<u32>(0u, 21561u, func_1(arg_1.a.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.c - global0.c))), Struct_4(~48234u, _wgslsmith_div_f32(907f, arg_0.c.c.x), arg_1, Struct_1(arg_1.a.a, 1u, global0.b.c)), vec3<bool>(arg_1.a.a, all(vec3<bool>(arg_0.d.a, global0.b.a, arg_1.a.a)), func_4(arg_1.c, Struct_1(arg_1.c.b.a, global0.d.b, global0.b.c), arg_0.c, Struct_4(u_input.b.x, -1014f, arg_0, arg_0.d)).a)).d.b, ~global3[_wgslsmith_index_u32(abs(0u | arg_0.b.x), 6u)]), arg_1.c, func_1(-1i, arg_0.c.c, Struct_4(_wgslsmith_sub_u32(90048u, global0.b.b), arg_0.c.c.x, Struct_3(Struct_1(global0.b.a, 0u, -1i), max(arg_1.b, vec4<u32>(global0.b.b, 51066u, 37185u, global0.d.b)), func_1(global0.b.c, vec4<f32>(arg_1.c.a, 1113f, arg_0.c.c.x, arg_0.c.a), global2[_wgslsmith_index_u32(arg_1.c.b.b, 6u)], vec3<bool>(arg_0.c.b.a, false, true)), arg_1.c.b), arg_1.c.b), !(!select(vec3<bool>(true, false, arg_1.a.a), vec3<bool>(true, true, arg_0.c.b.a), global0.d.a))).d);
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    let var_0 = global0.c.wx;
    let var_1 = arg_1.a;
    let var_2 = arg_1.c;
    let var_3 = vec3<u32>(var_2.b.b, _wgslsmith_mult_u32(arg_1.c.b.b >> (select(1u << (var_1.b % 32u), var_2.d.b, false) % 32u), _wgslsmith_div_u32(global0.d.b, reverseBits(13864u)) | _wgslsmith_sub_u32(arg_1.c.d.b, _wgslsmith_dot_vec2_u32(u_input.b.yy, arg_1.b.xw))), 51785u);
    let var_4 = Struct_3(func_1(arg_1.a.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -619f, var_0.x, -598f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1858f, var_2.c.x, 276f, var_2.a) + _wgslsmith_f_op_vec4_f32(-arg_1.c.c)))), Struct_4(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * global0.a)), Struct_3(Struct_1(arg_1.a.a, 4294967295u, 23005i), ~u_input.b, Struct_2(arg_1.c.a, Struct_1(arg_2, global3[_wgslsmith_index_u32(10175u, 6u)], var_1.c), var_2.c, Struct_1(var_1.a, var_1.b, -2147483647i)), Struct_1(true, var_2.d.b, var_1.c)), Struct_1(-1i <= arg_1.a.c, 0u, func_5(arg_1, arg_1).d.c)), vec3<bool>(func_2(select(-1i, var_1.c, arg_1.c.d.a)).a, all(!vec3<bool>(false, arg_2, true)), func_1(arg_1.d.c, vec4<f32>(2303f, global0.a, var_2.c.x, 1000f), global2[_wgslsmith_index_u32(var_3.x, 6u)], vec3<bool>(false, var_2.b.a, var_1.a)).c.x > var_2.c.x)).b, reverseBits(select(u_input.b, u_input.b, vec4<bool>(false, global0.d.a, select(false, true, global0.b.a), var_1.a))), func_5(func_5(Struct_3(func_2(var_2.d.c), vec4<u32>(arg_1.d.b, 30521u, 18589u, 4294967295u), var_2, func_5(arg_1, Struct_3(arg_1.a, vec4<u32>(var_2.d.b, global3[_wgslsmith_index_u32(arg_1.a.b, 6u)], 6755u, 4920u), Struct_2(212f, Struct_1(arg_0, 0u, 2147483647i), vec4<f32>(global0.a, 285f, -272f, 1181f), Struct_1(var_2.d.a, var_3.x, var_1.c)), arg_1.c.d)).a), func_5(Struct_3(Struct_1(global0.b.a, 43291u, -45899i), arg_1.b, var_2, Struct_1(false, var_2.d.b, 2147483647i)), func_5(arg_1, Struct_3(arg_1.c.b, vec4<u32>(1u, 7645u, global0.d.b, 36117u), Struct_2(-541f, var_1, vec4<f32>(610f, -218f, 126f, -241f), var_1), global0.d)))), func_5(arg_1, Struct_3(Struct_1(false, u_input.a, var_2.d.c), vec4<u32>(global0.d.b, global0.b.b, var_1.b, 4294967295u), Struct_2(-808f, global0.d, var_2.c, Struct_1(global0.b.a, var_1.b, var_1.c)), func_4(Struct_2(-191f, global0.d, vec4<f32>(global0.a, 1526f, var_2.a, -221f), Struct_1(true, var_2.b.b, var_1.c)), Struct_1(arg_0, 4700u, var_2.b.c), Struct_2(var_2.a, Struct_1(var_1.a, arg_1.b.x, 1i), vec4<f32>(-1000f, global0.a, -1070f, 245f), var_2.b), Struct_4(var_3.x, var_2.a, Struct_3(global0.b, arg_1.b, var_2, Struct_1(var_2.b.a, 1u, -12481i)), var_1))))).c, arg_1.d);
    return Struct_1(arg_1.d.a, global3[_wgslsmith_index_u32(var_2.d.b, 6u)], ~(-_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(14859i, -23391i))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = func_5(Struct_3(Struct_1(func_2(countOneBits(arg_1.x)).a, 31210u, -23083i), u_input.b, arg_0, arg_0.b), func_5(func_5(Struct_3(func_4(arg_0, Struct_1(global0.b.a, global0.b.b, -2147483647i), arg_0, Struct_4(arg_2.b, arg_0.a, Struct_3(arg_0.d, vec4<u32>(27526u, 4294967295u, 52267u, arg_2.b), Struct_2(1088f, Struct_1(global0.b.a, arg_2.b, 19448i), vec4<f32>(arg_0.c.x, 715f, 436f, -1485f), global0.d), arg_2), Struct_1(arg_2.a, 1480u, global0.b.c))), u_input.b, arg_0, Struct_1(arg_2.a, 3271u, -1i)), Struct_3(Struct_1(false, u_input.b.x, arg_0.b.c), abs(vec4<u32>(arg_0.b.b, arg_2.b, global0.d.b, 4294967295u)), arg_0, arg_0.b)), func_5(func_5(Struct_3(arg_0.b, vec4<u32>(5206u, 4294967295u, arg_2.b, u_input.a), Struct_2(global0.a, Struct_1(true, 1u, -47269i), global0.c, arg_0.b), arg_2), Struct_3(Struct_1(true, global0.d.b, arg_2.c), vec4<u32>(5341u, global3[_wgslsmith_index_u32(arg_0.d.b, 6u)], u_input.b.x, 32336u), arg_0, Struct_1(true, 22984u, global0.d.c))), func_5(func_5(Struct_3(Struct_1(arg_2.a, 42085u, -1i), vec4<u32>(25634u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52606u, 6u)], 6u)], global3[_wgslsmith_index_u32(46154u, 6u)], u_input.a), arg_0, arg_2), Struct_3(arg_0.d, vec4<u32>(global3[_wgslsmith_index_u32(global0.d.b, 6u)], global0.d.b, arg_2.b, arg_0.d.b), Struct_2(arg_0.a, Struct_1(arg_2.a, arg_2.b, 1i), global0.c, Struct_1(arg_2.a, global0.b.b, arg_2.c)), Struct_1(arg_0.d.a, 1u, global0.d.c))), Struct_3(arg_0.d, vec4<u32>(42379u, global3[_wgslsmith_index_u32(u_input.a, 6u)], 0u, 1u), Struct_2(329f, Struct_1(arg_2.a, u_input.a, 255i), arg_0.c, Struct_1(true, arg_0.b.b, -23922i)), arg_0.b)))));
    global1 = i32(-1i) * -2147483647i;
    var var_1 = global0.d;
    var var_2 = Struct_1(global0.b.a, var_1.b, ~func_1(var_0.a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -1168f, -593f, -1424f)), global2[_wgslsmith_index_u32(1u, 6u)], select(!vec3<bool>(var_0.a.a, global0.b.a, arg_0.d.a), select(vec3<bool>(false, true, false), vec3<bool>(arg_2.a, arg_2.a, false), true), !vec3<bool>(var_1.a, false, var_1.a))).b.c);
    let var_3 = min(func_6(false, var_0, !var_0.c.b.a).b, countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yx, vec2<u32>(47730u, 0u)), abs(var_0.b.xz))) ^ ~u_input.a);
    return func_5(Struct_3(arg_2, ~abs(min(vec4<u32>(0u, 0u, global0.d.b, global3[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<u32>(1u, global3[_wgslsmith_index_u32(1u, 6u)], 0u, 1u))), func_1(reverseBits(-global0.b.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.c))), Struct_4(_wgslsmith_mod_u32(var_1.b, 0u), _wgslsmith_f_op_f32(step(-636f, -697f)), func_5(var_0, var_0), Struct_1(var_1.a, 76495u, global0.d.c)), !select(vec3<bool>(true, global0.d.a, true), vec3<bool>(false, true, true), arg_2.a)), Struct_1(true, firstTrailingBit(u_input.b.x) | global3[_wgslsmith_index_u32(0u, 6u)], min(1i, arg_0.d.c))), func_5(var_0, Struct_3(func_4(Struct_2(-288f, Struct_1(false, var_3, 2147483647i), vec4<f32>(-1000f, global0.a, -371f, 883f), Struct_1(arg_0.d.a, 66356u, 26769i)), func_6(var_2.a, var_0, global0.b.a), Struct_2(1000f, Struct_1(global0.d.a, var_1.b, arg_2.c), global0.c, Struct_1(var_2.a, var_1.b, 1i)), Struct_4(u_input.a, global0.a, Struct_3(Struct_1(false, 1u, arg_0.b.c), var_0.b, var_0.c, Struct_1(true, 1u, arg_2.c)), var_0.c.d)), vec4<u32>(1556u, select(4294967295u, 0u, var_1.a), func_3(global2[_wgslsmith_index_u32(1u, 6u)]), arg_2.b), arg_0, func_1(global0.b.c, arg_0.c, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_1(arg_2.c, arg_0.c, global2[_wgslsmith_index_u32(var_3, 6u)], vec3<bool>(true, false, true)).d.b, 6u)], 6u)], vec3<bool>(arg_0.d.a, var_1.a, false)).d)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 6>();
    let var_0 = global0.d;
    var var_1 = Struct_1(true, ~global0.b.b, -53590i);
    global1 = _wgslsmith_div_i32(~26214i, global0.b.c);
    var var_2 = func_7(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2462f + global0.c.x)) - _wgslsmith_f_op_f32(min(global0.c.x, -1052f))), global0.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1165f, -115f, global0.a, 588f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, 390f, global0.a)))), Struct_1(all(vec2<bool>(true, true)), ~global3[_wgslsmith_index_u32(1u, 6u)], -6719i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -28482i, max(var_0.c, var_0.c), 0i), ~vec3<i32>(var_0.c, global0.b.c, var_0.c) ^ -vec3<i32>(-60711i, -2147483647i, 2147483647i), vec3<i32>(var_1.c, var_1.c, abs(var_1.c))) ^ -abs(~vec3<i32>(var_1.c, -22718i, -12417i)), func_6(false, func_5(Struct_3(Struct_1(var_1.a, 10936u, global0.d.c), u_input.b | u_input.b, func_1(7111i, vec4<f32>(global0.a, global0.a, global0.a, global0.c.x), Struct_4(u_input.a, global0.a, Struct_3(Struct_1(false, global0.b.b, var_0.c), u_input.b, Struct_2(global0.a, global0.d, global0.c, Struct_1(var_0.a, 54731u, 2147483647i)), Struct_1(var_0.a, 1177u, var_0.c)), global0.b), vec3<bool>(var_1.a, var_0.a, var_0.a)), global0.b), Struct_3(func_4(Struct_2(global0.c.x, global0.b, global0.c, global0.d), global0.b, Struct_2(global0.c.x, Struct_1(var_1.a, global0.b.b, 30366i), global0.c, global0.d), global2[_wgslsmith_index_u32(48310u, 6u)]), vec4<u32>(var_1.b, global3[_wgslsmith_index_u32(var_0.b, 6u)], 4294967295u, 1u), Struct_2(global0.a, global0.b, vec4<f32>(1051f, global0.c.x, -1795f, global0.a), global0.b), Struct_1(true, 3451u, -21986i))), 9225u >= var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.c);
}

