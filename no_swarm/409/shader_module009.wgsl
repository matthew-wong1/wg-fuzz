struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(0i, 2147483647i, 8694i, 0i, 0i, 108588i, i32(-2147483648), i32(-2147483648));

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: bool = true;

var<private> global3: array<vec4<bool>, 1>;

var<private> global4: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    let var_0 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), !global3[_wgslsmith_index_u32(42686u, 1u)])));
    global3 = array<vec4<bool>, 1>();
    global3 = array<vec4<bool>, 1>();
    let var_1 = Struct_2(0u, 1u);
    var var_2 = ~(~0u);
    return 2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = ~4294967295u;
    var var_1 = Struct_2(firstLeadingBit(0u), _wgslsmith_sub_u32(arg_0.a, _wgslsmith_add_u32((u_input.a >> (19474u % 32u)) | select(50624u, 4294967295u, false), u_input.a)));
    var var_2 = arg_0;
    let var_3 = Struct_2(~(~_wgslsmith_add_u32(1u, ~var_1.a)), 93392u);
    global3 = array<vec4<bool>, 1>();
    return max(-17812i, global0[_wgslsmith_index_u32(var_1.b, 8u)]);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global3 = array<vec4<bool>, 1>();
    global4 = _wgslsmith_add_vec4_i32(vec4<i32>(global4.x, min(firstTrailingBit(func_2()), firstLeadingBit(min(-9608i, u_input.b.x))), -33624i, -_wgslsmith_mod_i32(func_3(Struct_2(arg_0.c.x, 4294967295u), 73567u), -1i)), ~(-firstLeadingBit(arg_0.a)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.zwx, vec3<f32>(1043f, 528f, -851f), true))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.wyw, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-377f, -942f, 1301f), vec3<f32>(arg_0.b.x, arg_0.b.x, 1211f)))))))));
    var var_1 = ~vec4<u32>(arg_0.c.x, min(_wgslsmith_sub_u32(u_input.a, abs(arg_0.c.x)), 36873u), _wgslsmith_mult_u32(~max(1u, arg_0.c.x), _wgslsmith_mod_u32(u_input.a, u_input.a) ^ 65974u), 1u);
    global4 = arg_0.a;
    return Struct_2(_wgslsmith_dot_vec3_u32(select(~var_1.xzy, _wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.a, 17954u), abs(var_1.zxw)), any(vec3<bool>(true, true, true))), firstTrailingBit(vec3<u32>(arg_0.c.x, 75218u, var_1.x)) | ~(~var_1.zxw)), _wgslsmith_dot_vec3_u32(vec3<u32>(min(45884u, u_input.a) & _wgslsmith_add_u32(arg_0.c.x, 0u), ~(~3960u), ~1u), var_1.xzy));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, !(u_input.a > arg_2.b));
    global3 = array<vec4<bool>, 1>();
    var var_1 = global4.xwx << (~select(abs(~vec3<u32>(arg_2.b, u_input.a, arg_2.a)), vec3<u32>(~arg_3.b, ~arg_3.a, arg_3.a | 54139u), select(!vec3<bool>(false, var_0.x, false), vec3<bool>(false, true, false), var_0)) % vec3<u32>(32u));
    let var_2 = select(vec3<bool>(false, !(true | !var_0.x), true), vec3<bool>(var_0.x, false, false), var_0.x);
    let var_3 = arg_3;
    return Struct_1(_wgslsmith_add_vec4_i32(~abs(countOneBits(vec4<i32>(-1i, var_1.x, global4.x, -2358i))), -vec4<i32>(_wgslsmith_add_i32(arg_1, -1i), -var_1.x, _wgslsmith_clamp_i32(var_1.x, 0i, 0i), 1i)), arg_0, max(min(~(~vec2<u32>(70527u, 1u)), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_2.a), vec2<u32>(arg_3.b, u_input.a)))), vec2<u32>(17715u, ~abs(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zx;
    let var_1 = u_input.a;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-295f, -147f, 888f, 826f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(819f, 440f, -506f, -161f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1149f, -1028f, 712f, 231f) - vec4<f32>(-2057f, 486f, 1454f, -419f)))))), i32(-1i) * -2147483647i, Struct_2(21672u, 0u >> (var_1 % 32u)), func_1(Struct_1(abs(vec4<i32>(-2147483647i, global4.x, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 8u)]) ^ vec4<i32>(global4.x, 138i, global4.x, 41792i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1355f, 106f, -951f))))), select(vec2<u32>(u_input.a, 31602u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_1), vec2<u32>(u_input.a, 49051u)), false))));
    var_0 = var_2.a.wy;
    let var_3 = ~6942u;
    var var_4 = func_1(Struct_1(vec4<i32>(~1i, -1i, func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), ~vec2<i32>(global0[_wgslsmith_index_u32(1u, 8u)], var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, var_2.b.x, var_2.b.x, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2238f, 603f, -216f, 465f)))), firstTrailingBit(var_2.c)));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

