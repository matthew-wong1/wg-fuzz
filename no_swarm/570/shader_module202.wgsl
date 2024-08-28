struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec2<bool>(false, false));

var<private> global1: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(vec4<i32>(arg_0 << ((min(1u, 16105u) & ~u_input.c.x) % 32u), -2147483647i, -28534i, (i32(-1i) * -22137i) & ~(-arg_0)), false);
    let var_1 = (_wgslsmith_sub_vec2_u32(u_input.c.xw, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.c.yz) << (vec2<u32>(u_input.c.x, 27806u) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 92109u, 4294967295u) & vec4<u32>(u_input.c.x, 1u, 95971u, 82099u)), ~abs(u_input.c.x))) & ~(abs(vec2<u32>(u_input.c.x, u_input.c.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.c.x, u_input.c.x)));
    let var_2 = !vec3<bool>(!global0.b.x, true, arg_2.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -943f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = u_input.c;
    return vec4<i32>(select(~u_input.b, var_0.a.x, global0.b.x), var_0.a.x, 1i, _wgslsmith_mod_i32(-5312i, u_input.d >> ((4294967295u << (var_3.x % 32u)) % 32u)) >> (~24693u % 32u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_3 {
    global0 = Struct_2(!arg_2.a.x, global1[_wgslsmith_index_u32(1u, 12u)]);
    global0 = Struct_2(true, global0.b);
    global1 = array<vec2<bool>, 12>();
    global1 = array<vec2<bool>, 12>();
    global2 = all(vec2<bool>(arg_2.a.x, arg_2.a.x));
    return Struct_3(func_3(u_input.b, -(u_input.b & -2358i), Struct_2(!all(vec2<bool>(global0.a, false)), global0.b)), !global0.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(u_input.c.zy), vec2<u32>(699u, u_input.c.x)) >> (vec2<u32>(firstTrailingBit(arg_0.c), abs(arg_0.c)) % vec2<u32>(32u)), ~u_input.c.wz), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(880f, _wgslsmith_f_op_f32(f32(-1f) * -1881f), -358f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, -3282f, 462f))))), Struct_1(select(select(vec2<bool>(false, false), !arg_2.b, select(arg_2.b, global0.b, global0.a)), !(!arg_2.b), select(global0.b, !global1[_wgslsmith_index_u32(4294967295u, 12u)], all(vec2<bool>(global0.a, false)))), 1u, u_input.c.x), ~(vec3<u32>(~4294967295u, arg_0.b, 1u) | vec3<u32>(25397u, arg_0.b | u_input.c.x, 1u)));
    let var_1 = func_2(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.c.x, arg_0.b, u_input.c.x), 20072u), arg_0.c), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1237f, 535f))), _wgslsmith_f_op_f32(select(-1306f, -1000f, !var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1183f * 2390f), _wgslsmith_f_op_f32(-715f - -279f)) - -2347f), -242f), arg_0, vec3<u32>(~reverseBits(arg_0.c), 55088u, ~4294967295u));
    global2 = var_0.b;
    global0 = arg_2;
    let var_2 = vec4<bool>(true, true, !select(all(!vec2<bool>(true, arg_0.a.x)), true, arg_2.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-652f)), -534f)) >= -373f);
    return ~79599u;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec3<bool> {
    global1 = array<vec2<bool>, 12>();
    var var_0 = true;
    global0 = Struct_2(false, select(global1[_wgslsmith_index_u32(0u, 12u)], select(select(select(global0.b, vec2<bool>(global0.a, false), global0.a), vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(true, global0.a)), vec2<bool>(any(global0.b), all(vec3<bool>(global0.b.x, global0.b.x, false))), max(arg_3.x, arg_3.x) >= min(10469u, 0u)), true));
    var var_1 = select(!select(vec2<bool>(arg_0.x <= -642f, select(global0.b.x, true, false)), select(global0.b, vec2<bool>(true, global0.a), select(global0.a, global0.a, false)), global0.b), !select(!(!vec2<bool>(false, global0.b.x)), global0.b, true), !select(global0.b, global0.b, true));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(u_input.c, arg_3), u_input.c), 12u)];
    return !(!(!(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, global0.a, global0.a), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = vec2<bool>(~u_input.c.x <= var_0, global0.a && global0.a);
    let var_2 = Struct_2(any(func_4(vec2<f32>(_wgslsmith_f_op_f32(step(-622f, 905f)), -384f), select(func_1(Struct_1(global0.b, 1u, u_input.c.x), u_input.a.yy, Struct_2(false, global0.b), u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 1u), u_input.c.wz), true), -(~vec4<i32>(-29909i, 19516i, 1i, u_input.a.x)), ~u_input.c)), vec2<bool>(all(select(select(vec3<bool>(global0.b.x, global0.b.x, global0.a), vec3<bool>(true, false, global0.a), vec3<bool>(false, false, global0.a)), !vec3<bool>(global0.b.x, true, true), global0.b.x)), all(global0.b)));
    var var_3 = all(vec2<bool>(false, !var_1.x));
    let var_4 = 23486u;
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.c.wwz, firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(93190u, 3591u, 8261u), u_input.c.zwx))) ^ ~_wgslsmith_mult_vec3_u32(u_input.c.ywz, _wgslsmith_mult_vec3_u32(vec3<u32>(2216u, 49863u, 4294967295u), u_input.c.xwx)), vec2<u32>(~max(_wgslsmith_dot_vec3_u32(u_input.c.wxy, vec3<u32>(u_input.c.x, var_0, 4294967295u)), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, var_0, 6080u, 50228u))), abs(~var_0)), u_input.c ^ u_input.c);
}

