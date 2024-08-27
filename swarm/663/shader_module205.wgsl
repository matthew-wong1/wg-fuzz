struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

var<private> global1: vec4<u32>;

var<private> global2: vec2<f32> = vec2<f32>(-1912f, -1585f);

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(-1902f, -585f, -784f, 785f), vec3<f32>(175f, 1202f, -130f)), Struct_1(vec4<f32>(1000f, -896f, 709f, 1000f), vec3<f32>(1568f, -207f, -1116f)), Struct_1(vec4<f32>(-496f, 1378f, 1199f, 370f), vec3<f32>(847f, 376f, -2126f)), Struct_1(vec4<f32>(356f, 1049f, -468f, 411f), vec3<f32>(-710f, -510f, -777f)), Struct_1(vec4<f32>(1000f, -1009f, 443f, 1511f), vec3<f32>(-1083f, -332f, -540f)), Struct_1(vec4<f32>(1129f, -733f, -369f, -1000f), vec3<f32>(2114f, -440f, -687f)), Struct_1(vec4<f32>(568f, -848f, 556f, 324f), vec3<f32>(210f, -1000f, 768f)), Struct_1(vec4<f32>(134f, -133f, 409f, -946f), vec3<f32>(-1917f, -811f, 1209f)), Struct_1(vec4<f32>(-967f, 1176f, 443f, -348f), vec3<f32>(2740f, 1368f, 402f)), Struct_1(vec4<f32>(1286f, 1446f, -1000f, -335f), vec3<f32>(-590f, 717f, -1179f)), Struct_1(vec4<f32>(-1239f, -894f, 148f, -1000f), vec3<f32>(850f, 1148f, -1527f)), Struct_1(vec4<f32>(720f, 1000f, 268f, -483f), vec3<f32>(-1000f, 464f, -2249f)), Struct_1(vec4<f32>(-352f, 181f, 331f, -825f), vec3<f32>(1454f, -690f, -259f)), Struct_1(vec4<f32>(1507f, -1050f, -710f, 699f), vec3<f32>(801f, -684f, 578f)), Struct_1(vec4<f32>(641f, -158f, 1109f, -1000f), vec3<f32>(-1023f, 201f, -1000f)), Struct_1(vec4<f32>(138f, -1900f, -1451f, -225f), vec3<f32>(2581f, 595f, -1007f)), Struct_1(vec4<f32>(156f, 258f, 848f, -619f), vec3<f32>(965f, 1932f, 586f)), Struct_1(vec4<f32>(607f, 1288f, 2639f, -582f), vec3<f32>(-1246f, 103f, -978f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    let var_0 = -293f;
    return global3[_wgslsmith_index_u32(global1.x, 18u)];
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-632f, global2.x, -279f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -645f))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(598f, global2.x), -350f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x))), any(!select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, true), false))))));
    let var_1 = func_2();
    var var_2 = reverseBits(firstLeadingBit(countOneBits(vec3<u32>(_wgslsmith_clamp_u32(global1.x, 30140u, global1.x), 4294967295u, _wgslsmith_add_u32(4294967295u, global1.x)))));
    var var_3 = ~_wgslsmith_mod_i32(-10491i, ~select(u_input.a.x, 0i, false)) <= u_input.a.x;
    var var_4 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(global1.x, ~global1.x)) | ~global1.x, var_2.x);
    return !(!(!vec4<bool>(global1.x >= global1.x, arg_0.x, any(vec3<bool>(arg_0.x, true, arg_0.x)), true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = func_2();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.xy * var_0.b.zz))))));
    var var_1 = Struct_2(~(~vec3<i32>(max(-29820i, 30427i), -29522i, u_input.a.x & u_input.a.x)), global3[_wgslsmith_index_u32(~global1.x, 18u)], !func_3(!arg_0));
    var var_2 = firstTrailingBit(-(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.x, -2667i, 0i, var_1.a.x), vec4<i32>(var_1.a.x, 1i, 40098i, -726i))) << (vec4<u32>(1572u, countOneBits(7489u), 0u, ~25142u) % vec4<u32>(32u)));
    let var_3 = ~(-(~(_wgslsmith_add_vec4_i32(vec4<i32>(19926i, var_2.x, 0i, 71451i), vec4<i32>(var_1.a.x, -2147483647i, 2147483647i, var_1.a.x)) | (vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, var_2.x, var_2.x, 0i)))));
    return select(select(var_1.c, !vec4<bool>(all(arg_0.xz), false, all(var_1.c), arg_0.x), _wgslsmith_clamp_u32(firstLeadingBit(16520u), global1.x, global1.x) != ~select(29259u, global1.x, false)), !select(var_1.c, !var_1.c, var_1.c.x), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -444f) < _wgslsmith_f_op_f32(exp2(var_0.b.x)), false, any(!(!arg_0)), false));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = vec2<f32>(-743f, 467f);
    let var_1 = vec4<bool>(~global1.x <= 19086u, select(any(vec2<bool>(arg_3.x, true)), ~(~arg_1.a.x) < arg_2.x, arg_1.c.x), arg_3.x, false);
    return vec3<u32>(~(~29971u), _wgslsmith_clamp_u32(72716u, countOneBits(1u), ~(~(~536u))), _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global1.x, 11334u), vec4<u32>(20152u, 6005u, global1.x, global1.x))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~_wgslsmith_mult_u32(global1.x, global1.x), _wgslsmith_add_u32(reverseBits(0u), ~global1.x)) & global1.yw;
    var var_1 = ~func_4(!(!func_1(vec3<bool>(false, false, true), vec3<f32>(global2.x, global2.x, 531f))), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-62722i, u_input.a.x, -1i) ^ vec3<i32>(2147483647i, -13922i, u_input.a.x), vec3<i32>(-7738i, u_input.a.x, -5657i), ~vec3<i32>(u_input.a.x, u_input.a.x, -28022i)), func_2(), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)), vec4<i32>(~(-u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, -1i), u_input.a.x ^ 25551i, u_input.a.x), vec3<bool>(true, true, true));
    var var_2 = -1000f;
    var_2 = 563f;
    var_0 = var_1.xz;
    var var_3 = func_2();
    var_0 = global1.xz;
    let var_4 = vec4<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(-11772i, u_input.a.x, -13549i), select(vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true))) & -1i) < 24846i, false, true, all(vec3<bool>((-2711f != var_3.a.x) && true, any(vec2<bool>(true, false)) | any(vec2<bool>(true, false)), false)));
    var_0 = min(vec2<u32>(~8419u, global1.x), global1.yz ^ countOneBits(~vec2<u32>(1u, 1u) ^ vec2<u32>(var_1.x, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.a.x, global2.x)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-var_3.b.x))), func_2().a.x)));
}

