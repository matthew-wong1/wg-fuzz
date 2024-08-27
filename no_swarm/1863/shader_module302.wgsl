struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 24>;

var<private> global3: vec3<bool>;

var<private> global4: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: i32) -> bool {
    var var_0 = vec4<bool>(false, !(!arg_1 && false), global3.x != all(select(vec3<bool>(true, true, false), !vec3<bool>(global3.x, false, true), vec3<bool>(arg_1, global3.x, true))), (_wgslsmith_add_u32(u_input.a.x, 55024u) > ~abs(4294967295u)) || select(arg_1, !(!arg_1), all(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, false, true), true))));
    return false;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> i32 {
    global1 = Struct_1(~(-reverseBits(arg_0 >> (vec4<u32>(28584u, arg_2, 41691u, 5201u) % vec4<u32>(32u)))));
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a.yx << (u_input.b.xz % vec2<u32>(32u)), vec2<u32>(~(~_wgslsmith_div_u32(42803u, 80279u)), arg_2));
    global4 = global3.x;
    var var_1 = ~select(~_wgslsmith_mult_u32(~4294967295u, 47834u), ~countOneBits(countOneBits(var_0.x)), any(vec2<bool>(arg_1, false)));
    global2 = array<vec2<u32>, 24>();
    return -1677i;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    let var_0 = ~vec4<u32>(_wgslsmith_mod_u32(93809u, ~(~u_input.b.x)), u_input.d << (1u % 32u), u_input.d | 85175u, 1u);
    global3 = vec3<bool>(all(global3.yz), func_2(firstLeadingBit(40888u), false, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, countOneBits(u_input.a.x), var_0.x, 0u), ~(var_0 >> (vec4<u32>(0u, var_0.x, var_0.x, u_input.d) % vec4<u32>(32u)))), global1.a.x), any(!vec2<bool>(true, func_2(u_input.a.x, false, var_0, 23964i))));
    let var_1 = Struct_2(_wgslsmith_div_i32(~func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c.x, 58262i, global1.a.x), vec4<i32>(u_input.c.x, -21472i, 2147483647i, 52896i)), true, 4294967295u), _wgslsmith_div_i32(global1.a.x, 51291i)), select(select(select(select(vec4<bool>(false, arg_1, arg_2.x, global3.x), vec4<bool>(arg_1, arg_2.x, false, arg_2.x), vec4<bool>(global3.x, false, global3.x, arg_2.x)), !vec4<bool>(arg_1, false, true, arg_1), false), select(!vec4<bool>(global3.x, global3.x, arg_2.x, arg_1), !vec4<bool>(global3.x, false, true, false), 1i != u_input.c.x), !(!vec4<bool>(arg_1, true, true, arg_2.x))), select(vec4<bool>(true, global0.x == global0.x, true, false), select(!vec4<bool>(true, true, arg_2.x, true), !vec4<bool>(false, global3.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, global3.x, false)), true), !select(select(vec4<bool>(true, false, true, global3.x), vec4<bool>(arg_2.x, true, global3.x, false), true), vec4<bool>(global3.x, true, true, true), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1350f, 1772f, var_1.c) * vec4<f32>(var_1.c, global0.x, global0.x, var_1.c)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), -130f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-143f + _wgslsmith_f_op_f32(select(global0.x, var_1.c, true))))));
    global4 = global3.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1748f, var_1.c, arg_1)))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> vec4<u32> {
    global3 = !(!vec3<bool>(false, arg_2.x, arg_0));
    let var_0 = Struct_1(vec4<i32>(firstLeadingBit(~2147483647i), global1.a.x, global1.a.x, 55207i));
    global3 = select(!vec3<bool>(true, all(vec3<bool>(true, true, false)), arg_2.x), select(select(select(!vec3<bool>(arg_2.x, global3.x, arg_2.x), vec3<bool>(arg_2.x, true, true), !arg_0), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(!vec3<bool>(true, arg_0, false), select(vec3<bool>(global3.x, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, global3.x, true)), select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, false, global3.x)))), !(!(!vec3<bool>(global3.x, false, true))), select(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, arg_2.x), !vec3<bool>(false, global3.x, arg_0)), select(!vec3<bool>(true, arg_2.x, global3.x), select(vec3<bool>(global3.x, global3.x, arg_2.x), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, false)), !arg_0), select(vec3<bool>(false, global3.x, true), !vec3<bool>(false, arg_2.x, arg_2.x), global3.x))), select(vec3<bool>(!all(vec4<bool>(arg_2.x, global3.x, arg_0, false)), !(!arg_0), !(134f <= arg_1)), select(select(!vec3<bool>(arg_0, false, true), vec3<bool>(global3.x, false, false), vec3<bool>(true, arg_2.x, false)), !select(vec3<bool>(arg_0, true, global3.x), vec3<bool>(true, arg_0, arg_0), arg_2.x), select(!vec3<bool>(true, global3.x, arg_0), !vec3<bool>(arg_0, true, arg_2.x), select(vec3<bool>(true, true, false), vec3<bool>(arg_0, global3.x, false), true))), select(!vec3<bool>(global3.x, true, false), vec3<bool>(all(vec4<bool>(false, arg_2.x, arg_0, arg_2.x)), false, !global3.x), all(vec3<bool>(arg_0, true, false)))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1, _wgslsmith_f_op_f32(max(443f, global0.x)), _wgslsmith_f_op_f32(exp2(global0.x))))))));
    let var_1 = ~0u;
    return vec4<u32>(arg_3, arg_3, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(28654u | ~arg_3, _wgslsmith_div_u32(~4294967295u, u_input.b.x)), 24u)], global2[_wgslsmith_index_u32(4232u, 24u)]), _wgslsmith_add_u32(u_input.b.x, min(var_1, var_1 | var_1) & 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_add_vec4_i32(-(~vec4<i32>(global1.a.x, global1.a.x, u_input.e, global1.a.x)) >> (func_4(!global3.x, _wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, 0i, 12035i), global3.x, vec3<bool>(global3.x, global3.x, global3.x))), !global3.zz, u_input.a.x << (u_input.d % 32u)) % vec4<u32>(32u)), min(global1.a, vec4<i32>(-19105i, u_input.e, global1.a.x, global1.a.x) | ~global1.a)), -(~(~global1.a.xyz)));
    var var_1 = ~_wgslsmith_div_i32(2147483647i, reverseBits(firstLeadingBit(var_0.b.x)));
    var var_2 = Struct_3(var_0.a, u_input.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.xzy * vec3<f32>(global0.x, -708f, -1042f)))) - _wgslsmith_f_op_vec3_f32(-global0.wyw)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1035f) - -971f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_3.x)))), -1007f, 763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) + -1361f) - global0.x));
    let var_4 = Struct_2(-(~min(_wgslsmith_dot_vec2_i32(var_0.b.zy, vec2<i32>(-36135i, var_0.b.x)), _wgslsmith_sub_i32(var_0.b.x, u_input.e))), !select(vec4<bool>(any(vec2<bool>(true, false)), true, u_input.d < 4294967295u, true && global3.x), !vec4<bool>(false, global3.x, false, true), select(!vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, true, false, true)))), 575f);
    global2 = array<vec2<u32>, 24>();
    var var_5 = all(vec3<bool>(true, any(var_4.b), all(select(global3.xz, vec2<bool>(global3.x, var_4.b.x), !var_4.b.x))));
    var var_6 = u_input.c.zx | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, min(~47098i, _wgslsmith_sub_i32(-21565i, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.xzy);
}

