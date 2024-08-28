struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(73453u, 47127u, 1u, 7965u, 50142u, 1919u, 0u, 1u);

var<private> global1: array<vec3<u32>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    global0 = array<u32, 8>();
    global1 = array<vec3<u32>, 7>();
    let var_0 = u_input.e.x;
    var var_1 = (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)] >> (vec3<u32>(arg_0.d.x, u_input.d.x, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(117303u, arg_1.d.x, arg_0.d.x)), 89794u) | ~_wgslsmith_dot_vec3_u32(arg_1.d, _wgslsmith_add_vec3_u32(vec3<u32>(7118u, 1u, arg_1.d.x), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 8u)], 8u)], 0u)))) & _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~25614u, _wgslsmith_dot_vec2_u32(u_input.d.xx, arg_0.d.yx)), 7570u), min(_wgslsmith_clamp_u32(53314u, arg_1.d.x, 0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(29710u, 0u, arg_1.d.x, 95626u), vec4<u32>(54242u, arg_0.d.x, 14091u, 0u)) % 32u), ~(~12447u)));
    return select(!any(!select(vec3<bool>(arg_1.a.x, false, true), arg_0.a, vec3<bool>(false, arg_0.b, arg_1.a.x))), arg_0.a.x, true);
}

fn func_2() -> Struct_1 {
    var var_0 = 52513u;
    return Struct_1(!select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), u_input.b >= u_input.c), vec3<bool>(u_input.a == -20003i, true, func_3(Struct_1(vec3<bool>(true, true, true), false, vec3<f32>(-398f, 376f, 114f), vec3<u32>(u_input.d.x, u_input.d.x, u_input.b), vec3<i32>(u_input.a, 23193i, -55204i)), Struct_1(vec3<bool>(false, false, true), true, vec3<f32>(-122f, 262f, 1906f), u_input.d, vec3<i32>(u_input.e.x, u_input.e.x, u_input.a)), vec2<bool>(true, false))), !any(vec3<bool>(true, false, true))), all(vec4<bool>(any(vec4<bool>(true, true, true, true)), false | select(false, false, true), all(vec4<bool>(false, false, true, false)), !(u_input.a > u_input.a))), vec3<f32>(-158f, _wgslsmith_f_op_f32(select(1834f, _wgslsmith_f_op_f32(-1f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-570f - -2310f))))), ~(~global1[_wgslsmith_index_u32(49806u, 7u)]), vec3<i32>(u_input.e.x, _wgslsmith_div_i32(-(~2002i), 36436i), u_input.a));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> u32 {
    global1 = array<vec3<u32>, 7>();
    var var_0 = func_2();
    return 46396u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 1000f, 746f, arg_1.c.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_1.c.x, 1908f, arg_1.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1696f, _wgslsmith_f_op_f32(func_2().c.x - _wgslsmith_f_op_f32(step(157f, arg_1.c.x))), -266f, arg_1.c.x)));
    var var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1523i, 5048i, arg_1.e.x), vec4<i32>(u_input.a, 1i, arg_1.e.x, -31565i))), vec2<i32>(-2147483647i, -50297i & arg_1.e.x)), u_input.e);
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_2 = arg_1;
    return _wgslsmith_clamp_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 7350i), vec2<i32>(var_2.e.x, 3834i))), -2147483647i, arg_1.e.x ^ -22349i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec4<i32>(func_4(vec4<u32>(~global0[_wgslsmith_index_u32(6036u, 8u)], reverseBits(69508u), func_1(u_input.a, u_input.e, true, u_input.a), ~0u), Struct_1(vec3<bool>(false, true, false), select(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, -103f, 610f)), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(21508u, 7u)], vec3<u32>(0u, 109284u, 1u)), -vec3<i32>(u_input.a, u_input.a, u_input.e.x)), _wgslsmith_add_vec3_u32(u_input.d, global1[_wgslsmith_index_u32(~4294967295u, 7u)])), u_input.a, 1i, -19802i));
    var var_1 = func_2();
    let var_2 = ~(vec2<u32>(7720u, global0[_wgslsmith_index_u32(0u, 8u)]) >> (~vec2<u32>(~global0[_wgslsmith_index_u32(96209u, 8u)], 1u) % vec2<u32>(32u)));
    global0 = array<u32, 8>();
    var var_3 = Struct_1(var_1.a, false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c * vec3<f32>(var_1.c.x, var_1.c.x, 799f))))), _wgslsmith_f_op_vec3_f32(step(var_1.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1288f, 1468f, var_1.c.x))), var_1.c, var_1.b)))), any(select(vec4<bool>(var_1.b, false, var_1.a.x, var_1.b), vec4<bool>(var_1.a.x, true, false, false), select(false, true, var_1.b))))), vec3<u32>(global0[_wgslsmith_index_u32(var_1.d.x, 8u)], u_input.c, var_1.d.x), abs(_wgslsmith_div_vec3_i32(var_1.e, -vec3<i32>(-12060i, u_input.e.x, var_0.x) >> (countOneBits(var_1.d) % vec3<u32>(32u)))));
    var_3 = func_2();
    let var_4 = func_2();
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, var_5.c.x))) - var_4.c.zx))), 1u, 1f, _wgslsmith_f_op_f32(-123f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2522f, var_1.c.x) + _wgslsmith_div_f32(-1151f, -893f)), -466f))));
}

