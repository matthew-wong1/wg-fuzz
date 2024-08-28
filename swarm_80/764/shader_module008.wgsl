struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(1811f, -358f, 2348f), vec4<i32>(6192i, -9347i, -12153i, 34120i), -2231f, vec4<i32>(-12006i, -32030i, -69655i, i32(-2147483648)), vec4<f32>(-535f, 1000f, -1000f, -1223f)), vec4<i32>(-23646i, -46198i, -78424i, 23210i), vec4<u32>(4294967295u, 7613u, 1u, 4294967295u), Struct_1(vec3<f32>(-474f, -1290f, 1016f), vec4<i32>(i32(-2147483648), -29246i, -81586i, 2147483647i), 177f, vec4<i32>(2147483647i, 2507i, 81162i, 2147483647i), vec4<f32>(989f, 495f, -892f, 1542f))), -1402f, vec3<f32>(-543f, -320f, -455f), vec3<u32>(9088u, 51471u, 21049u), vec2<i32>(-54243i, -29712i));

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(119f, -1000f, 1012f), vec4<i32>(i32(-2147483648), -13197i, -75396i, -29479i), 880f, vec4<i32>(0i, 0i, 2147483647i, 16749i), vec4<f32>(1091f, -1890f, -249f, 780f)), vec4<i32>(i32(-2147483648), -7112i, -1i, 2147483647i), vec4<u32>(0u, 1u, 4294967295u, 964u), Struct_1(vec3<f32>(-531f, -1000f, -323f), vec4<i32>(1i, -1i, -1i, -45726i), 107f, vec4<i32>(-13892i, -1567i, -1i, 55479i), vec4<f32>(-185f, 626f, 242f, -1000f))), -218f, vec3<f32>(1841f, 486f, -744f), vec3<u32>(1u, 84226u, 0u), vec2<i32>(1i, i32(-2147483648))), vec4<f32>(1100f, -463f, -417f, -569f), Struct_1(vec3<f32>(-680f, -335f, -1000f), vec4<i32>(38971i, 16765i, -41974i, 0i), -1254f, vec4<i32>(-1i, 39697i, 18574i, -1i), vec4<f32>(1148f, -894f, 1590f, -355f)), vec2<bool>(false, false));

var<private> global2: i32;

var<private> global3: u32 = 43020u;

var<private> global4: array<u32, 15> = array<u32, 15>(28966u, 0u, 0u, 12821u, 0u, 27190u, 74364u, 11653u, 19639u, 0u, 48143u, 2481u, 4294967295u, 39812u, 51408u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    var var_0 = arg_0;
    let var_1 = select(!select(!vec4<bool>(false, arg_0, global1.d.x, global1.d.x), select(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, arg_0, global1.d.x, arg_0), false), vec4<bool>(false, true, arg_0, true), !arg_0), vec4<bool>(true, any(vec3<bool>(global1.d.x, global1.d.x, global1.d.x)), global1.d.x, false)), vec4<bool>(((0i << (arg_1.a.c.x % 32u)) <= _wgslsmith_dot_vec3_i32(u_input.b.zyx, vec3<i32>(global1.c.b.x, -27217i, arg_1.e.x))) | !any(global1.d), any(vec4<bool>(arg_0, arg_0 & global1.d.x, global1.a.d.x > global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45276u, 15u)], 15u)], arg_0)), select(select(select(false, false, global1.d.x), any(vec4<bool>(false, false, global1.d.x, true)), arg_1.c.x < arg_1.c.x), !global1.d.x, any(select(vec4<bool>(false, global1.d.x, global1.d.x, arg_0), vec4<bool>(true, global1.d.x, true, global1.d.x), vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x)))), arg_0), !arg_0);
    let var_2 = select(true, false, all(!select(var_1, !vec4<bool>(arg_0, false, false, false), true)));
    let var_3 = global0.a;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1.c))), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.b.x, 1i, -24869i), countOneBits(u_input.b)), arg_1.e.x, -11860i << ((global4[_wgslsmith_index_u32(u_input.a, 15u)] >> (_wgslsmith_sub_u32(4294967295u, global1.a.a.c.x) % 32u)) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(-1i), var_3.b.x), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.d.d.x, -2147483647i), arg_1.e)))), var_3.a.e.x, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, var_3.b.x, u_input.b.x, u_input.b.x), ~arg_1.a.d.b), var_3.a.b) | _wgslsmith_mod_vec4_i32(global1.a.a.d.d, vec4<i32>(i32(-1i) * -2147483647i, -var_3.d.b.x, firstTrailingBit(arg_1.a.d.b.x), max(48959i, 61137i))), _wgslsmith_f_op_vec4_f32(global0.a.d.e + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-710f)), _wgslsmith_f_op_f32(min(global1.b.x, 1302f)), _wgslsmith_f_op_f32(global0.c.x - var_3.d.c), -788f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.a.a.e)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1000f, global1.a.b, -766f) + vec4<f32>(global0.a.d.c, global1.b.x, arg_1.a.d.c, -1533f))))));
    return u_input.a;
}

fn func_2() -> Struct_2 {
    global4 = array<u32, 15>();
    let var_0 = countOneBits(firstLeadingBit(func_3((global1.a.d.x == 26846u) & (global1.d.x | true), global1.a)));
    var var_1 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -199f, global0.b) * vec3<f32>(881f, -2689f, global1.a.a.a.e.x)), select(vec4<i32>(6848i, -18150i, u_input.b.x, 1i), vec4<i32>(0i, u_input.b.x, -1i, -2147483647i), vec4<bool>(true, global1.d.x, false, global1.d.x)), global0.a.d.c, vec4<i32>(-11417i, 12140i, global1.c.b.x, 60140i), _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.a.x, 1350f, global1.b.x, global1.c.a.x), global0.a.d.e)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(46005i, 52835i, global1.a.a.d.d.x, 0i), vec4<i32>(global0.a.a.b.x, 0i, -1i, global0.a.b.x)), vec4<u32>(var_0 ^ 39713u, ~7421u, 1u, reverseBits(global1.a.d.x)), global0.a.d), global1.a.a.d.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -548f, global1.b.x) * global0.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, global1.c.e.x, global0.b))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 613f, 248f), vec3<f32>(global1.b.x, 693f, 213f))))), ~(vec3<u32>(4294967295u, var_0, 10583u) >> (~global1.a.d % vec3<u32>(32u))), global1.c.d.yw), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-471f, -1896f))), global1.c.c, _wgslsmith_f_op_f32(f32(-1f) * -411f), 1f), _wgslsmith_f_op_vec4_f32(global1.a.a.d.e + _wgslsmith_f_op_vec4_f32(vec4<f32>(963f, global1.a.a.a.a.x, global1.b.x, global0.c.x) * _wgslsmith_f_op_vec4_f32(ceil(global0.a.a.e)))))), Struct_1(global0.a.a.e.zyx, vec4<i32>(select(u_input.b.x, 16470i, global1.d.x), -max(global1.c.b.x, global0.e.x), 41638i, -1i), -744f, vec4<i32>(1i, _wgslsmith_mult_i32(global1.a.e.x, -38510i), _wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(-28159i, global0.a.b.x)), ~global0.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), global0.a.d.e.x, _wgslsmith_f_op_f32(-global0.a.d.c), _wgslsmith_f_op_f32(-global1.c.c)))), !global1.d);
    var_1 = Struct_4(var_1.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.e.x + global0.b)))), _wgslsmith_f_op_f32(step(733f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 222f) - -466f))), var_1.c.e.x, _wgslsmith_f_op_f32(global0.a.a.a.x + var_1.b.x)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.c, vec3<f32>(951f, global1.c.e.x, -694f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.wzw - global1.a.a.d.a) * vec3<f32>(var_1.b.x, 1915f, -1690f))), global0.a.b ^ vec4<i32>(abs(u_input.b.x), -u_input.b.x, -22057i, min(var_1.c.d.x, u_input.b.x)), -793f, global1.a.a.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_1.a.b, _wgslsmith_f_op_f32(-594f + 1014f), _wgslsmith_f_op_f32(1239f * var_1.c.c)))), var_1.d);
    let var_2 = var_1.a;
    return Struct_2(global1.a.a.d, max(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i >> (0u % 32u), abs(var_2.e.x), i32(-1i) * -2125i), vec4<i32>(-46353i, reverseBits(2147483647i), _wgslsmith_mult_i32(-1i, var_1.c.b.x), var_2.a.d.d.x)), -select(vec4<i32>(18198i, u_input.b.x, -51286i, var_2.a.b.x), vec4<i32>(-39776i, -2147483647i, 20931i, global1.c.d.x), global1.d.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.a, 34127u)), _wgslsmith_div_u32(~15533u, var_2.a.c.x), ~var_2.d.x, _wgslsmith_dot_vec3_u32(global0.a.c.zyx, global0.a.c.wzy) >> (global1.a.a.c.x % 32u)), _wgslsmith_div_vec4_u32(global0.a.c, ~_wgslsmith_add_vec4_u32(global0.a.c, vec4<u32>(107428u, global1.a.d.x, global0.a.c.x, var_1.a.a.c.x)))), var_2.a.d);
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: Struct_2) -> vec3<f32> {
    global0 = Struct_3(func_2(), 1f, global1.c.a, vec3<u32>(4294967295u, 35478u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 65646u), vec2<u32>(global4[_wgslsmith_index_u32(0u, 15u)], arg_2.c.x)) ^ ~u_input.a, ~(~global4[_wgslsmith_index_u32(4294967295u, 15u)]), ~_wgslsmith_clamp_u32(u_input.a, 0u, 4294967295u))), firstTrailingBit(arg_2.a.d.zz & vec2<i32>(arg_2.d.d.x, global1.a.e.x)));
    var var_0 = global1.d.x;
    var var_1 = reverseBits(global0.e);
    var var_2 = !(!(!(abs(2147483647i) > u_input.b.x)));
    var var_3 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(abs(global0.d.x >> (global1.a.d.x % 32u)), ~global1.a.a.c.x), 62144u);
    return global1.a.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<u32> {
    global2 = global0.e.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a.a.a, vec3<f32>(arg_1.a.d.c, -163f, 2694f)) - _wgslsmith_f_op_vec3_f32(-global1.a.a.d.e.yzw)) * vec3<f32>(_wgslsmith_f_op_f32(-1450f - arg_1.b), _wgslsmith_f_op_f32(sign(-1697f)), global0.a.d.a.x)) - vec3<f32>(arg_1.a.a.a.x, _wgslsmith_f_op_f32(-661f * 222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 520f)))), global1.c.b ^ vec4<i32>(0i >> (0u % 32u), -_wgslsmith_dot_vec4_i32(global0.a.b, vec4<i32>(u_input.b.x, arg_1.a.d.b.x, 2147483647i, global1.c.d.x)), firstTrailingBit(min(0i, global0.e.x)), abs(u_input.b.x)), _wgslsmith_f_op_vec3_f32(func_1(arg_1.a.d.e.x, Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -509f)), func_2())).x, abs(global1.a.a.b), global0.a.a.e);
    let var_1 = vec4<f32>(-938f, 743f, -166f, -1252f);
    var var_2 = global0.a.c.ww | vec2<u32>(0u, abs(_wgslsmith_div_u32(firstTrailingBit(4294967295u), countOneBits(2211u))));
    var var_3 = arg_1.a.a;
    return _wgslsmith_mod_vec4_u32(global0.a.c, vec4<u32>(global0.a.c.x, var_2.x, firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, ~4294967295u, ~var_2.x)), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global0.e.x) >> (~(~select(4294967295u, 37456u, true == global1.d.x)) % 32u);
    global3 = 4294967295u;
    var var_1 = (abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 0i, -2147483647i), vec3<i32>(global1.c.d.x, global0.a.b.x, u_input.b.x)) << (global0.a.c.zwx % vec3<u32>(32u))) >> (global1.a.d % vec3<u32>(32u))) << (~vec3<u32>(u_input.a, 1u << (0u % 32u), global1.a.d.x) % vec3<u32>(32u));
    var var_2 = abs(reverseBits(min(vec4<i32>(u_input.b.x, global1.c.b.x, u_input.b.x, 2147483647i), vec4<i32>(var_1.x, u_input.b.x, var_0, 2147483647i))) ^ vec4<i32>(var_0 ^ 1i, global0.a.a.d.x, global1.a.a.a.b.x, 2147483647i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, 57494u, global4[_wgslsmith_index_u32(1u, 15u)], global1.a.a.c.x), func_4(_wgslsmith_f_op_vec3_f32(func_1(969f, Struct_5(282f), Struct_2(Struct_1(vec3<f32>(-322f, 750f, global1.a.a.a.c), global0.a.b, -752f, u_input.b, global0.a.a.e), u_input.b, global1.a.a.c, global0.a.d))), Struct_3(Struct_2(Struct_1(global0.a.d.a, global1.c.d, -343f, vec4<i32>(var_1.x, var_1.x, global0.e.x, var_1.x), vec4<f32>(global1.c.a.x, -917f, -1180f, 1677f)), vec4<i32>(1i, -11724i, var_1.x, 1877i), global1.a.a.c, Struct_1(global0.a.d.a, global0.a.a.b, global1.a.c.x, vec4<i32>(u_input.b.x, var_1.x, -1i, -2147483647i), vec4<f32>(global0.a.a.e.x, 1000f, global0.a.a.c, global1.c.e.x))), global0.b, vec3<f32>(439f, global1.c.a.x, -665f), global0.a.c.wyy, global0.e)) ^ vec4<u32>(global1.a.d.x, 38121u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 15u)], 23477u), 3902u)) % vec4<u32>(32u));
    let var_3 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c.zxx, 1280f, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(77476u, 4539u), global0.a.c.x), 0u) & (~func_3(false, Struct_3(global0.a, -1931f, vec3<f32>(-954f, global1.a.b, global0.b), vec3<u32>(9862u, global0.d.x, 77106u), vec2<i32>(1i, 0i))) ^ ~global1.a.a.c.x), (var_2.yw << (~func_2().c.xx % vec2<u32>(32u))) ^ firstLeadingBit(min(vec2<i32>(var_1.x, global0.a.a.d.x), firstLeadingBit(u_input.b.zw))));
}

