struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, 14566i), vec3<i32>(-43711i, 33588i, i32(-2147483648)), vec3<bool>(false, false, false));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), 5823i, 9055i, -1i), vec3<i32>(0i, -49640i, 41367i), vec3<bool>(false, false, true));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(63369i, 1i, 46230i, -48909i), vec3<i32>(44589i, 1i, 0i), vec3<bool>(true, false, true));

var<private> global4: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(46603u, 0u, 1u), vec3<u32>(70807u, 0u, 59145u), vec3<u32>(0u, 1u, 59507u), vec3<u32>(0u, 22401u, 4294967295u), vec3<u32>(4294967295u, 0u, 14234u), vec3<u32>(50876u, 34065u, 0u), vec3<u32>(53610u, 1u, 65127u), vec3<u32>(1832u, 4294967295u, 19333u), vec3<u32>(4294967295u, 1u, 3287u), vec3<u32>(4294967295u, 46019u, 7152u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(20015u, 59987u, 52829u), vec3<u32>(6090u, 1u, 43521u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 21562u, 9399u), vec3<u32>(0u, 78292u, 0u), vec3<u32>(39510u, 1u, 67949u), vec3<u32>(10394u, 1u, 397u), vec3<u32>(78767u, 0u, 0u), vec3<u32>(53368u, 0u, 68813u), vec3<u32>(0u, 1u, 1299u), vec3<u32>(26513u, 11454u, 12186u), vec3<u32>(0u, 12864u, 0u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(vec4<i32>(-firstTrailingBit(global1.a.x), global0.a.x, ~(-2147483647i), global1.b.x), arg_0.a.wzy << (vec3<u32>(max(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~62617u), u_input.b.x, (u_input.b.x << (u_input.b.x % 32u)) << (~u_input.b.x % 32u)) % vec3<u32>(32u)), !arg_0.c);
    var var_1 = Struct_1(global3.a, vec3<i32>(select(-_wgslsmith_clamp_i32(global0.a.x, global0.a.x, global1.a.x), -1i, true), 2147483647i, 64690i), vec3<bool>(!any(select(vec4<bool>(var_0.c.x, true, false, global2.c.x), vec4<bool>(true, false, false, global3.c.x), false)), !arg_0.c.x, true));
    return select(select(!vec4<bool>(!arg_0.c.x, arg_0.c.x, global1.c.x, var_0.c.x && global2.c.x), !select(select(vec4<bool>(global3.c.x, true, global3.c.x, global0.c.x), vec4<bool>(false, true, false, true), var_1.c.x), select(vec4<bool>(true, global1.c.x, global3.c.x, global0.c.x), vec4<bool>(global1.c.x, var_1.c.x, true, global3.c.x), true), false), vec4<bool>(global3.c.x, true, true, any(select(vec4<bool>(var_1.c.x, true, global2.c.x, arg_0.c.x), vec4<bool>(false, false, var_1.c.x, false), var_0.c.x)))), vec4<bool>(global1.c.x, true, all(!arg_0.c.zy), !(!(!global0.c.x))), select(vec4<bool>(true, !global0.c.x, select(global3.c.x, global3.c.x, u_input.b.x < 4294967295u), select(true, any(vec2<bool>(true, global0.c.x)), u_input.b.x == u_input.b.x)), vec4<bool>(arg_0.c.x, !(global0.b.x < 9434i), false & all(vec4<bool>(false, global2.c.x, global2.c.x, true)), !(u_input.b.x == u_input.b.x)), !(!vec4<bool>(false, true, arg_0.c.x, true))));
}

fn func_4(arg_0: vec4<bool>) -> u32 {
    global0 = Struct_1(~vec4<i32>(abs(83017i), 45985i, ~_wgslsmith_dot_vec3_i32(global1.a.ywx, u_input.d), global3.a.x), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(1i, -11037i, global0.b.x), global0.a.wzz) & vec3<i32>(countOneBits(global2.b.x), ~2147483647i, -2147483647i), global1.a.wwx), func_3(Struct_1(global2.a, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.b.x, 59649i), global3.a.zyx), global1.a.wwy), global1.c)).zzy);
    global3 = Struct_1(select(~_wgslsmith_sub_vec4_i32(min(global3.a, vec4<i32>(global2.b.x, global0.a.x, 27633i, 34592i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.x, global0.a.x, global3.a.x, global0.a.x), global2.a, global3.a)), -(vec4<i32>(u_input.c.x, 2147483647i, 21270i, global3.a.x) << (vec4<u32>(u_input.b.x, 424u, 0u, u_input.b.x) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(0u, 1841u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), select(!arg_0, vec4<bool>(true, global1.c.x, all(vec3<bool>(global2.c.x, false, false)), u_input.d.x != global0.b.x), select(arg_0, arg_0, true))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(global2.b.x), u_input.a.x), -2147483647i), -1i >> (_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 28769u) % 32u), global2.b.x), vec3<bool>(!(!(false != global0.c.x)), any(global1.c.xz), all(global1.c)));
    global1 = Struct_1(global0.a, reverseBits(_wgslsmith_add_vec3_i32(global2.b, _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, -1i, -1i), vec3<i32>(global0.b.x, 1i, global0.b.x)) & (vec3<i32>(u_input.c.x, 16725i, 2147483647i) << (vec3<u32>(u_input.b.x, 4294967295u, 49068u) % vec3<u32>(32u))))), vec3<bool>(!(!(global2.b.x > global3.a.x)), select(true, !global1.c.x, all(!vec4<bool>(global3.c.x, true, global1.c.x, true))), select(true, false || arg_0.x, !(true & global0.c.x))));
    global1 = Struct_1(_wgslsmith_add_vec4_i32(global2.a, global2.a), vec3<i32>(~(-2147483647i), ~21292i, 9983i), !(!vec3<bool>(global1.c.x, true, any(arg_0))));
    let var_0 = Struct_1(-vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(global2.a.x, global3.b.x) << (abs(u_input.b.x) % 32u), i32(-1i) * -46302i, ~global3.a.x), _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.x, global2.a.x, 291i), select(global0.a.yyx, vec3<i32>(u_input.a.x, global2.b.x, 17611i), global3.c)), global3.b), !global2.c);
    return u_input.b.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = global1.c.x;
    var var_1 = 1f;
    global1 = Struct_1(global2.a, u_input.d >> (global4[_wgslsmith_index_u32(func_4(select(func_3(Struct_1(global1.a, global1.a.xzy, vec3<bool>(global3.c.x, false, false))), !vec4<bool>(global2.c.x, global0.c.x, false, global0.c.x), vec4<bool>(global0.c.x, true, global3.c.x, true))), 25u)] % vec3<u32>(32u)), !global2.c);
    var var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.b.x & u_input.b.x, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], vec3<u32>(u_input.b.x, u_input.b.x, 21077u))), u_input.b.x), ~_wgslsmith_mult_vec2_u32(select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), select(vec2<bool>(false, true), global0.c.yz, vec2<bool>(true, global0.c.x))), vec2<u32>(firstTrailingBit(61690u), _wgslsmith_clamp_u32(4294967295u, 56781u, 1u))), select(u_input.b, u_input.b, true));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f) + -123f)))));
    return Struct_1(global2.a, countOneBits(~vec3<i32>(1i, 23281i, global2.a.x)), vec3<bool>(false, global3.c.x, true));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = vec4<bool>(true, any(select(!(!global1.c), !(!global1.c), vec3<bool>(global0.c.x && true, any(global0.c), true))), !all(!vec3<bool>(true, global3.c.x, false)), all(global3.c));
    var var_2 = arg_0;
    global0 = func_2(var_1.yww);
    let var_3 = global3.a;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    global4 = array<vec3<u32>, 25>();
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-547f - 903f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f + -396f) * -1011f)), 700f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(627f, 764f) + vec2<f32>(-406f, -1841f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2135f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -971f))), _wgslsmith_div_f32(1000f, -239f));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 2653f))), vec2<f32>(133f, var_0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(119f))))), true));
    var var_2 = !select(select(select(vec4<bool>(true, true, arg_0.c.x, false), !vec4<bool>(global0.c.x, false, global3.c.x, global2.c.x), vec4<bool>(global2.c.x, false, false, global3.c.x)), vec4<bool>(u_input.b.x == u_input.b.x, false, true, all(global2.c.xx)), !select(vec4<bool>(global0.c.x, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, arg_1, arg_0.c.x))), select(vec4<bool>(arg_1 & global0.c.x, func_1(Struct_1(vec4<i32>(40742i, 6726i, arg_0.a.x, -1i), vec3<i32>(global3.a.x, u_input.c.x, -2147483647i), vec3<bool>(true, true, true))).c.x, any(global1.c.xz), true), vec4<bool>(false, func_2(vec3<bool>(global0.c.x, false, true)).c.x, !arg_0.c.x, !global3.c.x), !select(vec4<bool>(arg_1, global1.c.x, true, true), vec4<bool>(arg_1, global1.c.x, true, arg_0.c.x), vec4<bool>(false, arg_0.c.x, true, global2.c.x))), vec4<bool>(arg_0.c.x | (global3.c.x | false), true, false, all(vec3<bool>(global0.c.x, true, arg_1))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f - 1112f)), _wgslsmith_f_op_f32(f32(-1f) * -645f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-575f, 1268f, 1458f), vec3<f32>(1348f, -466f, var_0.x), arg_0.c)))))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-467f * -1969f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.wy;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(Struct_1(global3.a, vec3<i32>(global3.b.x, global1.a.x, global0.b.x), global2.c)), true)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1093f, -1659f)), vec3<f32>(-1856f, 702f, 1000f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(860f, 635f, 2442f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-191f, 624f, 791f), vec3<f32>(-215f, 1429f, -184f)))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(round(1f))) * vec3<f32>(_wgslsmith_f_op_f32(max(789f, _wgslsmith_f_op_f32(max(-1288f, -541f)))), -483f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -729f))))));
    global0 = func_2(vec3<bool>(global3.c.x, true, global1.c.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x) != _wgslsmith_f_op_f32(-379f - var_1.x);
    let var_3 = Struct_1(vec4<i32>(abs(2147483647i) | var_0.x, abs(i32(-1i) * -var_0.x), global0.b.x, ~_wgslsmith_sub_i32(var_0.x, -global0.a.x)), u_input.a, global1.c);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.b.x, ~u_input.b.x), 25u)], min(vec3<u32>(4093u, u_input.b.x, u_input.b.x) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 24264u), vec3<u32>(1u, 61648u, u_input.b.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)))), global2.a.x, vec3<f32>(-371f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(425f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * var_1.x), 334f))));
}

