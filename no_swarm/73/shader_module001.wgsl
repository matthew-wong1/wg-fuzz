struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-1072f, 620f, -630f, 1882f), vec4<f32>(-2264f, 711f, -1240f, -613f), vec4<f32>(591f, -646f, -1009f, -772f), vec4<f32>(-734f, -310f, 1548f, -233f), vec4<f32>(-693f, 293f, -1000f, 1000f), vec4<f32>(-713f, -925f, -586f, -1765f), vec4<f32>(635f, -464f, -1320f, -2095f), vec4<f32>(725f, -1155f, -179f, 1616f), vec4<f32>(-990f, 212f, -426f, 1000f), vec4<f32>(-378f, -685f, -618f, -2206f), vec4<f32>(-953f, 468f, -1557f, 1098f), vec4<f32>(-146f, -727f, -301f, 1091f), vec4<f32>(-1130f, 274f, 2146f, 1475f), vec4<f32>(-1000f, 481f, -1168f, 934f), vec4<f32>(-1552f, 643f, 175f, 553f), vec4<f32>(2167f, -1253f, -511f, -970f), vec4<f32>(-274f, -2089f, -294f, 520f), vec4<f32>(1000f, -801f, 1116f, -1053f), vec4<f32>(1143f, 189f, -1475f, 1078f), vec4<f32>(1708f, 716f, -1348f, 738f), vec4<f32>(816f, -354f, 866f, 1738f), vec4<f32>(-1453f, 660f, -839f, 689f), vec4<f32>(-1000f, -159f, 1440f, 382f), vec4<f32>(-1000f, 688f, 199f, 1101f), vec4<f32>(-303f, 618f, 309f, -815f), vec4<f32>(1197f, -603f, 141f, -540f), vec4<f32>(-162f, 694f, -483f, -1151f));

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec4<u32>(0u, 0u, 47210u, 77347u), vec2<bool>(false, false)), Struct_1(true, vec4<u32>(52516u, 1u, 6309u, 1u), vec2<bool>(false, false)), Struct_1(false, vec4<u32>(0u, 1u, 72318u, 71414u), vec2<bool>(false, false)), Struct_1(false, vec4<u32>(26419u, 0u, 25535u, 4294967295u), vec2<bool>(true, true)), Struct_1(true, vec4<u32>(83011u, 0u, 2899u, 1u), vec2<bool>(false, false)), Struct_1(false, vec4<u32>(0u, 0u, 24403u, 21977u), vec2<bool>(true, false)), Struct_1(true, vec4<u32>(39582u, 48771u, 4294967295u, 4294967295u), vec2<bool>(false, true)), Struct_1(false, vec4<u32>(19613u, 28116u, 4960u, 1u), vec2<bool>(false, false)), Struct_1(true, vec4<u32>(10774u, 4294967295u, 27297u, 1u), vec2<bool>(true, false)), Struct_1(false, vec4<u32>(1u, 4294967295u, 0u, 49422u), vec2<bool>(false, false)), Struct_1(false, vec4<u32>(1u, 18526u, 0u, 1u), vec2<bool>(true, false)), Struct_1(true, vec4<u32>(4294967295u, 101083u, 53284u, 91060u), vec2<bool>(false, true)), Struct_1(false, vec4<u32>(2694u, 23301u, 0u, 1u), vec2<bool>(false, false)), Struct_1(true, vec4<u32>(28976u, 56143u, 1u, 18865u), vec2<bool>(false, false)), Struct_1(false, vec4<u32>(4294967295u, 65120u, 48388u, 90801u), vec2<bool>(true, true)), Struct_1(true, vec4<u32>(50187u, 1u, 897u, 48512u), vec2<bool>(true, false)));

var<private> global3: bool = true;

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32) -> i32 {
    let var_0 = Struct_1(any(!vec3<bool>(false, global4.c.x, false)), _wgslsmith_mod_vec4_u32(global4.b, _wgslsmith_mod_vec4_u32((vec4<u32>(1u, 1u, global4.b.x, 0u) >> (vec4<u32>(global4.b.x, 4294967295u, global4.b.x, global4.b.x) % vec4<u32>(32u))) ^ global4.b, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9024u, 4294967295u, global4.b.x) & vec4<u32>(global4.b.x, global4.b.x, global4.b.x, 12575u), global4.b))), global4.c);
    let var_1 = ~vec2<u32>(~firstLeadingBit(40443u << (global4.b.x % 32u)), var_0.b.x | var_0.b.x);
    global4 = Struct_1(var_0.c.x && false, global4.b, var_0.c);
    global2 = array<Struct_1, 16>();
    let var_2 = ~abs(global4.b.x);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = !global4.c;
    let var_2 = 30808i;
    var var_3 = vec3<i32>(u_input.a.x, 0i, -1i);
    let var_4 = func_3(-610f, ~(i32(-1i) * -6891i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(round(911f)))));
    return 0i;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: bool) -> vec2<i32> {
    global0 = array<vec4<f32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(round(-349f));
    var var_1 = min(-(vec3<i32>(-1i) * -(vec3<i32>(u_input.a.x, arg_1, u_input.a.x) >> (vec3<u32>(4294967295u, 33099u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(func_2(vec2<i32>(u_input.a.x, -2147483647i), Struct_1(arg_0.x, vec4<u32>(1u, 128040u, global4.b.x, 585u), arg_0), global2[_wgslsmith_index_u32(global4.b.x, 16u)], vec2<f32>(1306f, 119f)), u_input.a.x), _wgslsmith_mod_i32(min(u_input.a.x, arg_1), 3607i)), abs(countOneBits(vec3<i32>(u_input.a.x, 0i, 2147483647i)))));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~(~(global4.b.xwz >> (global4.b.yxy % vec3<u32>(32u))))), _wgslsmith_mod_vec3_u32(~global4.b.wxw, abs(~max(vec3<u32>(8067u, 98927u, global4.b.x), global4.b.zww)))), 16u)];
    let var_2 = any(global4.c);
    return u_input.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = u_input.a.x;
    let var_1 = -151f;
    let var_2 = Struct_1(true, ~(~vec4<u32>(arg_2.b.x, 29821u, 13099u, global4.b.x >> (2813u % 32u))), vec2<bool>(_wgslsmith_f_op_f32(ceil(var_1)) > _wgslsmith_f_op_f32(f32(-1f) * -593f), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, var_1, var_1))) - _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(78788u, 29u)])))), _wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.b.x, 0u, 38088u) << (arg_2.b.x % 32u), 29u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(26291u, 29u)]) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1895f, 826f, 953f), global1[_wgslsmith_index_u32(arg_1.b.x, 29u)], vec3<bool>(global4.c.x, var_2.a, global4.a))))))));
    global4 = Struct_1(true || (_wgslsmith_div_i32(~2147483647i, u_input.a.x) != _wgslsmith_add_i32(-22199i, func_1(arg_2.c, -2147483647i, 1374f, arg_2.a).x)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.b.x, var_2.b.x, 55478u, 4294967295u), vec4<u32>(global4.b.x, arg_2.b.x, 0u, 4294967295u), vec4<u32>(arg_2.b.x, arg_2.b.x, 0u, 0u))) << (_wgslsmith_mod_vec4_u32(select(reverseBits(vec4<u32>(var_2.b.x, 1u, 55371u, 36474u)), ~vec4<u32>(arg_2.b.x, global4.b.x, 4294967295u, arg_2.b.x), arg_1.c.x), vec4<u32>(1u, _wgslsmith_div_u32(arg_2.b.x, 4294967295u), arg_1.b.x << (arg_2.b.x % 32u), _wgslsmith_add_u32(11456u, 0u))) % vec4<u32>(32u)), arg_2.c);
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1150f, -935f, _wgslsmith_div_f32(-2264f, -359f))), global1[_wgslsmith_index_u32(~select(arg_1.b.x, arg_1.b.x, false), 29u)]), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(var_3.x * var_3.x))), _wgslsmith_f_op_f32(353f + var_3.x), _wgslsmith_f_op_f32(abs(-513f))))), vec4<u32>(arg_2.b.x, arg_2.b.x, var_2.b.x, 1u), -10607i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(countOneBits(func_1(vec2<bool>(!global4.a, -2396i >= u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(4368i, u_input.a.x, u_input.a.x), u_input.a.x), -1285f, true)), global2[_wgslsmith_index_u32(select(global4.b.x, _wgslsmith_clamp_u32(0u, ~(~global4.b.x), (4294967295u << (global4.b.x % 32u)) & _wgslsmith_sub_u32(4294967295u, 49374u)), select(_wgslsmith_f_op_f32(select(-713f, -1087f, false)) < 1372f, global4.c.x, all(vec3<bool>(global4.c.x, global4.c.x, false)))), 16u)], Struct_1(global4.c.x, vec4<u32>(global4.b.x, ~(~38091u), global4.b.x, firstTrailingBit(4294967295u)), vec2<bool>(true, true)));
}

