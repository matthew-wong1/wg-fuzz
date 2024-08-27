struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(586f, 489f, 135f, 1595f), vec4<f32>(-1129f, -1278f, -1447f, 240f), vec4<f32>(-953f, -140f, 387f, -516f), vec4<f32>(1276f, 1066f, 110f, 727f), vec4<f32>(-220f, -1000f, -2760f, -258f), vec4<f32>(-1446f, -1000f, 1504f, -842f), vec4<f32>(-1496f, 2775f, -276f, -566f), vec4<f32>(1493f, -1247f, 1610f, 339f), vec4<f32>(-1000f, 837f, 1536f, -305f), vec4<f32>(-1093f, 412f, -521f, -210f), vec4<f32>(-186f, -762f, 1168f, 236f), vec4<f32>(-229f, 1091f, 760f, -1624f), vec4<f32>(-238f, -140f, 1379f, 184f), vec4<f32>(-1182f, -685f, 1000f, -1964f), vec4<f32>(-104f, -706f, 144f, 170f), vec4<f32>(978f, 555f, -2542f, 236f), vec4<f32>(115f, -1965f, -1810f, -1000f), vec4<f32>(-179f, -212f, -478f, -1000f), vec4<f32>(330f, -319f, 719f, -212f), vec4<f32>(1270f, 2102f, 751f, 922f), vec4<f32>(-120f, -1000f, 167f, -1199f), vec4<f32>(2053f, -1392f, -1794f, 1155f), vec4<f32>(-530f, 495f, -1000f, 519f), vec4<f32>(-414f, 2382f, 560f, -292f), vec4<f32>(1000f, -1402f, 542f, 733f));

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

var<private> global4: vec3<u32> = vec3<u32>(1u, 71761u, 4294967295u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(23599u, 16268u, ~(firstLeadingBit(14220u) ^ u_input.c), global4.x), ~(_wgslsmith_mult_vec4_u32(select(vec4<u32>(6529u, 0u, 4294967295u, arg_0.x), vec4<u32>(1u, 1u, u_input.c, 1u), true), ~vec4<u32>(4294967295u, 44139u, 4294967295u, global4.x)) | select(_wgslsmith_add_vec4_u32(vec4<u32>(29671u, u_input.c, u_input.c, global4.x), vec4<u32>(arg_0.x, 1u, global4.x, 26039u)), abs(vec4<u32>(54447u, arg_0.x, 52798u, 39643u)), true)));
    global0 = any(vec3<bool>(arg_1.a.x, any(!(!arg_2)), arg_1.c.x));
    global4 = ~_wgslsmith_add_vec3_u32(~(~(arg_0 >> (arg_0 % vec3<u32>(32u)))), firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(var_0, 4294967295u), 1u, u_input.c)));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32((arg_3.wxw << (_wgslsmith_sub_vec3_u32(arg_0, arg_0) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_clamp_i32(-18324i, -34648i, -34285i), 29050i, abs(arg_3.x)), vec3<i32>(65846i, _wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(u_input.b, u_input.a)), _wgslsmith_sub_i32(~u_input.b, 58742i & arg_3.x))), ~(-29i));
    var var_2 = ~_wgslsmith_dot_vec3_i32(arg_3.zzy, ~arg_3.wxz);
    return abs(arg_3.yx);
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    global1 = array<vec3<f32>, 17>();
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~(-func_3(vec3<u32>(global4.x, global4.x, 28993u), Struct_1(vec3<bool>(arg_0.x, false, global3.x), vec4<bool>(global3.x, arg_0.x, true, global3.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), vec4<bool>(global3.x, false, arg_0.x, true), vec4<i32>(53272i, -1i, u_input.b, u_input.a))), max(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, u_input.a)), abs(abs(vec2<i32>(u_input.a, u_input.b))))), vec2<i32>(u_input.b, abs(-2147483647i)));
    global0 = arg_0.x;
    let var_1 = all(global3.xz);
    let var_2 = Struct_1(select(!vec3<bool>(any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, false, false)), false), vec3<bool>(var_1, true, global3.x | any(vec2<bool>(global3.x, true))), select(vec3<bool>(true, var_1, true), vec3<bool>(false, true, true), !global3.x)), select(select(!select(vec4<bool>(false, true, var_1, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, global3.x), vec4<bool>(true, false, true, true)), select(!vec4<bool>(global3.x, true, var_1, true), !vec4<bool>(false, arg_0.x, arg_0.x, var_1), vec4<bool>(false, false, var_1, false)), select(!vec4<bool>(true, var_1, false, false), vec4<bool>(var_1, var_1, false, false), false)), select(select(!vec4<bool>(true, arg_0.x, global3.x, true), vec4<bool>(var_1, var_1, true, arg_0.x), true), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(true, !arg_0.x, arg_0.x & true, true)), vec4<bool>(false, !(!global3.x), var_1 || var_1, !(!arg_0.x))), !select(vec4<bool>(!var_1, global3.x, global4.x < u_input.c, arg_0.x || arg_0.x), vec4<bool>(global3.x | true, any(vec3<bool>(true, global3.x, false)), true, global3.x), select(!vec4<bool>(true, false, false, arg_0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.x, global3.x, false, false), var_1), !vec4<bool>(arg_0.x, var_1, arg_0.x, false))));
    return vec4<bool>(arg_0.x, true, global4.x < countOneBits(_wgslsmith_sub_u32(4294967295u, 4294967295u) >> (abs(global4.x) % 32u)), all(select(select(vec2<bool>(var_1, true), vec2<bool>(false, var_2.a.x), select(var_2.a.xz, vec2<bool>(true, false), false)), select(select(vec2<bool>(true, global3.x), var_2.b.xz, global3.yx), global3.zx, true), _wgslsmith_div_u32(global4.x, 84432u) != 30153u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(0i, abs(~31372i), firstTrailingBit(_wgslsmith_div_i32(46769i, u_input.a)), u_input.a)), firstTrailingBit(vec4<i32>(0i, 0i, _wgslsmith_sub_i32(select(8310i, -1i, false), u_input.b), firstLeadingBit(-1i) ^ _wgslsmith_add_i32(u_input.a, u_input.b))));
    global2 = array<vec4<f32>, 25>();
    var var_1 = arg_0;
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_clamp_u32(~global4.x, u_input.c, 5551u));
    var var_1 = Struct_1(vec3<bool>(!all(select(vec2<bool>(arg_1.c.x, global3.x), vec2<bool>(false, false), true)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 1i, arg_3.x), ~vec3<i32>(-4343i, -1i, u_input.a)) == min(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a << (0u % 32u)), !(!arg_1.a.x)), vec4<bool>(global3.x, all(!(!global3.xx)), _wgslsmith_f_op_f32(step(1046f, arg_2.x)) <= _wgslsmith_f_op_f32(-arg_2.x), true), select(!arg_1.b, !arg_1.b, all(global3.yy)));
    global3 = !var_1.c.zxz;
    var var_2 = arg_2.x;
    var var_3 = func_4(Struct_1(arg_1.c.wxw, arg_1.b, !func_2(!arg_1.a.zx)), !select(arg_1.a.yz, vec2<bool>(true, global3.x && false), _wgslsmith_f_op_f32(-arg_2.x) > _wgslsmith_f_op_f32(min(-3002f, 521f))), Struct_1(!var_1.c.xxx, !arg_1.b, var_1.c));
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = ~select(~(~select(vec4<u32>(19810u, u_input.c, arg_0, 0u), vec4<u32>(global4.x, 28277u, global4.x, global4.x), vec4<bool>(false, global3.x, arg_2.a.x, false))), countOneBits(~(~vec4<u32>(global4.x, 1u, 21543u, u_input.c))), true);
    global2 = array<vec4<f32>, 25>();
    let var_1 = vec4<f32>(613f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)), _wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), -135f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-573f, -728f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1363f)) - 1060f), arg_2.a.x)), -308f, !select(global3.x, arg_1.b.x || false, !arg_1.c.x))));
    global4 = vec3<u32>(_wgslsmith_mult_u32(global4.x, _wgslsmith_add_u32(arg_0, 0u)), _wgslsmith_add_u32(var_0.x | u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_0, u_input.c), reverseBits(vec3<u32>(global4.x, 8205u, 50250u))), var_0.xzy)), arg_0);
    global4 = select(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 1u, 61464u), vec3<u32>(0u, 0u, 51801u)) & global4.x, 4294967295u, 1u), var_0.zyx, func_1(_wgslsmith_dot_vec3_u32(min(var_0.xxx << (var_0.xyz % vec3<u32>(32u)), abs(vec3<u32>(u_input.c, u_input.c, arg_0))), var_0.yyz ^ _wgslsmith_div_vec3_u32(var_0.yzy, var_0.yyw)), arg_1, vec4<f32>(-1000f, -1004f, _wgslsmith_f_op_f32(sign(-533f)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(-837f)))), vec2<i32>(_wgslsmith_mult_i32(u_input.b, ~689i), _wgslsmith_sub_i32(-35732i | u_input.b, u_input.b))).a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!(!vec4<bool>(false, true, global3.x, global3.x)))), !vec4<bool>(global3.x, global3.x, global3.x, func_5(20446u, func_1(global4.x, Struct_1(vec3<bool>(global3.x, true, global3.x), vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(true, false, false, global3.x)), global2[_wgslsmith_index_u32(0u, 25u)], vec2<i32>(14909i, u_input.b)), Struct_1(vec3<bool>(true, global3.x, false), vec4<bool>(false, false, false, true), vec4<bool>(true, global3.x, global3.x, global3.x)), func_1(u_input.c, Struct_1(vec3<bool>(true, global3.x, false), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), global2[_wgslsmith_index_u32(u_input.c, 25u)], vec2<i32>(81680i, 2147483647i)))), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, u_input.a), ~u_input.b), abs(-u_input.a)) == ~(-(~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global4.x);
}

