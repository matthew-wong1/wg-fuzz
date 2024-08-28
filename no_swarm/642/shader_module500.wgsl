struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<u32, 7>;

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = global1.x;
    global4 = array<vec2<bool>, 11>();
    var var_1 = _wgslsmith_clamp_vec2_i32(u_input.b.zx ^ vec2<i32>(~u_input.e << (29302u % 32u), u_input.e), u_input.b.xy, _wgslsmith_add_vec2_i32(~(u_input.b.yy & vec2<i32>(0i, u_input.e)), -u_input.b.wx));
    var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(10133i, 2147483647i, u_input.c, u_input.e), u_input.b), ~(i32(-1i) * -45315i)), -(-var_1.x & u_input.c)), vec2<i32>(26856i, var_1.x));
    return select(!vec4<bool>(false, _wgslsmith_dot_vec4_u32(vec4<u32>(30517u, global2[_wgslsmith_index_u32(global3.b.x, 7u)], u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<u32>(global3.b.x, u_input.d.x, 25921u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])) > ~global3.b.x, false, true), select(!vec4<bool>(true, global3.a, !global1.x, global3.a), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, global3.a, true, true), global1.x)), true), global3.a);
}

fn func_2() -> Struct_2 {
    let var_0 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1019f, -1439f, true))))))));
    global3 = Struct_1(false, vec3<u32>(1u, min(select(_wgslsmith_mod_u32(41062u, global3.b.x), u_input.a, !var_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(31577u, global3.b.x), u_input.d.xy, global3.b.xy), global3.b.yz)), u_input.d.x));
    var var_1 = -(~u_input.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-532f)), -780f)) * 1f));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -516f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = func_2();
    var var_1 = abs(~(u_input.b.wwx & _wgslsmith_mult_vec3_i32(u_input.b.wyy, vec3<i32>(-25029i, u_input.c, -75263i))) >> (u_input.d % vec3<u32>(32u)));
    var_1 = vec3<i32>(0i, -firstTrailingBit(2440i), u_input.b.x);
    var var_2 = _wgslsmith_dot_vec2_u32(abs(~(~global3.b.zx)), ~firstTrailingBit(u_input.d.xy));
    let var_3 = var_0.a.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<f32>(1f, 1f), global1.x, vec2<u32>(_wgslsmith_dot_vec3_u32(~global3.b, vec3<u32>(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(81130u, 7u)]), ~u_input.d.x, firstLeadingBit(u_input.a))), _wgslsmith_div_u32(global3.b.x, _wgslsmith_mult_u32(1u, 1u)) ^ ~firstLeadingBit(1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(687f * -1067f), -109f, global3.a)), _wgslsmith_f_op_f32(max(-2390f, -1576f)), _wgslsmith_f_op_f32(-219f * -928f))));
    global2 = array<u32, 7>();
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(~u_input.b, u_input.b), min(-32848i, u_input.c));
    let var_2 = global3.b.x;
    global0 = all(vec3<bool>(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(624f, -436f), vec2<f32>(253f, 2186f))), global3.a, firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(49293u, 7u)], 20519u), vec2<u32>(9324u, global2[_wgslsmith_index_u32(75019u, 7u)]))), vec3<f32>(-1034f, _wgslsmith_f_op_f32(-1000f - -758f), 1000f)), !(!global3.a), abs(~global3.b.x) >= ~(~u_input.d.x)));
    global3 = Struct_1(all(vec4<bool>(false, var_0, !(0i <= var_1.x), !all(vec3<bool>(global3.a, global1.x, global1.x)))), vec3<u32>(~(~(~14121u)), 5899u, ~global3.b.x));
    var var_3 = ~vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], firstLeadingBit(global2[_wgslsmith_index_u32(0u, 7u)])), ~(~61785u)) >> (u_input.d.yz % vec2<u32>(32u));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global3.b), select(4147i, ~1i, global3.a));
}

