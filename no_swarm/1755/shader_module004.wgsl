struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(82244u, 9381u, 934u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 8759u), vec2<bool>(false, true), 2147483647i, 83498u, vec3<u32>(27176u, 92632u, 4294967295u)));

var<private> global2: array<i32, 14> = array<i32, 14>(14523i, -64848i, -1i, 30691i, -30624i, 12418i, -18185i, 27785i, 2147483647i, 0i, 18530i, 1i, 1i, i32(-2147483648));

var<private> global3: array<u32, 26>;

var<private> global4: array<bool, 16> = array<bool, 16>(true, false, false, true, true, true, false, false, false, false, true, false, false, false, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    return vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u | firstTrailingBit(global0.x)), 5076u, arg_0.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-607f - -616f)), _wgslsmith_f_op_f32(1000f - -762f))), -1000f)), select(firstLeadingBit(~(~global1.a.d)), 1u, any(select(select(vec2<bool>(true, true), arg_0.zz, vec2<bool>(arg_2.b.x, true)), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], true), !arg_0.x))), ~firstLeadingBit(abs(13141u)));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, select(select(vec2<u32>(6086u, 4294967295u), vec2<u32>(var_0.b, global1.a.e.x), global1.a.b.x), vec2<u32>(4294967295u, global0.x), vec2<bool>(arg_2.b.x, true))), min(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 16062u)) << (firstLeadingBit(global1.a.e.zz) % vec2<u32>(32u));
    global0 = vec3<u32>(~_wgslsmith_sub_u32(global0.x, 1u), u_input.c, ~reverseBits(reverseBits(~56657u)));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, 0i << (u_input.c % 32u)), ~select(global2[_wgslsmith_index_u32(41702u, 14u)], -1i, true)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, arg_1.x), vec2<i32>(arg_2.c, 10329i)))), -2147483647i);
    let var_3 = all(arg_0.xy);
    return Struct_2(Struct_1(func_3(~(~vec4<u32>(898u, 3033u, arg_2.d, global0.x))), !(!select(vec2<bool>(arg_2.b.x, global4[_wgslsmith_index_u32(arg_2.d, 16u)]), global1.a.b, arg_2.b)), min(-(~u_input.e), -2147483647i), max(1u, _wgslsmith_div_u32(1u, arg_2.d)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, 24730u) | vec3<u32>(43775u, 0u, u_input.a.x), vec3<u32>(arg_2.d, 12177u, var_1.x) ^ vec3<u32>(45839u, 4294967295u, 10189u)), arg_2.a)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global4 = array<bool, 16>();
    var var_0 = Struct_2(global1.a);
    global2 = array<i32, 14>();
    let var_1 = func_2(!select(select(select(vec3<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x), vec3<bool>(false, false, true), vec3<bool>(true, arg_0.x, false)), vec3<bool>(global1.a.b.x, true, var_0.a.b.x), true), vec3<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 26u)], 16u)], true, true)), true, all(vec4<bool>(false, var_0.a.b.x, false, false))), true), -firstLeadingBit(abs(u_input.d)), global1.a);
    var var_2 = var_1.a;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    global0 = abs(min(vec3<u32>(global1.a.a.x, u_input.c, global3[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_mod_vec3_u32(global1.a.e, var_0.a)) | var_0.a);
    global1 = Struct_2(global1.a);
    var var_1 = ~(~1u);
    var var_2 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(global1.a.d, 0u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(7962u, 0u) << (var_0.e.yx % vec2<u32>(32u))), vec2<u32>(49356u, ~global3[_wgslsmith_index_u32(global0.x, 26u)])), global0.x), global1.a.b, -2625i << (~func_1(!global1.a.b) % 32u), 0u, vec3<u32>(countOneBits(~(~57643u)), ~(var_0.a.x >> (global0.x % 32u)), var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 978f, -526f), vec3<f32>(1416f, 1000f, -200f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 432f, -686f))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-465f - 757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1350f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1591f)), _wgslsmith_f_op_f32(abs(594f)))))), ~vec4<u32>(_wgslsmith_mult_u32(~global0.x, 1u), ~(~var_0.a.x), ~(~u_input.c), ~_wgslsmith_div_u32(4294967295u, 1u)), _wgslsmith_div_u32(abs(_wgslsmith_mod_u32(~var_2.d, u_input.a.x)), _wgslsmith_add_u32(u_input.c, global0.x) & ~u_input.a.x), vec4<u32>(global0.x, 32362u, abs(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, u_input.c, var_0.a.x, var_0.a.x), vec4<u32>(global0.x, 55438u, 1u, global1.a.d)), vec4<u32>(28661u, 39531u, global3[_wgslsmith_index_u32(67192u, 26u)], 1u)), 26u)]), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~global0.x, global3[_wgslsmith_index_u32(u_input.c, 26u)]), _wgslsmith_sub_u32(firstTrailingBit(0u), ~4294967295u))));
}

