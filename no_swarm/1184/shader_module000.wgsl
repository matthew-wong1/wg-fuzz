struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(1262f, -247f, -1031f, 1000f, -794f, 1162f, -445f, -1921f, -396f, -622f, 769f, -1000f, -1155f, 850f, 376f, 753f, -757f, -1940f, -269f, -1167f, -115f, 1744f, -851f, -395f, 350f, 189f, 746f);

var<private> global1: Struct_3 = Struct_3(vec3<f32>(1088f, 105f, 1443f));

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: Struct_2;

var<private> global4: Struct_3 = Struct_3(vec3<f32>(-385f, -366f, -1000f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(~u_input.a.xzz & countOneBits(u_input.a.zxx)), _wgslsmith_sub_vec3_u32(~u_input.a.xzx, u_input.a.wwz >> (vec3<u32>(global3.a.x, 8939u, u_input.a.x) % vec3<u32>(32u)))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.yxz >> (vec3<u32>(1u, u_input.a.x, global3.a.x) % vec3<u32>(32u)), u_input.a.wyy), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.d, 72714u, global3.a.x), vec3<u32>(u_input.d, 1u, 15532u)), select(u_input.a.zyy, vec3<u32>(0u, 173u, 21958u), global3.b.e))));
    var var_1 = Struct_4(global3.b.e, 1101f);
    global4 = Struct_3(vec3<f32>(1545f, _wgslsmith_f_op_f32(-var_1.b), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(588f, global3.b.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.a.xz), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1889f, global3.b.a)))))))));
    var var_3 = var_1.a.x;
    return any(!vec4<bool>(true, global3.c, global3.c, var_1.b >= _wgslsmith_f_op_f32(-605f + global0[_wgslsmith_index_u32(4294967295u, 27u)])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = Struct_2(~vec2<u32>(abs(55672u), ~(~arg_0.c)), arg_0, false);
    let var_1 = vec3<f32>(-313f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), arg_0.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.b.a, -124f)) - arg_2.x))));
    let var_2 = var_0;
    var var_3 = -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, global3.b.b.x, global3.b.b.x), vec3<i32>(var_0.b.b.x, arg_0.b.x, arg_0.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.b.x, global3.b.b.x, 1i, var_0.b.b.x), u_input.e)), global3.b.b.x, (global3.b.b.x | 0i) >> (_wgslsmith_div_u32(18865u & arg_1.x, ~var_2.a.x) % 32u), -10645i);
    let var_4 = Struct_2(vec2<u32>(1u, 26275u), var_0.b, var_0.b.e.x);
    return -1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_4 {
    global0 = array<f32, 27>();
    let var_0 = Struct_1(-342f, vec3<i32>(-global3.b.b.x, _wgslsmith_div_i32(-(~global3.b.b.x), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(1i, u_input.e.x, -2147483647i, -1i)) ^ 2147483647i), u_input.b), ~(~global3.a.x), global3.b.d, select(vec3<bool>(all(select(vec4<bool>(global3.b.e.x, false, false, true), vec4<bool>(global3.c, false, global3.c, global3.c), vec4<bool>(true, global3.c, true, false))), !(1u != u_input.d), global3.b.e.x), vec3<bool>(false, func_2(), all(!vec4<bool>(global3.b.e.x, true, global3.b.e.x, global3.c))), global3.b.e.x));
    var var_1 = _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_0.c, ~(~global3.b.c), firstTrailingBit(4294967295u), firstTrailingBit(116513u)));
    let var_2 = _wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(var_0.b.x, ~max(u_input.b, global3.b.b.x)), ~func_3(Struct_1(-655f, var_0.b, arg_0.x, var_0.d, vec3<bool>(var_0.e.x, var_0.e.x, false)), ~vec2<u32>(var_1.x, 22519u), global1.a.yx)));
    let var_3 = Struct_4(var_0.e, 369f);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(vec3<u32>(global3.a.x, 1u, global3.a.x)), global3.a.x);
    let var_1 = var_0;
    var var_2 = select(select(select(vec4<bool>(true, global3.b.e.x, true, !global3.c), select(vec4<bool>(false, true, true, false), !vec4<bool>(global3.c, var_0.a.x, true, true), true), vec4<bool>(!global3.c, all(vec2<bool>(var_1.a.x, false)), 58850u <= global3.a.x, true)), vec4<bool>(all(!vec4<bool>(true, var_1.a.x, global3.c, global3.c)), false, !any(vec4<bool>(false, var_1.a.x, global3.c, true)), -u_input.b >= (i32(-1i) * -2147483647i)), var_1.a.x), select(!(!vec4<bool>(false, true, false, global3.c)), !vec4<bool>(any(vec4<bool>(false, global3.c, false, true)), 35376u != global3.a.x, any(vec3<bool>(false, true, false)), true), any(vec2<bool>(true, false))), vec4<bool>(global3.b.b.x <= select(func_3(Struct_1(global0[_wgslsmith_index_u32(22167u, 27u)], u_input.e.yxw, 4294967295u, global3.b.d, vec3<bool>(global3.c, var_0.a.x, var_0.a.x)), vec2<u32>(global3.b.c, 31399u), global4.a.xy), ~u_input.b, any(vec4<bool>(global3.b.e.x, global3.c, global3.c, true))), func_2(), true, var_1.a.x));
    var var_3 = var_0;
    var var_4 = !vec4<bool>(var_1.a.x || !(!var_1.a.x), true, false, global3.b.b.x < u_input.b);
    let var_5 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-43304i, min(_wgslsmith_mult_i32(u_input.b, ~global3.b.b.x), -1i), 0i), _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.e.zyw, vec3<i32>(-1i, u_input.e.x, global3.b.b.x))), u_input.e.x) >> ((countOneBits(4294967295u) | _wgslsmith_sub_u32(u_input.d, global3.b.c << (36138u % 32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global3.b.d + global3.b.d))), countOneBits(firstTrailingBit(max(max(u_input.a, vec4<u32>(0u, 0u, 53196u, 1275u)), ~vec4<u32>(u_input.d, 4294967295u, global3.b.c, 63313u)))), 1u, u_input.a, vec3<u32>(~u_input.d, abs(~u_input.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(925u, 9564u, 4294967295u), u_input.a.yyz) % 32u)), ~select(~4294967295u, 54423u, true)));
}

