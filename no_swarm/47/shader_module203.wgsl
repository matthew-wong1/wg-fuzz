struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<i32>(0i, 185i), 20573i, vec2<i32>(-32600i, -29585i), vec4<bool>(false, false, false, false)), 1u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = ~firstLeadingBit(reverseBits(~min(vec2<u32>(19705u, 14206u), vec2<u32>(global1.b, 1u))));
    global0 = vec3<bool>(any(vec3<bool>(global0.x, true, false)), !(global1.a.d.x || all(global1.a.d.xzz)), false);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1000f - -806f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c * arg_0.c))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2406f))))), -1228f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -488f))))));
    let var_3 = -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a, global1.a.b, -1i, 0i), firstTrailingBit(vec4<i32>(arg_0.b, 1i, arg_0.b, -21475i))), arg_0.b), max(vec3<i32>(-2202i, firstLeadingBit(-28573i), arg_2), -select(vec3<i32>(arg_0.a, arg_0.b, global1.a.c.x), vec3<i32>(1i, global1.a.a.x, arg_2), global0.x)));
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(-2564i, var_3.x), global1.a.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    global0 = global1.a.d.xxy;
    global1 = arg_0;
    let var_0 = Struct_2(1i, _wgslsmith_add_i32(arg_0.a.b, 1i & arg_1.b), 1265f);
    var var_1 = arg_1.c;
    global1 = arg_0;
    return vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.b, arg_0.b), _wgslsmith_sub_vec2_u32(vec2<u32>(22865u, u_input.a), vec2<u32>(138484u, 4294967295u)))) >> (arg_0.b % 32u));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = global1.a.d;
    var var_1 = vec2<u32>(firstTrailingBit(~_wgslsmith_sub_u32(abs(1u), u_input.b)), global1.b);
    var_1 = func_4(Struct_3(Struct_1(vec2<i32>(arg_0, 0i), arg_0, global1.a.a, vec4<bool>(false, true, global0.x, all(vec2<bool>(false, global1.a.d.x)))), var_1.x), Struct_2(select(17874i, -min(global1.a.c.x, -36420i), var_0.x), abs(_wgslsmith_sub_i32(global1.a.c.x, global1.a.c.x) & global1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-206f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f * 1000f)))), Struct_2(0i, func_3(Struct_2(-2147483647i, global1.a.b, -558f), arg_0, -29355i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-303f, -481f), 340f)), _wgslsmith_f_op_f32(min(153f, _wgslsmith_f_op_f32(round(1021f)))))));
    var var_2 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(14097i, arg_0)), global1.a.c);
    global1 = Struct_3(Struct_1(abs(vec2<i32>(30005i, max(arg_0, global1.a.b))), select(_wgslsmith_mod_i32(arg_0 << (global1.b % 32u), global1.a.a.x), 0i, any(!vec3<bool>(var_0.x, true, true))), vec2<i32>(abs(_wgslsmith_mult_i32(-59698i, global1.a.a.x)), arg_0), global1.a.d), _wgslsmith_mult_u32(32371u, _wgslsmith_dot_vec3_u32(vec3<u32>(16035u, u_input.b, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 15078u, 16954u), ~vec3<u32>(var_1.x, u_input.a, 0u)))));
    return Struct_3(global1.a, ~1u);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~abs(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(35785u, 15904u, global1.b)), vec3<u32>(28194u, u_input.b, 53680u)), ~vec3<u32>(global1.b, arg_0.b, 0u)));
    var var_1 = u_input.a;
    let var_2 = reverseBits(1u);
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(arg_0.a.a, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.b, -15548i), vec2<i32>(arg_3.c.x, -1020i)) & ~vec2<i32>(1i, -2147483647i))), 8384i, -vec2<i32>(_wgslsmith_div_i32(-2147483647i, arg_0.a.c.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_3.a), -arg_3.a)), arg_1);
    let var_4 = !arg_3.d.ywx;
    return arg_0.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global1 = Struct_3(func_5(func_2((arg_0.x | arg_0.x) & global1.a.b), select(select(!vec4<bool>(true, global1.a.d.x, global1.a.d.x, global1.a.d.x), global1.a.d, select(global1.a.d, global1.a.d, global0.x)), func_2(firstLeadingBit(5673i)).a.d, select(vec4<bool>(false, global1.a.d.x, global0.x, false), select(global1.a.d, global1.a.d, global1.a.d), false)), _wgslsmith_f_op_f32(1173f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-717f, 446f, global0.x)))), global1.a), ~25709u);
    let var_0 = Struct_2(~_wgslsmith_clamp_i32(-global1.a.b, global1.a.a.x, _wgslsmith_mod_i32(select(3214i, 31996i, false), _wgslsmith_div_i32(arg_0.x, -9486i))), i32(-1i) * -2882i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    global0 = vec3<bool>(false, true, global1.a.d.x);
    global1 = func_2(-var_0.a ^ (i32(-1i) * -reverseBits(var_0.a)));
    global0 = select(!(!(!vec3<bool>(true, global0.x, true))), global1.a.d.ywy, global1.a.d.ywx);
    return func_2(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.a.c);
    global0 = global1.a.d.xzx;
    var var_0 = !vec4<bool>(!all(!global1.a.d), global1.b >= global1.b, global0.x, true);
    global0 = !vec3<bool>(var_0.x, global1.a.c.x != (global1.a.c.x ^ _wgslsmith_add_i32(global1.a.a.x, global1.a.c.x)), !(global1.b <= ~u_input.b));
    global1 = func_2(-abs(~(~0i)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, reverseBits(func_4(Struct_3(global1.a, 4294967295u >> (u_input.b % 32u)), Struct_2(firstLeadingBit(-34802i), 1i, -732f), Struct_2(global1.a.b, 0i, -373f)).x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1412f, _wgslsmith_f_op_f32(1000f - -2246f))), _wgslsmith_div_f32(-647f, 217f))))), ~max(~vec4<i32>(global1.a.c.x, -1i, global1.a.a.x, global1.a.a.x), vec4<i32>(func_3(Struct_2(global1.a.c.x, global1.a.b, -574f), 9067i, 56558i), 1i, 56348i, global1.a.a.x)));
}

