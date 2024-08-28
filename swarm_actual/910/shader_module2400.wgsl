struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 39391u, 1u);

var<private> global3: vec4<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32) -> Struct_2 {
    return Struct_2(!(!any(vec4<bool>(global1.b, global1.b, global1.b, false))), select(~(~(~global2.yz)), vec2<u32>(_wgslsmith_mod_u32(72710u, ~1u), global2.x), any(vec4<bool>(!global1.b, false, all(vec2<bool>(false, global1.b)), false))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = vec2<i32>(-14027i >> (_wgslsmith_clamp_u32(1u, countOneBits(arg_2.b.x), countOneBits(1u)) % 32u), select(2147483647i, _wgslsmith_sub_i32(0i, u_input.a.x) | -27845i, global1.b)) | ~u_input.a.yx;
    global0 = array<vec3<bool>, 24>();
    let var_1 = (_wgslsmith_dot_vec3_u32(global2.yxy, select(min(global2.zwy, vec3<u32>(arg_2.b.x, u_input.c, 4294967295u)), ~vec3<u32>(1u, 67643u, arg_2.b.x), !global0[_wgslsmith_index_u32(22013u, 24u)])) << (arg_1.b.x % 32u)) > ~arg_2.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global3.x), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(725f)), _wgslsmith_f_op_f32(global3.x + -704f))))))));
    let var_3 = ~reverseBits(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(12439u, u_input.b)), countOneBits(reverseBits(vec2<u32>(u_input.b, u_input.c)))));
    return u_input.a.zx;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(-1000f, arg_0.a, 717f);
    var var_1 = Struct_3(_wgslsmith_div_i32(u_input.e.x, -39925i), -_wgslsmith_add_vec2_i32(u_input.e, func_3(vec2<bool>(true, true), arg_0, arg_0)));
    global2 = vec4<u32>(~arg_1.x, 26481u, ~firstTrailingBit(_wgslsmith_mod_u32(global2.x, arg_0.b.x) >> (firstTrailingBit(global2.x) % 32u)), 4294967295u);
    var var_2 = abs(~(~vec4<u32>(arg_0.b.x, 1u, ~u_input.b, _wgslsmith_clamp_u32(global2.x, u_input.b, 26488u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -142f, global1.a, 576f) * vec4<f32>(933f, -1000f, global1.c, -331f)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 1198f, var_0.a, -406f), vec4<f32>(var_0.a, var_0.a, 220f, 112f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global3.x, -771f, -1587f)))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(468f, -1045f))), 2408f, _wgslsmith_f_op_f32(round(global3.x)), var_0.a))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 24>();
    var var_0 = -(~u_input.e.x);
    var var_1 = func_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f) * -971f)), vec3<u32>(min(_wgslsmith_sub_u32(~268u, ~global2.x), 5754u), 1u, 64938u), _wgslsmith_f_op_f32(f32(-1f) * -1632f));
    let var_2 = any(select(!select(select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, false), vec2<bool>(false, true)), vec2<bool>(global1.b, false), func_2(Struct_2(false, vec2<u32>(30815u, 4294967295u)), global2.xyz, -949f).b), !select(select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, true), vec2<bool>(global1.b, global1.b)), !vec2<bool>(var_1.b, global1.b), !vec2<bool>(true, var_1.b)), !(0i == u_input.a.x)));
    var var_3 = false;
    global0 = array<vec3<bool>, 24>();
    var var_4 = any(!select(!select(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(13399u, 24u)], false), vec3<bool>(true, func_2(Struct_2(false, vec2<u32>(u_input.d, u_input.c)), vec3<u32>(global2.x, 1u, 1u), global3.x).b, any(vec2<bool>(global1.b, true))), global0[_wgslsmith_index_u32(~1u, 24u)]));
    var var_5 = Struct_3(_wgslsmith_mod_i32(u_input.e.x, -u_input.a.x), -abs(vec2<i32>(-1i, ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xw * global3.zw) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zy * global3.zw)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, ~8350u, 8192u, func_1(global3.x).b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(global2.x, u_input.d), 46132u, u_input.d), _wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, 1u, 1u, 55912u)), vec4<u32>(global2.x, 22863u, u_input.d, global2.x)))), var_1.c);
}

