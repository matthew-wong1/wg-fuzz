struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, false, true, false, false);

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = Struct_2(abs(arg_0.a.c.c.yw), global0.zz, arg_0.a.c, vec3<u32>(1u, 1u, 3755u), ~41070u);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(273f, -1247f, arg_0.a.d.x, 688f), vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-461f, -1000f, -471f, 1210f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1789f, 1370f, 823f, -314f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(304f, -2078f, arg_0.a.d.x, -164f), vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, 129f, 621f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(364f, arg_0.a.d.x, arg_0.a.d.x, -607f), vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, -651f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.d.x, 308f, arg_0.a.d.x, arg_0.a.d.x), vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, 945f, -383f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(105f, -165f, arg_0.a.d.x, 1000f) * vec4<f32>(717f, -993f, arg_0.a.d.x, 348f))), true)))), !vec4<bool>(true, select(global0.x & false, global1[_wgslsmith_index_u32(firstTrailingBit(1u), 6u)], false), !arg_0.a.c.e, false)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(699f)) + _wgslsmith_f_op_f32(-var_1.x))), arg_0.a.d.x, false)) - var_1.x);
    global1 = array<bool, 6>();
    global0 = select(vec3<bool>(any(select(var_0.b, var_0.b, global0.zx)), select(1000f > arg_0.a.d.x, var_0.b.x & false, global0.x) | false, false), vec3<bool>(any(select(!vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(51084u, 6u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.a.c.c.x, 6u)], true, true), vec4<bool>(arg_0.a.c.a, true, false, false))), !global0.x, true), true && (~_wgslsmith_add_u32(43738u, 13032u) < firstTrailingBit(_wgslsmith_sub_u32(arg_0.a.a.x, var_0.c.b))));
    return vec3<bool>(!global1[_wgslsmith_index_u32(~min(var_0.a.x, ~arg_0.a.c.b), 6u)], all(!select(!vec4<bool>(false, false, arg_0.a.c.a, global0.x), !vec4<bool>(true, global0.x, true, global1[_wgslsmith_index_u32(42577u, 6u)]), !global0.x)), true);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -426f);
    global0 = func_3(Struct_5(Struct_3(arg_0.c.zwy, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, u_input.a.x, arg_0.d.x, u_input.a.x), u_input.a), Struct_1(global0.x | true, arg_0.c.x ^ 4294967295u, ~vec4<u32>(4294967295u, 4294967295u, arg_0.c.x, arg_0.b), arg_0.d, true), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), var_0, _wgslsmith_f_op_f32(arg_3.x + arg_1)))));
    var var_1 = Struct_4(~firstLeadingBit(abs(arg_0.d ^ arg_0.d)), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(select(arg_0.b, 59510u, arg_2), _wgslsmith_dot_vec3_u32(arg_0.c.yzz, vec3<u32>(4294967295u, 4294967295u, arg_0.c.x))), vec2<u32>(arg_0.c.x ^ arg_0.b, 91998u)), func_3(Struct_5(Struct_3(vec3<u32>(arg_0.c.x, 1u, 1u), -35230i, Struct_1(true, 0u, arg_0.c, vec4<i32>(u_input.a.x, arg_0.d.x, arg_0.d.x, arg_0.d.x), false), vec3<f32>(1260f, 127f, -597f)))).yz, arg_0, vec3<u32>(_wgslsmith_mod_u32(15454u, 4294967295u), select(arg_0.c.x & 0u, reverseBits(13657u), false), 4294967295u), firstTrailingBit(_wgslsmith_mult_u32(1u ^ arg_0.b, firstTrailingBit(arg_0.c.x)))), Struct_2(vec2<u32>(41197u, 7621u), func_3(Struct_5(Struct_3(vec3<u32>(arg_0.b, arg_0.c.x, 4294967295u), 2147483647i, arg_0, arg_3))).yx, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(7579u, arg_0.c.x), arg_0.b)), 16u)], vec3<u32>(arg_0.b, 1u, _wgslsmith_div_u32(firstLeadingBit(0u), 1u)), countOneBits(20247u)), Struct_2(select(vec2<u32>(~arg_0.b, ~arg_0.c.x), vec2<u32>(_wgslsmith_add_u32(arg_0.b, 1u), arg_0.c.x), select(global0.xz, !global0.xy, any(global0.zz))), select(select(vec2<bool>(true, true), func_3(Struct_5(Struct_3(vec3<u32>(arg_0.c.x, arg_0.c.x, 1u), u_input.a.x, global2[_wgslsmith_index_u32(arg_0.b, 16u)], arg_3))).xz, func_3(Struct_5(Struct_3(arg_0.c.yzx, arg_0.d.x, Struct_1(true, 39286u, vec4<u32>(0u, 4294967295u, 26726u, arg_0.c.x), vec4<i32>(arg_0.d.x, u_input.a.x, -2147483647i, 2147483647i), arg_0.e), vec3<f32>(-725f, 497f, 1006f)))).zx), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.c.x, 6u)] && true, any(vec2<bool>(global1[_wgslsmith_index_u32(52812u, 6u)], arg_0.a)))), global2[_wgslsmith_index_u32(1u, 16u)], vec3<u32>(arg_0.b, min(53422u, arg_0.c.x), max(1u, 0u)) >> ((~vec3<u32>(1u, arg_0.c.x, 40823u) << ((arg_0.c.wxz >> (vec3<u32>(0u, arg_0.b, arg_0.c.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), 45491u), _wgslsmith_f_op_f32(arg_3.x - arg_3.x));
    var_1 = Struct_4(-(~reverseBits(vec4<i32>(var_1.d.c.d.x, -2147483647i, u_input.a.x, 4812i))), Struct_2(~var_1.c.d.zx, !vec2<bool>(arg_2, any(vec3<bool>(arg_2, true, global1[_wgslsmith_index_u32(var_1.c.d.x, 6u)]))), arg_0, _wgslsmith_mod_vec3_u32(var_1.b.d, arg_0.c.yyz), 1u), Struct_2(~(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c.x, var_1.c.c.b), vec2<u32>(26948u, var_1.d.d.x)) | arg_0.c.xz), !(!(!global0.yz)), Struct_1(false, 149u, vec4<u32>(~arg_0.b, 4294967295u, 15526u, 4294967295u), var_1.a, all(!vec3<bool>(global1[_wgslsmith_index_u32(91548u, 6u)], arg_0.e, false))), firstTrailingBit(arg_0.c.xxw >> (arg_0.c.zyy % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(arg_0.c.x), _wgslsmith_div_u32(4294967295u, arg_0.c.x), arg_0.c.x), var_1.c.d)), var_1.d, var_1.e);
    global1 = array<bool, 6>();
    return firstLeadingBit(i32(-1i) * -(~var_1.a.x));
}

fn func_1() -> u32 {
    global2 = array<Struct_1, 16>();
    let var_0 = (-func_2(global2[_wgslsmith_index_u32(~4294967295u, 16u)], _wgslsmith_f_op_f32(717f - -254f), global0.x | global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_div_vec3_f32(vec3<f32>(355f, 1372f, 571f), vec3<f32>(116f, 1000f, -2084f))) << (firstTrailingBit(abs(1u)) % 32u)) >> (min(1u, _wgslsmith_clamp_u32(~1u, firstTrailingBit(42805u), 82003u)) % 32u);
    var var_1 = u_input.a.xww;
    global0 = select(vec3<bool>(false, all(!vec3<bool>(true, global0.x, true)), all(vec3<bool>(any(global0.yz), any(vec4<bool>(true, global1[_wgslsmith_index_u32(13903u, 6u)], global0.x, global0.x)), global1[_wgslsmith_index_u32(~42642u, 6u)]))), select(vec3<bool>(!(!global0.x), any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global0.x), global0.yz)), true), func_3(Struct_5(Struct_3(vec3<u32>(4294967295u, 33306u, 13453u), 1i, Struct_1(false, 38513u, vec4<u32>(4294967295u, 0u, 4294967295u, 93539u), u_input.a, true), vec3<f32>(713f, 1280f, 634f)))), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)] & (global1[_wgslsmith_index_u32(4294967295u, 6u)] | true), true)), vec3<bool>(global1[_wgslsmith_index_u32(80949u, 6u)], !global0.x, all(select(select(vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global0.x, global0.x), true), !vec3<bool>(global1[_wgslsmith_index_u32(60409u, 6u)], false, false), select(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(33730u, 6u)], false), vec3<bool>(global1[_wgslsmith_index_u32(19130u, 6u)], global0.x, true), vec3<bool>(global1[_wgslsmith_index_u32(26573u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(94852u, 6u)]))))));
    var var_2 = true;
    return ~firstLeadingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 15199u), global0.yx), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(0u, 4294967295u)), select(vec2<u32>(0u, 0u), vec2<u32>(102511u, 0u), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    let var_0 = Struct_4(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -89559i), u_input.a.x, firstLeadingBit(u_input.a.x))), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a.x), u_input.a.xww), select(-u_input.a.x, -u_input.a.x, global1[_wgslsmith_index_u32(func_1(), 6u)]), i32(-1i) * -u_input.a.x)), Struct_2(vec2<u32>(min(select(0u, 0u, global1[_wgslsmith_index_u32(94359u, 6u)]), firstLeadingBit(44351u)), 41753u), vec2<bool>(global0.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(43055u, 13531u), 6u)] | true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 18615u)) | ~_wgslsmith_mod_u32(29232u, 27841u), 16u)], vec3<u32>(0u, firstTrailingBit(11288u), 1u) & ~vec3<u32>(59520u, 29054u, 4294967295u), min(~816u, 33213u)), Struct_2(vec2<u32>(6688u, 1u), vec2<bool>(select(false, true, global0.x), global1[_wgslsmith_index_u32(28204u, 6u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, select(10247u, 16211u, global1[_wgslsmith_index_u32(0u, 6u)])), vec2<u32>(1u, 1u)), 16u)], ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(~4294967295u)), Struct_2(~vec2<u32>(_wgslsmith_clamp_u32(46278u, 97889u, 1u), ~4294967295u), global0.yy, global2[_wgslsmith_index_u32(~75592u, 16u)], abs(select(~vec3<u32>(4294967295u, 0u, 1u), select(vec3<u32>(16706u, 38778u, 4294967295u), vec3<u32>(65752u, 4294967295u, 21050u), vec3<bool>(global0.x, true, global0.x)), global0.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(11982u, 0u, 0u, 76642u), vec4<u32>(27324u, 3643u, 59788u, 0u), vec4<u32>(0u, 0u, 11380u, 1u)), ~vec4<u32>(19304u, 0u, 1u, 1u)), firstLeadingBit(vec4<u32>(40754u, 0u, 4959u, 4294967295u)))), -1166f);
    global2 = array<Struct_1, 16>();
    let var_1 = global2[_wgslsmith_index_u32(~0u, 16u)];
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.a.x << ((var_0.d.c.c.x << (86027u % 32u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.d.x, -1i), ~u_input.a.x)), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, var_0.b.c.d.x), -var_0.d.c.d.yx))), vec2<i32>(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.c.d.x, 13582i, -2147483647i), vec3<i32>(u_input.a.x, -60228i, var_0.b.c.d.x)), 2147483647i)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_dot_vec4_i32(max(~(-var_0.d.c.d), select(firstTrailingBit(u_input.a), var_0.a << (vec4<u32>(1u, var_0.d.e, var_1.b, var_0.c.e) % vec4<u32>(32u)), func_3(Struct_5(Struct_3(vec3<u32>(var_0.b.e, var_1.c.x, 89698u), -58271i, Struct_1(true, 1u, var_0.c.c.c, u_input.a, true), vec3<f32>(var_0.e, 974f, 552f)))).x)), ~(-var_1.d)));
}

