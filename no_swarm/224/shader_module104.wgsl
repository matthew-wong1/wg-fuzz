struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(1000f, 466f), vec2<f32>(-1035f, 678f), vec2<f32>(-290f, 1683f), vec2<f32>(-1517f, 280f), vec2<f32>(-780f, -1383f), vec2<f32>(-1000f, 359f), vec2<f32>(972f, -1174f), vec2<f32>(244f, 992f), vec2<f32>(2143f, 919f), vec2<f32>(845f, -606f), vec2<f32>(-1943f, -1185f), vec2<f32>(648f, 2158f), vec2<f32>(202f, -1000f), vec2<f32>(395f, -734f), vec2<f32>(268f, -2274f), vec2<f32>(377f, 609f), vec2<f32>(1433f, -265f), vec2<f32>(-1397f, -948f), vec2<f32>(1527f, 384f), vec2<f32>(-176f, 583f), vec2<f32>(285f, 267f), vec2<f32>(1351f, 373f), vec2<f32>(-239f, 272f), vec2<f32>(-106f, 779f));

var<private> global1: array<Struct_5, 16>;

var<private> global2: vec3<i32>;

var<private> global3: bool;

var<private> global4: array<i32, 20> = array<i32, 20>(-17386i, 41694i, -1i, 2147483647i, -25793i, 1i, i32(-2147483648), -46633i, 0i, 40638i, 2147483647i, 2147483647i, i32(-2147483648), 1i, -50794i, -44991i, -12255i, 2147483647i, 95100i, 4044i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zxy) - arg_0.xxx);
    global1 = array<Struct_5, 16>();
    global3 = false;
    global2 = u_input.a.xyx;
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(select(vec3<u32>(1u, 4294967295u, 4294967295u), u_input.b, false)), vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), u_input.b, min(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.b.x))), vec3<u32>(107460u, u_input.b.x, 6301u) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))), u_input.b.x), 16u)];
    return select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), -1423f <= _wgslsmith_f_op_f32(-arg_0.x)), vec2<bool>(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) < max(~(-2147483647i), -1i), false), true);
}

fn func_3() -> u32 {
    let var_0 = 489f;
    global1 = array<Struct_5, 16>();
    global2 = countOneBits(u_input.a.wzx);
    global2 = firstTrailingBit(_wgslsmith_sub_vec3_i32(-u_input.a.yxx, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 11514i, 11872i), u_input.a.wzy)) & firstTrailingBit(vec3<i32>(i32(-1i) * -31679i, global2.x, u_input.c)));
    return _wgslsmith_dot_vec2_u32(u_input.b.xy & (_wgslsmith_mult_vec2_u32(select(u_input.b.zx, u_input.b.zz, vec2<bool>(true, true)), ~vec2<u32>(u_input.b.x, 55298u)) ^ abs(_wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.b.x)))), vec2<u32>(~countOneBits(1u), 0u));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1156f, 484f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1695f, _wgslsmith_f_op_f32(ceil(-666f))))), !func_2(vec4<f32>(-1067f, -239f, 1794f, 229f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1226f)), -1581f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f * -240f)), 610f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 688f)))) * var_0.x));
    global0 = array<vec2<f32>, 24>();
    global4 = array<i32, 20>();
    let var_2 = ~(~vec3<u32>(u_input.b.x, 0u, func_3()));
    return Struct_3(vec2<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zy)), _wgslsmith_mod_u32(6777u, ~51494u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = u_input.a;
    let var_2 = var_0;
    let var_3 = 0u;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160f, 538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(904f)))))));
    global3 = true;
    var var_5 = vec3<i32>(~(-30408i), ~(-17338i), firstLeadingBit(2147483647i));
    var var_6 = !vec4<bool>((any(vec2<bool>(true, true)) & true) & !any(vec3<bool>(false, false, true)), false, true, 171f > var_4.x);
    let var_7 = Struct_4(u_input.b, vec4<bool>(!var_6.x, !all(vec2<bool>(true, true)), var_6.x, true), !select(vec2<bool>(true, var_6.x), select(select(var_6.wy, var_6.zw, vec2<bool>(false, var_6.x)), var_6.zx, var_6.x), vec2<bool>(true, true)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(var_3 ^ var_2.a.x, var_3)), 20u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -993f), _wgslsmith_f_op_f32(step(var_4.x, var_4.x)), var_4.x, _wgslsmith_f_op_f32(ceil(-397f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 686f, var_4.x, -1909f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x) + vec4<f32>(var_4.x, var_4.x, var_4.x, 1510f))), false))), 2113f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, var_4.x, -309f, var_4.x)))), vec4<f32>(-545f, -202f, _wgslsmith_f_op_f32(trunc(870f)), -1218f), var_7.b)))), vec4<f32>(_wgslsmith_f_op_f32(floor(350f)), _wgslsmith_f_op_f32(trunc(-239f)), 1608f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_4.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1040f)))))));
}

