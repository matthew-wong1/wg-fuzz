struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_3, 30>;

var<private> global2: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec2<bool> {
    global2 = Struct_4(select(true, false, true), firstTrailingBit(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.d, 0u, 36458u), vec4<u32>(44832u, u_input.a, 4294967295u, global2.b.x)) ^ global2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_f_op_vec3_f32(ceil(global2.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, 885f) - _wgslsmith_f_op_f32(f32(-1f) * -275f)), _wgslsmith_f_op_f32(-global2.e.x)) - _wgslsmith_f_op_vec2_f32(ceil(global2.e))));
    global1 = array<Struct_3, 30>();
    let var_0 = vec3<i32>(-8813i, _wgslsmith_div_i32(~u_input.c, 6020i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, firstLeadingBit(u_input.c), 0i), ~min(vec3<i32>(u_input.c, 2147483647i, 2147483647i), vec3<i32>(0i, 37779i, 14583i))));
    var var_1 = 2147483647i;
    return vec2<bool>(all(vec2<bool>(true, true)), false);
}

fn func_2() -> Struct_4 {
    let var_0 = all(select(select(func_3(select(vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(global2.a, false, false, global2.a), vec4<bool>(global2.a, global2.a, global2.a, global2.a)), global2.a), func_3(!vec4<bool>(global2.a, false, false, global2.a), true != global2.a), true), select(vec2<bool>(global2.a, u_input.d >= 4552u), !select(vec2<bool>(global2.a, global2.a), vec2<bool>(false, false), false), func_3(select(vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(false, global2.a, global2.a, false), vec4<bool>(false, false, false, global2.a)), false).x), global2.a));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~global2.b.x, 18u)], true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534f - global2.d.x))), _wgslsmith_f_op_f32(-1595f + global2.d.x)));
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return Struct_4(any(!(!vec2<bool>(var_0, var_0))), vec4<u32>(firstLeadingBit(firstTrailingBit(u_input.d ^ 11358u)), select(global2.b.x, 4294967295u, var_1.b), 94516u, _wgslsmith_clamp_u32(min(select(18437u, var_1.a.a, true), _wgslsmith_clamp_u32(var_1.a.a, 0u, 52750u)), min(_wgslsmith_div_u32(0u, u_input.d), ~47912u), ~1u)), _wgslsmith_f_op_f32(var_1.c * 225f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)), _wgslsmith_f_op_vec2_f32(global2.e + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.zz * _wgslsmith_f_op_vec2_f32(max(global2.e, global2.e))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_4 {
    let var_0 = abs(_wgslsmith_clamp_vec3_u32(~global2.b.yyz, global2.b.wxz, global2.b.yww));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(838f, arg_0, _wgslsmith_f_op_f32(trunc(arg_0))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c)));
    var var_3 = vec4<i32>(u_input.c, ~_wgslsmith_sub_i32(select(u_input.c, u_input.c, true), -38003i) >> (_wgslsmith_sub_u32(~var_0.x << (81839u % 32u), ~(~arg_1.a)) % 32u), 0i, -77389i);
    var var_4 = _wgslsmith_f_op_f32(min(966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))));
    return func_2();
}

fn func_4(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(~func_2().b.x, _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(arg_0.b.x, 39607u))), true, any(vec2<bool>(true, true))), true, -906f);
    global2 = Struct_4(28862u <= var_0.a.a, func_2().b, _wgslsmith_f_op_f32(min(var_0.c, var_0.c)), global2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e))));
    let var_1 = true;
    global0 = array<Struct_1, 18>();
    let var_2 = var_0;
    return global2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!(u_input.b == u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(func_4(func_1(global2.e.x, Struct_1(0u, global2.a, global2.a))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 38247u, 54279u), global2.b.xwx, vec3<u32>(u_input.b, global2.b.x, u_input.d)), vec3<u32>(global2.b.x, 0u, global2.b.x)), ~select(1u, 4294967295u, true), firstLeadingBit(_wgslsmith_dot_vec2_u32(global2.b.yw, vec2<u32>(25374u, u_input.b)))), vec4<u32>(47595u, 4294967295u, 51521u, 62891u), ~_wgslsmith_clamp_vec4_u32(global2.b, vec4<u32>(107209u, 36619u, 46638u, global2.b.x) << (global2.b % vec4<u32>(32u)), vec4<u32>(global2.b.x, global2.b.x, 4294967295u, 44597u) | vec4<u32>(u_input.b, 40463u, 0u, 48990u))), _wgslsmith_f_op_f32(global2.d.x + 560f), func_1(-885f, Struct_1(~_wgslsmith_add_u32(global2.b.x, 130248u), true || global2.a, true)).d, global2.e);
    var_0 = Struct_4(true, var_0.b >> (global2.b % vec4<u32>(32u)), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.e.x)), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c, var_0.d.x)))))), var_0.d.yy);
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, global2.e.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x - 1275f) * _wgslsmith_f_op_f32(global2.e.x * var_0.c)))));
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~27639i), _wgslsmith_mod_vec4_u32(~func_2().b, firstLeadingBit(func_2().b)), var_0.b, -273f, -2041f);
}

