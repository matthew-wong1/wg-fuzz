struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 25> = array<u32, 25>(19380u, 32523u, 1u, 1u, 5242u, 0u, 19980u, 4294967295u, 1u, 53667u, 1u, 72541u, 4294967295u, 844u, 31214u, 0u, 10385u, 1u, 1u, 20907u, 31292u, 0u, 1u, 0u, 36806u);

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f - _wgslsmith_f_op_f32(select(-929f, -690f, any(vec2<bool>(global0.x, false)))))));
    var var_1 = min(reverseBits(reverseBits(-u_input.b.x)), max(-41825i, 1i)) << (6006u % 32u);
    var var_2 = false || (_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(arg_1, u_input.c.x, -1i, -2462i)) >> (vec4<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5140u, 25u)], 25u)], 28229u) % vec4<u32>(32u)), u_input.c) <= ~(-9889i));
    let var_3 = ~arg_1;
    var var_4 = !(!select(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, true, false, global0.x), !global0.x), vec4<bool>(true, true, true, true), !(!vec4<bool>(false, false, global2.a, false))));
    return global2.a;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_4 {
    global2 = Struct_1(true);
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = -abs(-countOneBits(~vec3<i32>(arg_3.x, arg_3.x, arg_0.b.x)));
    global2 = Struct_1(var_0.a.a);
    return Struct_4(Struct_1(!arg_2.a));
}

fn func_3(arg_0: Struct_4) -> Struct_1 {
    var var_0 = abs(min(u_input.a, ~(u_input.a | global1[_wgslsmith_index_u32(11107u, 25u)]) >> (1u % 32u)));
    let var_1 = Struct_2(arg_0.a, arg_0.a);
    let var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 588f, global3.x), vec3<f32>(global3.x, 2576f, 2083f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, -713f, global3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -265f, 872f)))))));
    global1 = array<u32, 25>();
    return func_2(Struct_3(select(!global0.wx, !select(global0.zz, vec2<bool>(arg_0.a.a, var_1.b.a), global0.yy), !(!vec2<bool>(false, arg_0.a.a))), firstLeadingBit(~u_input.c), func_2(Struct_3(global0.yz, vec4<i32>(var_2, -2147483647i, 46675i, u_input.b.x), arg_0.a, vec3<bool>(arg_0.a.a, true, global2.a)), arg_0, Struct_1(arg_0.a.a == arg_0.a.a), u_input.c).a, vec3<bool>(true, !arg_0.a.a, false)), func_2(Struct_3(!vec2<bool>(var_1.a.a, global0.x), u_input.c, Struct_1(true), global0.ywz), func_2(Struct_3(vec2<bool>(global2.a, var_1.a.a), u_input.c, func_2(Struct_3(global0.yw, vec4<i32>(var_2, u_input.b.x, u_input.c.x, var_2), Struct_1(true), vec3<bool>(true, false, false)), arg_0, Struct_1(false), vec4<i32>(2147483647i, var_2, u_input.c.x, -3460i)).a, vec3<bool>(false, var_1.b.a, arg_0.a.a)), arg_0, Struct_1(global0.x), max(firstLeadingBit(vec4<i32>(var_2, -2147483647i, var_2, 3826i)), abs(vec4<i32>(68993i, var_2, -70001i, u_input.b.x)))), arg_0.a, select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, -2147483647i) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a, global1[_wgslsmith_index_u32(1u, 25u)], 4294967295u) % vec4<u32>(32u)), -u_input.c), vec4<i32>(0i, _wgslsmith_sub_i32(-2147483647i, u_input.c.x), u_input.c.x, u_input.b.x), global2.a)), Struct_1(global2.a), ~(~u_input.c)).a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-851f, _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(trunc(global3.x)))));
    let var_1 = u_input.b;
    global0 = !(!select(!vec4<bool>(arg_1.b.a, true, arg_1.a.a, global2.a), select(select(vec4<bool>(false, true, false, arg_1.a.a), vec4<bool>(true, true, true, true), global0.x), select(vec4<bool>(arg_1.a.a, arg_1.b.a, arg_1.a.a, true), vec4<bool>(false, true, true, arg_1.a.a), global2.a), !vec4<bool>(false, global0.x, true, arg_1.a.a)), false));
    let var_2 = func_2(Struct_3(!select(global0.ww, vec2<bool>(global0.x, global0.x), 4294967295u <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i | arg_0.x, 2147483647i, min(arg_0.x, var_1.x), max(u_input.c.x, u_input.c.x)), vec4<i32>(select(-2147483647i, var_1.x, global2.a), -1i, firstLeadingBit(u_input.b.x), ~1i)), Struct_1(any(global0.zx)), vec3<bool>(!(var_0.x <= var_0.x), false, true)), func_2(Struct_3(vec2<bool>(global3.x >= 1752f, true), _wgslsmith_div_vec4_i32(arg_0, _wgslsmith_div_vec4_i32(arg_0, u_input.c)), arg_1.b, vec3<bool>(true, false | global0.x, true)), Struct_4(Struct_1(func_2(Struct_3(global0.zw, arg_0, Struct_1(true), global0.ywy), Struct_4(arg_1.a), arg_1.a, arg_0).a.a)), func_2(Struct_3(select(vec2<bool>(global2.a, false), global0.wx, global2.a), u_input.c, func_2(Struct_3(vec2<bool>(false, global2.a), vec4<i32>(-26936i, 2147483647i, var_1.x, var_1.x), Struct_1(global0.x), global0.yzz), Struct_4(Struct_1(global2.a)), arg_1.a, vec4<i32>(-13599i, u_input.c.x, 1i, var_1.x)).a, vec3<bool>(true, global0.x, false)), Struct_4(Struct_1(false)), Struct_1(global0.x), -u_input.c | min(u_input.c, arg_0)).a, ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.x, var_1.x, u_input.c.x, u_input.b.x), -arg_0, min(arg_0, vec4<i32>(arg_0.x, 24668i, var_1.x, u_input.b.x)))), arg_1.b, _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 60280i, -2147483647i, -1i), vec4<i32>(arg_0.x, -13079i, -26086i, 40905i))) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(25936u, global1[_wgslsmith_index_u32(36088u, 25u)]), ~1u, ~39592u) % vec4<u32>(32u)), vec4<i32>(-1i) * -arg_0, ~u_input.c));
    global1 = array<u32, 25>();
    return Struct_4(Struct_1((u_input.a >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10070u, u_input.a, 4294967295u), vec4<u32>(0u, 56303u, 4294967295u, 67365u))) & !var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(665f)), global3.x)), _wgslsmith_f_op_f32(global3.x * 322f));
    let var_1 = Struct_5(Struct_3(vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, 1364f, 1531f))), reverseBits(-49610i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, 1829f, global3.x)))), false), min(vec4<i32>(u_input.b.x, u_input.c.x, -28256i, -31986i) >> (~vec4<u32>(u_input.a, 125326u, 32844u, u_input.a) % vec4<u32>(32u)), u_input.c), Struct_1(any(!global0.wzx)), global0.yzx), vec3<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, global0.x), vec4<bool>(global2.a, true, global0.x, global2.a))), !global2.a, ~(global1[_wgslsmith_index_u32(1u, 25u)] | 0u) >= 17081u), Struct_4(Struct_1(global0.x)), func_4(u_input.c, Struct_2(func_3(func_2(Struct_3(global0.xx, vec4<i32>(0i, u_input.b.x, u_input.c.x, 1i), Struct_1(global2.a), vec3<bool>(global0.x, global0.x, false)), Struct_4(Struct_1(true)), Struct_1(global2.a), u_input.c)), func_3(Struct_4(Struct_1(false))))));
    let var_2 = vec4<bool>(true | global2.a, false, false, true);
    var var_3 = func_3(var_1.d);
    global0 = !vec4<bool>(true, select(var_1.a.d.x, func_4(~var_1.a.b, Struct_2(Struct_1(true), var_1.d.a)).a.a, var_3.a), var_2.x, var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -401f), u_input.c.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, global3.x, -1114f, 1000f) - vec4<f32>(global3.x, 1258f, global3.x, 456f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1568f, global3.x, 1250f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-855f, global3.x, 1000f, 587f), vec4<f32>(global3.x, global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -393f, global3.x)), vec4<bool>(true, var_3.a, global2.a, global0.x))))))), ~var_1.a.b.x | (_wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), -1i, u_input.b.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.a.b.x, -47366i, u_input.c.x), vec4<i32>(78829i, var_1.a.b.x, 1i, 0i))), ~(vec4<u32>(_wgslsmith_clamp_u32(89785u, u_input.a, 4294967295u), reverseBits(1u), global1[_wgslsmith_index_u32(abs(u_input.a), 25u)], u_input.a) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u))));
}

