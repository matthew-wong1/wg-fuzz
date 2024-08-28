struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

var<private> global1: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(0u, vec3<bool>(true, false, true), -6690i, vec2<i32>(1i, 2147483647i), vec4<bool>(false, true, false, true)), Struct_5(4294967295u, vec3<bool>(true, false, true), -16157i, vec2<i32>(-5955i, -16621i), vec4<bool>(false, true, true, false)), Struct_5(4294967295u, vec3<bool>(true, false, false), 1i, vec2<i32>(i32(-2147483648), -26113i), vec4<bool>(true, true, false, false)), Struct_5(4294967295u, vec3<bool>(false, false, false), -10882i, vec2<i32>(1i, -27515i), vec4<bool>(false, false, true, false)), Struct_5(4294967295u, vec3<bool>(false, true, true), -7448i, vec2<i32>(-1i, -26322i), vec4<bool>(false, false, true, false)), Struct_5(1u, vec3<bool>(false, false, false), -5955i, vec2<i32>(-16073i, 2147483647i), vec4<bool>(false, false, true, false)), Struct_5(22727u, vec3<bool>(true, false, false), -1i, vec2<i32>(-1i, 4311i), vec4<bool>(true, true, false, false)), Struct_5(0u, vec3<bool>(false, false, false), -52645i, vec2<i32>(23993i, 2147483647i), vec4<bool>(false, false, true, true)), Struct_5(1u, vec3<bool>(true, true, false), 39772i, vec2<i32>(-1i, 55926i), vec4<bool>(true, false, true, false)), Struct_5(76922u, vec3<bool>(true, true, false), -3667i, vec2<i32>(1i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_5(37797u, vec3<bool>(true, false, false), -1i, vec2<i32>(1i, 18014i), vec4<bool>(true, false, false, false)), Struct_5(4294967295u, vec3<bool>(false, false, true), 0i, vec2<i32>(2147483647i, 0i), vec4<bool>(false, true, false, false)), Struct_5(0u, vec3<bool>(false, false, false), -51623i, vec2<i32>(2147483647i, 44283i), vec4<bool>(false, true, true, true)));

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 81268i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.b, _wgslsmith_sub_u32(~abs(countOneBits(u_input.b)), select(countOneBits(7206u), u_input.c & u_input.b, !all(vec4<bool>(true, true, false, false)))), 4294967295u);
    var var_1 = 14881i;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1158f), -1100f));
    let var_3 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, (abs(var_0.x) == _wgslsmith_div_u32(var_0.x, 4294967295u)) & any(vec4<bool>(false, false, true, true))), !select(true, false, any(vec4<bool>(false, true, false, false))));
    let var_4 = Struct_1(false, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 67493u), vec2<u32>(u_input.b, 49418u), select(global0[_wgslsmith_index_u32(var_0.x, 11u)], vec2<u32>(4294967295u, var_0.x), true)) >> (vec2<u32>(u_input.b, var_0.x << (~var_0.x % 32u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-var_2), true);
    return var_4;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(811f + 1000f), -437f, _wgslsmith_f_op_f32(abs(-248f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, -607f, 889f))))))));
    let var_1 = -vec2<i32>(-arg_1.c, firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, 59678i)) & 55472i);
    global2 = abs(countOneBits((_wgslsmith_mod_vec2_i32(arg_1.d, arg_1.d) & -var_1) ^ u_input.a));
    var var_2 = select(35530u, ~89250u, all(vec2<bool>(arg_1.b.x, false)));
    global0 = array<vec2<u32>, 11>();
    return !arg_1.e;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a))) * arg_3.a), -1253f));
    var var_1 = func_3(!arg_0.yy, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, ~20439u), 13u)], arg_2);
    global1 = array<Struct_5, 13>();
    let var_2 = arg_3;
    var_1 = arg_0;
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(abs(arg_1)) < arg_1;
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    var var_1 = select(vec3<u32>(36430u, 17763u, firstTrailingBit(~30562u)) << (~firstTrailingBit(firstLeadingBit(vec3<u32>(0u, 68759u, 0u))) % vec3<u32>(32u)), max(~(vec3<u32>(u_input.b, u_input.c, 4294967295u) >> (vec3<u32>(7652u, 111161u, 9247u) % vec3<u32>(32u))), ~(~vec3<u32>(4294967295u, u_input.b, 7167u))) ^ firstLeadingBit(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(10636u, 54709u, 24582u, u_input.c), vec4<u32>(0u, u_input.c, 0u, 27168u)), u_input.b)), arg_0);
    let var_2 = global2.x;
    return Struct_4(vec2<u32>(var_1.x, 20381u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(any(!select(vec4<bool>(true, true, true, true), func_1(vec4<bool>(true, true, true, false), true, Struct_4(global0[_wgslsmith_index_u32(335u, 11u)]), Struct_3(833f)), false)), _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1172f, 595f)))).c));
    let var_1 = Struct_2(Struct_1(func_3(vec2<bool>(all(vec4<bool>(true, true, true, false)), false), Struct_5(u_input.c, func_3(vec2<bool>(false, true), global1[_wgslsmith_index_u32(67667u, 13u)], Struct_4(global0[_wgslsmith_index_u32(var_0.a.x, 11u)])).xwx, 1683i, vec2<i32>(46540i, -31834i), vec4<bool>(true, true, true, true)), Struct_4(vec2<u32>(34195u, 116888u))).x, var_0.a, 187f, func_3(vec2<bool>(true, true), Struct_5(4294967295u, vec3<bool>(true, false, false), 2147483647i, u_input.a, vec4<bool>(true, false, true, false)), func_4(true, -258f)).x == (func_3(vec2<bool>(false, false), global1[_wgslsmith_index_u32(var_0.a.x, 13u)], Struct_4(global0[_wgslsmith_index_u32(var_0.a.x, 11u)])).x && true)), -1863f);
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(22354i, abs(u_input.a.x << (var_0.a.x % 32u))));
}

