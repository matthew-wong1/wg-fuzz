struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<f32> = vec4<f32>(-226f, 268f, -575f, 1241f);

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(false, vec3<f32>(-657f, -1000f, -467f)), Struct_2(false, vec3<f32>(487f, -1000f, 970f)), Struct_2(true, vec3<f32>(-305f, 1311f, -402f)), Struct_2(true, vec3<f32>(790f, -1863f, -1140f)), Struct_2(true, vec3<f32>(326f, 303f, 673f)), Struct_2(true, vec3<f32>(-2082f, -1239f, 669f)), Struct_2(true, vec3<f32>(-1256f, 344f, -583f)), Struct_2(false, vec3<f32>(-664f, 1000f, 944f)), Struct_2(true, vec3<f32>(211f, -1223f, -1928f)), Struct_2(true, vec3<f32>(864f, -278f, -2174f)), Struct_2(true, vec3<f32>(916f, -1755f, 2692f)), Struct_2(true, vec3<f32>(-489f, 295f, -1788f)), Struct_2(true, vec3<f32>(-827f, -616f, -231f)), Struct_2(false, vec3<f32>(-1881f, -215f, 572f)), Struct_2(false, vec3<f32>(-571f, 1000f, 302f)), Struct_2(true, vec3<f32>(-161f, -799f, -1278f)), Struct_2(true, vec3<f32>(-1150f, -1050f, -973f)), Struct_2(true, vec3<f32>(317f, 244f, 1887f)), Struct_2(false, vec3<f32>(-402f, 1387f, -1139f)), Struct_2(false, vec3<f32>(1196f, -332f, 547f)));

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    global0 = vec4<i32>(28803i, -abs(firstLeadingBit(global4.a.x)), 1i, _wgslsmith_clamp_i32(u_input.b.x, reverseBits(min(u_input.b.x & 1i, -2147483647i)), 11981i));
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~select(u_input.a, 1u, true), abs(u_input.a | 1u), 0u, _wgslsmith_mult_u32(u_input.a, max(u_input.a, 59200u))) & ~vec4<u32>(u_input.a, u_input.a, u_input.a, _wgslsmith_sub_u32(u_input.a, 1u)), ~(~(~(~vec4<u32>(0u, u_input.a, 0u, 0u)))));
    let var_1 = u_input.b.x;
    return _wgslsmith_add_u32(21371u, _wgslsmith_add_u32(var_0.x, ~_wgslsmith_sub_u32(60102u, ~var_0.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(8407u, abs(_wgslsmith_sub_u32(5203u, arg_0))), u_input.a), ~(~arg_0 ^ min(32586u, 4294967295u)) >> (func_3(select(!vec4<bool>(false, true, global4.b.x, global4.c.x), vec4<bool>(true, true, false, true), !global4.c.x), select(select(vec4<bool>(global4.b.x, global4.b.x, global4.c.x, false), vec4<bool>(global4.b.x, global4.c.x, false, false), global4.b.x), vec4<bool>(global4.c.x, global4.c.x, global4.b.x, global4.c.x), select(global4.b.x, global4.c.x, global4.c.x))) % 32u)), 20u)];
    global0 = -reverseBits(select(-vec4<i32>(1i, global0.x, 1i, -23359i), -vec4<i32>(u_input.b.x, global0.x, global0.x, 33394i), !vec4<bool>(global4.b.x, var_0.a, global4.b.x, false)) >> (countOneBits(select(vec4<u32>(24686u, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, arg_0, arg_0, arg_0), vec4<bool>(true, false, var_0.a, false))) % vec4<u32>(32u)));
    var_0 = Struct_2(select(all(global4.c), var_0.a, global4.c.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 767f, global1.x) + vec3<f32>(global1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2221f, global1.x, -957f)))), _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, arg_1.x, global1.x) * _wgslsmith_f_op_vec3_f32(-var_0.b))), vec3<bool>(false, any(!vec4<bool>(false, true, global4.b.x, false)), var_0.a))));
    let var_1 = firstTrailingBit(~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.a, u_input.a, arg_0), vec4<u32>(0u, 94501u, 4294967295u, arg_0)), u_input.a));
    var var_2 = any(!vec4<bool>(any(vec4<bool>(false, true, true, true)), global4.c.x, true, !global4.c.x)) & true;
    return _wgslsmith_mult_vec2_i32(firstLeadingBit(~(-vec2<i32>(7508i, 1i) << (vec2<u32>(var_1.x, 1686u) % vec2<u32>(32u)))), vec2<i32>(u_input.b.x, -1674i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1000f)), global1.x)), any(!(!vec4<bool>(arg_0.b.x, false, arg_0.c.x, true))) && false, arg_1);
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = vec3<u32>(~max(arg_2, 1u) & select(u_input.a, 16417u, false), 36170u, _wgslsmith_clamp_u32(9885u, _wgslsmith_clamp_u32(u_input.a, ~u_input.a, 1u & u_input.a), reverseBits(62862u) << (arg_2 % 32u))) << (firstTrailingBit(vec3<u32>(firstLeadingBit(17685u), u_input.a, _wgslsmith_clamp_u32(arg_2, arg_2, 4294967295u) << (_wgslsmith_div_u32(arg_2, 4294967295u) % 32u))) % vec3<u32>(32u));
    let var_3 = false;
    return vec4<bool>(arg_1.a, var_1.a.x > var_1.d.x, all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, var_0.d.a, var_0.c, arg_1.a)), var_0.a.a)), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    global0 = vec4<i32>(i32(-1i) * -21541i, 43949i, global4.d.x, _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(-23614i, global0.x), -abs(u_input.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -27910i, u_input.b.x, 34428i), vec4<i32>(global4.a.x, -91038i, global0.x, 1i)), min(vec4<i32>(0i, global0.x, u_input.b.x, -1i), vec4<i32>(-1i, 34960i, 1i, -1693i))))) & select(firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(global4.a.x, u_input.b.x, -2147483647i, 29458i), vec4<i32>(1i, global4.a.x, global4.a.x, -2061i))), vec4<i32>(~47519i, _wgslsmith_clamp_i32(62341i, global4.a.x, u_input.b.x), i32(-1i) * -13076i, u_input.b.x) & firstLeadingBit(~vec4<i32>(global4.a.x, u_input.b.x, -1i, global0.x)), arg_0);
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, arg_1), 16u)];
    global3 = array<Struct_2, 20>();
    return Struct_1(vec2<i32>(_wgslsmith_div_i32(global0.x, abs(_wgslsmith_sub_i32(-4692i, 37431i))), ~_wgslsmith_add_i32(u_input.b.x, global0.x) & 0i), vec2<bool>(global4.c.x, true == global4.b.x), arg_0.wy, _wgslsmith_div_vec2_i32(vec2<i32>(~18890i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 10810i, global0.x, -1i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, global4.a.x))), countOneBits(vec2<i32>(-global4.a.x, -u_input.b.x))));
}

fn func_1() -> Struct_1 {
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x))), global1.x, 533f);
    var var_0 = func_5(func_4(Struct_1(vec2<i32>(u_input.b.x >> (72028u % 32u), global4.a.x), global4.b, vec2<bool>(global4.c.x, all(vec2<bool>(true, false))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global4.d.x, -1i), vec2<i32>(u_input.b.x, u_input.b.x)), func_2(1u, vec3<f32>(-1432f, 1000f, global1.x)), global0.ww)), Struct_2(any(!vec4<bool>(global4.b.x, false, true, false)), vec3<f32>(_wgslsmith_div_f32(-1059f, global1.x), _wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(-global1.x))), abs(countOneBits(max(4294967295u, 19123u))), ~(~abs(1i))), u_input.a);
    let var_1 = global0.wz;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), -1012f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f - 1125f))))));
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(0u | ~(select(u_input.a, u_input.a, false) ^ u_input.a), 20u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f * -1000f))), 1f), global4.c.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, func_3(vec4<bool>(true, false, false, global4.c.x), vec4<bool>(var_0.b.x, var_0.b.x, false, false)), ~10203u, u_input.a | 45777u), min(vec4<u32>(42598u, u_input.a, 4294967295u, 0u) | vec4<u32>(50244u, u_input.a, 67036u, u_input.a), vec4<u32>(35178u, 10164u, u_input.a, 4294967295u) >> (vec4<u32>(7284u, 0u, u_input.a, u_input.a) % vec4<u32>(32u)))), vec4<u32>(1u, 4294967295u, abs(u_input.a) & u_input.a, 1u)), 20u)]);
    return func_5(select(vec4<bool>(!func_4(global2[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(false, vec3<f32>(var_2.a.b.x, var_2.a.b.x, -1184f)), 89552u, var_1.x).x, !any(vec4<bool>(false, true, false, false)), var_2.d.a, var_2.d.a), !vec4<bool>(5381u < u_input.a, global1.x > 692f, global4.b.x, false), vec4<bool>(true && !var_0.b.x, all(!vec4<bool>(false, var_0.c.x, var_2.a.a, var_0.b.x)), !global4.b.x & global4.c.x, !func_4(Struct_1(vec2<i32>(1i, var_0.a.x), var_0.b, var_0.b, vec2<i32>(var_1.x, 71385i)), global3[_wgslsmith_index_u32(u_input.a, 20u)], 0u, global0.x).x)), ~u_input.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1249f + _wgslsmith_f_op_f32(-arg_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -588f))), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -538f)));
    var var_0 = select(vec4<bool>(!(!global4.c.x || !arg_1.a), !((global4.b.x | arg_0.b.x) && !arg_1.a), !any(vec3<bool>(global4.b.x, false, false)) & arg_0.c.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 23587u ^ u_input.a) < 75121u), !select(select(vec4<bool>(true, global4.b.x, false, false), vec4<bool>(false, false, arg_0.c.x, false), arg_0.c.x), !(!vec4<bool>(arg_1.a, true, arg_0.b.x, arg_1.a)), true), select(func_4(func_1(), global3[_wgslsmith_index_u32(30818u, 20u)], ~reverseBits(32831u), global0.x), select(vec4<bool>(false, arg_1.a, false, false), vec4<bool>(false, any(vec4<bool>(true, arg_1.a, global4.c.x, true)), false, false), !arg_1.a & (false && arg_0.c.x)), true));
    return Struct_2(false, _wgslsmith_f_op_vec3_f32(arg_1.b + global1.zxw));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    var var_0 = reverseBits(1u);
    var var_1 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(~u_input.a, 6791u)), 20u)];
    var_1 = func_6(func_1(), Struct_2(true, vec3<f32>(810f, 566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(-var_1.b.x));
    let var_3 = global3[_wgslsmith_index_u32(u_input.a, 20u)];
    var_1 = global3[_wgslsmith_index_u32(select(u_input.a, 8033u, global4.b.x), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(4294967295u, 5013u, 4294967295u))), vec3<u32>(_wgslsmith_sub_u32(109539u ^ u_input.a, 30960u), u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1808u, u_input.a), reverseBits(vec4<u32>(78215u, u_input.a, u_input.a, 70903u))))), vec2<i32>(_wgslsmith_clamp_i32(1i, ~global0.x, func_5(vec4<bool>(var_1.a, true, false, true), ~u_input.a).d.x), firstTrailingBit(min(~global0.x, 2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - _wgslsmith_f_op_f32(floor(1167f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(456f - var_3.b.x), _wgslsmith_div_f32(-1234f, var_1.b.x))) + -3032f)), ~(~(~min(vec3<u32>(1u, 11656u, 17601u), vec3<u32>(u_input.a, 55390u, 0u)))), 5366i);
}

