struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<vec4<bool>, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.x * 383f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a)))));
    let var_1 = 17072i;
    global2 = array<vec4<bool>, 27>();
    var var_2 = Struct_4(countOneBits(arg_0.b.b));
    var var_3 = arg_0.b.a.zw;
    return select(!select(arg_0.c.yyw, select(!arg_0.c.yww, vec3<bool>(arg_0.c.x, true, true), true), true), !(!arg_0.c.wyx), arg_0.c.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    global2 = array<vec4<bool>, 27>();
    var var_0 = !(_wgslsmith_mod_u32(~(~global0.a), 26432u) <= firstTrailingBit(~arg_1.b));
    var var_1 = -select(~(i32(-1i) * -2147483647i), select(_wgslsmith_clamp_i32(5744i, 2147483647i, 49525i), 0i, true), arg_1.a.x < _wgslsmith_f_op_f32(step(-488f, arg_1.a.x))) << (_wgslsmith_div_u32(global0.a, u_input.a.x) % 32u);
    let var_2 = 51616u;
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_1.a.yyy * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.a.zwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x) * arg_1.a.xxz)), select(func_3(Struct_2(arg_1.a.x, arg_1, global2[_wgslsmith_index_u32(arg_1.b, 27u)]), 59930u, vec2<u32>(0u, 4294967295u)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true)))) + arg_1.a.ywx));
    return countOneBits(~countOneBits(reverseBits(~1u)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    global2 = array<vec4<bool>, 27>();
    let var_0 = select(u_input.b.zy, u_input.b.zz, !select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(4294967295u <= u_input.a.x, true), select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec3<bool>(true, false, true)))));
    let var_1 = Struct_4(0u);
    global0 = Struct_4(firstLeadingBit(func_2(1360f, Struct_1(vec4<f32>(-660f, 1356f, -2294f, -523f), 0u)) ^ 28942u) ^ global0.a);
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1890f, 342f, 494f, 1128f)) - vec4<f32>(-556f, 174f, 441f, -1000f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-144f, 1000f, -944f, -213f))))), true)), 1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1259f, 319f), 1332f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(f32(-1f) * -1063f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1485f + _wgslsmith_f_op_f32(f32(-1f) * -1419f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(i32(-1i) * -2147483647i);
    let var_0 = min(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<u32>(firstLeadingBit(u_input.a.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(609f))), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1802f, 1622f, 1220f, -767f))), _wgslsmith_mod_u32(56233u, 53969u))), firstTrailingBit(94260u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1100f, -1600f, 1000f, -293f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-952f, 1000f, 915f, 1392f)))))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~global0.a), 1u, 4294967295u), _wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(11235u, global0.a), 25u)], vec3<u32>(var_0.x & 0u, min(global0.a, u_input.b.x), 41054u))));
    let var_2 = (countOneBits(~(~vec3<u32>(u_input.a.x, var_1.b, 22694u))) & firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0, var_0) >> (firstTrailingBit(u_input.b) % vec3<u32>(32u)))) >> (firstLeadingBit(u_input.b) % vec3<u32>(32u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1151f, 205f, true))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2150f, var_1.a.x, 1454f, 581f))), max(24635u, 4294967295u)), !global2[_wgslsmith_index_u32(164414u, 27u)]);
    var var_4 = func_1(_wgslsmith_mod_i32(1i, -19212i));
    var var_5 = 65061u;
    var_4 = func_1(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, ~(-2147483647i))), vec2<i32>(1i, countOneBits(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(0u, countOneBits(4294967295u)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_4.a, min(var_3.b.b, 78360u)), var_1.b));
}

