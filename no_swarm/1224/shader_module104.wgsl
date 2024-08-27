struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2 = Struct_2(-1013f);

var<private> global2: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(768f, 862f), vec2<f32>(1155f, 3304f), vec2<f32>(-1093f, 993f), vec2<f32>(-559f, -258f), vec2<f32>(-362f, 544f), vec2<f32>(-143f, -634f), vec2<f32>(-1000f, 611f), vec2<f32>(1000f, -679f), vec2<f32>(455f, 1796f), vec2<f32>(-1181f, 1166f), vec2<f32>(-1007f, 601f), vec2<f32>(1000f, -1065f), vec2<f32>(457f, -2001f), vec2<f32>(1000f, 208f), vec2<f32>(361f, -1684f), vec2<f32>(-284f, -1276f), vec2<f32>(-805f, -1932f), vec2<f32>(373f, -191f), vec2<f32>(2683f, 1000f), vec2<f32>(-1222f, 2009f), vec2<f32>(-1537f, -733f), vec2<f32>(228f, 1000f), vec2<f32>(460f, -633f), vec2<f32>(1761f, 1535f), vec2<f32>(-1191f, -389f), vec2<f32>(1175f, 143f), vec2<f32>(1000f, 1197f));

var<private> global3: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -883f));
    global2 = array<vec2<f32>, 27>();
    var var_0 = 14962i;
    let var_1 = ~6266u;
    global0 = abs(u_input.a);
    return ~(~arg_0.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> u32 {
    global0 = max(0i, 1i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2254f)))))));
    let var_1 = vec3<f32>(arg_2.e, arg_0.x, _wgslsmith_f_op_f32(trunc(var_0)));
    let var_2 = vec4<i32>(-1i, 1i, (~abs(1i) | arg_2.c) | ~17742i, -min(arg_1 >> (min(arg_3.x, 32357u) % 32u), arg_1));
    var var_3 = Struct_3(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a.x, arg_2.d, 60853u, arg_2.a.x), ~(vec4<u32>(arg_3.x, 4294967295u, 72623u, 7024u) | vec4<u32>(arg_3.x, 1u, arg_2.d, arg_3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-672f, -557f)), -1600f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1141f - var_0)))))), _wgslsmith_dot_vec2_i32(var_2.zy, var_2.xx), arg_3.x, arg_0.x);
    return 14555u;
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    global3 = 1u;
    let var_0 = -710f;
    return vec3<u32>(~_wgslsmith_sub_u32(~28448u ^ select(0u, 4294967295u, true), _wgslsmith_clamp_u32(~29309u, func_3(vec4<f32>(var_0, global1.a, global1.a, arg_0.a), 0i, Struct_3(vec2<u32>(19900u, 18185u), global1.a, -16070i, 498u, var_0), vec3<u32>(14391u, 0u, 1u)), 4294967295u)), _wgslsmith_add_u32(abs(abs(~78332u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 0u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 97476u, 35770u), ~vec3<u32>(16960u, 20691u, 1u)))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~(~0u), 14504u), _wgslsmith_dot_vec2_u32(~vec2<u32>(60108u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 34068u), vec2<u32>(1u, 1u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~_wgslsmith_mult_u32(229u, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(46950u, 30618u), firstLeadingBit(vec2<u32>(9357u, 4294967295u)))), 1u >> (func_1(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(7017u, 44780u, 87462u, 51543u)), vec4<u32>(6354u, 3253u, 43836u, 34956u))) % 32u));
    var_0 = ~(~(~(vec3<u32>(var_0.x, 55330u, var_0.x) << (func_2(Struct_2(-1000f)) % vec3<u32>(32u)))));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(-global1.a)) * vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], true)))), select(select(vec2<bool>(false, false), vec2<bool>(var_1, true), vec2<bool>(true, true)), select(!vec2<bool>(false, var_1), select(vec2<bool>(true, true), vec2<bool>(false, var_1), true), vec2<bool>(true, true)), vec2<bool>(var_1, !var_1)))), !vec3<bool>(any(vec2<bool>(true, true)), any(!vec4<bool>(true, false, var_1, var_1)), var_1), 4294967295u);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~reverseBits(max(vec4<u32>(var_3.c, var_3.c, var_2.c, var_2.c), vec4<u32>(11782u, var_0.x, var_2.c, 80479u))), vec4<u32>(14562u << ((58972u >> (var_2.c % 32u)) % 32u), 85905u, ~(var_0.x << (var_0.x % 32u)), reverseBits(max(4294967295u, 30406u)))), vec4<i32>(min(firstLeadingBit(-1i), u_input.a), ~(~1i), _wgslsmith_sub_i32(27439i, ~(-14945i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(16121i, -36151i)) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.c), vec2<u32>(var_3.c, var_3.c)), 50555u) % 32u)), _wgslsmith_add_vec2_i32(max(vec2<i32>(1i, 15364i), ~vec2<i32>(6722i, u_input.a)) | firstLeadingBit(vec2<i32>(-36262i, u_input.a) & vec2<i32>(-1i, -1i)), vec2<i32>(-2147483647i >> (var_3.c % 32u), 1i) & _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)))));
}

