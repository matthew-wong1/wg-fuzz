struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 34467i;

var<private> global1: array<i32, 3> = array<i32, 3>(16326i, -12041i, -519i);

var<private> global2: array<bool, 28>;

var<private> global3: vec3<f32> = vec3<f32>(722f, 1459f, 882f);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_4(!arg_2.a, reverseBits(~(-vec2<i32>(global1[_wgslsmith_index_u32(arg_0.a.x, 3u)], 2147483647i)) & select(vec2<i32>(69508i, 0i), -vec2<i32>(global4.c, global4.c), select(false, arg_2.a, true))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.e.x), global3.x)) + -155f)), any(!select(vec2<bool>(arg_0.d.x, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), !vec2<bool>(true, arg_0.d.x), vec2<bool>(true, global4.d.x))));
    let var_1 = vec2<bool>(arg_0.d.x, arg_1.a);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1760f + 725f), global3.x, var_0.c)));
    let var_2 = vec2<i32>(arg_0.c, arg_0.c);
    let var_3 = vec3<i32>(34973i, 2804i, -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b, select(vec2<i32>(global1[_wgslsmith_index_u32(1u, 3u)], arg_0.c), vec2<i32>(-1i, var_0.b.x), arg_2.b.x)), vec2<i32>(~(-29404i), 1i)));
    return ~4294967295u;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(6397u, global4.a.x) << (83958u % 32u), _wgslsmith_mod_u32(57764u, 58502u) ^ (arg_1.a.x | 0u))), global4.a.x);
    return 4294967295u;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = Struct_3(all(select(!vec3<bool>(arg_1, false, global2[_wgslsmith_index_u32(0u, 28u)]), !select(vec3<bool>(false, global4.d.x, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(global2[_wgslsmith_index_u32(arg_2, 28u)], global2[_wgslsmith_index_u32(global4.a.x, 28u)], arg_1)), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2, 28u)], global2[_wgslsmith_index_u32(global4.a.x, 28u)]), select(vec3<bool>(arg_1, false, false), global4.d.yxx, global4.d.x), global4.d.wyy))), vec2<bool>(true, arg_3 >= 11653i));
    var var_1 = Struct_1(~countOneBits(vec4<u32>(108086u, 4120u, u_input.b.x, arg_2) >> (~u_input.a % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.b * vec4<f32>(-217f, global3.x, -2254f, global3.x))), global4.b)), 2147483647i, vec4<bool>(false & global2[_wgslsmith_index_u32(arg_2, 28u)], !(!any(global4.d.zxx)), any(global4.d.zx), false), arg_0);
    let var_2 = vec4<bool>(!(!all(global4.d.xyw) || var_1.d.x), any(global4.d.xzw), !(-global4.c != ~2147483647i), any(vec3<bool>(true, select(true, var_1.d.x, true), all(var_1.d.yzx))));
    global2 = array<bool, 28>();
    global0 = countOneBits(-(~(var_1.c ^ var_1.c)) ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.a.x, _wgslsmith_add_u32(3198u, 0u)), vec3<u32>(abs(var_1.a.x), select(global4.a.x, arg_2, global4.d.x), firstLeadingBit(var_1.a.x))), 3u)]);
    return var_1.a.x;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_f32(var_0.e.x * 301f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2279f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(377f)))));
    let var_2 = u_input.b.x;
    global0 = -1i & (countOneBits(firstLeadingBit(0i)) << (~u_input.a.x % 32u));
    return vec2<bool>(true, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_0.a.x, 4294967295u) ^ firstLeadingBit(global4.a.x)), 3u)] >= _wgslsmith_sub_i32(~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 3u)], -2147483647i), global1[_wgslsmith_index_u32(117880u ^ var_0.a.x, 3u)]));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<u32>) -> i32 {
    global1 = array<i32, 3>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(max(global4.c << (35292u % 32u), global1[_wgslsmith_index_u32(~1u, 3u)]), (firstTrailingBit(0i) << (func_2(Struct_1(global4.a, vec4<f32>(-1340f, 1000f, -807f, global3.x), -42485i, vec4<bool>(global2[_wgslsmith_index_u32(1u, 28u)], false, arg_1.a, arg_1.a), global4.e), Struct_3(arg_1.a, vec2<bool>(false, global4.d.x)), Struct_3(arg_1.a, vec2<bool>(false, true)), vec2<bool>(false, true)) % 32u)) >> ((arg_3.x >> (reverseBits(1u) % 32u)) % 32u)), ~_wgslsmith_mult_i32(global4.c, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]));
    let var_1 = global4.b;
    var var_2 = vec4<i32>(1i, -23025i, -40172i, ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(41653u, 3u)], -38663i));
    let var_3 = Struct_3(false, func_5(global2[_wgslsmith_index_u32(58712u, 28u)], func_4(var_1.zyw, global4.d.x, func_3(_wgslsmith_f_op_vec3_f32(arg_2.xxz * arg_2.xyw), Struct_1(vec4<u32>(global4.a.x, arg_3.x, 27312u, arg_3.x), vec4<f32>(806f, var_1.x, global4.e.x, global3.x), var_2.x, vec4<bool>(global4.d.x, arg_1.a, false, false), var_1.xwx)), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 19989u), 3u)], 2147483647i)), Struct_2(Struct_1(arg_3, arg_2, global1[_wgslsmith_index_u32(~u_input.a.x, 3u)], vec4<bool>(global4.d.x, global4.d.x, arg_1.b.x, false), _wgslsmith_f_op_vec3_f32(-global4.b.xzw)), -vec3<i32>(global1[_wgslsmith_index_u32(global4.a.x, 3u)], -34125i, 78413i), min(_wgslsmith_clamp_u32(1u, 4294967295u, 1u), global4.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -12600i, global1[_wgslsmith_index_u32(global4.a.x, 3u)], var_2.x), vec4<i32>(-56718i, var_2.x, global4.c, -2147483647i))), select(!select(global4.d.ywy, global4.d.zyx, false), global4.d.wxy, vec3<bool>(false, any(global4.d), global4.d.x))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    var var_0 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], func_1(-898f, Struct_3(true, global4.d.zz), global4.b, u_input.a)), ~0i), select(vec2<i32>(global4.c & global4.c, global1[_wgslsmith_index_u32(5771u | global4.a.x, 3u)]), reverseBits(select(vec2<i32>(global4.c, -1i), vec2<i32>(global4.c, global1[_wgslsmith_index_u32(19213u, 3u)]), vec2<bool>(global4.d.x, false))), global2[_wgslsmith_index_u32(global4.a.x, 28u)]), abs(-(vec2<i32>(25244i, -1i) << (u_input.a.ww % vec2<u32>(32u))))));
    var var_1 = ~_wgslsmith_div_i32(firstTrailingBit(0i), var_0.x);
    global1 = array<i32, 3>();
    global2 = array<bool, 28>();
    let var_2 = Struct_3(!(!any(select(global4.d, global4.d, global2[_wgslsmith_index_u32(32368u, 28u)]))), select(global4.d.xw, !(!func_5(true, u_input.b.x, Struct_2(Struct_1(global4.a, vec4<f32>(-1810f, -1665f, global4.b.x, -2252f), global4.c, global4.d, vec3<f32>(904f, 363f, -1145f)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -42476i), u_input.c, vec4<i32>(-8105i, var_0.x, 0i, -2147483647i)), vec3<bool>(global2[_wgslsmith_index_u32(23029u, 28u)], true, global2[_wgslsmith_index_u32(4294967295u, 28u)]))), !global4.d.wy));
    let var_3 = countOneBits(_wgslsmith_add_i32(-firstTrailingBit(global4.c ^ -1i), global4.c));
    let var_4 = reverseBits(45022u);
    var var_5 = !vec4<bool>(!var_2.b.x, all(global4.d.ywx) & var_2.b.x, true, global4.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-(-2147483647i | global4.c), 1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(468f * 2024f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) * _wgslsmith_f_op_f32(-350f - global4.e.x)))))));
}

