struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -1i), vec2<i32>(0i, -34301i), vec2<i32>(-11314i, 1i), vec2<i32>(12216i, -4169i), vec2<i32>(-3810i, -15441i), vec2<i32>(1i, -34949i), vec2<i32>(2147483647i, 4155i), vec2<i32>(-2910i, 19427i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -26404i), vec2<i32>(1i, -1i), vec2<i32>(14700i, 16845i), vec2<i32>(9361i, -1i), vec2<i32>(80377i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(0i, -67264i), vec2<i32>(-59523i, -31896i), vec2<i32>(-39643i, -36203i), vec2<i32>(-33267i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, -45508i), vec2<i32>(44654i, 2147483647i), vec2<i32>(15990i, -1i));

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(1725i, 0i, 50474i), vec3<i32>(2147483647i, 5711i, -16417i), vec3<i32>(i32(-2147483648), -83757i, i32(-2147483648)), vec3<i32>(0i, 0i, 0i));

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = abs(12887u);
    global1 = array<vec2<i32>, 25>();
    let var_1 = arg_0.d;
    global2 = array<vec3<i32>, 4>();
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(59909u, 20481u, 9934u), firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 68425u, var_1.c), vec3<u32>(var_1.c, 4294967295u, 0u))) | ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(62398u, 23718u, var_1.c), vec3<u32>(arg_0.d.c, var_1.c, 1u)), vec3<u32>(42993u, var_1.c, 25770u)));
    return -2147483647i >= ~_wgslsmith_add_i32(select(1i >> (arg_0.d.c % 32u), u_input.b.x, var_1.a.x), _wgslsmith_clamp_i32(-var_1.d.x, u_input.c.x, var_1.b));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = 21725i;
    global0 = array<Struct_3, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(arg_1.wz));
    var_0 = _wgslsmith_sub_i32(u_input.a, 1i);
    global3 = array<Struct_1, 21>();
    return vec4<bool>(arg_0.x, all(arg_0), !any(select(vec3<bool>(arg_0.x, true, true), !vec3<bool>(arg_0.x, true, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, false))), func_2(global0[_wgslsmith_index_u32(~arg_2, 9u)], true, Struct_2(vec2<i32>(u_input.b.x, ~(-1i)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15494u, abs(~arg_2.c), arg_2.c), ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(39916u, 108556u, 56443u, 1u), vec4<u32>(arg_0.c, arg_0.c, 1u, 1u), vec4<u32>(arg_2.c, 23261u, arg_0.c, 0u)) >> (vec4<u32>(arg_2.c, 4294967295u, 24626u, 19044u) % vec4<u32>(32u)))));
    var var_1 = Struct_2(_wgslsmith_sub_vec2_i32(~(min(arg_0.d.zz, arg_0.d.xy) << (~arg_1 % vec2<u32>(32u))), vec2<i32>(u_input.b.x, 2147483647i)));
    var var_2 = any(select(!vec3<bool>(true, func_1(vec3<bool>(false, true, false), vec4<f32>(-119f, 638f, 1643f, -1000f), 149170u, vec4<f32>(-2154f, 1000f, 970f, arg_0.e)).x, !arg_0.a.x), !(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)), false));
    let var_3 = Struct_2(min(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(var_1.a.x, var_1.a.x)), vec2<i32>(~arg_0.b, _wgslsmith_add_i32(-2147483647i, 0i))), arg_2.d.zy));
    var var_4 = select(arg_2.a.x, !(min(i32(-1i) * -18754i, max(u_input.a, var_3.a.x)) < arg_0.d.x), func_1(arg_0.a.yzw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, arg_2.e, -552f, arg_0.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(3243f, 2206f, arg_0.e, -253f)))), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(arg_2.c, 12072u, 4294967295u, arg_1.x), vec4<u32>(1u, arg_2.c, 4294967295u, arg_1.x)), firstTrailingBit(vec4<u32>(arg_2.c, 10180u, arg_2.c, 4294967295u) << (vec4<u32>(77681u, arg_1.x, 0u, arg_0.c) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-824f, _wgslsmith_div_f32(arg_0.e, 1087f), -483f, -1783f), vec4<f32>(_wgslsmith_f_op_f32(max(arg_3, -1654f)), -336f, 1306f, _wgslsmith_div_f32(arg_2.e, 497f)), !all(arg_0.a)))).x);
    return vec3<bool>(arg_2.a.x, all(vec4<bool>(arg_2.a.x, all(vec2<bool>(true, true)), arg_0.a.x, !arg_0.a.x || true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1311f, -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1772f + 1295f), -1524f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-162f, 826f)) * 1380f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1643f, -1364f, 123f), vec3<f32>(-495f, -470f, -287f)))))))));
    let var_1 = all(!select(select(func_1(vec3<bool>(false, false, false), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 0u, vec4<f32>(var_0.x, var_0.x, var_0.x, 414f)), vec4<bool>(true, true, true, true), false), func_1(func_3(Struct_1(vec4<bool>(true, true, true, false), 0i, 33802u, global2[_wgslsmith_index_u32(1u, 4u)], var_0.x), vec2<u32>(1u, 8796u), global3[_wgslsmith_index_u32(47373u, 21u)], 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 128f, var_0.x, -926f)), ~1u, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 1524f, var_0.x, var_0.x))), vec4<bool>(true, true, true, true)));
    let var_2 = var_1;
    var var_3 = vec3<u32>(1u, 1u, 1u);
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-1858f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x)))), var_0.x))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_3.x, var_3.x, 49771u, 25410u)), ~(vec4<u32>(var_3.x, var_3.x, 0u, 2980u) ^ vec4<u32>(var_3.x, var_3.x, 63033u, 112138u)))));
}

