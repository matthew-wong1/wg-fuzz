struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: i32 = -16140i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(round(var_0.a.x));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(~40002u, 1u), (0u >> (0u % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(25259u, 1u), vec2<u32>(0u, 1u)), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 1u, 35575u, abs(0u)), global0[_wgslsmith_index_u32(1u, 27u)], vec4<u32>(_wgslsmith_sub_u32(22541u, 0u), min(4294967295u, 40425u), 6520u, 1u))) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, ~16035u & select(4294967295u, 1u, true)), _wgslsmith_dot_vec2_u32(select(reverseBits(vec2<u32>(56340u, 1u)), vec2<u32>(35962u, 10767u), any(vec4<bool>(true, false, false, true))), vec2<u32>(1u, 1u))) % 32u);
    var var_3 = global0[_wgslsmith_index_u32(abs(13915u), 27u)];
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, 267f, var_0.a.x, -294f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1286f, arg_0.a.x, var_0.a.x, 441f))))), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(var_1, -913f, false)), _wgslsmith_f_op_f32(floor(var_0.a.x)), -1002f))))));
    return select(!(!vec4<bool>(true, all(vec2<bool>(true, true)), false, false)), vec4<bool>(false, !all(vec2<bool>(false, true)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - arg_0.a.x) - var_1) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(526f))) * var_1) != var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_2.c.yzw;
    global0 = array<vec4<u32>, 27>();
    let var_1 = -422f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a.x, 982f, var_1, arg_1.a.a.x)) * vec4<f32>(-1025f, -873f, _wgslsmith_f_op_f32(trunc(-1000f)), 1000f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-136f, arg_1.a.a.x, arg_1.a.a.x, 388f))) * arg_1.a.a), _wgslsmith_f_op_vec4_f32(-arg_1.a.a))));
    var var_3 = arg_2.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.a.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(arg_1.a), vec3<u32>(1u, reverseBits(26204u), _wgslsmith_add_u32(0u, 1u)), vec4<bool>(-681f != arg_1.a.x, true, true, true), ~u_input.b.x), Struct_2(arg_1, vec3<u32>(56170u, 1u, 4294967295u), !func_3(Struct_1(vec4<f32>(arg_1.a.x, 249f, 1916f, 250f))), arg_0.x), Struct_2(arg_1, vec3<u32>(1u, 1u, 1u), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), -2147483647i), arg_1)), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -174f) + -549f)), _wgslsmith_f_op_f32(floor(778f)));
    var var_1 = Struct_1(arg_1.a);
    global0 = array<vec4<u32>, 27>();
    global1 = -87150i;
    let var_2 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.a))));
}

fn func_1() -> i32 {
    var var_0 = -239f;
    let var_1 = ~vec3<u32>(_wgslsmith_div_u32(9558u, ~(~6692u)), _wgslsmith_mod_u32(countOneBits(39575u), _wgslsmith_dot_vec4_u32(vec4<u32>(13415u, 0u, 4294967295u, 1u), vec4<u32>(14596u, 12543u, 0u, 2960u)) << (0u % 32u)), ~(~reverseBits(1u)));
    var var_2 = Struct_2(func_2(vec3<i32>(1i, firstLeadingBit(u_input.a.x), u_input.a.x), Struct_1(vec4<f32>(-494f, 1169f, _wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_div_f32(154f, -1000f)))), countOneBits(var_1), vec4<bool>(!func_3(func_2(vec3<i32>(-55854i, -22118i, -41571i), Struct_1(vec4<f32>(1000f, 1324f, 646f, 212f)))).x, true, false != ((var_1.x > 1u) && all(vec3<bool>(true, true, true))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) & any(vec2<bool>(true, true))), i32(-1i) * -8109i);
    var var_3 = select(vec4<bool>(false, true, var_2.c.x || var_2.c.x, true), var_2.c, all(var_2.c.zz));
    let var_4 = var_1;
    return abs(min(-2147483647i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(595f, -891f))) + vec2<f32>(1f, 1f))));
    var var_2 = ~(~_wgslsmith_mod_u32(1u, ~1u));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1637f))), 1000f, _wgslsmith_f_op_f32(max(-823f, -655f)), _wgslsmith_div_f32(933f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -872f, _wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-886f, -1731f, var_1.x, -1838f) * vec4<f32>(var_1.x, var_1.x, var_1.x, -1134f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -390f, var_1.x), vec4<f32>(var_1.x, var_1.x, -906f, -1450f))))));
    global1 = -14607i;
    global0 = array<vec4<u32>, 27>();
    global1 = reverseBits(~(-1i | func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.a)), _wgslsmith_f_op_vec4_f32(abs(var_3.a)))))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(37324u, 0u), vec2<u32>(1u, 1u)), vec2<u32>(54851u, 1u), select(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(98199u, 39709u)), vec2<u32>(1u, 3002u)), vec2<u32>(firstTrailingBit(50709u), 0u), true)), -224f, u_input.a);
}

