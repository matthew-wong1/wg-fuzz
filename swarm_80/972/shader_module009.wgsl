struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(0u, 1u, 1727u));

var<private> global2: u32 = 10744u;

var<private> global3: array<vec2<bool>, 18>;

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, true), Struct_2(true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(39162u, _wgslsmith_sub_u32(select(4294967295u, u_input.a.x, true), u_input.a.x)) | (~(~u_input.a.x) << (u_input.a.x % 32u))), 2u)];
    var var_1 = Struct_2(countOneBits(1u) > min(_wgslsmith_sub_u32(_wgslsmith_sub_u32(54530u, 31190u), min(4294967295u, u_input.a.x)), ~(0u >> (u_input.a.x % 32u))), false & all(vec3<bool>(true, true, false)));
    let var_2 = u_input.a.wx;
    global4 = array<Struct_2, 2>();
    global0 = Struct_1(arg_0.d, arg_0.b, vec3<i32>(min(5347i, _wgslsmith_mod_i32(~(-17118i), 41211i)), ~(_wgslsmith_clamp_i32(0i, global0.c.x, arg_0.d.x) | abs(-1i)), _wgslsmith_mod_i32(~_wgslsmith_div_i32(arg_0.c.x, global0.a.x), _wgslsmith_mod_i32(2147483647i, -27743i))), global0.d);
    return arg_0;
}

fn func_1() -> Struct_1 {
    return func_2(Struct_1(countOneBits(global0.d), !vec3<bool>(true, true, global0.b.x), -_wgslsmith_div_vec3_i32(vec3<i32>(global0.d.x, 1i, 1i), global0.a.wxx) << (~global1[_wgslsmith_index_u32(4294967295u, 1u)] % vec3<u32>(32u)), reverseBits(~(~vec4<i32>(global0.c.x, 71654i, -33618i, global0.c.x)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(-(~(~select(global0.a, vec4<i32>(global0.c.x, -1i, arg_3.x, -16433i), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x)))), func_2(func_1()).b, arg_3 >> (vec3<u32>(~8341u, 4294967295u, arg_2) % vec3<u32>(32u)), ~(_wgslsmith_div_vec4_i32(global0.d, global0.a) & global0.a));
    var var_2 = Struct_3(global4[_wgslsmith_index_u32(u_input.a.x, 2u)], func_2(func_1()).b.xz, global0.d.xyx, vec2<bool>(true, ~firstLeadingBit(u_input.a.x) == abs(1u)), _wgslsmith_clamp_u32(u_input.a.x >> (~46440u % 32u), u_input.a.x, u_input.a.x));
    var var_3 = var_2.a;
    var var_4 = global0.a;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(4294967295u, 0u << (u_input.a.x % 32u)), 4294967295u, firstTrailingBit(func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(164f, 468f, -340f))), abs(21947i), _wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_clamp_vec3_i32(var_0.a.www, var_0.a.xxy, var_0.a.www))), ~u_input.a.x | u_input.a.x), (max(min(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 38143u), u_input.a), vec4<u32>(1u, 10356u, 25142u, u_input.a.x)) | u_input.a) ^ vec4<u32>(u_input.a.x, max(0u, u_input.a.x) ^ ~u_input.a.x, u_input.a.x, firstTrailingBit(0u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(886f, 579f, 286f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1137f, 328f, -559f))), false)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1122f, 1688f, -757f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-860f, 213f, -611f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(993f, 458f, 502f), vec3<f32>(-1154f, 508f, -1701f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1070f, 1000f, -526f))))))));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1376f - var_2.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.x)), 207f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))));
}

