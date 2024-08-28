struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<f32> {
    global0 = array<u32, 15>();
    let var_0 = countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4726u, firstLeadingBit(arg_2.x), ~4294967295u, 88463u), vec4<u32>(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(27343u, 15u)], arg_1.a, ~arg_2.x), _wgslsmith_sub_u32(arg_2.x, arg_2.x) >> (0u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(38827u, arg_1.d.x, global0[_wgslsmith_index_u32(arg_2.x, 15u)]), u_input.b.wyx), arg_1.a), countOneBits(~abs(u_input.b))));
    global0 = array<u32, 15>();
    var var_1 = ~(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(36371i, u_input.c.x, u_input.a), u_input.a), select(vec2<i32>(-26537i, 1i), countOneBits(vec2<i32>(6882i, 0i)), true)) ^ ~firstLeadingBit(select(vec2<i32>(u_input.c.x, u_input.a), u_input.c.zz, vec2<bool>(false, false))));
    global0 = array<u32, 15>();
    return arg_1.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(6647u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1026f))) + 1402f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(-289f - 3022f), vec3<f32>(1f, 1f, 1f), vec2<u32>(global0[_wgslsmith_index_u32(3056u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_1(45357u & u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, -559f, -957f)), ~vec2<u32>(30402u, 4294967295u)), u_input.b)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-137f, -1000f, -1310f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1759f, 270f)))))), ~firstTrailingBit(vec2<u32>(84599u, ~0u)));
    let var_1 = Struct_1(_wgslsmith_sub_u32(firstLeadingBit(75336u), _wgslsmith_mult_u32(1u, ~4294967295u)), _wgslsmith_f_op_f32(trunc(877f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f + 210f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)))))), firstTrailingBit(u_input.b.wz));
    var_0 = var_1;
    var var_2 = 2147483647i;
    return Struct_1(~27991u, _wgslsmith_f_op_f32(trunc(-1750f)), _wgslsmith_f_op_vec3_f32(-var_1.c), vec2<u32>(global0[_wgslsmith_index_u32(countOneBits(var_0.a), 15u)], ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(82741u, 15u)], global0[_wgslsmith_index_u32(var_0.d.x, 15u)]), vec3<u32>(85940u, var_0.a, var_1.d.x))) << (firstTrailingBit(select(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(var_1.d.x, 15u)], var_0.d.x)), vec2<u32>(global0[_wgslsmith_index_u32(var_0.a, 15u)], 6405u), false)) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_0 = func_2();
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2093f), _wgslsmith_f_op_f32(min(-758f, var_0.b))) - var_0.c.yy)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, arg_3)) - _wgslsmith_f_op_f32(1000f + arg_1.b)), 721f, arg_3) * vec4<f32>(-792f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1287f)), _wgslsmith_f_op_f32(abs(-939f)))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(max(var_1.x, -923f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_3, arg_3, arg_2.b)) - vec4<f32>(arg_2.b, -1693f, arg_2.b, 1646f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_0.c.x, 1531f, arg_2.b), vec4<f32>(var_1.x, arg_1.c.x, arg_1.c.x, -1625f)), vec4<f32>(238f, arg_2.c.x, 163f, arg_1.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.c.x, arg_3, -733f, arg_3))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3, var_1.x, var_1.x)))), true)));
    return vec3<u32>(76455u, arg_1.a, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 590f;
    global0 = array<u32, 15>();
    let var_1 = (abs(~(vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(0u, 15u)]) >> (u_input.b.xzx % vec3<u32>(32u)))) | func_4(vec4<bool>(true, false, false, func_1(Struct_1(25442u, -628f, vec3<f32>(-1500f, -1000f, 215f), u_input.b.xw), true, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -189f, vec3<f32>(-1049f, -318f, -789f), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 15u)]), vec2<u32>(u_input.b.x, 0u)), _wgslsmith_f_op_f32(945f - 1245f), _wgslsmith_div_vec3_f32(vec3<f32>(440f, -563f, 996f), vec3<f32>(-1000f, 812f, -607f)), vec2<u32>(global0[_wgslsmith_index_u32(0u, 15u)], u_input.b.x)), Struct_1(0u, -1000f, vec3<f32>(-1399f, 260f, 950f), vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-890f))))) >> (select(_wgslsmith_div_vec3_u32(u_input.b.yxw, firstLeadingBit(~u_input.b.wyz)), u_input.b.zyx, !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.yx, _wgslsmith_div_vec2_i32(select(u_input.c.yy, vec2<i32>(u_input.a, u_input.a), true), u_input.c.zx)), 4026i), max(-15316i, firstTrailingBit(0i)));
    let var_3 = u_input.c;
    global0 = array<u32, 15>();
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -178f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f + 599f) - _wgslsmith_f_op_f32(min(-1000f, 1312f))), -1420f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1266f, _wgslsmith_f_op_f32(597f + -1472f)), vec2<f32>(1780f, 1015f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_4.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.x + 615f))) - var_4.x) - var_4.x));
}

