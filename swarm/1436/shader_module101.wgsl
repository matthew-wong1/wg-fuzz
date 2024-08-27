struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-14377i, 2147483647i, i32(-2147483648), 39537i), vec4<i32>(10627i, 15970i, 39031i, 0i), vec4<i32>(2147483647i, 60449i, 0i, -1i), vec4<i32>(2147483647i, 38890i, -33779i, -30338i), vec4<i32>(1i, i32(-2147483648), -19146i, 27775i), vec4<i32>(20385i, 19646i, 2147483647i, -5588i), vec4<i32>(33568i, -27504i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -15934i, -1i));

var<private> global1: u32;

var<private> global2: array<Struct_2, 19>;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1085f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))), arg_0.x, -1000f, arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(412f, 1133f))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    global1 = 14034u;
    global0 = array<vec4<i32>, 8>();
    global2 = array<Struct_2, 19>();
    global2 = array<Struct_2, 19>();
    global1 = 1u;
    return Struct_3(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.d, ~101451u)), 19u)], false, !(!all(vec4<bool>(true, true, true, false))) != select(all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(func_3(vec4<f32>(943f, 1000f, 640f, arg_0))) >= _wgslsmith_f_op_f32(180f + arg_1.b)), ~_wgslsmith_sub_u32(max(u_input.d, firstTrailingBit(u_input.d)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 6489u, 1u), vec4<u32>(u_input.e.x, u_input.d, 1u, u_input.d))), arg_1);
}

fn func_1(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = vec3<bool>(arg_0, true, true);
    global1 = u_input.d;
    var var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(365f, _wgslsmith_f_op_f32(floor(963f)))))), Struct_2(_wgslsmith_add_i32(u_input.a.x, reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.yy))), _wgslsmith_f_op_f32(f32(-1f) * -972f), ~u_input.a, arg_1));
    let var_2 = _wgslsmith_div_i32(6567i, -firstLeadingBit(-_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)));
    let var_3 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -583f), any(vec2<bool>(true, !var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(u_input.d, 16u)];
    let var_1 = ~vec2<i32>(u_input.a.x, ~(u_input.a.x >> ((56789u ^ var_0.d) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1196f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2095f))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))))) - _wgslsmith_f_op_f32(func_1(var_0.c.x, _wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b.x, -1673f)))))));
    let var_3 = Struct_1(countOneBits(select(var_0.a, select(~var_0.a, ~vec4<u32>(u_input.d, u_input.d, 80482u, var_0.a.x), !var_0.c.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, _wgslsmith_f_op_f32(-1125f + var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, 476f, -593f, -295f))) * vec4<f32>(var_0.b.x, var_2, var_0.b.x, var_0.b.x)))), select(select(vec2<bool>(all(vec3<bool>(var_0.c.x, false, var_0.c.x)), false), select(vec2<bool>(true, false), var_0.c, vec2<bool>(false, false)), vec2<bool>(var_0.c.x, true)), select(!vec2<bool>(var_0.c.x, var_0.c.x), !vec2<bool>(var_0.c.x, var_0.c.x), var_0.c), var_0.c), var_0.a.x);
    global2 = array<Struct_2, 19>();
    global1 = firstLeadingBit(~var_0.d) ^ abs(abs(var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.xz, vec2<i32>(u_input.b, var_1.x) | abs(vec2<i32>(2147483647i, -5826i) ^ var_1), ~_wgslsmith_mod_i32(countOneBits(u_input.b), 42087i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(var_0.b.x, 299f), _wgslsmith_f_op_f32(sign(185f))))));
}

