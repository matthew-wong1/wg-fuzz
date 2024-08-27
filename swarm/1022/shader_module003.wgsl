struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-468f, 126f, vec2<f32>(-213f, 470f), 2147483647i, vec4<f32>(1521f, -613f, 836f, -565f)), Struct_1(1877f, -408f, vec2<f32>(1708f, 257f), -1i, vec4<f32>(1642f, 1518f, -471f, -219f)), Struct_1(2035f, -451f, vec2<f32>(757f, -190f), -54265i, vec4<f32>(245f, -1000f, 419f, -2153f)), Struct_1(1161f, 372f, vec2<f32>(-377f, 1137f), -43316i, vec4<f32>(-308f, 505f, -348f, 1945f)), Struct_1(-116f, 489f, vec2<f32>(-1061f, -1642f), 0i, vec4<f32>(531f, -237f, 601f, -696f)), Struct_1(-775f, -1364f, vec2<f32>(1114f, 352f), -46756i, vec4<f32>(-641f, 1062f, 2543f, -1140f)), Struct_1(-454f, -349f, vec2<f32>(-118f, -1058f), 2147483647i, vec4<f32>(342f, 275f, 344f, 1000f)), Struct_1(3218f, 502f, vec2<f32>(-1057f, 489f), i32(-2147483648), vec4<f32>(1116f, 1208f, 1000f, 1000f)), Struct_1(237f, 378f, vec2<f32>(-368f, -920f), 2147483647i, vec4<f32>(780f, -164f, 1146f, 2008f)), Struct_1(-243f, -1000f, vec2<f32>(-1192f, 294f), -40255i, vec4<f32>(-152f, -1140f, -1000f, -1407f)), Struct_1(1634f, 2706f, vec2<f32>(1211f, 1313f), -27952i, vec4<f32>(-377f, -387f, -841f, 621f)), Struct_1(1276f, 1000f, vec2<f32>(1000f, 960f), -24169i, vec4<f32>(1475f, -417f, 487f, -1000f)), Struct_1(1159f, 1313f, vec2<f32>(-1825f, 1454f), i32(-2147483648), vec4<f32>(848f, -1301f, -346f, 851f)), Struct_1(-316f, -373f, vec2<f32>(438f, -667f), -1i, vec4<f32>(356f, 959f, 1508f, 858f)), Struct_1(-230f, -1870f, vec2<f32>(-1000f, -1276f), 0i, vec4<f32>(1903f, -964f, -677f, -1042f)), Struct_1(-1498f, 1182f, vec2<f32>(-913f, 1943f), 0i, vec4<f32>(-431f, 597f, -697f, -754f)), Struct_1(-1643f, -167f, vec2<f32>(-723f, -1040f), 2147483647i, vec4<f32>(928f, -1000f, 319f, -491f)), Struct_1(2863f, 1000f, vec2<f32>(-523f, 779f), -1i, vec4<f32>(-600f, 2279f, -153f, -1000f)), Struct_1(237f, -1293f, vec2<f32>(1108f, 1150f), 2147483647i, vec4<f32>(1466f, -1363f, -1824f, -232f)), Struct_1(1702f, 1013f, vec2<f32>(-1077f, -621f), 21051i, vec4<f32>(-1395f, -860f, 237f, -2365f)), Struct_1(-981f, 545f, vec2<f32>(596f, -1818f), 1i, vec4<f32>(1303f, 554f, -743f, -635f)), Struct_1(493f, -518f, vec2<f32>(233f, -377f), 1174i, vec4<f32>(-1078f, -894f, -1175f, 1804f)), Struct_1(-532f, 1000f, vec2<f32>(1768f, -764f), 61990i, vec4<f32>(-459f, -1494f, -1176f, 1631f)), Struct_1(-151f, -795f, vec2<f32>(-1000f, -895f), 1i, vec4<f32>(-218f, 2027f, -1681f, -692f)), Struct_1(-2327f, 658f, vec2<f32>(-658f, 144f), 0i, vec4<f32>(-593f, -464f, -737f, 1830f)), Struct_1(430f, -1000f, vec2<f32>(-761f, 1529f), 0i, vec4<f32>(-1000f, -1000f, 508f, -1157f)), Struct_1(382f, 1118f, vec2<f32>(139f, -1061f), 33871i, vec4<f32>(-1008f, -969f, 1297f, 110f)), Struct_1(-104f, 541f, vec2<f32>(858f, -768f), 2147483647i, vec4<f32>(141f, -102f, 645f, -607f)));

var<private> global3: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 15642u, 65304u, 0u), vec4<u32>(0u, 4294967295u, 9583u, 9190u), vec4<u32>(4294967295u, 80083u, 4314u, 4294967295u), vec4<u32>(33375u, 38705u, 86876u, 1u), vec4<u32>(15231u, 45776u, 0u, 1u), vec4<u32>(1u, 33092u, 0u, 1u), vec4<u32>(22412u, 1u, 15967u, 4294967295u), vec4<u32>(32573u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 42015u, 1373u, 4294967295u), vec4<u32>(1u, 16997u, 4294967295u, 41247u), vec4<u32>(29024u, 33815u, 91919u, 19812u), vec4<u32>(29269u, 4294967295u, 0u, 0u), vec4<u32>(4780u, 0u, 1u, 4294967295u), vec4<u32>(23500u, 0u, 27514u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 23009u, 42966u, 98771u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = ~reverseBits(-vec2<i32>(global1.d, 1i) & (vec2<i32>(global1.d, global1.d) | vec2<i32>(19118i, -29712i)));
    global2 = array<Struct_1, 28>();
    var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(global1.d, ~37295i), _wgslsmith_add_vec2_i32(-(vec2<i32>(var_0.x, var_0.x) << (vec2<u32>(59222u, u_input.b.x) % vec2<u32>(32u))), abs(select(vec2<i32>(2147483647i, global1.d), vec2<i32>(var_0.x, var_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)]))))), vec2<i32>(1i, max(~(~5344i), global1.d)), abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(var_0.x, var_0.x))), firstTrailingBit(vec2<i32>(global1.d, global1.d)))));
    return -255f;
}

fn func_2() -> bool {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.e.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.e.x)) + _wgslsmith_f_op_f32(-global1.e.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(~1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.b)), _wgslsmith_div_f32(-752f, -1156f))), global1.c), countOneBits(-32506i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, global1.e.x, 800f, global1.b) + _wgslsmith_f_op_vec4_f32(global1.e + global1.e)))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_0.d, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(-7348i, global1.d, -24086i), vec3<i32>(1427i, 8141i, global1.d) | vec3<i32>(-17117i, global1.d, 0i))), global1.d, global1.d | -4153i), abs(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d, 25325i, global1.d), -vec3<i32>(-20865i, 0i, var_0.d)))));
    return true;
}

fn func_1() -> f32 {
    let var_0 = all(vec4<bool>(!(!global0[_wgslsmith_index_u32(47655u, 4u)]) || !all(vec3<bool>(true, false, true)), func_2(), global0[_wgslsmith_index_u32(~firstTrailingBit(min(u_input.a, 0u)), 4u)], true));
    global3 = array<vec4<u32>, 16>();
    global2 = array<Struct_1, 28>();
    let var_1 = -(vec4<i32>(global1.d, 1i, ~_wgslsmith_mod_i32(global1.d, 0i), global1.d) >> (global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(74186u, u_input.a, u_input.b.x)), u_input.b.x), 16u)] % vec4<u32>(32u)));
    var var_2 = Struct_1(global1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - -725f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(global1.a + global1.e.x))))), false)), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.c.x))))), select(-49837i, ~var_1.x, true), vec4<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.e.x, -1161f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f - -978f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + -2315f))), -358f));
    return _wgslsmith_f_op_f32(-var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    global0 = array<bool, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_1()), global1.a, vec2<f32>(-995f, 658f), _wgslsmith_div_i32(-2147483647i, global1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-592f, global1.b, global1.e.x, global1.b) - vec4<f32>(global1.c.x, 1747f, 119f, global1.a)), global1.e) * global1.e)));
    var var_1 = vec4<i32>(select(var_0.d, 25451i, true || all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]))), var_0.d << (u_input.a % 32u), abs(0i), var_0.d);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -229f)), global1.e.x, global1.e.wz, 15284i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.a, _wgslsmith_f_op_f32(min(var_0.b, 333f)), _wgslsmith_f_op_f32(func_3(1u))) + var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1432f, global1.b, -1000f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits((vec3<i32>(-1i) * -var_1.xxy) >> (u_input.b % vec3<u32>(32u))), abs(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_2.d, global1.d, var_0.d, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(func_1()), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(-global1.a)));
}

