struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(49654u, Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(0u, 46097u, 31129u), 424f, Struct_2(Struct_1(vec4<u32>(27468u, 41058u, 69500u, 13591u)), Struct_1(vec4<u32>(72045u, 0u, 19974u, 32972u)), false, vec2<u32>(34618u, 15355u), Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u))))), Struct_5(4294967295u, Struct_3(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 1u, 0u), -520f, Struct_2(Struct_1(vec4<u32>(4294967295u, 69420u, 8894u, 4294967295u)), Struct_1(vec4<u32>(56208u, 4056u, 39826u, 46909u)), true, vec2<u32>(37203u, 49765u), Struct_1(vec4<u32>(0u, 0u, 13852u, 23545u))))), Struct_5(8125u, Struct_3(vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 34692u, 4294967295u), -244f, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 24832u, 45442u)), Struct_1(vec4<u32>(1u, 0u, 0u, 22344u)), true, vec2<u32>(6681u, 0u), Struct_1(vec4<u32>(0u, 4479u, 4294967295u, 69130u))))));

var<private> global1: vec2<f32> = vec2<f32>(-748f, -1594f);

var<private> global2: vec2<bool>;

var<private> global3: array<u32, 23>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32) -> vec2<u32> {
    var var_0 = u_input.c.yz >> (vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1.d.a.a, vec4<u32>(18854u, 27091u, u_input.a.x, 51605u)), _wgslsmith_sub_u32(27811u, 5615u)), 3061u) % vec2<u32>(32u));
    let var_1 = Struct_2(Struct_1(vec4<u32>(~firstTrailingBit(4294967295u), 4294967295u, 1u, arg_1.b.x)), Struct_1(~(~vec4<u32>(30404u, global3[_wgslsmith_index_u32(31579u, 23u)], 4294967295u, arg_1.d.a.a.x))), true || arg_1.d.c, ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 26093u), vec2<u32>(49657u, arg_1.d.a.a.x))), Struct_1(min(select(arg_1.d.b.a, arg_1.d.e.a, global2.x), select(vec4<u32>(60904u, 16599u, global3[_wgslsmith_index_u32(1u, 23u)], u_input.d.x), vec4<u32>(24398u, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.b.x, 23u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)]), vec4<bool>(global2.x, global2.x, false, true))) | vec4<u32>(15767u, ~arg_1.d.b.a.x, 1u, arg_1.b.x)));
    var var_2 = Struct_3(vec4<bool>(global2.x, !(_wgslsmith_clamp_u32(9282u, var_1.d.x, 0u) <= global3[_wgslsmith_index_u32(abs(u_input.a.x), 23u)]), arg_1.a.x, global2.x), vec3<u32>(~22904u, ~global3[_wgslsmith_index_u32(abs(var_1.e.a.x), 23u)] & abs(~46670u), abs(~_wgslsmith_clamp_u32(0u, 0u, arg_1.b.x))), -1963f, var_1);
    global3 = array<u32, 23>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)));
    return ~abs(vec2<u32>(var_2.b.x, 54708u));
}

fn func_2() -> Struct_1 {
    let var_0 = global2.x;
    var var_1 = global2.x;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.e, 23u)]) | vec2<u32>(u_input.e, 4294967295u))), ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(894f, -768f)), Struct_3(vec4<bool>(global2.x, global2.x, global2.x, global2.x), u_input.a, global1.x, Struct_2(Struct_1(vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.d.x, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], 40613u)), Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(u_input.e, 23u)], u_input.e, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 23u)])), false, u_input.a.zx, Struct_1(vec4<u32>(25532u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7245u, 23u)], 23u)], 0u, u_input.e)))), 4975i)), _wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, 1u) ^ ~u_input.b, u_input.b), u_input.a.x, u_input.b);
    let var_3 = -_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_sub_i32(-80131i, ~u_input.c.x), -u_input.c.x) & (~_wgslsmith_mod_i32(firstLeadingBit(-24690i), 4249i & u_input.c.x) << (func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -342f), vec2<f32>(535f, 227f))))), Struct_3(select(vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(false, false, true, global2.x)), abs(vec3<u32>(28422u, global3[_wgslsmith_index_u32(var_2.x, 23u)], 56657u)), _wgslsmith_f_op_f32(303f * -390f), Struct_2(Struct_1(vec4<u32>(0u, u_input.a.x, var_2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.x, 23u)], 23u)])), Struct_1(vec4<u32>(85416u, 28005u, 1u, u_input.d.x)), global2.x, vec2<u32>(var_2.x, 1u), Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], global3[_wgslsmith_index_u32(var_2.x, 23u)], u_input.e, var_2.x)))), _wgslsmith_add_i32(1i, u_input.c.x >> (4294967295u % 32u))).x % 32u));
    var_1 = any(!vec3<bool>(global2.x, true, true));
    return Struct_1(vec4<u32>(15809u, ~4294967295u, ~firstTrailingBit(_wgslsmith_clamp_u32(var_2.x, 1u, u_input.b)), abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_2.x, u_input.a.x, 0u)), vec4<u32>(1u, u_input.e, 0u, u_input.b)))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<f32> {
    global2 = select(vec2<bool>(all(!vec3<bool>(true, global2.x, false)) && (195f < global1.x), all(!select(vec3<bool>(false, arg_0, false), vec3<bool>(global2.x, true, arg_2.c), arg_2.c))), !(!select(vec2<bool>(false, arg_0), select(vec2<bool>(false, true), vec2<bool>(global2.x, arg_0), false), !vec2<bool>(arg_2.c, arg_2.c))), select(!select(select(vec2<bool>(false, arg_0), vec2<bool>(true, global2.x), global2.x), !vec2<bool>(arg_2.c, global2.x), select(vec2<bool>(false, true), vec2<bool>(arg_0, false), false)), vec2<bool>(!global2.x && !arg_2.c, ~u_input.e != arg_2.d.x), vec2<bool>(true, false)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1584f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2144f * 1082f))) * global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2196f)), arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-281f, -1000f)) * _wgslsmith_f_op_f32(floor(-400f)))), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x));
    global1 = _wgslsmith_f_op_vec2_f32(min(var_0.zz, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + arg_1.x))), -2230f)))));
    var var_1 = arg_2.b;
    let var_2 = Struct_3(!vec4<bool>(arg_2.c, select(global2.x, global2.x, arg_2.c) || true, true, arg_0), var_1.a.wzy, _wgslsmith_f_op_f32(-915f * -1355f), arg_2);
    return vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x))), arg_1.x, _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(221f + 343f));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = -4936i;
    global3 = array<u32, 23>();
    var var_1 = Struct_3(!select(select(vec4<bool>(false, arg_1.c, false, global2.x), !vec4<bool>(true, false, arg_1.c, true), vec4<bool>(false, false, false, global2.x)), vec4<bool>(global2.x, global2.x, true, all(vec4<bool>(true, true, true, arg_1.c))), !select(vec4<bool>(false, arg_1.c, false, false), vec4<bool>(global2.x, global2.x, arg_1.c, arg_1.c), false)), arg_1.a.a.ywz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0)))), Struct_2(Struct_1(var_1.d.a.a), arg_1.e, var_1.d.c, u_input.a.zx, func_2()))));
    var_2 = vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-global1.x)));
    return select(vec3<bool>(false, any(vec2<bool>(var_1.d.c != arg_1.c, arg_1.c)), !(!any(var_1.a))), select(vec3<bool>(u_input.c.x != 1i, false, true), select(var_1.a.yyx, var_1.a.xyy, arg_1.c), vec3<bool>(!any(vec3<bool>(true, false, arg_1.c)), false, all(vec2<bool>(global2.x, false)))), false);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 23u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, 0u), 23u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(83949u, _wgslsmith_dot_vec2_u32(~u_input.d, _wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(53885u, 23u)], u_input.a.x), u_input.d))), vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 23u)])));
    var var_1 = Struct_3(!vec4<bool>(!(arg_0.x != false), true, true, all(vec3<bool>(false, false, arg_0.x))), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -614f), Struct_2(Struct_1(~vec4<u32>(7685u, global3[_wgslsmith_index_u32(97308u, 23u)], u_input.b, 46483u)), func_2(), any(vec3<bool>(arg_0.x, arg_0.x, !global2.x)), _wgslsmith_add_vec2_u32(u_input.a.xz, _wgslsmith_mult_vec2_u32(u_input.d, u_input.a.yz)) | u_input.d, func_2()));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1032f + var_1.c), _wgslsmith_f_op_f32(round(var_1.c))) - _wgslsmith_f_op_f32(-1009f + _wgslsmith_f_op_f32(max(var_1.c, 283f)))), global1.x) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_4(arg_0.x, vec3<f32>(global1.x, global1.x, -370f), var_1.d)).x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-3068f)), var_1.c)), -793f));
    var var_2 = -(i32(-1i) * -5607i);
    let var_3 = Struct_4(var_1.d.b, _wgslsmith_div_u32(~10184u, global3[_wgslsmith_index_u32(func_2().a.x, 23u)]), reverseBits(~_wgslsmith_dot_vec2_u32(~var_1.b.yz, vec2<u32>(global3[_wgslsmith_index_u32(1398u, 23u)], u_input.a.x))), arg_2, vec4<u32>(_wgslsmith_mod_u32(36223u, ~1u), u_input.b, ~57264u, u_input.b));
    return StorageBuffer(_wgslsmith_mod_vec4_i32(select(-(~vec4<i32>(arg_1.x, 1i, var_3.d, u_input.c.x)), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, 0i, -2147483647i, arg_2)), select(vec4<i32>(-2147483647i, arg_1.x, arg_2, arg_2), vec4<i32>(var_3.d, u_input.c.x, 0i, u_input.c.x), false), -vec4<i32>(2147483647i, 1i, 0i, 99984i)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -989f, 1277f) * vec3<f32>(-1190f, global1.x, var_1.c)), var_1.d).x), vec4<i32>(arg_2, u_input.c.x, arg_2, _wgslsmith_mod_i32(var_3.d, 1i))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 78122u, ~0u, firstLeadingBit(u_input.b)), abs(~var_3.a.a)), vec3<i32>(59752i ^ arg_2, arg_2, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(select(select(func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, global1.x))), Struct_2(Struct_1(vec4<u32>(6420u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], u_input.e, 0u)), Struct_1(vec4<u32>(24705u, 17378u, 31373u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(875u, 23u)], 23u)])), global2.x, u_input.a.yy, Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6544u, 23u)], 23u)], 23u)], 4294967295u, 4294967295u, 32096u)))), !vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(global2.x, true, global2.x)), !func_1(vec3<f32>(-1638f, 392f, -811f), Struct_2(Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 23u)], 1u, 42887u, 4294967295u)), Struct_1(vec4<u32>(8751u, 72298u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 6191u)), global2.x, u_input.d, Struct_1(vec4<u32>(15759u, 4437u, 4294967295u, 20107u)))), true), abs(min(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(5393i, 11708i, u_input.c.x) & u_input.c), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), ~1i);
}

