struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -vec2<i32>(min(-17149i, -8257i) >> (_wgslsmith_sub_u32(0u, u_input.c) % 32u), _wgslsmith_add_i32(u_input.b ^ u_input.a, _wgslsmith_sub_i32(41903i, -25315i))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true))), vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), true), vec2<bool>(select(true, true, all(vec4<bool>(false, false, true, true))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)))), Struct_2(0i, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-288f, _wgslsmith_f_op_f32(trunc(-210f))) * -1415f)), Struct_3(~abs(_wgslsmith_sub_u32(1u, u_input.c))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), var_0.b), !(!vec2<bool>(false, true || var_0.d.b)), Struct_2(~global0.x, var_0.d.b || true, 1434f), var_0.e);
    global0 = var_0.b;
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(max(var_0.d.c, var_0.d.c)))), vec2<i32>(_wgslsmith_add_i32(-8355i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global0.x), vec2<i32>(u_input.b, 12149i)), 0i, -73087i)), var_0.b.x), vec2<bool>(var_0.c.x, !(_wgslsmith_f_op_f32(floor(var_0.d.c)) > var_0.a)), Struct_2(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.d.a, 33037i), vec3<i32>(2147483647i, -10078i, 74737i)), max(var_0.d.a, -2147483647i)), _wgslsmith_add_u32(~var_0.e.a, 33625u >> (u_input.c % 32u)) < var_0.e.a, -403f), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.e.a), abs(vec2<u32>(4294967295u, 1u))) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(18986u, u_input.c), select(vec2<u32>(23057u, 42646u), vec2<u32>(u_input.c, u_input.c), var_0.c)) % 32u)));
    var var_1 = true;
    return var_0.d.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_2(global0.x, true, arg_0.x);
    let var_1 = var_0.a <= ((~(-774i) << (u_input.c % 32u)) & global0.x);
    var var_2 = any(vec4<bool>(true, all(select(!vec4<bool>(var_1, var_1, true, false), select(vec4<bool>(arg_1.x, false, true, true), vec4<bool>(false, var_1, false, var_0.b), var_0.b), any(arg_1.xx))), (u_input.c | reverseBits(u_input.c)) >= 36490u, func_3(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(arg_0.x - -269f), _wgslsmith_f_op_f32(sign(-275f)), _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = u_input.a;
    var var_4 = Struct_1(arg_1.xz);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, var_0.c, 1158f, -1034f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1928f, arg_0.x, 174f, arg_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-668f, -372f, var_0.c, -910f)))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 909f, var_0.c, -224f), vec4<f32>(arg_0.x, -454f, var_0.c, var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, var_0.c, 1083f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(956f, -1361f, 1007f, -602f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(arg_1.a);
    return Struct_3(~1u);
}

fn func_1() -> Struct_3 {
    global0 = reverseBits(firstTrailingBit(min(vec2<i32>(2147483647i, global0.x), ~vec2<i32>(global0.x, global0.x))) >> (reverseBits(vec2<u32>(_wgslsmith_mult_u32(54751u, 1u), u_input.c)) % vec2<u32>(32u)));
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1679f, -1169f)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), any(vec3<bool>(false, true, true))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(883f, -489f, 1450f, 234f), vec4<f32>(489f, 488f, -1645f, -721f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(594f, 1000f, 1389f, -700f)))))), Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)), any(vec2<bool>(true, true)))));
    let var_1 = ~firstTrailingBit(max(firstTrailingBit(vec3<i32>(u_input.a, 0i, 20111i) & vec3<i32>(u_input.a, -1i, 45225i)), select(countOneBits(vec3<i32>(-6753i, 2147483647i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(7433i, 0i, -2147483647i), vec3<i32>(-11778i, 85526i, global0.x)), -62325i == global0.x)));
    var_0 = Struct_3(~u_input.c);
    let var_2 = ~(~8212u);
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(686f, 854f, 390f, 899f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2425f, 917f, -515f, 642f))))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(min(u_input.c, u_input.c), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, max(u_input.c, u_input.c)), u_input.c)), u_input.c);
    global0 = vec2<i32>(~u_input.b, max(-22442i, 19044i)) >> (~var_0 % vec2<u32>(32u));
    global0 = select(vec2<i32>(global0.x, -_wgslsmith_sub_i32(1i, -13414i)), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(1i, global0.x)), vec2<i32>(1607i >> (1u % 32u), _wgslsmith_mult_i32(-1i, u_input.b))) >> (vec2<u32>(26335u, min(u_input.c | 36505u, var_0.x)) % vec2<u32>(32u)), true);
    var var_1 = func_1();
    var var_2 = select(vec3<bool>(false, true, select(true, true, all(vec2<bool>(false, true))) & false), vec3<bool>(true, true, true), (~(-2577i) > _wgslsmith_mod_i32(global0.x, u_input.a)) && any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 94459u)), vec3<u32>(var_0.x, var_0.x, var_0.x) ^ vec3<u32>(4294967295u, 0u, var_0.x)), vec3<u32>(func_4(vec4<f32>(-771f, -622f, -829f, -509f), Struct_1(vec2<bool>(var_2.x, false))).a, 4549u, firstTrailingBit(firstTrailingBit(var_0.x)))));
}

