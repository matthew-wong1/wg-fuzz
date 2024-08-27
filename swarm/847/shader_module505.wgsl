struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 31035u, 1u, 4294967295u);

var<private> global1: array<bool, 2> = array<bool, 2>(false, true);

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, vec4<bool>(false, true, false, true), 1i, vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), 2147483647i, -13097i, 8538i)), Struct_1(9676u, vec4<bool>(true, true, false, true), 2147483647i, vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 15353i, -1i, 1i)), Struct_1(11914u, vec4<bool>(false, false, true, true), -6115i, vec3<bool>(true, true, true), vec4<i32>(17025i, 22606i, -5349i, -1i)), Struct_1(1u, vec4<bool>(true, false, true, true), -49941i, vec3<bool>(false, false, true), vec4<i32>(31483i, 0i, 20301i, 2147483647i)), Struct_1(4294967295u, vec4<bool>(false, true, true, true), 1i, vec3<bool>(true, false, true), vec4<i32>(-994i, 2147483647i, 0i, 1i)), Struct_1(33343u, vec4<bool>(false, true, false, false), -1i, vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -1i)), Struct_1(0u, vec4<bool>(false, true, false, true), i32(-2147483648), vec3<bool>(false, true, true), vec4<i32>(-3790i, 1i, 27694i, 1i)), Struct_1(13603u, vec4<bool>(true, true, false, false), -13640i, vec3<bool>(true, false, true), vec4<i32>(0i, 42734i, 79296i, i32(-2147483648))), Struct_1(35996u, vec4<bool>(true, true, true, false), -34221i, vec3<bool>(false, true, true), vec4<i32>(-1i, 2147483647i, 1i, -1i)), Struct_1(33533u, vec4<bool>(false, false, true, true), i32(-2147483648), vec3<bool>(true, false, true), vec4<i32>(29468i, 2147483647i, -1752i, -49494i)), Struct_1(4294967295u, vec4<bool>(true, false, false, true), -21304i, vec3<bool>(true, false, true), vec4<i32>(1i, 1i, -18502i, i32(-2147483648))), Struct_1(0u, vec4<bool>(true, false, false, true), 8457i, vec3<bool>(false, true, true), vec4<i32>(71929i, 16616i, -1i, -15480i)), Struct_1(12164u, vec4<bool>(true, true, true, false), -26875i, vec3<bool>(false, false, false), vec4<i32>(1i, 1i, i32(-2147483648), 0i)), Struct_1(3332u, vec4<bool>(true, true, false, true), -4478i, vec3<bool>(true, true, true), vec4<i32>(-18889i, -51123i, -25417i, i32(-2147483648))), Struct_1(4294967295u, vec4<bool>(true, true, true, false), -55806i, vec3<bool>(true, true, true), vec4<i32>(5514i, -1i, -34348i, 3730i)), Struct_1(0u, vec4<bool>(false, false, true, true), 2225i, vec3<bool>(false, true, true), vec4<i32>(-6472i, -53623i, 25685i, 2147483647i)), Struct_1(4294967295u, vec4<bool>(true, false, false, true), 1596i, vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 46919i, -55827i, -1i)), Struct_1(0u, vec4<bool>(true, true, true, true), 60031i, vec3<bool>(false, true, true), vec4<i32>(1796i, -1362i, 3342i, 34879i)), Struct_1(0u, vec4<bool>(true, false, false, false), 46211i, vec3<bool>(true, true, false), vec4<i32>(1i, -1i, 65634i, 39360i)), Struct_1(4294967295u, vec4<bool>(true, true, true, false), 24062i, vec3<bool>(true, true, false), vec4<i32>(37174i, i32(-2147483648), 1i, -1i)), Struct_1(4294967295u, vec4<bool>(false, false, false, false), -1i, vec3<bool>(true, true, true), vec4<i32>(-33979i, -11276i, i32(-2147483648), -26335i)), Struct_1(4294967295u, vec4<bool>(false, false, true, true), -1i, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 0i, 4718i, 1i)), Struct_1(0u, vec4<bool>(true, false, true, true), -34767i, vec3<bool>(false, true, false), vec4<i32>(2913i, 2147483647i, 36522i, 12499i)), Struct_1(1u, vec4<bool>(true, false, false, false), 2147483647i, vec3<bool>(true, false, true), vec4<i32>(26462i, i32(-2147483648), 45378i, 0i)), Struct_1(0u, vec4<bool>(true, true, true, false), -17985i, vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), -1i, 30780i, -23554i)), Struct_1(67273u, vec4<bool>(true, true, true, true), 1i, vec3<bool>(false, true, false), vec4<i32>(2147483647i, -30419i, 0i, 39113i)), Struct_1(4294967295u, vec4<bool>(true, true, true, true), 0i, vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i)));

var<private> global3: i32 = 26562i;

var<private> global4: array<f32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> bool {
    global0 = firstTrailingBit(min(_wgslsmith_mult_vec4_u32(max(~u_input.d, vec4<u32>(4294967295u, 1u, u_input.a, u_input.d.x)), vec4<u32>(global0.x, firstLeadingBit(19796u), global0.x | global0.x, global0.x)), ~u_input.d));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(12347u >> (u_input.d.x % 32u), 16u)] - global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(firstTrailingBit(vec2<u32>(4294967295u, u_input.a))), max(~vec2<u32>(global0.x, 44223u), vec2<u32>(global0.x, u_input.d.x))), 16u)]), -117f);
    var var_1 = Struct_1(global0.x, !(!vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 2u)], select(false, global1[_wgslsmith_index_u32(4294967295u, 2u)], false), true, true & global1[_wgslsmith_index_u32(u_input.a, 2u)])), u_input.c.x, vec3<bool>(false, !select(!global1[_wgslsmith_index_u32(global0.x, 2u)], !global1[_wgslsmith_index_u32(u_input.d.x, 2u)], any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(41245u, 2u)]))), !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6848u, u_input.a, 56992u, global0.x), u_input.d), 2u)] || false), vec4<i32>(-1i, 1i, ~u_input.e.x, -19905i));
    let var_2 = select(min(_wgslsmith_add_vec3_i32(var_1.e.yzy, var_1.e.zyw), vec3<i32>(~(-1i), 20779i, 1i)), firstTrailingBit(max(-vec3<i32>(-17731i, u_input.c.x, var_1.e.x), ~select(u_input.c.xyw, var_1.e.zzx, true))), select(select(var_1.b.zyw, vec3<bool>(true, var_1.d.x, true), var_1.b.xww), !var_1.b.wyx, vec3<bool>(false, true, all(!var_1.d.zy))));
    global4 = array<f32, 16>();
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    global3 = u_input.c.x;
    global0 = ~vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_div_u32(global0.x, 1u)), arg_0), ~arg_1.a, global0.x ^ ~698u);
    global4 = array<f32, 16>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-651f)))), 1522f, 1f);
    var var_1 = Struct_1(abs(global0.x) << (1u % 32u), !select(!(!arg_2), arg_1.b, select(arg_2.x, global0.x != 25114u, true)), ~0i, vec3<bool>(!func_3(1f), !all(select(arg_2.xwx, arg_1.b.wxw, arg_1.d)), any(arg_2)), -vec4<i32>(2147483647i ^ arg_1.e.x, -20318i ^ _wgslsmith_dot_vec3_i32(u_input.c.yzz, u_input.c.zww), ~u_input.e.x, -2147483647i));
    return ~global0.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global3 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(-(arg_1.c.e.x << (0u % 32u)), -arg_0.x), _wgslsmith_mult_i32(reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, arg_0.x), vec2<i32>(arg_2.c, -15072i))), -15542i));
    global3 = -16090i;
    let var_0 = arg_1.c.e.zwy;
    var var_1 = arg_2;
    let var_2 = -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(24778i, var_0.x, firstLeadingBit(var_1.c) ^ reverseBits(u_input.e.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.x, 0i), 0i));
    return 2147483647i;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f))));
    var var_1 = func_4(vec4<i32>(u_input.c.x, ~1i, u_input.b.x, _wgslsmith_mult_i32(i32(-1i) * -15158i, _wgslsmith_mult_i32(0i, ~u_input.c.x))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, global4[_wgslsmith_index_u32(517u, 16u)], global4[_wgslsmith_index_u32(u_input.a, 16u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -564f, global4[_wgslsmith_index_u32(u_input.a, 16u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 16u)], global4[_wgslsmith_index_u32(25665u, 16u)], 338f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(542f, 1512f, global4[_wgslsmith_index_u32(u_input.d.x, 16u)]) + vec3<f32>(global4[_wgslsmith_index_u32(0u, 16u)], 617f, 127f)))), firstLeadingBit(u_input.e), Struct_1(abs(firstTrailingBit(33981u)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], false, true, true), ~(~0i), select(vec3<bool>(false, true, false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(22403u, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(global0.x, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), global1[_wgslsmith_index_u32(33415u, 2u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 2u)], false)), abs(u_input.e) >> (_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))), global4[_wgslsmith_index_u32(min(~(~115861u), ~u_input.d.x << (~0u % 32u)), 16u)]), Struct_1(func_2(_wgslsmith_sub_u32(~44080u, 49318u), global2[_wgslsmith_index_u32(39099u, 27u)], select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], true, global1[_wgslsmith_index_u32(global0.x, 2u)]), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 2u)], true)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(global0.x, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]))), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 2u)], true, true), firstTrailingBit(min(0i, -1i)), !(!vec3<bool>(global1[_wgslsmith_index_u32(5985u, 2u)], global1[_wgslsmith_index_u32(global0.x, 2u)], false)), _wgslsmith_div_vec4_i32(-abs(vec4<i32>(-1i, u_input.c.x, u_input.b.x, 1i)), vec4<i32>(firstLeadingBit(u_input.c.x), -2147483647i, 49023i, u_input.b.x ^ -8614i))));
    var var_2 = _wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.e.x, 1i, u_input.e.x, u_input.e.x)), vec4<i32>(7043i, 0i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.e.x), vec3<i32>(21820i, -28688i, u_input.e.x))), u_input.b.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, u_input.d.x)), ~u_input.d.wx), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), u_input.d.yy), 4294967295u), 41745u, 18852u), ~u_input.d) % vec4<u32>(32u));
    global2 = array<Struct_1, 27>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-355f, 215f, -1000f) * vec3<f32>(global4[_wgslsmith_index_u32(14976u, 16u)], global4[_wgslsmith_index_u32(29923u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1325f, global4[_wgslsmith_index_u32(global0.x, 16u)], 866f) + vec3<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 16u)], -1022f, global4[_wgslsmith_index_u32(u_input.a, 16u)])))))), vec4<i32>(-1i, var_2.x, -2147483647i, var_2.x | -min(5570i, -2147483647i)), Struct_1(~global0.x, !(!select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(19694u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 2u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], false))), 2144i, select(!(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], true, true)), !(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 2u)])), global1[_wgslsmith_index_u32(global0.x, 2u)]), vec4<i32>(_wgslsmith_sub_i32(var_2.x, reverseBits(u_input.c.x)), _wgslsmith_div_i32(-13334i, ~u_input.e.x), min(u_input.c.x, _wgslsmith_add_i32(-2147483647i, var_2.x)), ~firstLeadingBit(-1i))), _wgslsmith_f_op_f32(ceil(var_0)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 3140f, 677f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a), var_3.a))), vec4<i32>(~(-2147483647i), (-54581i >> (global0.x % 32u)) >> (global0.x % 32u), var_3.b.x, ~(-25223i)), Struct_1(var_3.c.a, var_3.c.b, ~(~var_3.b.x) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, global0.x), 13133u) % 32u), vec3<bool>((var_2.x > var_3.c.e.x) == global1[_wgslsmith_index_u32(var_3.c.a ^ u_input.a, 2u)], var_3.c.d.x, true), var_3.c.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_3.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = u_input.d;
    var var_1 = func_1();
    let var_2 = func_1();
    global1 = array<bool, 2>();
    global0 = u_input.d;
    global1 = array<bool, 2>();
    var var_3 = var_2.c;
    var var_4 = _wgslsmith_sub_u32(global0.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) * _wgslsmith_f_op_f32(trunc(197f))))), -16750i, vec3<i32>(min(~max(11373i, 0i), 2147483647i), 23450i, ~_wgslsmith_sub_i32(var_1.b.x, ~var_2.c.e.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.e.x, u_input.b.x, u_input.e.x) >> (u_input.d.xzx % vec3<u32>(32u)), u_input.c.wxz));
}

