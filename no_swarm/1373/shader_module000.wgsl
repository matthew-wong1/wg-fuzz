struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: Struct_3 = Struct_3(844f, vec2<i32>(0i, -1i), Struct_1(true, true));

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<i32, 5> = array<i32, 5>(0i, i32(-2147483648), 1i, -69423i, -29155i);

var<private> global4: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(4294967295u, 0u, 49708u), vec3<u32>(4294967295u, 1u, 8673u), vec3<u32>(39525u, 50894u, 19423u), vec3<u32>(334u, 20574u, 57490u), vec3<u32>(4294967295u, 61453u, 1u), vec3<u32>(72904u, 1u, 13655u), vec3<u32>(45949u, 1u, 82324u), vec3<u32>(4294967295u, 0u, 32514u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(10733u, 1u, 4294967295u), vec3<u32>(53897u, 1u, 4294967295u), vec3<u32>(1u, 2190u, 32556u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(19894u, 1865u, 1u), vec3<u32>(58852u, 0u, 4294967295u), vec3<u32>(52774u, 60864u, 17703u), vec3<u32>(29354u, 4294967295u, 115529u), vec3<u32>(0u, 4294967295u, 44034u), vec3<u32>(22416u, 5814u, 6292u), vec3<u32>(30831u, 4294967295u, 82266u), vec3<u32>(1u, 4294967295u, 59684u), vec3<u32>(4294967295u, 0u, 15875u), vec3<u32>(11174u, 35693u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> u32 {
    global4 = array<vec3<u32>, 23>();
    global2 = array<Struct_1, 13>();
    global4 = array<vec3<u32>, 23>();
    global4 = array<vec3<u32>, 23>();
    let var_0 = vec4<u32>(1822u, _wgslsmith_sub_u32(~(u_input.b.x << (1u % 32u)), ~u_input.b.x) >> (~u_input.c % 32u), 7693u, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_div_u32(~29672u, u_input.c), select(~1u, ~0u, true))));
    return _wgslsmith_mult_u32(var_0.x, var_0.x);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = array<vec3<bool>, 2>();
    let var_0 = ~(-global1.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1050f))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = ~_wgslsmith_add_u32(80625u, max(~max(0u, 21658u), func_2(global3[_wgslsmith_index_u32(u_input.c, 5u)]) | 25770u));
    let var_1 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(29894u, u_input.b.x), 61288u);
    let var_2 = -262f;
    let var_3 = vec2<u32>(~1u, min(_wgslsmith_add_u32(u_input.b.x, ~1u), 20221u ^ var_0));
    return Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))))), _wgslsmith_clamp_vec2_i32(select(global1.b, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, global3[_wgslsmith_index_u32(55788u, 5u)]), vec2<i32>(2147483647i, 78393i) >> (var_3 % vec2<u32>(32u))), vec2<bool>(false, true)), firstLeadingBit(select(arg_1.a, vec2<i32>(48344i, -2147483647i), global1.c.b) ^ ~arg_0.xx), firstTrailingBit(arg_0.xz) << (vec2<u32>(firstTrailingBit(var_1), var_0) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_f32(718f, -1766f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b.x, var_0, 29518u)))), !(!select(global1.c.b, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global1.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f))), _wgslsmith_f_op_f32(f32(-1f) * -2032f)));
    global4 = array<vec3<u32>, 23>();
    global1 = func_1(-(-vec4<i32>(-33337i, 18520i, u_input.a.x, -1i) << (vec4<u32>(min(0u, 1815u), 4294967295u, u_input.c, _wgslsmith_mod_u32(0u, u_input.b.x)) % vec4<u32>(32u))), Struct_4(min(u_input.a.xy, vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, global1.b.x), global1.b.x))), global1.b.x < ~_wgslsmith_div_i32(u_input.d | global1.b.x, _wgslsmith_mod_i32(-2147483647i, -35699i)));
    var_0 = -17833i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * global1.a) - var_1.x);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-246f)))))));
    let var_4 = any(select(vec3<bool>(~(-1i) != _wgslsmith_mult_i32(-1i, u_input.a.x), false, !global1.c.b), global0[_wgslsmith_index_u32(87723u, 2u)], all(vec2<bool>(true, true))));
    let var_5 = !vec2<bool>(all(select(select(vec2<bool>(global1.c.a, var_4), vec2<bool>(false, var_4), global1.c.b), select(vec2<bool>(var_4, true), vec2<bool>(global1.c.a, var_4), var_4), vec2<bool>(global1.c.b, var_4))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(select(global3[_wgslsmith_index_u32(min(u_input.b.x, ~0u) >> (~1u % 32u), 5u)], ~global1.b.x, -1501f >= _wgslsmith_f_op_f32(1629f - _wgslsmith_f_op_f32(-1606f + global1.a))), abs(u_input.b), -1807f, _wgslsmith_add_u32(u_input.c, ~(u_input.c >> (u_input.c % 32u))));
}

