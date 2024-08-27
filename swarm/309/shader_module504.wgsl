struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(329u), Struct_4(1286u), Struct_4(20115u), Struct_4(4294967295u), Struct_4(1u), Struct_4(58967u), Struct_4(13786u), Struct_4(1u), Struct_4(1u), Struct_4(24188u), Struct_4(38902u), Struct_4(4294967295u), Struct_4(0u), Struct_4(1u), Struct_4(72310u), Struct_4(16618u), Struct_4(6247u), Struct_4(4294967295u), Struct_4(42138u), Struct_4(50578u), Struct_4(4294967295u), Struct_4(67280u), Struct_4(1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = Struct_5(3807u, _wgslsmith_div_vec2_i32(-arg_1.b, abs(arg_1.b)), Struct_4(27436u), arg_1.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(180f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1754f) * -1017f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 478f)));
    global2 = array<Struct_4, 23>();
    var var_2 = select(!vec4<bool>(true, true, (var_0.b.x & 31607i) != _wgslsmith_sub_i32(2147483647i, 0i), any(vec4<bool>(true, true, false, false))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !all(vec4<bool>(true, select(true, false, true), true, true)));
    global2 = array<Struct_4, 23>();
    return ~arg_1.d.b;
}

fn func_2() -> Struct_5 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(vec4<f32>(110f, -368f, 710f, -539f), Struct_5(31489u, vec2<i32>(1136i, 2147483647i), global2[_wgslsmith_index_u32(1904u, 23u)], Struct_2(vec4<f32>(517f, -1178f, 257f, 789f), 52466u)), ~66217u), 11703u, ~_wgslsmith_mod_u32(u_input.b, u_input.a)), vec3<u32>(u_input.b, ~u_input.a, u_input.a));
    global0 = -_wgslsmith_div_i32(-2147483647i, ~select(~(-16476i), 0i, true));
    return Struct_5(u_input.b, _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(1i, 1i)), vec2<i32>(1i, 1i), firstLeadingBit(~vec2<i32>(2147483647i, -22561i) << (vec2<u32>(u_input.a, 4121u) % vec2<u32>(32u)))), Struct_4(abs(u_input.a)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-447f, -326f, 126f, -455f))), u_input.b ^ _wgslsmith_sub_u32(u_input.a, u_input.a)));
}

fn func_1(arg_0: f32) -> bool {
    global0 = ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -33052i), -vec2<i32>(-26651i, 5449i)) << (firstTrailingBit(u_input.b) % 32u));
    let var_0 = -vec2<i32>(0i, 1i);
    var var_1 = 1i;
    var var_2 = func_2();
    global2 = array<Struct_4, 23>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.d.a.x, arg_0))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0, var_2.d.a.x))))), _wgslsmith_f_op_f32(min(var_2.d.a.x, var_2.d.a.x)), all(vec3<bool>(true, true, true)))) >= _wgslsmith_f_op_f32(max(var_2.d.a.x, -408f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1259f, 448f, -258f, -130f) + vec4<f32>(-1518f, 1472f, -1148f, -769f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_div_f32(-265f, 308f), 389f, 1000f), vec4<bool>(select(true, true, false), false, true, false))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1133f + 332f), _wgslsmith_f_op_f32(f32(-1f) * -517f), func_1(-748f))), _wgslsmith_f_op_f32(round(607f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(1000f, -487f))), -1009f))), _wgslsmith_mod_u32(~(~select(6540u, u_input.a, false)), ~abs(~u_input.b)));
    global1 = array<vec3<u32>, 26>();
    global0 = abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2920i, -21771i), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-1i, 6148i)), vec2<i32>(1i, 1i))), ~countOneBits(1i)));
    let var_1 = 308f;
    var var_2 = var_0.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 58188i, u_input.a, var_0.a.x, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_sub_vec2_u32(max(vec2<u32>(0u, 1u), vec2<u32>(var_0.b, var_0.b)), vec2<u32>(32998u, u_input.b) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))));
}

