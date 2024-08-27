struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(102835u, 18277u, 26518u, 25178u, 0u, 18408u, 38031u, 1u, 1u, 4294967295u, 1856u, 4294967295u, 4294967295u, 0u, 1u, 1u, 27224u, 0u, 4294967295u, 40238u, 49223u, 0u);

var<private> global1: vec4<f32> = vec4<f32>(-435f, 511f, 1008f, 112f);

var<private> global2: array<u32, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    let var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], 22u)]);
    let var_1 = false;
    global0 = array<u32, 22>();
    var var_2 = reverseBits(u_input.a);
    global0 = array<u32, 22>();
    return u_input.b;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a & 10032u, u_input.a), max(~arg_2, _wgslsmith_clamp_u32(u_input.c.x, 41556u, 32546u))), abs(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 22u)], 10u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(~4294967295u, 10u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(20167u, arg_2), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], 22u)])), 0u >> (global2[_wgslsmith_index_u32(1u, 10u)] % 32u), 1u)), min(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.a, 22u)]), vec2<u32>(arg_2, 95214u)), min(u_input.c.xy, vec2<u32>(98942u, 0u)))));
    var var_1 = any(!select(vec3<bool>(true, false, arg_2 >= 1u), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), true));
    var var_2 = !all(!vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))));
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, global1.x, -431f), vec4<f32>(786f, global1.x, global1.x, 245f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -691f, global1.x))) * vec4<f32>(_wgslsmith_f_op_f32(1038f + 1330f), 3418f, global1.x, _wgslsmith_f_op_f32(step(global1.x, global1.x)))))));
    var_2 = false;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, global1.x, -923f, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 350f, 1070f)))), vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x * -145f)), global1.x, 398f, -2159f)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    global2 = array<u32, 10>();
    let var_0 = func_3(-vec4<i32>(max(-u_input.b, _wgslsmith_mod_i32(5658i, u_input.b)), min(-20945i, ~u_input.b), u_input.b, ~func_2(4294967295u, vec2<f32>(global1.x, global1.x))), _wgslsmith_add_vec2_i32(-(~vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), 0i)), 10292u, vec2<i32>(-u_input.b & _wgslsmith_sub_i32(abs(u_input.b), ~(-5340i)), 37216i));
    var var_1 = Struct_4(true, func_3(vec4<i32>(u_input.b, 1i, u_input.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(7980i, u_input.b)))), vec2<i32>(-1i, -select(u_input.b, u_input.b, true)), 14021u, _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(2147483647i, -10722i))));
    let var_2 = var_0.a.x;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2)) * _wgslsmith_f_op_f32(1000f + var_2)));
    return Struct_4(true, var_0);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_1(vec3<f32>(arg_1.a, func_3(vec4<i32>(u_input.b, u_input.b, 0i, firstTrailingBit(6606i)), vec2<i32>(abs(-30864i), i32(-1i) * -1i), 65343u, firstLeadingBit(vec2<i32>(0i, u_input.b)) | _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-2147483647i, -1i))).a.x, arg_0.b.a.x));
    global0 = array<u32, 22>();
    var var_1 = !(!any(select(vec2<bool>(var_0.a, true), !vec2<bool>(var_0.a, false), vec2<bool>(arg_0.a, var_0.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a))), arg_0.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f), arg_0.b.a.x), _wgslsmith_f_op_f32(max(-1942f, global1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a)) + arg_0.b.a) + arg_0.b.a));
    let var_3 = ~(~(u_input.c ^ abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82948u, 22u)], 22u)], u_input.c.x, u_input.a)))) | ~_wgslsmith_mod_vec3_u32(u_input.c, ~(u_input.c << (u_input.c % vec3<u32>(32u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(592f + var_0.b.a.x)), _wgslsmith_f_op_f32(floor(global1.x)), -969f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_0.b.a, arg_0.b.a), vec4<f32>(1499f, -700f, var_0.b.a.x, 700f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, -1843f, var_2.x, -1017f), var_0.b.a))), _wgslsmith_sub_i32(1i, -u_input.b) <= u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-939f);
    global1 = vec4<f32>(-1431f, 315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))))) - _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(494f)), _wgslsmith_f_op_f32(-936f - global1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1351f, global1.x))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1177f - _wgslsmith_f_op_f32(floor(global1.x)))) <= var_0.a, func_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(-965f + 1974f), var_0.a, _wgslsmith_f_op_f32(-var_0.a))), Struct_3(_wgslsmith_f_op_f32(abs(global1.x)))));
    let var_2 = var_1;
    global2 = array<u32, 10>();
    var var_3 = _wgslsmith_div_i32(u_input.b, 1i | u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a | global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19931u, 22u)], 22u)], 10u)], _wgslsmith_mod_u32(u_input.c.x, 1u)), vec2<u32>(global0[_wgslsmith_index_u32(3618u, 22u)] >> (1u % 32u), ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56991u, 22u)], 10u)])), ~4294967295u, var_0.a, func_4(var_2, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-780f)) + _wgslsmith_f_op_f32(global1.x - -651f)))).a.x);
}

