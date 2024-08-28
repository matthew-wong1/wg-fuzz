struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i), -2205f, vec2<u32>(4294967295u, 19188u), 1i));

var<private> global1: vec4<f32> = vec4<f32>(-287f, 661f, 262f, -1000f);

var<private> global2: array<u32, 31>;

var<private> global3: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-381f, -654f, -485f), vec3<f32>(2049f, -579f, -544f), vec3<f32>(-1483f, -1919f, -1108f), vec3<f32>(-1507f, 294f, -153f), vec3<f32>(-1562f, -220f, -1352f), vec3<f32>(348f, -955f, 160f), vec3<f32>(-2698f, 1142f, -568f), vec3<f32>(-1000f, -1885f, -348f), vec3<f32>(465f, 2185f, -1332f), vec3<f32>(375f, -987f, 306f), vec3<f32>(-1996f, 423f, -844f), vec3<f32>(-974f, 1839f, -442f));

var<private> global4: vec4<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = ~max(~vec4<u32>(arg_2.x | 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), arg_2), 15542u, arg_2.x), vec4<u32>(~firstLeadingBit(0u), ~global2[_wgslsmith_index_u32(18765u, 31u)], ~(~0u), abs(12151u)));
    global3 = array<vec3<f32>, 12>();
    var var_1 = Struct_5(i32(-1i) * -26310i);
    var var_2 = Struct_3(Struct_2(vec2<i32>(-global4.x, u_input.a), _wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(arg_2.x, 42584u)), arg_2.x), vec4<bool>(true, !all(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true), Struct_1(vec3<i32>(~(-1i), u_input.a >> (1u % 32u), _wgslsmith_mult_i32(var_1.a, -2147483647i)), arg_0, arg_2, -(u_input.a & -1i))), Struct_2(abs(vec2<i32>(var_1.a << (var_0.x % 32u), 1i)), ~_wgslsmith_dot_vec4_u32(~var_0, firstTrailingBit(var_0)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), !select(true, true, false)), vec3<bool>(!select(false, false, true), false, true), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 1u)]), vec3<i32>(global4.x, global4.x, global4.x));
    let var_3 = vec4<f32>(1710f, _wgslsmith_f_op_f32(abs(337f)), var_2.a.e.b, _wgslsmith_f_op_f32(trunc(var_2.b.e.b)));
    return var_2.a.c;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<i32> {
    global3 = array<vec3<f32>, 12>();
    var var_0 = _wgslsmith_mult_i32(u_input.a >> (abs(4294967295u) % 32u), -1i);
    let var_1 = Struct_2(global4.yz, abs(arg_1.e.c.x), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.d.x, arg_1.c.x, arg_1.d.x, arg_1.c.x), true), arg_1.c, arg_1.c), vec3<bool>(arg_1.d.x, arg_1.c.x, func_3(1155f, global1.wzy, arg_2).x), Struct_1(_wgslsmith_mod_vec3_i32(max(arg_1.e.a << (vec3<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 31u)], 4294967295u) % vec3<u32>(32u)), vec3<i32>(6401i, -2147483647i, -30585i)), arg_1.e.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + arg_1.e.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.b) * 960f))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1.b), vec2<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.x, 31u)]), ~105535u)), _wgslsmith_div_i32(~(-1i), _wgslsmith_mod_i32(firstTrailingBit(10550i), u_input.a))));
    global3 = array<vec3<f32>, 12>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(546f, arg_1.e.b, var_1.c.x)), 1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_1.e.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-713f, 681f)))) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-948f)) - _wgslsmith_f_op_f32(ceil(global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.b, arg_1.e.b)) * _wgslsmith_f_op_f32(1610f - _wgslsmith_f_op_f32(-var_1.e.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.e.b)), _wgslsmith_f_op_f32(-var_1.e.b))));
    return arg_1.e.a.yx;
}

fn func_2() -> vec4<u32> {
    let var_0 = true;
    let var_1 = Struct_2(func_4(global2[_wgslsmith_index_u32(min(1u, ~_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(4294967295u, 31u)])), 31u)], Struct_2(vec2<i32>(-1i, -10257i), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65831u, 31u)], 31u)], 1u), 31u)]), !func_3(global1.x, global1.zwx, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)])), select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0), false), vec3<bool>(true, true, true), var_0), Struct_1(select(vec3<i32>(-77706i, 1i, u_input.a), vec3<i32>(-2147483647i, -17643i, global4.x), vec3<bool>(var_0, true, var_0)), _wgslsmith_f_op_f32(global1.x * global1.x), ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 4294967295u), 2147483647i)), min(vec2<u32>(~4294967295u, 1u), reverseBits(abs(vec2<u32>(9190u, 0u))))), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(82427u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 37657u))) << (1u % 32u), func_3(_wgslsmith_f_op_f32(-1718f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 784f) + -831f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.zyx - vec3<f32>(1203f, -322f, global1.x)))), ~vec2<u32>(1u, global2[_wgslsmith_index_u32(abs(46461u), 31u)])), select(!(!vec3<bool>(var_0, var_0, var_0)), !(!(!vec3<bool>(true, false, var_0))), vec3<bool>(select(var_0 == true, any(vec2<bool>(false, true)), var_0), any(vec3<bool>(var_0, true, var_0)), var_0)), Struct_1(~(-vec3<i32>(u_input.a, u_input.a, u_input.a)), -1502f, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 1u), _wgslsmith_sub_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82461u, 31u)], 31u)])), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(0u, 31u)]), 31u)]), 0i));
    var var_2 = var_1.e.c;
    let var_3 = Struct_4(select(!var_1.c, !var_1.c, vec4<bool>(!var_0, true, var_1.d.x, true)), Struct_1(abs(vec3<i32>(_wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.d, 2147483647i, global4.x, u_input.a), vec4<i32>(2147483647i, -77701i, u_input.a, global4.x)), ~1708i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -2745f)), vec2<u32>(var_1.b, global2[_wgslsmith_index_u32(4294967295u, 31u)]), 2147483647i));
    global3 = array<vec3<f32>, 12>();
    return vec4<u32>(~(~(~_wgslsmith_add_u32(10426u, var_1.b))), ~var_1.b, var_2.x, countOneBits(max(var_2.x, ~var_2.x)));
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = ~arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(112f, global1.x) - _wgslsmith_f_op_f32(step(global1.x, 341f))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, true)))))));
    let var_1 = func_3(-1338f, global1.yzx, ~select(~arg_0.wz, arg_0.yw, select(vec2<bool>(false, false), vec2<bool>(false, false), false)) << (~firstTrailingBit(vec2<u32>(19464u, global2[_wgslsmith_index_u32(arg_0.x, 31u)])) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_add_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec3_i32(global4.zxw, global4.yxw), global4.x, -57538i) << (abs(~vec3<u32>(global2[_wgslsmith_index_u32(26175u, 31u)], 11315u, 17248u)) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(abs(u_input.a), -1i | global4.x, ~(-26904i))), select(var_1.yxz, vec3<bool>(global4.x < 42765i, true, true), vec3<bool>(true, var_1.x | var_1.x, all(vec4<bool>(true, var_1.x, var_1.x, false))))), -global4.yxz);
    let var_3 = any(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1543f - global1.x)), _wgslsmith_f_op_vec3_f32(global1.xzx + vec3<f32>(global1.x, global1.x, 306f)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), var_0.xx))).zxx) & true;
    return Struct_2(~(~vec2<i32>(global4.x, _wgslsmith_add_i32(29112i, 36325i))), arg_0.x, select(var_1, !select(var_1, func_3(961f, global1.xyz, vec2<u32>(var_0.x, 1u)), var_3), false), !var_1.wyw, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0.x, var_0.x) << (_wgslsmith_add_u32(~(arg_0.x | 1u), 1u) % 32u), 1u)]);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> Struct_4 {
    global4 = vec4<i32>(func_5(abs(select(vec4<u32>(73565u, 0u, 26213u, 1u), vec4<u32>(0u, 39033u, arg_0.b, 43627u), arg_0.c)) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 31u)], arg_0.b, 4294967295u)), min(vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], arg_0.b, 38232u, 0u), vec4<u32>(31505u, 1u, 20124u, 63544u))) % vec4<u32>(32u))).a.x, ~(i32(-1i) * -reverseBits(global4.x)), global4.x, ~(~(~(~(-12499i)))));
    var var_0 = vec2<bool>(_wgslsmith_div_i32(arg_1.x, -1i) >= (u_input.a << (func_5(~vec4<u32>(56097u, 956u, 4294967295u, 4294967295u)).b % 32u)), arg_0.d.x);
    let var_1 = global0[_wgslsmith_index_u32(34905u, 1u)];
    var var_2 = Struct_3(Struct_2(global4.xw, _wgslsmith_mod_u32(abs(global2[_wgslsmith_index_u32(~0u, 31u)]), 41142u), vec4<bool>(_wgslsmith_f_op_f32(arg_2 + var_1.b) > arg_2, arg_0.c.x, false, var_0.x), arg_0.d, global0[_wgslsmith_index_u32(~1u, 1u)]), arg_0, global4.yzz);
    var var_3 = var_2.b.e.c << (_wgslsmith_mod_vec2_u32(func_2().yy, var_1.c) % vec2<u32>(32u));
    return Struct_4(var_2.b.c, Struct_1(~max(arg_0.e.a, global4.yxx), _wgslsmith_f_op_f32(-arg_0.e.b), var_1.c, ~(-1i)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global3 = array<vec3<f32>, 12>();
    var var_0 = func_6(func_5(~min(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.c.x, 31u)], 31u)], 1u, 74160u), vec4<u32>(94517u, 0u, 1u, 14771u)), func_2())), global4.xw, _wgslsmith_f_op_f32(-1408f - 1462f));
    var var_1 = -48536i;
    var var_2 = arg_0.c.x;
    var_0 = func_6(func_5(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c.x, arg_0.c.x), _wgslsmith_mod_vec2_u32(var_0.b.c, vec2<u32>(1711u, 9748u))), ~(~var_0.b.c.x), min(global2[_wgslsmith_index_u32(~var_0.b.c.x, 31u)], _wgslsmith_sub_u32(arg_0.c.x, 1u)), 66697u << (arg_0.c.x % 32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(global4.xy, vec2<i32>(-arg_0.d, 36526i)), -2147483647i), _wgslsmith_f_op_f32(abs(arg_0.b)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global1.x, -1265f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))))));
    let var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(global4.yxz), -_wgslsmith_mult_vec3_i32(countOneBits(global4.xyw), countOneBits(global4.zxw))), global4.x & -78897i, 0i, ~(u_input.a | -2147483647i));
    let var_1 = max(15730u, ~(global2[_wgslsmith_index_u32(~countOneBits(4240u), 31u)] ^ abs(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)]))));
    var var_2 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(28656i, global4.x, var_0.x), global1.x, vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1332u, 31u)], 31u)]), -122i))) + _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)))))));
    var var_3 = vec3<u32>(global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(1u, 4294967295u)) | var_1, 31u)], ~select(var_1 ^ global2[_wgslsmith_index_u32(~4294967295u, 31u)], _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, global2[_wgslsmith_index_u32(var_1, 31u)], var_1), vec3<u32>(69968u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37074u, 31u)], 31u)], 31u)])) >> (0u % 32u), any(vec2<bool>(true, true))), ~(~9647u) ^ var_1);
    let var_4 = global0[_wgslsmith_index_u32(firstLeadingBit(~max(var_3.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(63879u, 0u), var_1), 31u)])), 1u)];
    global4 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, u_input.a, var_0.x), vec4<i32>(global4.x, var_4.d, u_input.a, global4.x)), select(select(var_0, vec4<i32>(-49375i, 2147483647i, -2147483647i, global4.x), vec4<bool>(true, false, true, true)) << ((vec4<u32>(var_1, var_3.x, 0u, var_3.x) | vec4<u32>(15112u, 56920u, 36536u, 21423u)) % vec4<u32>(32u)), vec4<i32>(-2147483647i, func_5(vec4<u32>(global2[_wgslsmith_index_u32(var_3.x, 31u)], var_1, var_4.c.x, var_1)).a.x, -61935i, ~(-1i)), func_3(908f, global1.www, var_4.c).x && false), countOneBits(countOneBits(_wgslsmith_mod_vec4_i32(var_0, vec4<i32>(0i, -2147483647i, -1i, u_input.a))))) << (_wgslsmith_sub_vec4_u32(~select(select(vec4<u32>(13288u, var_1, var_1, 0u), vec4<u32>(global2[_wgslsmith_index_u32(var_4.c.x, 31u)], 17354u, 146877u, var_3.x), false), max(vec4<u32>(var_3.x, 1u, 0u, 24474u), vec4<u32>(var_3.x, 1u, 0u, 4294967295u)), any(vec3<bool>(false, false, false))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.c.x, global2[_wgslsmith_index_u32(43961u, 31u)], var_4.c.x, 1u), vec4<u32>(var_1, var_4.c.x, 36673u, 0u), vec4<u32>(1u, var_3.x, var_4.c.x, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(36713u, 31u)], global2[_wgslsmith_index_u32(var_3.x, 31u)], 4294967295u, 4294967295u), ~vec4<u32>(global2[_wgslsmith_index_u32(var_3.x, 31u)], var_1, 0u, 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(var_4.c.x, 9201u), global2[_wgslsmith_index_u32(78383u, 31u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_4.c.x, 31u)], 33598u), 31u)], var_4.c.x))) % vec4<u32>(32u));
    var var_5 = Struct_2(vec2<i32>(~countOneBits(u_input.a), -(~var_0.x)), 4581u, !vec4<bool>(true || func_3(global1.x, global1.yww, var_3.yy).x, true, true || any(vec3<bool>(false, false, true)), true), vec3<bool>(true, !select(global4.x > -2147483647i, true, true), true), func_5(_wgslsmith_add_vec4_u32(~vec4<u32>(25216u, 0u, 1u, var_4.c.x), firstTrailingBit(func_2()))).e);
    var var_6 = ~(~(i32(-1i) * -84204i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, vec4<i32>(-15109i, func_6(func_5(min(vec4<u32>(global2[_wgslsmith_index_u32(47261u, 31u)], 68433u, 4294967295u, 1u), vec4<u32>(35569u, global2[_wgslsmith_index_u32(var_3.x, 31u)], var_4.c.x, 76184u))), vec2<i32>(-17954i, min(-25965i, var_5.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(1873i, -11872i, var_0.x), 762f, var_5.e.c, 0i))))).b.a.x, _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_5.e.a.x, global4.x), 0i)), abs(_wgslsmith_mod_i32(var_4.a.x, global4.x))), reverseBits(0u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_3.yz, _wgslsmith_sub_vec2_u32(var_3.zz, var_3.yz)), reverseBits(var_4.c) << (var_5.e.c % vec2<u32>(32u))), select(~(var_4.c & var_4.c), ~var_4.c, var_5.d.x & var_5.d.x)));
}

