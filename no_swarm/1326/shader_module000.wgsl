struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false));

var<private> global2: f32 = 544f;

var<private> global3: f32;

var<private> global4: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(false, true), Struct_2(true, false), Struct_2(true, true), Struct_2(true, false), Struct_2(true, true), Struct_2(true, false), Struct_2(true, true), Struct_2(false, true), Struct_2(false, true), Struct_2(true, false), Struct_2(true, true), Struct_2(false, true), Struct_2(true, false), Struct_2(false, false), Struct_2(true, true), Struct_2(true, true), Struct_2(false, false), Struct_2(false, false), Struct_2(true, false), Struct_2(false, false), Struct_2(true, false), Struct_2(false, false), Struct_2(false, true), Struct_2(false, false), Struct_2(true, false), Struct_2(true, true), Struct_2(true, true), Struct_2(false, true), Struct_2(false, true), Struct_2(false, false), Struct_2(true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(22576i, ~_wgslsmith_sub_i32(u_input.c.x & 2147483647i, -2147483647i), -(~u_input.c.x)), countOneBits(_wgslsmith_add_vec3_i32(countOneBits(u_input.c.zwz), abs(u_input.c.xwz))));
    return -firstLeadingBit(-u_input.c.x);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = vec4<bool>(!(!any(!vec3<bool>(true, arg_2.b, true))), all(vec2<bool>(arg_2.a | (arg_0.a.x && true), !arg_0.c)), all(vec3<bool>(arg_2.a, all(vec3<bool>(true, true, arg_0.c)), arg_0.b.x == -arg_3)), false);
    let var_1 = !select(false, any(select(vec4<bool>(arg_0.a.x, arg_2.b, var_0.x, arg_0.d.c.x), vec4<bool>(false, arg_2.a, arg_2.b, arg_2.a), var_0.x)), !all(select(var_0, vec4<bool>(arg_2.b, false, arg_0.d.c.x, true), arg_0.d.c.x)));
    var var_2 = Struct_4(select(select(!var_0.ww, !select(var_0.zz, vec2<bool>(true, arg_2.a), arg_2.a), var_0.xz), vec2<bool>(var_0.x, false), any(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(0u), arg_0.d.d), 4u)])), arg_0.b, any(vec4<bool>(arg_0.d.c.x, arg_0.a.x, arg_0.c, true)), Struct_1(abs(_wgslsmith_mult_vec4_i32(arg_0.d.a, arg_0.d.a)), ~vec3<i32>(arg_0.b.x, -2147483647i, -27277i), select(!arg_0.d.c, vec2<bool>(all(global1[_wgslsmith_index_u32(0u, 4u)]), var_0.x), vec2<bool>(any(vec2<bool>(var_0.x, true)), any(vec4<bool>(arg_0.d.c.x, false, var_1, var_1)))), ~firstTrailingBit(~81304u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1359f + arg_0.e.x), _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_div_f32(arg_0.e.x, 270f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-435f, arg_0.e.x, arg_0.e.x), vec3<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(477f - arg_0.e.x), _wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x))))));
    global3 = _wgslsmith_f_op_f32(ceil(var_2.e.x));
    var var_3 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(~var_2.b, abs(u_input.c.yy)), i32(-1i) * -arg_1, firstLeadingBit(-1i), var_2.d.a.x), vec3<i32>(-2147483647i, u_input.c.x, -_wgslsmith_add_i32(-54387i, u_input.c.x)), var_0.wz, 1u), firstLeadingBit(arg_0.d.b.x), max(max(select(vec4<u32>(74818u, 48929u, var_2.d.d, u_input.b) & vec4<u32>(3882u, u_input.a.x, var_2.d.d, u_input.b), vec4<u32>(var_2.d.d, 12142u, 32457u, 4294967295u), select(var_0, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], false)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 39037u, u_input.b, u_input.a.x), vec4<u32>(34758u, 0u, 7607u, 30060u))), firstTrailingBit(vec4<u32>(~83798u, arg_0.d.d, ~var_2.d.d, 31535u))));
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(arg_0.e.x + -1216f));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2) -> bool {
    global1 = array<vec4<bool>, 4>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-513f * 1149f))) + 3506f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_4(!vec2<bool>(arg_2.a, arg_2.b), u_input.c.xw, all(vec2<bool>(arg_2.a, arg_2.b)), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 1i, 1i), vec3<i32>(-35552i, arg_1, u_input.c.x), vec2<bool>(arg_2.b, true), 22007u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, arg_0.x, 555f))), u_input.c.x, Struct_2(false, !arg_2.b), arg_1)))));
    let var_0 = 1i;
    global1 = array<vec4<bool>, 4>();
    var var_1 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(_wgslsmith_div_i32(~u_input.c.x, func_1(global1[_wgslsmith_index_u32(0u, 4u)], 4294967295u, Struct_2(true, true), u_input.a.zx)) >= abs(u_input.c.x << (u_input.b % 32u)), !(u_input.a.x == ~1u), select(all(select(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], vec4<bool>(false, false, true, false), global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), true, true), max(-2147483647i, u_input.c.x) <= select(u_input.c.x, 1i, true)), vec4<bool>(2147483647i > -u_input.c.x, !(!func_2(vec4<f32>(-3194f, 1609f, 1000f, -282f), 71i, global4[_wgslsmith_index_u32(u_input.b, 31u)])), true, true), vec4<bool>(true, true, true, true));
    var var_1 = ~u_input.b;
    let var_2 = u_input.c.x;
    global0 = array<vec3<f32>, 20>();
    let var_3 = Struct_3(Struct_1(-(~vec4<i32>(-46480i, 38935i, -25787i, 91544i)), select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(34275i, 2147483647i, -21559i), vec3<i32>(u_input.c.x, var_2, -1i), vec3<i32>(-1i, var_2, u_input.c.x))), vec3<i32>(var_2, -2147483647i, 17849i), true), vec2<bool>(true, all(vec2<bool>(true, false))), ~u_input.b), var_2, vec4<u32>(u_input.a.x, u_input.b, _wgslsmith_mod_u32(44726u, _wgslsmith_add_u32(u_input.b, 1u)), 9353u) ^ vec4<u32>(65630u, u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), u_input.a.yy), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 0u), u_input.a), ~1770u), firstLeadingBit(30181u)));
    var var_4 = -(abs(u_input.c.ww) ^ countOneBits(vec2<i32>(-24191i, _wgslsmith_div_i32(-1i, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-743f)), _wgslsmith_mult_u32(4294967295u, u_input.b), _wgslsmith_f_op_f32(1f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1442f), _wgslsmith_f_op_f32(abs(-899f)))));
}

