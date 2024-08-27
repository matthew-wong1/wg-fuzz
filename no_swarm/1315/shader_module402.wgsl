struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), -17563i);

var<private> global4: Struct_2 = Struct_2(vec2<f32>(1000f, -2259f), vec3<i32>(-9859i, 34385i, 1i), vec4<i32>(2147483647i, 1i, 0i, 1i), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global2 = select(!(!vec3<bool>(true, !global3.a.x, global3.a.x)), select(select(vec3<bool>(!global1.a.x, !global3.a.x, global1.a.x | global2.x), vec3<bool>(select(global3.a.x, false, true), global1.a.x, all(vec2<bool>(global1.a.x, false))), vec3<bool>(true, true, !global3.a.x)), !select(vec3<bool>(false, global2.x, false), !vec3<bool>(global3.a.x, true, true), select(vec3<bool>(false, global2.x, global3.a.x), vec3<bool>(true, true, false), global1.a.x)), !select(global2.x, global1.a.x, any(global3.a))), global3.a.x);
    global2 = vec3<bool>(true, global1.a.x, any(vec4<bool>(any(vec3<bool>(true, true, false)), global3.a.x && false, global3.a.x, false)) == true);
    var var_0 = Struct_1(select(vec2<bool>(false, global2.x), !global3.a, false), min(_wgslsmith_div_i32(~(~u_input.a.x), 1i << (select(u_input.c, 4294967295u, false) % 32u)), -2147483647i));
    return firstTrailingBit(u_input.c) | u_input.c;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(u_input.d >> (u_input.c % 32u)), _wgslsmith_sub_u32(func_3(), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.d, 2055u, u_input.d)), ~vec3<u32>(u_input.d, u_input.c, 29137u)), ~u_input.c))), 8u)];
    let var_2 = vec2<i32>(34127i, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -1i), ~global4.d.x), (arg_0.b & -1i) & (global4.c.x ^ 28315i)));
    var var_3 = global1.a.x;
    var var_4 = firstTrailingBit(~(vec4<u32>(38778u, 0u, u_input.c, u_input.c) >> (vec4<u32>(1u, 74252u, 494u, 103409u) % vec4<u32>(32u))) ^ ~vec4<u32>(38572u, u_input.d, 12372u, 129331u)) >> (abs(vec4<u32>(0u, 1u, (92446u ^ u_input.c) << (reverseBits(u_input.c) % 32u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(14884u, u_input.c, 13744u), u_input.d, u_input.c))) % vec4<u32>(32u));
    return countOneBits(min(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global1.b, _wgslsmith_add_i32(u_input.b.x, -27451i)), -(~(-35103i)), abs(_wgslsmith_mult_i32(27026i, arg_0.b))), 29111i));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    global1 = global0[_wgslsmith_index_u32(arg_0.x, 8u)];
    let var_0 = _wgslsmith_clamp_i32(abs(~_wgslsmith_div_i32(global4.c.x, func_2(global0[_wgslsmith_index_u32(4294967295u, 8u)]))), global3.b, arg_1.c.x);
    let var_1 = _wgslsmith_clamp_vec3_u32(arg_0, abs(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(11922u, 38032u, 29026u, 0u), reverseBits(vec4<u32>(u_input.d, 1u, arg_0.x, arg_0.x))), ~8723u)), _wgslsmith_mod_vec3_u32(max(select(_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(77679u, 4294967295u, 40657u)), vec3<u32>(u_input.d, u_input.d, 4294967295u), true), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 62052u, 1u), arg_0)), vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, arg_0.x, 0u, arg_0.x)), abs(vec4<u32>(u_input.d, arg_0.x, arg_0.x, u_input.d))), ~u_input.c)));
    var var_2 = var_1.x & var_1.x;
    global4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global4.a - vec2<f32>(arg_1.a.x, global4.a.x))))))), -(~(arg_3 ^ u_input.e)), _wgslsmith_add_vec4_i32(-global4.c, ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2273i, global3.b, -82i, 4473i), arg_1.c), vec4<i32>(var_0, 48546i, -55948i, -43946i))), _wgslsmith_mult_vec2_i32(~(~vec2<i32>(global4.d.x, 1i)), vec2<i32>(firstLeadingBit(var_0), _wgslsmith_mod_i32(0i, -2147483647i)) | ~arg_3.zz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.x + global4.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1601f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(27353u, u_input.c, u_input.c), Struct_2(global4.a, global4.b, vec4<i32>(-18667i, -47075i, u_input.a.x, u_input.e.x), global4.c.yw), 1838f, vec3<i32>(-2147483647i, -45447i, 2147483647i))) + _wgslsmith_f_op_f32(-394f + global4.a.x)))), global4.b, ~(_wgslsmith_add_vec4_i32(countOneBits(global4.c), -vec4<i32>(1i, global4.d.x, global1.b, global4.c.x)) >> (~vec4<u32>(12386u, u_input.d, 19978u, u_input.d) % vec4<u32>(32u))), select(-(vec2<i32>(global4.b.x, u_input.e.x) | vec2<i32>(global3.b, 1i)), -(~min(vec2<i32>(u_input.b.x, 2147483647i), u_input.b)), global3.a.x));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(global4.a.x * global4.a.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(195f - 863f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - _wgslsmith_f_op_f32(step(var_0.a.x, -1678f))) - _wgslsmith_div_f32(1383f, _wgslsmith_div_f32(-213f, 1220f))))));
    global2 = select(select(select(!vec3<bool>(true, false, global2.x), !vec3<bool>(global1.a.x, true, global1.a.x), select(vec3<bool>(global3.a.x, false, false), vec3<bool>(global2.x, global1.a.x, true), global1.a.x)), vec3<bool>(global1.a.x, global1.a.x, !(!global3.a.x)), !(!global3.a.x || any(vec2<bool>(global3.a.x, false)))), vec3<bool>(!(global3.a.x & global3.a.x) & global3.a.x, true, !(var_0.d.x >= ~global4.d.x)), vec3<bool>(true, true, true));
    let var_2 = Struct_1(vec2<bool>(!global1.a.x, !(!all(vec4<bool>(false, true, global1.a.x, true)))), global1.b);
    var var_3 = global1.a;
    global4 = Struct_2(_wgslsmith_f_op_vec2_f32(round(global4.a)), firstLeadingBit(global4.c.xxw), var_0.c, _wgslsmith_add_vec2_i32(u_input.a.zy, ~abs(vec2<i32>(2147483647i, -2147483647i))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, 286f, global4.a.x), vec3<f32>(-1000f, var_0.a.x, var_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1491f, -121f, -355f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1273f, global4.a.x, 1617f)))), vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 20872u, u_input.c), vec3<u32>(u_input.c, 1984u, 4294967295u)), var_0, _wgslsmith_f_op_f32(-581f - var_0.a.x), firstLeadingBit(u_input.a)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-2029f + 1156f), _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-588f, -804f, -329f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(111f, 251f, 1716f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, -1790f)))), !vec3<bool>(global3.a.x, false, false)))));
    var var_5 = 1u;
    global4 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, _wgslsmith_f_op_f32(trunc(-502f)))))), ~abs(vec3<i32>(-1i) * -vec3<i32>(global1.b, var_0.b.x, 2147483647i)), vec4<i32>(var_0.d.x, u_input.a.x, var_0.d.x, i32(-1i) * -51701i), min(-max(vec2<i32>(var_0.b.x, u_input.e.x), global4.d) | vec2<i32>(global3.b, 1862i), -vec2<i32>(~10816i, ~var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(abs(~_wgslsmith_mod_u32(10808u, 4939u)), u_input.c), 1u, -560f);
}

