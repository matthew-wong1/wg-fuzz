struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<i32>(1i, 1i), 0i, 1i), Struct_2(vec2<i32>(1i, -18101i), 22249i, i32(-2147483648)), Struct_2(vec2<i32>(1i, 27925i), i32(-2147483648), -1i), Struct_2(vec2<i32>(i32(-2147483648), 1i), -709i, 6189i), Struct_2(vec2<i32>(30420i, 1i), -2795i, 40211i), Struct_2(vec2<i32>(25708i, -36113i), 46245i, -53887i), Struct_2(vec2<i32>(-1i, -2526i), 415i, 1i), Struct_2(vec2<i32>(1i, 0i), 40603i, -29865i), Struct_2(vec2<i32>(-17878i, 3413i), 2147483647i, -28272i), Struct_2(vec2<i32>(1719i, 13747i), -35677i, 2147483647i), Struct_2(vec2<i32>(23889i, 0i), 0i, 12174i), Struct_2(vec2<i32>(-1i, -17385i), -5919i, 0i));

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 8>();
    let var_0 = 97230u;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1166f);
    global1 = array<Struct_2, 12>();
    var var_2 = -763f;
    return var_1;
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = u_input.b;
    global1 = array<Struct_2, 12>();
    return !(!vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, false))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = vec2<bool>(any(vec2<bool>(false, u_input.b.x == reverseBits(0u))), !(!(_wgslsmith_f_op_f32(366f - arg_2) == _wgslsmith_f_op_f32(func_2()))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~49312u, ~abs(arg_0), ~(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0, 16661u, 3355u), u_input.b)), firstLeadingBit(u_input.b) | ~(~(~vec4<u32>(u_input.b.x, 4294967295u, arg_0, 0u)))), 8u)];
    let var_2 = Struct_2(arg_1.a, arg_1.b, 0i);
    let var_3 = firstTrailingBit(-2147483647i) << (~var_1.b % 32u);
    var var_4 = true;
    return func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 429f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.a, u_input.a), vec3<i32>(18607i | global0.a.x, _wgslsmith_mult_i32(global0.c, u_input.c), 2147483647i) ^ u_input.a);
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i >> (0u % 32u), 1i), var_0.x, global0.a.x) << (~vec3<u32>(_wgslsmith_sub_u32(110909u, u_input.b.x), u_input.b.x, u_input.b.x) % vec3<u32>(32u)), ~u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-var_0.x, 2425i, abs(global0.b >> (3825u % 32u))), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2268i, global0.a.x, u_input.d)) & vec3<i32>(u_input.d, -1i, -1i), ~(-u_input.a), vec3<i32>(25380i, var_0.x, var_0.x))));
    var_0 = u_input.a;
    var var_1 = !func_1(46505u, global1[_wgslsmith_index_u32(~max(1u, u_input.b.x), 12u)], _wgslsmith_f_op_f32(f32(-1f) * -1627f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1620f, -457f, -1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(160f, 1010f, 225f) - vec3<f32>(-1037f, 1562f, 1467f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, -1503f, 508f))), select(true, 42611u <= u_input.b.x, true))));
    var_0 = vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, u_input.d), -21305i, var_0.x), ~firstTrailingBit(vec3<i32>(global0.a.x, var_0.x, -1i))), ~(-(~var_0.x)), ~reverseBits(1i));
    var var_2 = 1u & u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-vec4<i32>(-1i, i32(-1i) * -2147483647i, 1i, -global0.a.x)), -774f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(327f)) * -1000f), _wgslsmith_f_op_f32(-627f * -201f), _wgslsmith_f_op_f32(f32(-1f) * -929f), -745f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2719f))), 380f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(1199f))), _wgslsmith_f_op_f32(sign(151f))))));
}

