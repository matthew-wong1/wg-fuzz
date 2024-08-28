struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, true, false, true, true, false, true, true, false, true, false, false, false, false, true, false, false, false);

var<private> global1: vec2<f32>;

var<private> global2: vec2<i32> = vec2<i32>(1i, -23938i);

var<private> global3: Struct_1 = Struct_1(vec3<i32>(2147483647i, 1i, 1i), vec3<bool>(true, true, true), vec2<i32>(-16963i, -55485i), vec4<i32>(-12839i, 6945i, 0i, -1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2083f + -819f) - _wgslsmith_f_op_f32(-global1.x)))) * -1490f) - -552f);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-835f * -2641f), global1.x) * vec2<f32>(-418f, _wgslsmith_f_op_f32(-var_0)))));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: f32) -> bool {
    var var_0 = abs(1i);
    let var_1 = arg_2.x;
    let var_2 = Struct_2(global3.b.x, Struct_1(_wgslsmith_mod_vec3_i32(-global3.a & vec3<i32>(-2147483647i, 34663i, global2.x), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, global3.a.x), global3.a), -global3.d.zwz)), select(global3.b, global3.b, func_3(arg_2.x | 1u)), ~vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(global3.d.wxw, vec3<i32>(9129i, 1i, -1i))), max(vec4<i32>(1i, global3.a.x, _wgslsmith_clamp_i32(66465i, 5906i, u_input.a), ~global2.x), global3.d)), Struct_1(vec3<i32>(global2.x, 0i, -26506i), vec3<bool>(true, global3.b.x, !(!global0[_wgslsmith_index_u32(arg_2.x, 19u)])), vec2<i32>(~(~global3.c.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.c.x, global2.x), vec2<i32>(1i, 32633i))), -min(global3.d, vec4<i32>(-26774i, 0i, global3.a.x, -2147483647i))));
    let var_3 = global3.b.x;
    var var_4 = false;
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = false;
    let var_1 = any(vec4<bool>(!select(true, func_2(global1.x, vec3<f32>(1000f, -746f, -941f), vec3<u32>(0u, 107189u, 1u), global1.x), !arg_2.c.b.x), !arg_1.b.x, true, arg_1.b.x));
    var var_2 = vec2<u32>(select(4294967295u, ~4294967295u, global3.b.x), 8714u);
    var var_3 = reverseBits(var_2.x);
    var_3 = (var_2.x << ((~(var_2.x ^ var_2.x) >> (~_wgslsmith_clamp_u32(var_2.x, var_2.x, 4294967295u) % 32u)) % 32u)) | max(abs(0u), ~4294967295u >> (_wgslsmith_sub_u32(~var_2.x, 0u) % 32u));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(-global3.c.x, -u_input.a, global3.d.x), select(global3.b, global3.b, false), select(~_wgslsmith_clamp_vec2_i32(global3.a.yy, global3.a.zy, global3.c & global3.a.xz), global3.a.xz, global0[_wgslsmith_index_u32((func_1(global0[_wgslsmith_index_u32(0u, 19u)], Struct_1(vec3<i32>(u_input.a, u_input.a, 1i), global3.b, global3.d.wx, vec4<i32>(global3.d.x, -61670i, global2.x, -59214i)), Struct_2(global3.b.x, Struct_1(vec3<i32>(global3.a.x, global2.x, 2147483647i), vec3<bool>(false, false, true), global3.c, vec4<i32>(global2.x, global3.d.x, global2.x, 7706i)), Struct_1(global3.d.wyw, vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 19u)], true), vec2<i32>(u_input.a, 16301i), vec4<i32>(2147483647i, 2147483647i, 1i, global2.x)))) << (firstTrailingBit(1u) % 32u)) >> (~abs(4294967295u) % 32u), 19u)]), ~(~global3.d));
    let var_0 = Struct_2(global3.b.x, Struct_1(~vec3<i32>(abs(0i), global3.d.x, global3.c.x), select(global3.b, global3.b, select(vec3<bool>(true, global3.b.x, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(35187u, 19u)], false), select(vec3<bool>(global3.b.x, true, false), global3.b, true))), ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global3.a.yy, global3.d.xy), vec2<i32>(-1i, -16135i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, ~14500i, -2147483647i, u_input.a << (10222u % 32u)), _wgslsmith_mod_vec4_i32(global3.d, vec4<i32>(-49118i, -21207i, -46242i, global3.a.x)), vec4<i32>(select(global2.x, global2.x, true), global2.x, i32(-1i) * -1i, _wgslsmith_clamp_i32(u_input.a, global3.d.x, u_input.a)))), Struct_1(vec3<i32>(abs(1i), firstTrailingBit(max(6817i, global2.x)), firstTrailingBit(~1i)), vec3<bool>(global3.b.x & any(global3.b), false, true), -global3.a.yz, ~vec4<i32>(-2147483647i, global2.x, 2147483647i, 30230i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 48223u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 3341u, 10253u), vec4<u32>(0u, 4294967295u, 46875u, 0u)), ~vec4<u32>(91449u, 4294967295u, 0u, 114625u)) % vec4<u32>(32u))));
    let var_1 = Struct_1(select(var_0.c.d.wyz, vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1296i, u_input.a), global3.c), ~(-global3.a.x), 1i), !select(!vec3<bool>(var_0.b.b.x, true, global3.b.x), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 19u)]), var_0.c.b, var_0.c.b), global0[_wgslsmith_index_u32(~4294967295u, 19u)])), !(!vec3<bool>(var_0.b.b.x, !global3.b.x, false)), vec2<i32>(global2.x, var_0.c.a.x), vec4<i32>(max(2147483647i, i32(-1i) * -15412i), -1i, countOneBits(global2.x), ~(-firstTrailingBit(-2147483647i))));
    let var_2 = select(!select(vec2<bool>(true, false), !(!vec2<bool>(var_1.b.x, global0[_wgslsmith_index_u32(107849u, 19u)])), vec2<bool>(all(vec4<bool>(true, false, true, global3.b.x)), true)), !vec2<bool>(!select(false, true, false), !global0[_wgslsmith_index_u32(~64717u, 19u)]), var_0.c.b.xx);
    let var_3 = var_0;
    var var_4 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_5 = 677f;
    var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.x), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1447f * 509f), _wgslsmith_f_op_f32(-global1.x))) * -1000f)), vec4<f32>(-1424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1844f + global1.x) * 1641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) + global1.x) * _wgslsmith_f_op_f32(max(-1133f, -898f))), global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1367f), false)), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, _wgslsmith_dot_vec3_u32(max(var_4.yyz, var_4.xzw), vec3<u32>(var_4.x, var_4.x, var_4.x)), select(var_4.x, var_4.x, true) | ~4294967295u, var_4.x), vec4<u32>(33370u, 44933u, ~1u, var_4.x)));
}

