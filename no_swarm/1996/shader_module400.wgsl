struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(62552u, 0u);

var<private> global1: vec4<bool>;

var<private> global2: i32;

var<private> global3: vec3<i32> = vec3<i32>(-1i, 2147483647i, -44965i);

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1436f, -1000f) * _wgslsmith_f_op_f32(step(-1793f, -173f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-546f * 317f))))))), -394f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f);
    let var_1 = !global1.x;
    let var_2 = arg_0;
    let var_3 = ~vec4<i32>(~abs(0i), global3.x, global3.x, -u_input.b);
    global2 = firstTrailingBit(u_input.b);
    return var_2;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(firstTrailingBit(~(~vec3<u32>(59288u, global4.a, 0u))) | select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 96460u, arg_0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(4067u, 13430u, 13056u), vec3<u32>(u_input.c, global4.b, 0u), vec3<u32>(18956u, global4.b, 43409u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, global0.a, 1u), vec3<u32>(27097u, arg_0.a, global0.a)), true));
    var var_1 = -2147483647i;
    var var_2 = u_input.a >> (var_0.xy % vec2<u32>(32u));
    global2 = u_input.a.x;
    global1 = select(vec4<bool>(true, true, true, !global1.x), !select(!vec4<bool>(false, true, global1.x, global1.x), select(vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x)), select(vec4<bool>(true, false, global1.x, false), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x)), vec4<bool>(select(true, true, global1.x), true, select(true, global1.x, true), true)), !select(vec4<bool>(true, global1.x || false, global1.x & global1.x, true), vec4<bool>(false, var_2.x >= var_2.x, !global1.x, global1.x), !any(vec3<bool>(true, global1.x, global1.x))));
    return arg_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = true;
    global1 = !select(select(vec4<bool>(global1.x, any(vec3<bool>(global1.x, global1.x, true)), global1.x, global1.x & false), vec4<bool>(global1.x || false, true, false, all(vec2<bool>(true, global1.x))), global1.x), !vec4<bool>(any(vec4<bool>(true, global1.x, true, global1.x)), global1.x || true, !global1.x, !global1.x), select(!select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, global1.x)), select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true)), select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, false)), global1.x), select(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true)), select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, global1.x, true, global1.x), global1.x), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, false), false))));
    var var_1 = _wgslsmith_f_op_f32(max(-1047f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1666f)) * _wgslsmith_f_op_f32(1213f * -785f))))));
    var var_2 = _wgslsmith_f_op_f32(floor(-1470f));
    let var_3 = arg_1;
    return func_2(Struct_1(abs(~1u), firstLeadingBit(arg_3.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global3 = arg_1;
    global2 = -18624i;
    global4 = func_4(_wgslsmith_add_vec2_i32(~(~firstTrailingBit(global3.zx)), ~(~vec2<i32>(u_input.a.x, -2147483647i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(u_input.b, arg_1.x)))), func_3(func_2(Struct_1(~80756u, ~79187u))), select(countOneBits(vec3<u32>(100722u, ~global0.a, u_input.c << (4294967295u % 32u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, global4.a, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 130693u, u_input.c), vec3<u32>(global0.b, 59754u, global0.a))), vec3<u32>(global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 0u, 24521u), vec4<u32>(4294967295u, 7610u, 65646u, u_input.c)), _wgslsmith_clamp_u32(2434u, u_input.c, 32216u))), global1.zwx), ~abs(countOneBits(vec2<u32>(global0.a, 4294967295u))) ^ abs(_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 18869u), vec2<u32>(u_input.c, 1u), true), select(vec2<u32>(65504u, 1u), vec2<u32>(40249u, 1u), global1.x))));
    global3 = _wgslsmith_add_vec3_i32(arg_1, min(_wgslsmith_clamp_vec3_i32(arg_1 << (vec3<u32>(136178u, 1u, 6168u) % vec3<u32>(32u)), -arg_1, vec3<i32>(global3.x, global3.x, 1i)) & reverseBits(vec3<i32>(global3.x, global3.x, -1i)), vec3<i32>(2147483647i, arg_1.x, -6533i)));
    let var_0 = arg_1.x;
    return -59422i;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global3 = arg_0;
    global0 = Struct_1(global0.a, global0.b & abs(global4.b));
    var var_0 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(275f)) + 2208f) >= _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(sign(968f))), global1.x && false);
    var var_1 = vec4<bool>(!(!(4294967295u < arg_1.b)), false, any(!global1.zyw), !(!any(!vec3<bool>(global1.x, false, var_0.x))));
    let var_2 = -(~u_input.a.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(0i, _wgslsmith_mod_i32(global3.x, -(~6381i)), ~func_1(global4.b ^ 1u, max(vec3<i32>(u_input.a.x, 48995i, 18555i), vec3<i32>(u_input.a.x, global3.x, -54801i)))), Struct_1(abs(global4.b), 74335u));
    let var_1 = Struct_1(global0.a, 1u);
    global0 = Struct_1(~(30813u << (_wgslsmith_div_u32(1u, ~u_input.c) % 32u)), var_0.b);
    var var_2 = func_5(countOneBits(-vec3<i32>(global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global3.x, u_input.a.x), vec3<i32>(-1i, global3.x, u_input.a.x)), global3.x)), var_1);
    let var_3 = _wgslsmith_f_op_f32(round(-1901f));
    let var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_3(var_1).a, var_2.b), 44706i);
}

