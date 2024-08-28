struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: i32;

var<private> global3: i32 = -17915i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = !vec3<bool>(true, all(vec4<bool>(true, true, true, true)) && false, false && all(vec3<bool>(true, true, true)));
    global2 = arg_3;
    return _wgslsmith_f_op_f32(abs(1f));
}

fn func_3() -> f32 {
    var var_0 = u_input.c;
    let var_1 = all(!vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(any(vec2<bool>(true, false)), false, u_input.a == u_input.a)));
    let var_2 = _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.x, 34661u), u_input.b), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(77633u, 1u, var_0.x, 0u)), max(vec4<u32>(u_input.c.x, u_input.a, var_0.x, var_0.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, var_0.x)))), 28u)], vec2<i32>(-2147483647i, -u_input.d));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1043f, 950f, -2574f), vec3<f32>(-547f, 766f, 516f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1071f, -1000f, -1647f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1731f, -1814f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2286f, 1000f, 1585f) + vec3<f32>(-661f, 960f, -1235f)) + _wgslsmith_div_vec3_f32(vec3<f32>(898f, -1481f, -444f), vec3<f32>(-1000f, -1114f, -737f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 449f, -1180f))));
    return var_4.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-315f + 477f), -762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -477f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f - _wgslsmith_f_op_f32(sign(999f)))))));
    global3 = u_input.d;
    global1 = array<Struct_2, 11>();
    return Struct_1(u_input.c.zx);
}

fn func_4(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_2(~vec3<u32>(63876u, ~26330u, ~(~arg_0.b.a.x)));
    var var_1 = !vec4<bool>(any(!vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), arg_0.a, !arg_0.a, arg_0.a);
    let var_2 = arg_0;
    var var_3 = firstLeadingBit(arg_0.c.a.x) >> (_wgslsmith_dot_vec2_u32(~arg_0.b.a, vec2<u32>(~4294967295u, ~(~73541u))) % 32u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f) * _wgslsmith_f_op_f32(1185f + 915f))) + _wgslsmith_f_op_f32(-1619f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-903f))))));
    return -(~_wgslsmith_mult_i32(select(u_input.d, 0i, all(vec4<bool>(arg_0.a, true, var_1.x, true))), ~u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-278f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d, Struct_3(Struct_1(u_input.c.xz), vec3<u32>(0u, u_input.a, u_input.b), Struct_1(u_input.c.yx), Struct_1(vec2<u32>(u_input.b, u_input.a)), Struct_2(u_input.c)), 1u, u_input.d))), func_2(!(u_input.d > u_input.d), vec4<i32>(52814i, i32(-1i) * -2147483647i, ~1i, 1i)), global1[_wgslsmith_index_u32(~(~select(43370u, 5441u, false)), 11u)]));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.d, Struct_3(Struct_1(vec2<u32>(46498u, 65695u)), vec3<u32>(48781u, u_input.c.x, u_input.a), Struct_1(u_input.c.yz), Struct_1(u_input.c.zy), Struct_2(u_input.c)), u_input.a, 1i)) - _wgslsmith_f_op_f32(func_3())))), 1398f);
    let var_1 = vec3<u32>(u_input.c.x, 56567u, 57829u) | (u_input.c & _wgslsmith_mod_vec3_u32(u_input.c >> (vec3<u32>(u_input.a, 0u, 30381u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.c.x, 0u), u_input.c)));
    global2 = countOneBits(-27936i);
    global2 = firstTrailingBit(1i) >> (1u % 32u);
    global3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-906f, var_0.x, 306f) * vec3<f32>(var_0.x, -672f, 1748f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, 957f)))))));
}

