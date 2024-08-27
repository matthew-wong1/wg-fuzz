struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9>;

var<private> global1: bool;

var<private> global2: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_2(Struct_1(~arg_0.a.x, select(vec4<bool>(true, false, !arg_1.a.x, u_input.a < u_input.a), select(select(vec4<bool>(arg_1.a.x, true, true, false), vec4<bool>(true, false, arg_1.a.x, arg_1.a.x), arg_1.a), !vec4<bool>(false, arg_1.a.x, true, arg_1.a.x), select(arg_1.a, arg_1.a, vec4<bool>(true, arg_1.a.x, true, arg_1.a.x))), !(!vec4<bool>(true, arg_1.a.x, arg_1.a.x, true))), vec4<u32>(u_input.a, ~u_input.a, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 15466u, 4294967295u, 0u))), ~(~u_input.a))), Struct_1(arg_0.a.x, !vec4<bool>(all(arg_1.a.zwz), all(vec4<bool>(false, arg_1.a.x, arg_1.a.x, true)), all(vec2<bool>(arg_1.a.x, false)), all(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))), _wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(1u, 4294967295u, 4294967295u, 32416u)), vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u), vec4<bool>(false, arg_1.a.x, false, arg_1.a.x)), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) >> (vec4<u32>(1u, 49082u, 1u, u_input.a) % vec4<u32>(32u)))), 4294967295u, true);
    global2 = _wgslsmith_f_op_f32(969f * 525f);
    var var_1 = select(u_input.a, u_input.a, all(select(!arg_1.a, arg_1.a, all(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true))))) != 4294967295u;
    let var_2 = select(select(!arg_1.a.xww, !select(vec3<bool>(false, var_0.a.b.x, false), select(var_0.a.b.wxy, vec3<bool>(var_0.a.b.x, false, true), true), true), vec3<bool>(var_0.d, true, ~var_0.c == (u_input.a >> (1u % 32u)))), var_0.b.b.yzz, select(var_0.b.b.xyx, var_0.b.b.zzz, arg_1.a.wyy));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(775f, -1291f, -1000f), vec3<f32>(195f, 1511f, -551f), false)))) - vec3<f32>(1f, -1751f, -663f)))));
    return _wgslsmith_div_u32(u_input.a, ~abs(0u));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(~arg_0.a, arg_0.a));
    var var_1 = var_0.a.x;
    var var_2 = Struct_4(vec4<bool>(!select(any(vec3<bool>(false, false, false)), arg_3, arg_3 || true), true, any(vec3<bool>(any(vec2<bool>(arg_2, false)), select(arg_3, false, true), u_input.a >= u_input.a)), arg_3));
    var_0 = arg_0;
    let var_3 = func_3(arg_0, Struct_4(!var_2.a));
    return var_3;
}

fn func_1(arg_0: u32) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(~(u_input.a ^ arg_0), _wgslsmith_add_u32(arg_0, _wgslsmith_mult_u32(u_input.a, 83235u))), ~(~_wgslsmith_add_u32(u_input.a, 36823u)), u_input.a), _wgslsmith_clamp_vec4_u32(abs(~(~vec4<u32>(arg_0, arg_0, 4439u, arg_0))), ~vec4<u32>(arg_0, 1u, func_2(Struct_3(vec4<i32>(-31410i, -13976i, -72203i, -17229i)), 0u, false, false), ~11452u), vec4<u32>(arg_0, ~28558u, abs(1u), _wgslsmith_mult_u32(53907u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 16714u), vec4<u32>(arg_0, 0u, u_input.a, 52271u))))));
    var var_1 = ~(~select(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.x, 135841u), vec4<u32>(arg_0, 0u, 47074u, 26671u) >> (var_0 % vec4<u32>(32u))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false))));
    var var_2 = var_0.xy;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(511f, 932f)))), -2032f)));
    var var_3 = Struct_4(vec4<bool>(true, true, true, true));
    return Struct_5(Struct_1(-(-2147483647i << (_wgslsmith_div_u32(57920u, var_2.x) % 32u)), vec4<bool>(var_3.a.x, all(!var_3.a), all(select(var_3.a.yyy, vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.a.x)), true), var_0), true, Struct_2(Struct_1(reverseBits(-7387i), var_3.a, ~(~var_0)), Struct_1(-_wgslsmith_div_i32(2147483647i, 2147483647i), var_3.a, select(vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x), firstLeadingBit(vec4<u32>(var_0.x, 30575u, u_input.a, var_0.x)), true)), ~func_3(Struct_3(vec4<i32>(11112i, 1i, 27342i, 0i)), Struct_4(vec4<bool>(true, var_3.a.x, true, var_3.a.x))), all(!select(vec2<bool>(var_3.a.x, var_3.a.x), var_3.a.yy, false))), _wgslsmith_mult_i32(max(firstLeadingBit(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(1i, 0i)), i32(-1i) * -_wgslsmith_sub_i32(-2147483647i, 1i)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: u32) -> StorageBuffer {
    let var_0 = ~(~(~(-(~vec4<i32>(1i, arg_0.a.a, arg_0.a.a, -2147483647i)))));
    return StorageBuffer(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 999f, -1000f, 435f))), vec4<f32>(1092f, 1156f, -635f, 1709f))), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(u_input.a ^ u_input.a), 9u)])), countOneBits(reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.a.c.x, 2296u), ~vec2<u32>(19139u, 50582u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    var var_0 = Struct_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(false, true, false, false)), any(vec3<bool>(true, true, true)), true, select(4294967295u < u_input.a, any(vec2<bool>(false, false)), true)), vec4<bool>(true, true, true, true)));
    global0 = array<vec4<f32>, 9>();
    let var_1 = var_0.a.x;
    let var_2 = 19050u;
    var var_3 = var_2;
    global1 = var_0.a.x;
    let x = u_input.a;
    s_output = func_4(func_1(71777u), select(vec4<bool>(false, select(true, any(vec4<bool>(true, true, var_0.a.x, var_0.a.x)), false), true, true), var_0.a, var_0.a.x && !var_0.a.x), 0u);
}

