struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 33078u, 0u, 19231u);

var<private> global3: u32;

var<private> global4: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> vec4<i32> {
    global2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~global2.xy, ~global2.xy), _wgslsmith_dot_vec2_u32(firstTrailingBit(global2.zw | vec2<u32>(u_input.e, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(11413u, u_input.e)) >> (global2.yy % vec2<u32>(32u))), u_input.e, reverseBits(u_input.a));
    global3 = _wgslsmith_mod_u32(global2.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(~global2.xx, global2.yw | global2.xy), vec2<u32>(global2.x, 4262u)), ~firstLeadingBit(global2.x)));
    let var_0 = 149f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 406f) * vec3<f32>(-1441f, -1025f, 556f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + vec3<f32>(270f, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -817f, 546f), vec3<f32>(var_0, var_0, var_0))))), 909f, u_input.e);
    global0 = select(!vec3<bool>(true, global0.x, any(select(vec4<bool>(arg_1, arg_1, arg_1, global0.x), vec4<bool>(true, arg_1, global0.x, false), false))), !select(vec3<bool>(!arg_1, !global0.x, global0.x), !vec3<bool>(true, arg_1, false), vec3<bool>(global0.x & true, any(vec3<bool>(false, false, true)), all(vec3<bool>(false, arg_1, false)))), true);
    return vec4<i32>(~firstTrailingBit(arg_0), reverseBits(arg_2.x), 13781i, 1i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(func_3(4527i, global0.x, ~select(u_input.d, u_input.d, !vec4<bool>(global0.x, global0.x, global0.x, global0.x))), u_input.d);
    global4 = _wgslsmith_f_op_f32(sign(-967f));
    let var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(var_1.a, _wgslsmith_f_op_vec3_f32(-var_1.a))), _wgslsmith_div_f32(-2113f, var_1.b), 1404u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(301f, arg_0.b, 1034f) - var_3.a)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b, var_1.b, -522f), _wgslsmith_f_op_vec3_f32(-arg_0.a)))) - var_1.a), var_1.a.x, abs(arg_0.c >> (global2.x % 32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = func_2(arg_2);
    let var_1 = Struct_1(var_0.a, arg_2.a.x, global2.x);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1003f, _wgslsmith_f_op_f32(min(arg_2.a.x, arg_1.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(-233f + -996f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1664f, -267f) + 830f), arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) * var_0.b) + func_2(func_2(func_2(Struct_1(vec3<f32>(545f, var_1.a.x, 1061f), 693f, arg_0.x)))).a.x), _wgslsmith_mod_u32(select(~(~var_1.c), u_input.a, arg_3), arg_1.c));
    var var_3 = select(select(!vec2<bool>(arg_3, false), select(global0.xz, select(select(global1[_wgslsmith_index_u32(arg_2.c, 30u)], vec2<bool>(true, arg_3), global1[_wgslsmith_index_u32(var_2.c, 30u)]), select(global1[_wgslsmith_index_u32(var_1.c, 30u)], global1[_wgslsmith_index_u32(59586u, 30u)], true), !global0.zx), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, 36190u, 0u, 1u), vec4<u32>(var_1.c, 4294967295u, arg_2.c, var_1.c)), _wgslsmith_add_u32(93775u, var_2.c)), 30u)]), !all(select(vec2<bool>(global0.x, false), global1[_wgslsmith_index_u32(var_2.c, 30u)], vec2<bool>(true, global0.x)))), global0.yy, any(vec3<bool>(all(global1[_wgslsmith_index_u32(u_input.e, 30u)]), arg_3, true)) != all(!(!global1[_wgslsmith_index_u32(4294967295u, 30u)])));
    global0 = !vec3<bool>(!global0.x, false & all(select(vec3<bool>(var_3.x, true, true), vec3<bool>(var_3.x, true, global0.x), false)), !(!arg_3));
    return func_2(arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1007f;
    global0 = select(!select(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, true, false), global0.x), global0.x), !(!(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, global0.x)))), any(vec3<bool>(true, global0.x, select(true, false, true))));
    var var_1 = _wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_clamp_i32(33487i, _wgslsmith_div_i32(-(u_input.c.x | -2147483647i), u_input.c.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(-65166i, -2147483647i, u_input.d.x), ~(~vec3<i32>(u_input.b, 5484i, 2147483647i)))));
    let var_2 = u_input.c.x;
    global1 = array<vec2<bool>, 30>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.x * -1599f), _wgslsmith_f_op_f32(715f * arg_1.b), arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-762f, arg_2.a.x, 964f), vec3<f32>(1123f, arg_3.a.x, 714f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.a.x, arg_0.b, 286f))), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-566f, 1332f, -1121f)))))), arg_3.a.x, ~arg_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = ~select(~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.c, global2.x), countOneBits(vec2<u32>(16033u, 0u))), global2.zy | reverseBits(vec2<u32>(u_input.e, 39157u)), global0.x);
    global3 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(1u ^ abs(arg_0.c), 4294967295u), arg_0.c);
    var var_1 = arg_0;
    var var_2 = Struct_1(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(exp2(var_1.b))), ~var_0.x);
    global4 = arg_0.a.x;
    return u_input.d.xwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-542f, 428f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2594f + -427f), _wgslsmith_f_op_f32(f32(-1f) * -611f))), _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1131f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(f32(-1f) * -717f))), global0.x | false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f * 190f)))), 1167u);
    let var_1 = func_5(func_4(func_1(global2.zyz, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, var_0.a.x, 1000f))), var_0.b, _wgslsmith_mult_u32(var_0.c, u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a.x), 68449u), global0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.b, var_0.a.x, -1428f))), -1372f, 84214u), var_0, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.b), ~var_0.c))), true, u_input.d);
    let var_2 = all(vec2<bool>(global0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-var_1.yx) << ((~global2.xx >> (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global2.wx, vec2<u32>(var_0.c, 4294967295u)), vec2<u32>(59377u, global2.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, _wgslsmith_div_vec2_i32(var_1.yx, u_input.d.wx)) & select(u_input.c, select(vec2<i32>(-6659i, 0i), vec2<i32>(13252i, 43973i), true), !global0.yz), u_input.c), var_1);
}

