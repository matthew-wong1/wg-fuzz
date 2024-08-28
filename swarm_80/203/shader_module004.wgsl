struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(10213u, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<bool>(false, true, false)), Struct_1(1u, vec3<bool>(false, true, false)), Struct_1(51490u, vec3<bool>(true, false, true)), Struct_1(4294967295u, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<bool>(false, false, true)), Struct_1(60644u, vec3<bool>(false, true, false)), Struct_1(1u, vec3<bool>(false, true, true)), Struct_1(22069u, vec3<bool>(true, true, true)), Struct_1(1u, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec3<bool>(true, true, false)), Struct_1(33653u, vec3<bool>(false, false, false)), Struct_1(82482u, vec3<bool>(true, false, false)), Struct_1(65540u, vec3<bool>(true, false, false)));

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(0i), Struct_2(4444i), Struct_2(0i), Struct_2(-24525i), Struct_2(41158i), Struct_2(-53311i), Struct_2(-25872i), Struct_2(-48387i), Struct_2(16727i), Struct_2(25574i), Struct_2(30953i), Struct_2(64223i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(0i), Struct_2(-34645i), Struct_2(12114i), Struct_2(1i), Struct_2(2147483647i), Struct_2(0i), Struct_2(0i), Struct_2(24802i), Struct_2(23381i), Struct_2(1i), Struct_2(-1i), Struct_2(-1i), Struct_2(-7369i), Struct_2(-6761i), Struct_2(2147483647i), Struct_2(1i));

var<private> global2: i32;

var<private> global3: vec3<f32> = vec3<f32>(-431f, 275f, -115f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = arg_0;
    global1 = array<Struct_2, 30>();
    let var_1 = global0[_wgslsmith_index_u32(56530u, 16u)];
    var_0 = arg_0;
    var var_2 = Struct_2(_wgslsmith_clamp_i32(u_input.b, reverseBits(1i), u_input.d.x));
    return var_1.b.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = -768f;
    let var_1 = Struct_1(arg_2.x, vec3<bool>(true, func_3(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(45775i, 2147483647i), arg_0.zw)), select(arg_1.x, 1i, -661f >= global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-576f, global3.x))), !((true == arg_3.x) && any(vec2<bool>(true, false)))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) * global3.x), false));
    let var_2 = _wgslsmith_f_op_f32(floor(-1851f));
    var_0 = var_2;
    return u_input.b;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    global1 = array<Struct_2, 30>();
    var var_1 = Struct_2(-(~firstTrailingBit(func_2(vec4<i32>(-2147483647i, u_input.d.x, 15979i, -1i), u_input.d, vec2<u32>(4780u, 0u), vec4<bool>(false, false, false, true)))));
    global0 = array<Struct_1, 16>();
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(abs(u_input.b), -31974i, _wgslsmith_sub_i32(-arg_0.a, -1i));
    return Struct_2(0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72870u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.c)) >> (_wgslsmith_div_u32(~u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c)) % 32u)), ~u_input.c);
    global1 = array<Struct_2, 30>();
    global2 = 6884i;
    global0 = array<Struct_1, 16>();
    var var_1 = func_1(Struct_2(_wgslsmith_sub_i32(countOneBits(u_input.a.x ^ u_input.d.x), u_input.d.x)));
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(790f, global3.x, global3.x, global3.x), vec4<f32>(global3.x, 1279f, global3.x, -1681f), vec4<bool>(true, true, true, false))))))), vec3<i32>(u_input.a.x, 20761i, -(~(-u_input.e))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 1u) | vec2<u32>(var_0.x, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.c), vec2<u32>(48797u, u_input.c))) | ~vec2<u32>(4294967295u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 946f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global3.x)))))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x)))), true)));
}

