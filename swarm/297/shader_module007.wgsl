struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), -1i, -12221i, 40555i), vec4<i32>(1i, 0i, 57124i, 0i), vec4<i32>(-1i, 26740i, 810i, 2147483647i), vec4<i32>(1i, 22186i, -1i, i32(-2147483648)), vec4<i32>(1i, -32974i, i32(-2147483648), -29731i), vec4<i32>(-6871i, 0i, -14748i, 0i), vec4<i32>(0i, 0i, -27959i, 0i), vec4<i32>(1i, -5070i, 21741i, -20160i), vec4<i32>(1i, 1i, 2147483647i, 32516i), vec4<i32>(-2010i, 49998i, 1i, 1i), vec4<i32>(-9877i, i32(-2147483648), 2147483647i, 12478i), vec4<i32>(-42027i, -10798i, i32(-2147483648), 1i), vec4<i32>(0i, -34753i, 1i, -8285i), vec4<i32>(i32(-2147483648), 2170i, -12046i, 58589i), vec4<i32>(16034i, 2147483647i, -43361i, 34448i), vec4<i32>(-10846i, 0i, 2147483647i, 2147483647i), vec4<i32>(-37745i, i32(-2147483648), -72782i, -15365i), vec4<i32>(25954i, 50819i, -24085i, 1i), vec4<i32>(9092i, -11552i, -9802i, -16391i), vec4<i32>(-1i, -49060i, -1i, 41111i), vec4<i32>(38319i, -53191i, 2147483647i, 2147483647i), vec4<i32>(-28791i, i32(-2147483648), 32254i, 14061i), vec4<i32>(1i, 2147483647i, 2147483647i, 0i), vec4<i32>(-49242i, 0i, i32(-2147483648), -14000i), vec4<i32>(2147483647i, 21391i, 8502i, 35715i), vec4<i32>(0i, i32(-2147483648), -71200i, 45226i));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = 174089u;
    global1 = arg_0;
    let var_2 = arg_0;
    global0 = array<vec4<i32>, 26>();
    return vec3<bool>(false, true, false);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    global1 = Struct_1(~u_input.c);
    global1 = Struct_1(global1.a);
    var var_0 = all(func_3(Struct_1(arg_1 & global1.a))) || false;
    var var_1 = abs(24483u) << (~_wgslsmith_dot_vec2_u32(arg_0.yy, ~(~arg_0.zw)) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, 1939f, -391f, -1000f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, -1406f, -2550f, -332f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, 178f, 1503f, -673f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1320f, -246f, 1348f, -637f) + vec4<f32>(891f, 1983f, -2023f, -1133f)), vec4<f32>(-318f, 1000f, -1293f, -776f))))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -612f))), select(_wgslsmith_add_i32(global1.a, -1i), global1.a, true));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(-357f, ~(-global1.a));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1726f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -466f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f - 1000f)))), abs(1i));
    let var_2 = !vec4<bool>(!(u_input.b < u_input.b), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(var_1.a - var_0.a)) < var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -177f) >= var_1.a, select(true, true, all(vec4<bool>(true, true, false, true))) & true);
    let var_3 = !var_2.xxw;
    var_0 = func_2(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(u_input.b >> (40325u % 32u), ~4294967295u), u_input.b, ~(~2554u), 4294967295u)), -(-30674i | ~firstTrailingBit(var_1.b)));
    return func_2(max(~((vec4<u32>(1u, 0u, 15250u, 39558u) >> (vec4<u32>(4294967295u, u_input.b, 0u, 1u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 34489u, 1u, u_input.a), vec4<u32>(113u, u_input.a, 40328u, u_input.b))), ~(~(vec4<u32>(42954u, 3339u, 54926u, 4294967295u) >> (vec4<u32>(0u, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u))))), _wgslsmith_div_i32(1i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = max(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7682u, 0u, u_input.a, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a), vec4<u32>(15205u, u_input.a, 0u, 1u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 0u), vec4<u32>(1u, u_input.a, u_input.b, 79324u), vec4<u32>(u_input.b, 4294967295u, 0u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(11101u, 4294967295u, 4294967295u, 95964u), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a), vec4<u32>(7143u, u_input.b, u_input.a, u_input.b)))), min(u_input.a, ~reverseBits(1u)), u_input.a, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.a), vec3<u32>(4294967295u, u_input.b, 42681u)), select(vec3<u32>(0u, 50990u, 78329u), vec3<u32>(0u, u_input.a, u_input.b), true))), ~abs(~vec4<u32>(1u, u_input.a, u_input.a, u_input.b)) & vec4<u32>(countOneBits(_wgslsmith_sub_u32(u_input.a, 59688u)), countOneBits(1u), ~(~u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b, 1u), vec3<u32>(u_input.b, u_input.a, u_input.a)), ~vec3<u32>(4388u, u_input.a, 1u))));
    let var_2 = select(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), select(vec3<bool>(false, any(vec3<bool>(true, false, false)), func_2(vec4<u32>(35624u, var_1.x, u_input.b, 1u), 1i).b > ~30539i), func_3(Struct_1(_wgslsmith_mod_i32(-2147483647i, global1.a))), true), true);
    global0 = array<vec4<i32>, 26>();
    var var_3 = Struct_1(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, -631f) * vec2<f32>(var_0.a, 269f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(605f, 603f))), vec2<f32>(var_0.a, 1046f)))))), _wgslsmith_f_op_f32(131f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f + _wgslsmith_f_op_f32(-var_0.a)))), reverseBits(~select(vec2<i32>(-27133i, var_3.a) & vec2<i32>(1i, u_input.c), -vec2<i32>(2147483647i, -1i), select(var_2.zy, vec2<bool>(false, var_2.x), var_2.xx))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a), min(40074u, u_input.a)), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f + -1535f)));
}

