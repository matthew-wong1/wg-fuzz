struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-840f, -842f, -430f), vec3<f32>(-270f, -1223f, -1134f), vec3<f32>(-641f, 1000f, 124f), vec3<f32>(-1000f, -238f, 1793f), vec3<f32>(158f, 304f, 1000f), vec3<f32>(-2279f, 649f, -988f), vec3<f32>(950f, 1442f, 803f), vec3<f32>(-3108f, 291f, -2675f), vec3<f32>(-248f, -1142f, 1000f), vec3<f32>(-660f, -850f, -592f), vec3<f32>(-1000f, -1202f, -758f), vec3<f32>(167f, 691f, 2063f), vec3<f32>(1000f, 2780f, -614f), vec3<f32>(1154f, 342f, 1299f), vec3<f32>(-1661f, -457f, 768f), vec3<f32>(-494f, -1943f, -1738f));

var<private> global3: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(2315f, 391f, -608f, -1092f), vec4<f32>(-905f, 1000f, -1000f, -1000f), vec4<f32>(128f, -582f, 496f, -951f), vec4<f32>(1917f, -889f, -287f, 1175f), vec4<f32>(-178f, -1269f, -383f, 742f), vec4<f32>(-421f, -757f, -330f, -931f), vec4<f32>(-662f, -424f, -995f, -1108f), vec4<f32>(-996f, 763f, -787f, 287f), vec4<f32>(-700f, -330f, -1297f, 564f), vec4<f32>(876f, 340f, -872f, 374f), vec4<f32>(359f, -1000f, -795f, -571f), vec4<f32>(1031f, 1000f, 2562f, -1553f), vec4<f32>(-760f, -1785f, -788f, -790f), vec4<f32>(-1193f, 1000f, 720f, 2178f), vec4<f32>(1724f, -183f, 1000f, 814f), vec4<f32>(752f, -473f, 250f, 2289f), vec4<f32>(-590f, 283f, -495f, 1161f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> u32 {
    global0 = arg_1.x;
    var var_0 = any(arg_1.yy) | (reverseBits(1u) <= _wgslsmith_mult_u32(u_input.a.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 17024u), u_input.a))));
    var_0 = any(select(!arg_2.wz, vec2<bool>(true || arg_1.x, all(arg_1.wxy)), arg_2.x));
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(~(~(-2147483647i)), u_input.b, 1i), u_input.b, min(-max(reverseBits(1i), 1i), -1i), select(i32(-1i) * -arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_0, -53370i, 1i | u_input.b, -arg_0), -select(vec4<i32>(1i, u_input.b, 2147483647i, arg_0), vec4<i32>(arg_0, u_input.b, arg_0, -2147483647i), vec4<bool>(arg_2.x, true, false, arg_2.x))), all(arg_1.zz) && (select(false, false, true) & any(vec2<bool>(arg_2.x, false)))));
    let var_2 = _wgslsmith_f_op_f32(554f - 297f);
    return _wgslsmith_add_u32(55472u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(21516u, u_input.a.x, u_input.a.x)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(3514u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 7061u)), min(vec3<u32>(0u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 52453u))))) ^ ~_wgslsmith_div_u32(1u, 18883u);
}

fn func_2() -> vec3<i32> {
    global2 = array<vec3<f32>, 16>();
    global3 = array<vec4<f32>, 17>();
    global1 = array<Struct_1, 29>();
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, select(4294967295u, ~30992u, true)), vec3<u32>(func_3(u_input.b, vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)) ^ u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~52957u), u_input.a.x)), firstLeadingBit(abs(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -428f)))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-130f * _wgslsmith_f_op_f32(852f + 726f)))), u_input.b | 34052i, vec2<u32>(4294967295u, 13238u));
    var var_1 = select(vec4<i32>(-13705i, _wgslsmith_div_i32(abs(-2147483647i | u_input.b), i32(-1i) * -1i), abs(u_input.b), ~_wgslsmith_clamp_i32(1273i, -var_0.d, _wgslsmith_div_i32(-1i, u_input.b))), abs(_wgslsmith_div_vec4_i32(~(-vec4<i32>(-23537i, 18340i, 0i, -24925i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-18440i, var_0.d, u_input.b, -1i), vec4<i32>(0i, u_input.b, u_input.b, var_0.d), vec4<i32>(-1i, -2147483647i, var_0.d, var_0.d))))), vec4<bool>(!var_0.c, var_0.c, true, false));
    return select(var_1.yyy, ~_wgslsmith_sub_vec3_i32(-select(var_1.xwx, vec3<i32>(var_1.x, -2147483647i, 1i), vec3<bool>(var_0.c, var_0.c, false)), vec3<i32>(var_0.d, 27259i, u_input.b)), any(!(!select(vec4<bool>(var_0.c, var_0.c, false, true), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(true, true, var_0.c, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_2.e.x >> (101208u % 32u), 29u)];
    global2 = array<vec3<f32>, 16>();
    var_0 = Struct_1(var_0.a, firstTrailingBit(4294967295u), arg_0.c, var_0.d, select(var_0.e, arg_0.a.xy, select(vec2<bool>(all(vec4<bool>(false, false, false, arg_0.c)), any(vec3<bool>(var_0.c, arg_2.c, false))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_0.c, var_0.c)), vec2<bool>(true, arg_2.c))));
    var var_1 = !arg_2.c;
    var_0 = Struct_1(vec3<u32>(min(~103631u, var_0.e.x), ~7429u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, var_0.b, 51102u, 58225u), vec4<u32>(u_input.a.x, 33737u, u_input.a.x, 24568u), vec4<u32>(10958u, arg_0.e.x, 1u, var_0.e.x)), ~vec4<u32>(22219u, var_0.a.x, var_0.b, 4294967295u)), vec4<u32>(488u, ~4294967295u, arg_2.a.x | 79752u, 1u))), _wgslsmith_dot_vec2_u32(var_0.a.xz, vec2<u32>(~(~34719u), var_0.b)), all(select(vec3<bool>(any(vec4<bool>(arg_2.c, true, true, var_0.c)), true, all(vec2<bool>(false, true))), vec3<bool>(var_0.c, all(vec2<bool>(var_0.c, true)), select(var_0.c, false, var_0.c)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), arg_2.c)))), ~((51581i ^ _wgslsmith_add_i32(var_0.d, arg_2.d)) << (firstTrailingBit(arg_2.b) % 32u)), _wgslsmith_clamp_vec2_u32(var_0.e, var_0.e, ~vec2<u32>(~46266u, ~4294967295u)));
    return ~max(var_0.b, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_1(arg_0.a << (vec3<u32>(4294967295u, func_4(arg_0, func_2(), global1[_wgslsmith_index_u32(~u_input.a.x, 29u)]), 36606u) % vec3<u32>(32u)), 1256u, all(vec4<bool>(any(vec2<bool>(true, false)), true, _wgslsmith_sub_u32(1u, arg_0.a.x) < ~6748u, arg_0.c)), firstTrailingBit(abs(arg_1)), _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, firstLeadingBit(59153u)), arg_0.a.zy) << (~(~firstTrailingBit(vec2<u32>(u_input.a.x, 1u))) % vec2<u32>(32u)));
    var var_1 = 1467f;
    global1 = array<Struct_1, 29>();
    let var_2 = select(vec3<bool>(~30980u <= ~var_0.a.x, true, !any(!vec2<bool>(false, arg_0.c))), !select(select(select(vec3<bool>(true, false, var_0.c), vec3<bool>(false, var_0.c, true), true), select(vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(false, var_0.c, true), var_0.c), true), vec3<bool>(any(vec2<bool>(var_0.c, var_0.c)), !arg_0.c, true), var_0.c), true);
    global2 = array<vec3<f32>, 16>();
    return ~vec2<u32>(11054u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(0u, arg_0.a.x)), u_input.a), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, func_1(Struct_1(vec3<u32>(23637u, 4294967295u, 1u), var_1, true, u_input.b, u_input.a), 0i)), abs(var_1), var_1)), 10764u, !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)) | true, -10226i, min(abs(vec2<u32>(~7481u, u_input.a.x)), vec2<u32>(~var_1 | 71780u, _wgslsmith_clamp_u32(var_1, 1u, 24718u) | ~u_input.a.x)));
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(14545u, _wgslsmith_dot_vec2_u32(vec2<u32>(61286u, 1u), vec2<u32>(4294967295u, 27939u)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_1, 0u, 3238u), var_2.a)), vec3<u32>(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x), var_1 & _wgslsmith_add_u32(var_1, 0u), max(20037u, ~0u))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, u_input.a.x, ~u_input.a.x), var_2.a, var_2.a), vec3<u32>(_wgslsmith_add_u32(var_1, var_1), 64272u, select(62424u, var_2.b, true)) & var_2.a));
    let var_4 = -vec3<i32>(abs(firstTrailingBit(1i)), _wgslsmith_div_i32(u_input.b, countOneBits(u_input.b)), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mod_i32(u_input.b, u_input.b)), u_input.b));
    let var_5 = global1[_wgslsmith_index_u32(var_1, 29u)];
    var var_6 = global1[_wgslsmith_index_u32(u_input.a.x << (~4294967295u % 32u), 29u)];
    var_3 = vec3<u32>(133352u, ~u_input.a.x & ~_wgslsmith_sub_u32(u_input.a.x, 1u), firstTrailingBit(var_3.x));
    var var_7 = select(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 16955u, u_input.a.x, var_1), vec4<u32>(u_input.a.x, var_6.e.x, 0u, var_3.x))), select(vec4<u32>(var_3.x, var_1, abs(~var_3.x), _wgslsmith_mod_u32(36525u, ~1u)), ~reverseBits(~vec4<u32>(var_5.e.x, u_input.a.x, var_1, var_3.x)), all(!vec3<bool>(var_2.c, var_5.c, true))), !any(vec2<bool>(any(vec3<bool>(false, false, false)), u_input.b <= -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4, _wgslsmith_clamp_vec3_i32(select(abs(var_4), firstLeadingBit(vec3<i32>(u_input.b, -1i, 5006i)), select(vec3<bool>(false, false, var_5.c), vec3<bool>(true, false, true), vec3<bool>(false, var_2.c, var_5.c))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.d, -2147483647i, 1i) >> (vec3<u32>(var_5.e.x, u_input.a.x, 18050u) % vec3<u32>(32u)), -var_4), ~(-vec3<i32>(43194i, u_input.b, -12850i))), true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1838f, 387f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, 1304f)) + vec2<f32>(562f, -1000f))))));
}

