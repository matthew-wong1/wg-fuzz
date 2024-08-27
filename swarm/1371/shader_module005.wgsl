struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 4> = array<f32, 4>(-946f, 177f, 449f, -1153f);

var<private> global2: array<i32, 32> = array<i32, 32>(28474i, 1i, 0i, 2147483647i, 29150i, 5540i, -6159i, 12714i, -1i, -18287i, -1i, 31010i, i32(-2147483648), 1i, i32(-2147483648), 1i, i32(-2147483648), 30012i, 2147483647i, 2147483647i, 10573i, 36908i, 47226i, 0i, -5695i, -42131i, -1i, 2147483647i, 1i, 2147483647i, 16795i, 0i);

var<private> global3: array<u32, 26> = array<u32, 26>(41368u, 0u, 33069u, 0u, 34000u, 45373u, 2156u, 4294967295u, 51853u, 0u, 17682u, 4294967295u, 29606u, 33607u, 4888u, 68361u, 0u, 0u, 0u, 4294967295u, 1u, 4294967295u, 28905u, 4294967295u, 20606u, 0u);

var<private> global4: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(abs(vec3<i32>(-arg_1.d, -u_input.b, arg_1.d) ^ ~min(u_input.c.xzz, u_input.c.xxz)), firstTrailingBit(vec2<i32>(15040i, _wgslsmith_sub_i32(reverseBits(11386i), _wgslsmith_mult_i32(arg_1.d, 0i)))), vec2<u32>(4294967295u, (_wgslsmith_clamp_u32(4294967295u, arg_0, 4294967295u) >> (4294967295u % 32u)) >> (1u % 32u)), _wgslsmith_mod_u32(select(abs(global3[_wgslsmith_index_u32(var_0.c, 26u)] & 80906u), 42881u, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(14883u, 4u)])) != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(48430u, 4u)] * 262f)), ~firstLeadingBit(~0u)));
    return _wgslsmith_mod_i32(reverseBits(u_input.a.x) | -48511i, -19697i) << (_wgslsmith_add_u32(~arg_0, 63041u) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = ~arg_1.a.a.zw;
    let var_1 = arg_1.e;
    var var_2 = u_input.d.zz;
    let var_3 = min(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i) ^ vec2<i32>(var_1.d, -1i), vec2<i32>(1i, arg_0.a.x)), select(arg_0.b.x >> (arg_1.a.c % 32u), func_3(arg_0.c.x, arg_1.e), all(vec3<bool>(global4.x, global4.x, false)))), u_input.a);
    let var_4 = global4.x;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(arg_0.d, 26u)];
    global3 = array<u32, 26>();
    let var_1 = !global4.x;
    global4 = !vec3<bool>(var_1, true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1)));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = !select(!select(vec4<bool>(global4.x, false, true, global4.x), !vec4<bool>(global4.x, true, global4.x, global4.x), true), vec4<bool>(false, func_4(func_2(Struct_2(u_input.c.zwx, u_input.a, arg_0.a.wy, global3[_wgslsmith_index_u32(19660u, 26u)]), Struct_3(Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(436u, 26u)], 4294967295u, global3[_wgslsmith_index_u32(1u, 26u)], 17914u), -451f, 69974u, global2[_wgslsmith_index_u32(17122u, 32u)]), global1[_wgslsmith_index_u32(0u, 4u)], arg_0, vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c, 26u)], 4u)], arg_0.b), Struct_1(arg_0.a, arg_0.b, global3[_wgslsmith_index_u32(0u, 26u)], -6178i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -1112f) - vec2<f32>(-2441f, arg_1))), !any(vec3<bool>(false, global4.x, global4.x)), global4.x), true || (-arg_0.d > _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, 0i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 32u)], -1i), vec4<i32>(arg_0.d, 16227i, u_input.b, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c, 26u)], 32u)]))));
    let var_1 = Struct_3(Struct_1(~_wgslsmith_add_vec4_u32(arg_0.a, ~arg_0.a), _wgslsmith_f_op_f32(-1298f * -183f), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(1u, 26u)], arg_0.c), 26u)], arg_0.a.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~arg_0.a.yyx), abs(firstLeadingBit(arg_0.a.yww))), 32u)]), _wgslsmith_f_op_f32(469f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(20512u, 4u)])))))), Struct_1(min(vec4<u32>(abs(1u), 114225u, global3[_wgslsmith_index_u32(countOneBits(arg_0.a.x), 26u)], arg_0.c), vec4<u32>(~0u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)] >> (0u % 32u), 26u)], arg_0.a.x << (16292u % 32u))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 26u)], 4u)], ~0u, ~(-_wgslsmith_div_i32(-1i, u_input.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(874f, arg_1))))))), arg_0);
    let var_2 = Struct_1(reverseBits(arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(24509u, 4u)])) * -1152f), abs(arg_0.a.x), _wgslsmith_dot_vec2_i32(u_input.a, min(select(~u_input.a, u_input.d.xx, select(vec2<bool>(var_0.x, global4.x), vec2<bool>(true, global4.x), vec2<bool>(global4.x, global4.x))), vec2<i32>(-var_1.a.d, -u_input.a.x))));
    var var_3 = arg_0.d;
    let var_4 = func_2(Struct_2(abs(vec3<i32>(abs(var_1.e.d), arg_0.d | var_1.a.d, select(0i, var_1.a.d, var_0.x))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 4423i), vec2<i32>(-1525i, global2[_wgslsmith_index_u32(4294967295u, 32u)]), u_input.a), vec2<i32>(3401i, var_1.e.d)) | u_input.a, arg_0.a.yy, ~12725u), var_1);
    return 1u;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    global0 = 377f;
    let var_0 = vec4<i32>(max(1i, -54773i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~min(arg_2.a.x, 152344u), 26u)], 26u)] % 32u)), ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~u_input.a.x, -u_input.d.x, -11676i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, global2[_wgslsmith_index_u32(arg_2.a.x, 32u)]), vec2<i32>(-1i, -1781i)), i32(-1i) * -1i)), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x ^ 63731i, abs(-18635i)), -(~_wgslsmith_mod_vec2_i32(arg_1.zy, vec2<i32>(0i, arg_2.d)))));
    let var_1 = arg_2.a.x;
    let var_2 = func_2(Struct_2(func_2(Struct_2(-vec3<i32>(arg_1.x, arg_0, u_input.b), u_input.c.zx & arg_1.yx, ~vec2<u32>(var_1, var_1), ~0u), Struct_3(Struct_1(arg_2.a, 1471f, global3[_wgslsmith_index_u32(7567u, 26u)], arg_1.x), _wgslsmith_f_op_f32(arg_2.b - arg_2.b), arg_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, -1284f) * vec2<f32>(global1[_wgslsmith_index_u32(var_1, 4u)], arg_2.b)), Struct_1(vec4<u32>(58102u, var_1, 24073u, 2013u), arg_2.b, arg_2.c, -56992i))).a, ~vec2<i32>(arg_1.x, 19192i) >> (~max(arg_2.a.zy, arg_2.a.zz) % vec2<u32>(32u)), arg_2.a.ww, arg_2.a.x), Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(arg_2.a ^ arg_2.a, arg_2.a << (arg_2.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(arg_2.a, vec4<u32>(var_1, 1u, 31563u, var_1))), arg_2.b, 7842u, 0i), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 4u)] + 158f), 1207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-702f + 910f)))), Struct_1(_wgslsmith_sub_vec4_u32(arg_2.a, arg_2.a), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(25382u, 26u)], global3[_wgslsmith_index_u32(51876u, 26u)], var_1)), 4u)], global3[_wgslsmith_index_u32(~firstLeadingBit(22563u), 26u)], ~0i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45544u, 26u)], 4u)], global1[_wgslsmith_index_u32(10604u, 4u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, 879f)))), arg_2));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], arg_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.b, arg_2.b)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b, 521f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1181f, 280f)), _wgslsmith_f_op_f32(step(-508f, 448f))))));
    return func_2(func_2(func_2(func_2(func_2(var_2, Struct_3(Struct_1(arg_2.a, arg_2.b, 1u, -26288i), var_3.x, arg_2, vec2<f32>(arg_2.b, arg_2.b), Struct_1(vec4<u32>(arg_2.a.x, 59533u, 23953u, 43290u), var_3.x, 4294967295u, 1i))), Struct_3(Struct_1(arg_2.a, -1468f, var_2.c.x, 2147483647i), 1000f, Struct_1(arg_2.a, arg_2.b, arg_2.c, -7703i), var_3, Struct_1(arg_2.a, -559f, var_2.c.x, -1985i))), Struct_3(arg_2, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 4u)]), Struct_1(arg_2.a, -274f, 60791u, arg_1.x), var_3, Struct_1(arg_2.a, var_3.x, 27875u, var_0.x))), Struct_3(arg_2, 1f, arg_2, var_3, arg_2)), Struct_3(arg_2, -1197f, arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b, -1000f), vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.c.x, 26u)], 4u)], var_3.x), vec2<bool>(arg_3.x, global4.x))))), Struct_1(vec4<u32>(arg_2.c, ~arg_2.c, global3[_wgslsmith_index_u32(var_1, 26u)], var_1), _wgslsmith_f_op_f32(f32(-1f) * -748f), ~_wgslsmith_dot_vec2_u32(arg_2.a.xw, arg_2.a.wy), _wgslsmith_dot_vec4_i32(~u_input.c, vec4<i32>(arg_0, arg_1.x, arg_0, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36042u, 26u)], 4u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43942u, 26u)], 26u)], 26u)], 26u)], 4u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(48026u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22287u, 26u)], 26u)]), 4u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 4u)])) * vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 4u)] + global1[_wgslsmith_index_u32(45911u, 4u)]), 963f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(15976u, 81571u)), 4u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 4u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15683u, 26u)], 26u)], 26u)], 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], 4u)], -1555f), global4.zy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 606f))))), !global4.yx));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2592f, -439f, var_0.x) - vec3<f32>(-594f, var_0.x, -413f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(51084u, 4u)], global1[_wgslsmith_index_u32(44665u, 4u)], -1000f) + vec3<f32>(-718f, global1[_wgslsmith_index_u32(39993u, 4u)], var_0.x)) * vec3<f32>(global1[_wgslsmith_index_u32(15054u, 4u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1516f, 231f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, 1099f));
    let var_3 = func_5(-44996i, u_input.c.wyy, Struct_1(vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15481u, 26u)], 26u)]) | ~52575u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~79601u, 26u)], 26u)] & ~40412u, 12950u, func_1(Struct_1(vec4<u32>(0u, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(3281u, 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59997u, 26u)], 26u)]), var_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25676u, 26u)], 26u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 32u)]), -1000f)), _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 4u)] - -585f)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 26u)], 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 26u)], 26u)])), vec3<u32>(0u, global3[_wgslsmith_index_u32(13320u, 26u)], 1u)), ~firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(12514u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], 12235u))), global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~firstLeadingBit(18975u), 26u)], 32u)]), !vec4<bool>(any(global4.yx), !func_4(Struct_2(u_input.d.yyy, u_input.c.xx, vec2<u32>(43682u, 1u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 26u)], 26u)]), var_2.yx), all(!vec3<bool>(true, global4.x, false)), false));
    global2 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1573f)) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_3.c, _wgslsmith_clamp_vec2_u32(~var_3.c, max(vec2<u32>(22343u, 1u), var_3.c), select(var_3.c, vec2<u32>(var_3.d, var_3.c.x), global4.yy))), 4u)]), u_input.b, var_3.b.x);
}

