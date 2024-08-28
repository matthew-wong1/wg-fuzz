struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 19642u, 4294967295u, 53u), vec4<u32>(78774u, 2730u, 27805u, 32381u), vec4<u32>(1u, 0u, 162933u, 25943u), vec4<u32>(1u, 4294967295u, 23889u, 0u), vec4<u32>(4294967295u, 4294967295u, 16047u, 70660u), vec4<u32>(4294967295u, 32760u, 49315u, 1u), vec4<u32>(33323u, 4294967295u, 1u, 20771u), vec4<u32>(0u, 19250u, 0u, 21792u), vec4<u32>(44184u, 0u, 1529u, 35842u), vec4<u32>(8396u, 14143u, 1u, 27689u), vec4<u32>(9270u, 1525u, 21526u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 53118u), vec4<u32>(0u, 1u, 4294967295u, 33195u), vec4<u32>(4294967295u, 50301u, 34944u, 0u), vec4<u32>(98333u, 4294967295u, 1u, 0u), vec4<u32>(23412u, 1u, 1u, 17911u), vec4<u32>(94413u, 19774u, 66216u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 40679u, 0u), vec4<u32>(0u, 77707u, 10413u, 4294967295u), vec4<u32>(1u, 1u, 0u, 88747u), vec4<u32>(1728u, 11702u, 1874u, 45425u), vec4<u32>(1u, 24894u, 1u, 32152u), vec4<u32>(0u, 5333u, 1u, 52504u), vec4<u32>(22212u, 62542u, 4294967295u, 1u), vec4<u32>(5234u, 11059u, 1471u, 0u));

var<private> global3: array<Struct_4, 20>;

var<private> global4: Struct_4 = Struct_4(vec4<f32>(1368f, 590f, 1040f, 519f), -1207f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<bool> {
    global1 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(arg_1.x), -u_input.a, _wgslsmith_div_i32(-49272i, 34553i), 0i & arg_0.b), ~(vec4<i32>(-413i, arg_1.x, 35531i, arg_1.x) << (vec4<u32>(61449u, arg_2.a.x, arg_2.a.x, arg_0.a.x) % vec4<u32>(32u)))), min(vec4<i32>(firstTrailingBit(global1.x), _wgslsmith_clamp_i32(-1i, u_input.a, u_input.b), ~u_input.b, u_input.b), vec4<i32>(global1.x ^ global1.x, -21711i << (arg_0.a.x % 32u), _wgslsmith_sub_i32(u_input.b, global1.x), i32(-1i) * -1i))));
    global0 = select(!select(select(vec2<bool>(arg_2.e.x, false), select(arg_0.e, vec2<bool>(false, global0.x), arg_2.d), true || global0.x), vec2<bool>(true, true), vec2<bool>(global0.x, arg_2.a.x <= arg_0.a.x)), !vec2<bool>(all(select(vec4<bool>(arg_2.d, arg_0.c, false, arg_0.c), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(arg_0.e.x, arg_2.c, arg_0.e.x, arg_2.e.x))), !all(vec3<bool>(global0.x, global0.x, false))), !(!(any(vec3<bool>(arg_2.e.x, arg_2.e.x, true)) | false)));
    var var_0 = arg_2.a.x;
    let var_1 = ~select(max(abs(_wgslsmith_clamp_u32(87371u, arg_2.a.x, arg_2.a.x)), _wgslsmith_mod_u32(countOneBits(25476u), 13876u)), ~arg_0.a.x, global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-global4.a.zx);
    return vec4<bool>(false, all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(arg_2.c, false, arg_2.d), vec3<bool>(global0.x, true, false), vec3<bool>(arg_0.c, global0.x, global0.x)), vec3<bool>(arg_0.e.x, false, false), true), vec3<bool>(!arg_2.e.x, global0.x, !arg_0.d))), !arg_0.d, true && any(!(!vec4<bool>(true, arg_2.c, arg_0.d, false))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_1(~arg_0, -(~_wgslsmith_dot_vec2_i32(max(global1.xx, vec2<i32>(global1.x, -1i)), global1.yz)), select(global0.x, !(!(-108f == arg_2.x)), any(vec3<bool>(arg_1.x & true, func_3(Struct_1(vec3<u32>(4294967295u, 13044u, arg_0.x), 0i, global0.x, true, vec2<bool>(true, arg_1.x)), vec4<i32>(-2147483647i, u_input.b, 2147483647i, u_input.a), Struct_1(arg_0, 2147483647i, global0.x, true, arg_1.xx)).x, !global0.x))), any(arg_1) || arg_1.x, func_3(Struct_1(~(arg_0 ^ arg_0), ~max(-1i, 1i), false, true, !arg_1.zz), vec4<i32>(firstTrailingBit(~1i), countOneBits(~u_input.a), min(0i, u_input.b), _wgslsmith_div_i32(43229i, ~(-42697i))), Struct_1(vec3<u32>(4294967295u, ~1u, firstLeadingBit(arg_0.x)), global1.x, func_3(Struct_1(vec3<u32>(52835u, arg_0.x, 67195u), 0i, arg_1.x, arg_1.x, arg_1.ww), select(vec4<i32>(43344i, u_input.a, u_input.a, -18011i), vec4<i32>(global1.x, 2147483647i, u_input.b, u_input.a), global0.x), Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), -11167i, false, global0.x, arg_1.xw)).x, false, !select(vec2<bool>(global0.x, arg_1.x), vec2<bool>(false, false), arg_1.wx))).yw);
    let var_1 = Struct_1(min(arg_0, var_0.a), countOneBits(u_input.b >> (5812u % 32u)), arg_1.x, global0.x, !var_0.e);
    global0 = !select(!var_0.e, vec2<bool>(true, var_1.e.x), !select(select(vec2<bool>(false, arg_1.x), vec2<bool>(var_0.c, var_1.d), false), vec2<bool>(var_1.c, true), true));
    global0 = func_3(Struct_1(firstLeadingBit(select(vec3<u32>(0u, var_1.a.x, 1u), reverseBits(arg_0), !var_0.e.x)), -1i, true, var_1.e.x, !vec2<bool>(var_1.c, var_1.d | false)), ~(firstLeadingBit(vec4<i32>(var_0.b, var_1.b, -40237i, var_1.b)) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, 23521i, var_1.b), vec4<i32>(-15716i, 1i, -38359i, -128124i)), _wgslsmith_add_vec4_i32(vec4<i32>(-26953i, -2147483647i, -1i, 44055i), vec4<i32>(var_0.b, 13427i, var_0.b, var_0.b)))), var_0).zw;
    let var_2 = Struct_2(Struct_1(reverseBits(arg_0), _wgslsmith_sub_i32(~(-1i), reverseBits(global1.x)) >> (var_1.a.x % 32u), all(vec3<bool>(false, global4.b > -728f, var_1.d)), any(select(vec4<bool>(global0.x, var_1.e.x, true, false), vec4<bool>(true, var_1.e.x, arg_1.x, arg_1.x), any(vec4<bool>(false, var_1.d, var_1.d, global0.x)))), arg_1.zx), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, var_0.b, -1i), vec4<i32>(88710i, var_1.b, global1.x, -1i), true), vec4<i32>(-52934i, 29904i, 31224i, var_0.b)) >> ((_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], vec4<u32>(var_0.a.x, 1u, arg_0.x, var_1.a.x)) << (select(vec4<u32>(50187u, var_0.a.x, 0u, 0u), global2[_wgslsmith_index_u32(0u, 26u)], vec4<bool>(true, var_0.c, global0.x, false)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(global1.x, -9467i, 2147483647i, -countOneBits(-2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, 457f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a.xx) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global4.a.x), _wgslsmith_f_op_vec2_f32(global4.a.yw - vec2<f32>(global4.a.x, 567f)))))));
    return select(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(17908u, _wgslsmith_clamp_u32(var_0.a.x, var_1.a.x, 1u)), 1u), 7089u, !arg_1.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32) -> bool {
    var var_0 = firstTrailingBit(arg_0.xy);
    var var_1 = reverseBits(abs(~select(max(vec3<u32>(25521u, 0u, arg_1), vec3<u32>(arg_1, 66588u, 45490u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_1, 0u), vec3<u32>(1u, arg_1, 4294967295u)), true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b * global4.b), _wgslsmith_f_op_f32(select(global4.a.x, _wgslsmith_f_op_f32(-global4.a.x), all(vec4<bool>(false, global0.x, false, global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1052f))))) * 1064f);
    global1 = min(arg_0 | ~_wgslsmith_add_vec4_i32(arg_0, arg_0), _wgslsmith_add_vec4_i32(vec4<i32>(-(~u_input.a), u_input.a, ~(-60400i), 2147483647i), vec4<i32>(min(-u_input.a, -u_input.a), -(var_0.x >> (var_1.x % 32u)), var_0.x, 1i)));
    let var_3 = !select(func_3(Struct_1(~vec3<u32>(30098u, arg_1, 34675u), min(var_0.x, -24292i), true, true, vec2<bool>(true, global0.x)), vec4<i32>(countOneBits(-10837i), ~29981i, 18138i | global1.x, 2147483647i), Struct_1(~vec3<u32>(arg_1, 3118u, var_1.x), u_input.a, true, true, func_3(Struct_1(vec3<u32>(arg_1, 7489u, var_1.x), global1.x, global0.x, global0.x, vec2<bool>(false, true)), vec4<i32>(u_input.b, arg_0.x, 24373i, u_input.a), Struct_1(vec3<u32>(52641u, 1u, 4294967295u), arg_0.x, false, global0.x, vec2<bool>(global0.x, true))).zz)).zw, select(vec2<bool>(true, true), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), func_3(Struct_1(vec3<u32>(var_1.x, arg_1, arg_1), 2147483647i, false, global0.x, vec2<bool>(true, global0.x)), vec4<i32>(arg_0.x, global1.x, 66031i, u_input.a), Struct_1(vec3<u32>(4294967295u, 4723u, var_1.x), u_input.b, global0.x, global0.x, vec2<bool>(global0.x, global0.x))).ww), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.a.x))) < _wgslsmith_f_op_f32(global4.b * global4.b));
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(~arg_2.a.a.x, arg_2.a.a.x), 1u, abs(~arg_2.a.a.x >> (~arg_2.a.a.x % 32u))), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, arg_2.a.b), _wgslsmith_add_i32(-1i, -2147483647i)) | _wgslsmith_add_i32(~arg_2.a.b, max(_wgslsmith_mult_i32(arg_1.x, arg_2.a.b), arg_1.x)), func_5(arg_2.b, func_4(arg_2.a.a, func_3(Struct_1(vec3<u32>(arg_2.a.a.x, 14371u, arg_2.a.a.x), global1.x, true, true, arg_2.a.e), vec4<i32>(arg_2.a.b, -28021i, u_input.a, global1.x), Struct_1(arg_2.a.a, 2147483647i, global0.x, false, arg_2.a.e)), arg_2.c) >> ((_wgslsmith_mult_u32(33513u, 55657u) & arg_2.a.a.x) % 32u)), global0.x, vec2<bool>(global0.x, !(global0.x & !arg_2.a.e.x)));
    global4 = Struct_4(vec4<f32>(global4.a.x, -204f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) - arg_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1715f))), _wgslsmith_f_op_f32(select(222f, arg_2.c.x, arg_2.a.e.x)));
    var var_1 = true;
    global4 = global3[_wgslsmith_index_u32(arg_2.a.a.x, 20u)];
    global2 = array<vec4<u32>, 26>();
    return Struct_2(Struct_1(arg_2.a.a, _wgslsmith_clamp_i32(arg_1.x, i32(-1i) * -1i, arg_2.b.x), false, select(!(!var_0.e.x), true, arg_2.a.c), vec2<bool>(global0.x, false)), vec4<i32>(~47744i, 373i, reverseBits(2147483647i), 1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global4.b - -1000f), _wgslsmith_f_op_f32(-arg_2.c.x)))))));
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b, global4.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + global4.a.x))), true)));
    return arg_1.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> vec2<bool> {
    let var_0 = func_6(all(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2.x, false, true, global0.x), vec4<bool>(arg_2.x, true, false, false)), select(vec4<bool>(false, arg_1.a.c, global0.x, false), vec4<bool>(global0.x, arg_1.a.d, true, global0.x), arg_2.x), all(vec4<bool>(arg_2.x, false, global0.x, false))), vec4<bool>(true, !arg_1.a.d, true, global0.x), select(vec4<bool>(true, arg_2.x, true, global0.x), select(vec4<bool>(true, arg_1.a.c, false, true), vec4<bool>(true, false, false, global0.x), vec4<bool>(arg_2.x, arg_2.x, global0.x, false)), true))), func_2(Struct_3(352f), arg_1.b, arg_1));
    var var_1 = arg_1.a.e;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-global4.a.x));
    global2 = array<vec4<u32>, 26>();
    var var_3 = abs(global2[_wgslsmith_index_u32(~34945u, 26u)]);
    return func_2(var_2, abs(abs(_wgslsmith_div_vec4_i32(arg_1.b, arg_1.b))) >> (global2[_wgslsmith_index_u32(22339u, 26u)] % vec4<u32>(32u)), arg_1).a.e;
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(0u, 20u)];
    var var_1 = select(!vec3<bool>(arg_2.x, all(vec4<bool>(global0.x, arg_2.x, true, false)), true), !(!vec3<bool>(all(vec2<bool>(global0.x, arg_2.x)), true, any(arg_2))), !(!(1i <= _wgslsmith_mod_i32(1i, arg_0))));
    global4 = Struct_4(var_0.a, _wgslsmith_f_op_f32(-global4.b));
    let var_2 = global3[_wgslsmith_index_u32(1u, 20u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_3)))));
    return func_2(Struct_3(364f), _wgslsmith_clamp_vec4_i32(-select(-vec4<i32>(-17394i, global1.x, 1i, arg_0), vec4<i32>(u_input.a, -5382i, global1.x, 15981i), !var_1.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(26002i, 1i, global1.x, global1.x), vec4<i32>(0i, u_input.a, u_input.b, 0i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(27080i, 16636i, global1.x, 0i), ~vec4<i32>(4968i, -1i, -2147483647i, 24165i)), -vec4<i32>(firstTrailingBit(4812i), global1.x, _wgslsmith_div_i32(u_input.a, -1i), 12963i)), func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) + -1005f)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 2147483647i, arg_0, -19416i), -vec4<i32>(global1.x, 36287i, global1.x, u_input.a))), func_2(Struct_3(-662f), ~(~vec4<i32>(global1.x, global1.x, u_input.b, u_input.b)), Struct_2(Struct_1(vec3<u32>(arg_1, 1u, 46585u), global1.x, false, false, arg_2), vec4<i32>(u_input.b, global1.x, u_input.a, 25005i), _wgslsmith_f_op_vec2_f32(max(global4.a.xx, var_3.xw))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(u_input.b >> (1u % 32u), ~4294967295u, !select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(global0.x, true)), select(!vec2<bool>(true, global0.x), vec2<bool>(true, true), true & global0.x), select(vec2<bool>(global0.x, global0.x), func_1(vec3<i32>(-2147483647i, u_input.a, 2147483647i), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 30990i, global0.x, false, vec2<bool>(false, global0.x)), vec4<i32>(23420i, -1i, u_input.b, 27585i), vec2<f32>(357f, -466f)), vec3<bool>(false, global0.x, global0.x), 62012u), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.b)) * _wgslsmith_f_op_f32(-348f * -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global4.a.x)))), global4.a.x, _wgslsmith_f_op_f32(-global4.b)));
    let var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-484f * var_0.c.x), 479f)), !var_0.a.d))), reverseBits(var_0.b), Struct_2(var_0.a, vec4<i32>(2147483647i, global1.x, -28684i, -48835i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-426f, global4.b))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global4.b)), _wgslsmith_f_op_f32(min(-1570f, -196f))))))).a;
    let var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(-var_0.c.x)), ~var_0.b, Struct_2(Struct_1(firstLeadingBit(vec3<u32>(0u, 4294967295u, var_0.a.a.x)), max(global1.x ^ var_1.b, -global1.x), var_0.a.d, _wgslsmith_mult_i32(global1.x, 2147483647i) >= -2147483647i, vec2<bool>(func_3(var_0.a, var_0.b, var_0.a).x, var_0.a.c)), -vec4<i32>(global1.x, global1.x, -47691i, global1.x) | vec4<i32>(var_0.b.x, global1.x, -2147483647i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(914f, 902f) * global4.a.xw)));
    var var_3 = vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.a, var_1.a), ~var_2.a.a.x, _wgslsmith_mod_u32(var_1.a.x, var_0.a.a.x)), func_2(Struct_3(global4.a.x), ~var_0.b, Struct_2(Struct_1(vec3<u32>(var_2.a.a.x, var_2.a.a.x, 19623u), global1.x, true, false, vec2<bool>(global0.x, global0.x)), vec4<i32>(-1i, -14375i, global1.x, 38018i), vec2<f32>(global4.b, var_2.c.x))).a.a)), _wgslsmith_dot_vec3_u32(var_0.a.a, vec3<u32>(~_wgslsmith_mult_u32(var_0.a.a.x, 4294967295u), 1u, var_2.a.a.x)));
    global2 = array<vec4<u32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xx);
}

