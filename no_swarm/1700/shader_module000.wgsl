struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -236f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    let var_0 = u_input.d;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-arg_2.b);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_div_f32(arg_2.b, 1276f))));
    let var_3 = arg_2;
    return 663f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.b));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.b);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2053f)) * 1479f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)))));
    var var_2 = !select(!vec4<bool>(arg_2.a, !arg_0.a, any(vec2<bool>(false, false)), true), select(vec4<bool>(arg_0.a, arg_2.a != false, func_3(79978u, arg_0, arg_2, vec2<bool>(arg_0.a, arg_0.a)), true), vec4<bool>(!arg_2.a, false, all(vec3<bool>(false, true, true)), arg_2.a), !select(vec4<bool>(arg_0.a, true, arg_2.a, true), vec4<bool>(false, arg_2.a, arg_0.a, false), vec4<bool>(true, true, arg_2.a, false))), all(select(select(vec2<bool>(arg_2.a, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.a), !vec2<bool>(arg_0.a, arg_2.a), false)));
    var_0 = arg_0.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) - arg_1);
    return arg_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = arg_0.b;
    let var_0 = u_input.b;
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, arg_0.b, -319f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1996f, -1592f))))) + vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(func_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-975f, var_1.b)), Struct_1(false, -839f))), _wgslsmith_f_op_f32(-arg_2.b)));
    global0 = -229f;
    return u_input.c.x;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = any(!vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true, true));
    return Struct_1(any(vec3<bool>(21008i < u_input.d.x, func_3(0u, Struct_1(true, 192f), Struct_1(false, 1000f), vec2<bool>(false, false)), false)) || (max(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)) >= (firstTrailingBit(u_input.d.x) << (42280u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(524f))) - _wgslsmith_f_op_f32(func_2(Struct_1(any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(1512f - 2032f)), _wgslsmith_div_f32(-136f, _wgslsmith_f_op_f32(select(-1235f, 345f, false))), Struct_1(true, -1199f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(vec2<u32>(~u_input.a, func_1(Struct_1(false, -374f), 46378i, Struct_1(true, -415f))) ^ (u_input.b.xx << (u_input.b.xw % vec2<u32>(32u)))));
    let var_1 = !(!select(vec4<bool>(true, false, var_0.a, true), select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, true, true, false), false), select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a), false)), var_0.a));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2773f * var_0.b)) * _wgslsmith_f_op_f32(-var_0.b))));
    var var_3 = reverseBits(u_input.c);
    let var_4 = ~((abs(u_input.d.xy) & (-u_input.d.zx & ~vec2<i32>(u_input.d.x, 14429i))) ^ ~u_input.d.yx);
    var var_5 = func_4(abs(firstLeadingBit(~vec2<u32>(var_3.x, 71580u))));
    var var_6 = func_3(firstLeadingBit(u_input.a), Struct_1(2147483647i < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_4.x, 30613i, 19819i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, var_4.x, 1830i, u_input.d.x), vec4<i32>(var_4.x, 30989i, u_input.d.x, 21165i))), func_4(vec2<u32>(var_3.x, 0u)).b), Struct_1(true, _wgslsmith_f_op_f32(select(-1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f - var_5.b)), all(var_1)))), select(var_1.zz, !vec2<bool>(func_3(u_input.b.x, Struct_1(true, var_5.b), Struct_1(var_1.x, var_0.b), var_1.yz), true), !select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a), !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_4.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, u_input.d.x, -2147483647i, -29742i), vec4<i32>(2147483647i, var_4.x, u_input.d.x, -1i)) ^ countOneBits(vec4<i32>(u_input.d.x, 0i, -1i, -28131i)), vec4<i32>(-32128i, _wgslsmith_add_i32(65266i, u_input.d.x), 0i ^ var_4.x, -2147483647i >> (var_3.x % 32u))), u_input.d.x), ~u_input.d.x, _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(24311u, var_3.x, 0u, var_3.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 2744u, 0u), vec4<u32>(43748u, var_3.x, 67473u, var_3.x))), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, u_input.b.x, u_input.c.x, 63827u), u_input.b))), ~(u_input.d >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 80992u, 7322u) ^ var_3.zwx, _wgslsmith_mod_vec3_u32(var_3.zxx, u_input.c.yzy), var_3.yzw << (vec3<u32>(66578u, 1u, 32025u) % vec3<u32>(32u))) % vec3<u32>(32u))), -4132i);
}

