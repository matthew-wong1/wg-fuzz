struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_3,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: vec2<f32> = vec2<f32>(-940f, 415f);

var<private> global2: Struct_3;

var<private> global3: bool;

var<private> global4: array<vec3<bool>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_2(arg_0.a.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.a, -649f, 272f))))) + arg_0.b.d);
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -174f) < global1.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(329f, global1.x, global1.x), vec3<f32>(global1.x, -1000f, -126f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, 697f, 659f)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(global2.a.zx), Struct_1(-501f, global1.x, vec3<i32>(u_input.a, 2147483647i, 60660i), vec3<f32>(613f, -1975f, global1.x)), abs(vec3<u32>(15914u, arg_0, 35664u)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), 1u)], _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(u_input.b, arg_0))), Struct_5(vec3<i32>(54806i, 0i, 41000i), Struct_4(Struct_2(global2.a.xz), Struct_1(global1.x, -554f, vec3<i32>(global2.c, u_input.a, -47416i), vec3<f32>(-267f, -1028f, global1.x)), vec3<u32>(arg_0, 12339u, u_input.b), Struct_3(global2.a, -1i, -1i, Struct_2(global2.a.zy), u_input.a), vec2<u32>(arg_0, arg_0)), Struct_1(1000f, 732f, global2.a, vec3<f32>(global1.x, 433f, -924f)), Struct_1(-383f, -318f, vec3<i32>(u_input.a, 54928i, global2.d.a.x), vec3<f32>(622f, 876f, -824f))), countOneBits(min(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, global2.d.a.x))), select(vec3<bool>(true, true, true), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 0u), 26u)], vec3<bool>(true, true, true)))))));
    var_0 = 1i >= global2.d.a.x;
    var var_2 = 4294967295u;
    global4 = array<vec3<bool>, 26>();
    return vec3<i32>(1i, ~_wgslsmith_mod_i32(~global2.e, u_input.a) | 1i, _wgslsmith_clamp_i32(global2.a.x, _wgslsmith_mod_i32(global2.e, u_input.a), u_input.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> bool {
    global2 = Struct_3(func_2(~countOneBits(u_input.c)), 34702i, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(global2.d.a, vec2<i32>(20170i, u_input.a))), vec2<i32>(-47897i, -3140i)) | _wgslsmith_div_i32(-global2.d.a.x, u_input.a), global2.d, -1i);
    var var_0 = !(((firstLeadingBit(u_input.a) < u_input.a) && false) && any(global4[_wgslsmith_index_u32(u_input.c, 26u)]));
    return all(select(select(vec4<bool>(arg_0.x, any(arg_0.zx), all(vec2<bool>(arg_0.x, arg_0.x)), true), select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x)), !vec4<bool>(false, !arg_0.x, true, false), true | arg_0.x));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = select(!global4[_wgslsmith_index_u32(~(~0u), 26u)], global4[_wgslsmith_index_u32(select(min(~85174u << (~u_input.b % 32u), 36810u), arg_1.c.x, true), 26u)], select(vec3<bool>(arg_0, select(arg_0, all(vec4<bool>(false, false, false, arg_0)), false), all(!vec3<bool>(true, arg_0, arg_0))), global4[_wgslsmith_index_u32(4294967295u, 26u)], all(vec3<bool>(select(arg_0, arg_0, arg_0), !arg_0, arg_0 == arg_0))));
    var var_1 = Struct_5(vec3<i32>(global2.a.x, u_input.a, _wgslsmith_clamp_i32(firstTrailingBit(u_input.a), -arg_1.b.c.x, max(-3152i, u_input.a)) << (88371u % 32u)), Struct_4(Struct_2(-countOneBits(arg_1.b.c.zz)), arg_1.b, vec3<u32>((8614u << (u_input.c % 32u)) & ~21756u, 1u, arg_1.e.x), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~arg_1.c, arg_1.c), 1u)], _wgslsmith_mult_vec2_u32(arg_1.c.xx, arg_1.e)), Struct_1(1000f, global1.x, select(countOneBits(-vec3<i32>(u_input.a, u_input.a, -33313i)), arg_1.d.a, !arg_0), arg_1.b.d), arg_1.b);
    let var_2 = vec4<bool>(arg_0, !(57417u <= countOneBits(arg_1.e.x ^ var_1.b.e.x)), arg_0, true);
    global4 = array<vec3<bool>, 26>();
    let var_3 = arg_1.c.x;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f + global1.x) - 1f), _wgslsmith_div_f32(arg_1.b.d.x, 357f), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.b, -1592f, global1.x, 349f), vec4<f32>(var_1.c.b, global1.x, global1.x, arg_1.b.a), var_2))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(u_input.c, 1u)];
    global4 = array<vec3<bool>, 26>();
    let var_0 = u_input.c;
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-global2.a.zy), ~vec2<i32>(-2147483647i, global2.d.a.x)), -(~(-2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(676f * global1.x));
    global0 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, global2.b), global2.e, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.e, var_1.a.x, global2.c), global2.a))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_1.a), global2.d.a), 1i, ~(~0i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-200f, global1.x, 180f, -423f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1720f, global1.x, 557f, -543f))), _wgslsmith_f_op_vec4_f32(func_4(func_1(vec3<bool>(false, true, true), vec3<u32>(u_input.b, var_0, 4294967295u)), Struct_4(Struct_2(vec2<i32>(var_1.a.x, 1i)), Struct_1(global1.x, 1978f, vec3<i32>(global2.e, 1i, var_1.a.x), vec3<f32>(global1.x, -1741f, 294f)), vec3<u32>(74874u, u_input.c, 4294967295u), global0[_wgslsmith_index_u32(var_0, 1u)], vec2<u32>(1u, u_input.c))))))), global1.x);
}

