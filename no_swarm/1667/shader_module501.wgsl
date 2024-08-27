struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(40442u, 28936u, 1u, 1u), vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 8303u, 4294967295u, 26983u), vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 1u, 58477u, 63727u), vec2<bool>(false, false)), Struct_1(vec4<u32>(0u, 35103u, 4294967295u, 0u), vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 4294967295u, 54366u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 104590u, 1u, 6701u), vec2<bool>(false, true)), Struct_1(vec4<u32>(24924u, 24118u, 25952u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<u32>(36142u, 82482u, 43610u, 14181u), vec2<bool>(true, false)), Struct_1(vec4<u32>(38475u, 1u, 44035u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<u32>(48224u, 29438u, 1071u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 6083u), vec2<bool>(true, true)), Struct_1(vec4<u32>(8966u, 4294967295u, 102785u, 1u), vec2<bool>(true, false)), Struct_1(vec4<u32>(27294u, 0u, 7813u, 2327u), vec2<bool>(false, false)), Struct_1(vec4<u32>(1u, 0u, 53761u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<u32>(0u, 11886u, 29730u, 0u), vec2<bool>(false, false)));

var<private> global2: vec3<i32>;

var<private> global3: i32 = 52092i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_1 = -(~select(_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, -19375i, global2.x), vec3<i32>(global2.x, global2.x, u_input.b) << (vec3<u32>(arg_2, u_input.c, arg_2) % vec3<u32>(32u))), vec3<i32>(abs(global2.x), global2.x, firstLeadingBit(u_input.a)), vec3<bool>(!arg_3, !arg_3, select(true, arg_3, true))));
    var_1 = firstTrailingBit(abs(reverseBits(~vec3<i32>(1i, 2288i, 10325i))) >> (vec3<u32>(0u, u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, arg_2)) % vec3<u32>(32u)));
    global3 = 47004i;
    global2 = vec3<i32>(-var_1.x, ~min(u_input.d, global2.x), var_1.x);
    return !vec2<bool>(arg_0.x, arg_3);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 15>();
    global2 = min(vec3<i32>(-51801i, firstLeadingBit(~u_input.a), ~u_input.a ^ 61900i) & ~vec3<i32>(global2.x << (0u % 32u), ~(-18106i), 2147483647i), ~select(_wgslsmith_mod_vec3_i32(vec3<i32>(-20207i, 1i, 6262i) >> (u_input.e.wwz % vec3<u32>(32u)), ~vec3<i32>(u_input.a, global2.x, 2147483647i)), ~(-vec3<i32>(88167i, -6293i, global2.x)), vec3<bool>(true, true, true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -1695f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1479f, 355f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(254f, 495f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(108f, -1902f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2748f, arg_1)))));
    global1 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_mult_u32(0u, ~7565u);
    return arg_0;
}

fn func_1() -> vec4<u32> {
    var var_0 = ~min(~24726u, max(firstLeadingBit(0u), u_input.c & ~1u));
    var var_1 = func_3(Struct_1(u_input.e, func_2(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), 1u, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) * 393f), -601f), global1[_wgslsmith_index_u32(~(~select(u_input.c, u_input.e.x, true) >> (u_input.c % 32u)), 15u)]);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_1.a.x, 30u)]), vec4<f32>(175f, 398f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-577f)), _wgslsmith_div_f32(-1279f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-398f)), -169f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f + -962f) * _wgslsmith_f_op_f32(769f - 800f))))));
    global2 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, ~u_input.d, _wgslsmith_mult_i32(min(-global2.x, 1i), abs(84552i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(u_input.d, u_input.b), -33749i, select(2147483647i, 2147483647i, var_1.b.x)), ~max(vec3<i32>(-2147483647i, 76356i, 90805i) ^ vec3<i32>(-1i, 6899i, u_input.b), firstTrailingBit(vec3<i32>(2147483647i, -63347i, 12686i)))));
    return ~(~u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1() << (u_input.e % vec4<u32>(32u)), vec2<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))));
    var_0 = global1[_wgslsmith_index_u32(26221u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + 482f)), -2391f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1020f * 482f) - _wgslsmith_div_f32(2724f, -1371f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(232f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -496f), -905f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(748f - _wgslsmith_f_op_f32(1878f - 1395f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-325f, _wgslsmith_f_op_f32(f32(-1f) * -885f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1233f, _wgslsmith_div_f32(-1590f, -588f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-308f)))))));
}

