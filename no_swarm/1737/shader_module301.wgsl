struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1018f, -1187f, -1209f), vec3<f32>(-1443f, -127f, 356f), vec3<f32>(1194f, -687f, -1155f), vec3<f32>(-1268f, 998f, 357f), vec3<f32>(1008f, 921f, 224f), vec3<f32>(719f, 538f, -479f), vec3<f32>(755f, -1213f, -821f), vec3<f32>(-1071f, 584f, -1817f), vec3<f32>(988f, 1805f, -1384f), vec3<f32>(566f, -1264f, 783f), vec3<f32>(873f, 773f, -229f), vec3<f32>(-333f, 233f, -181f), vec3<f32>(880f, -592f, 695f), vec3<f32>(-309f, -226f, -940f), vec3<f32>(-145f, 1687f, -1088f), vec3<f32>(482f, -507f, 1316f));

var<private> global1: array<i32, 29>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1077f, -611f), vec2<u32>(1u, 4294967295u));

var<private> global3: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-512f, 1000f, -290f, -924f), vec4<f32>(744f, 833f, 546f, -1743f), vec4<f32>(1000f, 1580f, -2598f, -350f), vec4<f32>(950f, -969f, -327f, -780f), vec4<f32>(1000f, 498f, -636f, -465f), vec4<f32>(-1000f, -1052f, 314f, 924f), vec4<f32>(-1536f, 1000f, -700f, -1199f), vec4<f32>(782f, 1000f, -137f, 1110f), vec4<f32>(1136f, -162f, 305f, 305f), vec4<f32>(-318f, 1078f, -551f, -523f), vec4<f32>(1000f, -258f, 916f, 1371f), vec4<f32>(-1911f, -1518f, -2187f, 1000f), vec4<f32>(-149f, -2063f, -224f, -1000f), vec4<f32>(-973f, 1222f, 783f, -435f), vec4<f32>(-173f, 1000f, -170f, 867f), vec4<f32>(-839f, 695f, -759f, 795f), vec4<f32>(-1823f, 367f, -131f, 390f));

var<private> global4: Struct_2 = Struct_2(vec3<f32>(-1925f, -1533f, 1097f), Struct_1(vec2<f32>(1110f, 607f), vec2<u32>(125470u, 2254u)), true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_4(1u, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-68231i, arg_1.b.x, 2147483647i, arg_1.b.x), vec4<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], arg_1.b.x, global1[_wgslsmith_index_u32(15696u, 29u)]) >> (vec4<u32>(arg_1.c.b.x, arg_1.c.b.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), abs(arg_1.b)), arg_1.c);
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, _wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(sign(arg_1.c.a.x)), global4.c)), global2.a.x)), var_0.c, true, false);
    global1 = array<i32, 29>();
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_1.a, 16u)]), vec3<f32>(-652f, -1000f, global2.a.x), !vec3<bool>(global4.c, true, false))) - vec3<f32>(-270f, var_0.c.a.x, _wgslsmith_f_op_f32(ceil(1048f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1105f, global4.a.x, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, global2.a.x, -1000f) + global4.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_0.c.b.x, 16u)])), select(true, global4.c, false)))), Struct_1(global4.a.xy, vec2<u32>(0u, u_input.a.x)), ~(arg_1.a ^ abs(global4.b.b.x)) > _wgslsmith_dot_vec2_u32(countOneBits(~global2.b), ~(u_input.a ^ global4.b.b)), reverseBits(_wgslsmith_mod_u32(~arg_1.a, arg_1.c.b.x >> (1u % 32u))) >= 5359u);
    let var_2 = _wgslsmith_dot_vec2_u32(global4.b.b << (_wgslsmith_mod_vec2_u32(~(vec2<u32>(0u, 0u) >> (global2.b % vec2<u32>(32u))), var_0.c.b) % vec2<u32>(32u)), global2.b);
    return -1172f;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec3_i32(arg_2.b, min(_wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0, arg_1.x), vec3<i32>(1i, arg_0, 18806i)), select(vec3<i32>(7235i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -27313i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 29u)], arg_2.b.x, 9075i), vec3<bool>(global4.c, global4.d, global4.d))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.zzz, arg_1.zxz) ^ _wgslsmith_add_vec3_i32(arg_2.b, arg_1.xzx), arg_2.b)));
    var var_1 = arg_2;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.b.x, ~_wgslsmith_mult_u32(abs(41454u), _wgslsmith_mod_u32(arg_2.a, var_1.a))), max(_wgslsmith_clamp_vec2_u32(countOneBits(~global4.b.b), global4.b.b, ~(var_1.c.b << (var_1.c.b % vec2<u32>(32u)))), ~(~var_1.c.b ^ ~global4.b.b)));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(abs(~1u), 29u)], ~max(2147483647i, 13895i)) >> (_wgslsmith_add_u32(firstTrailingBit(global4.b.b.x), ~(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) << (global4.b.b.x % 32u))) % 32u);
    let var_1 = max(abs(firstLeadingBit(vec3<u32>(min(23194u, global2.b.x), 3399u ^ global2.b.x, ~3297u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(global2.b.x, global4.b.b.x), reverseBits(u_input.a.x), ~global2.b.x), ~vec3<u32>(51923u, 1u, ~global4.b.b.x), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a | vec2<u32>(4294967295u, 85876u), vec2<u32>(76196u, global4.b.b.x) ^ vec2<u32>(1u, u_input.a.x)), ~(~global2.b.x), ~_wgslsmith_mult_u32(global4.b.b.x, 41654u))));
    var var_2 = func_4(max(global1[_wgslsmith_index_u32(var_1.x, 29u)], -global1[_wgslsmith_index_u32(global2.b.x, 29u)]), -_wgslsmith_mult_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(98432u, 29u)], 0i, -36487i), vec4<i32>(global1[_wgslsmith_index_u32(15566u, 29u)], global1[_wgslsmith_index_u32(16233u, 29u)], global1[_wgslsmith_index_u32(global4.b.b.x, 29u)], 0i), select(vec4<bool>(true, global4.d, false, false), vec4<bool>(false, global4.d, global4.c, global4.c), true)), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(35884u, 29u)], -1i, 20147i, global1[_wgslsmith_index_u32(global4.b.b.x, 29u)]), vec4<i32>(global1[_wgslsmith_index_u32(80504u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -51146i, 1332i)) ^ -vec4<i32>(-2147483647i, 64669i, 1i, global1[_wgslsmith_index_u32(19790u, 29u)])), Struct_4(~4294967295u, _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-14033i, global1[_wgslsmith_index_u32(4294967295u, 29u)], -32932i), -vec3<i32>(global1[_wgslsmith_index_u32(10035u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(global2.b.x, 29u)])), ~vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 29u)], 39521i, global1[_wgslsmith_index_u32(global4.b.b.x, 29u)]), vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1, var_1), 29u)], -global1[_wgslsmith_index_u32(global4.b.b.x, 29u)], -2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1300f, global4.b.a.x), vec2<f32>(global2.a.x, -683f))), var_1.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(~45379i, global1[_wgslsmith_index_u32(4294967295u, 29u)] ^ -18923i), Struct_4(4294967295u, vec3<i32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(27778u, 29u)]), Struct_1(global2.a, global4.b.b)), -vec4<i32>(global1[_wgslsmith_index_u32(6529u, 29u)], 60261i, 8459i, 2947i) << (~vec4<u32>(60769u, 1u, 4294967295u, 92725u) % vec4<u32>(32u))))));
    var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 29u)];
    let var_3 = _wgslsmith_div_i32(firstTrailingBit(~1i), _wgslsmith_div_i32(i32(-1i) * -23645i, ~22807i));
    return false;
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-949f + global2.a.x), global2.a.x)))), max(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 0u), u_input.a | vec2<u32>(global4.b.b.x, 8301u)), ~countOneBits(vec2<u32>(20844u, global2.b.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a.zz), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.xx - global2.a), _wgslsmith_div_vec2_f32(vec2<f32>(512f, -684f), vec2<f32>(-828f, global2.a.x))))))));
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(global2.b.x, 29u)], 0i, arg_0), vec4<i32>(arg_0, arg_0, arg_0, arg_0)), -vec4<i32>(-13241i, arg_0, 2147483647i, arg_0)), abs(vec4<i32>(57494i, global1[_wgslsmith_index_u32(var_0.b.x, 29u)], -2147483647i, arg_0) << (vec4<u32>(global4.b.b.x, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(15044u, 29u)], -1i, select(arg_0, arg_0, true), -2147483647i), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_0, 2147483647i, 1i), vec4<i32>(arg_0, -97381i, -23732i, arg_0)), -vec4<i32>(-5481i, global1[_wgslsmith_index_u32(34008u, 29u)], -3679i, 0i))), vec4<i32>(reverseBits(select(-global1[_wgslsmith_index_u32(13333u, 29u)], ~global1[_wgslsmith_index_u32(u_input.a.x, 29u)], false)), -2147483647i, arg_0, ~(i32(-1i) * -2147483647i)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0 & 2147483647i, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 29u)], arg_0 >> (global4.b.b.x % 32u), 0i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 29u)], -73312i, global1[_wgslsmith_index_u32(var_0.b.x, 29u)], arg_0), vec4<i32>(1i, global1[_wgslsmith_index_u32(var_0.b.x, 29u)], 0i, 18650i))), vec4<i32>(2913i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -893i, arg_0, global1[_wgslsmith_index_u32(4294967295u, 29u)]) << (vec4<u32>(global2.b.x, 101043u, global2.b.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-38740i, 17424i, arg_0, -2147483647i) ^ vec4<i32>(arg_0, -30459i, 0i, 2147483647i)), min(24597i ^ arg_0, _wgslsmith_add_i32(12112i, -1i)), global1[_wgslsmith_index_u32(countOneBits(1u), 29u)]), !arg_1.x));
    return Struct_3(global4.b.b.x, global4.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(global4.a.x - -274f)) + _wgslsmith_f_op_f32(f32(-1f) * -791f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -557f)))), var_2.xyx << (~(~vec3<u32>(global2.b.x, u_input.a.x, var_0.b.x)) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    global2 = arg_1.b;
    var var_0 = func_5(~(-5195i), !vec4<bool>(true, global4.d, true, global4.d), select(vec3<bool>(func_2(_wgslsmith_f_op_f32(abs(1000f))), false, !(false == arg_1.c)), vec3<bool>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(68396u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]) < abs(global1[_wgslsmith_index_u32(988u, 29u)]), -615f == global4.a.x, true), true), select(select(select(select(vec4<bool>(false, global4.d, global4.c, arg_0), vec4<bool>(arg_0, global4.c, false, false), vec4<bool>(arg_0, arg_0, false, global4.c)), select(vec4<bool>(false, arg_1.c, false, arg_1.c), vec4<bool>(arg_1.c, true, global4.d, false), true), all(vec2<bool>(true, arg_0))), vec4<bool>(false, any(vec2<bool>(arg_1.d, false)), true, global4.c), select(!vec4<bool>(false, arg_0, arg_1.c, global4.c), vec4<bool>(false, true, true, true), !vec4<bool>(true, global4.d, global4.d, true))), vec4<bool>(arg_0 && global4.c, true, any(vec4<bool>(false, arg_1.c, true, arg_1.c)) | true, any(select(vec3<bool>(true, true, arg_1.c), vec3<bool>(false, global4.d, global4.d), vec3<bool>(false, arg_0, global4.c)))), arg_0));
    let var_1 = Struct_4(0u, vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.d, var_0.d)), -2147483647i), func_5(~(i32(-1i) * -38284i), !(!vec4<bool>(true, arg_1.c, false, global4.d)), !(!vec3<bool>(true, arg_1.c, true)), select(vec4<bool>(true, global4.d, true, arg_0), vec4<bool>(arg_1.d, arg_1.c, false, arg_1.c), select(vec4<bool>(true, global4.c, true, false), vec4<bool>(global4.c, global4.c, arg_1.d, arg_1.c), false))).d.x, global1[_wgslsmith_index_u32(1u, 29u)]), Struct_1(global2.a, max(global4.b.b, vec2<u32>(0u, 1u))));
    var_0 = func_5(0i, !vec4<bool>(select(all(vec3<bool>(global4.c, false, arg_0)), all(vec3<bool>(arg_1.d, true, arg_0)), arg_1.c), global1[_wgslsmith_index_u32(global2.b.x, 29u)] > _wgslsmith_mult_i32(41186i, 1i), func_2(124f) & (var_1.c.b.x >= 0u), any(!vec4<bool>(global4.d, true, arg_1.c, arg_1.c))), select(!(!select(vec3<bool>(true, true, arg_1.d), vec3<bool>(true, true, arg_1.d), vec3<bool>(arg_1.c, global4.d, arg_0))), vec3<bool>(!(!global4.d), select(true, global4.c, any(vec2<bool>(arg_0, true))), global4.d), select(select(select(vec3<bool>(false, global4.c, true), vec3<bool>(true, true, arg_1.c), true), select(vec3<bool>(arg_1.d, false, false), vec3<bool>(false, false, true), global4.c), any(vec4<bool>(arg_1.d, global4.c, arg_0, true))), !(!vec3<bool>(arg_1.c, arg_0, false)), vec3<bool>(false, !arg_1.c, false))), vec4<bool>(true, global4.d, arg_0, global4.d));
    let var_2 = -4366i;
    return min(~var_0.a, global4.b.b.x) | 1u;
}

fn func_6(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_div_u32(firstTrailingBit(~(~(~0u))), 1u);
    var var_1 = Struct_4(3859u, ~(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_0, arg_0, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(45262u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<i32>(7135i, 44317i, -2900i))) << ((~vec3<u32>(4294967295u, u_input.a.x, global4.b.b.x) & (arg_2 ^ vec3<u32>(1u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u))), global4.b);
    let var_2 = !vec2<bool>(!(arg_3.a.x != 328f), global4.c);
    var var_3 = ~(~(~firstTrailingBit(arg_3.b)));
    return Struct_4(reverseBits(arg_3.b.x), select(~vec3<i32>(~12841i, -1i, 1i), var_1.b, all(!select(vec3<bool>(global4.c, false, true), arg_1.zyy, global4.d))), var_1.c);
}

fn func_7(arg_0: Struct_4) -> Struct_2 {
    global4 = Struct_2(global4.a, func_6(_wgslsmith_clamp_i32(select(firstLeadingBit(8089i), func_6(global1[_wgslsmith_index_u32(global4.b.b.x, 29u)], vec4<bool>(false, global4.d, false, global4.d), vec3<u32>(1u, global2.b.x, 11550u), global4.b).b.x, true), _wgslsmith_add_i32(-23870i, 1i), -arg_0.b.x), vec4<bool>(any(!vec3<bool>(global4.d, global4.d, true)), false, global4.d, all(select(vec4<bool>(true, false, global4.c, global4.d), vec4<bool>(global4.c, true, true, false), global4.d))), vec3<u32>(global4.b.b.x, arg_0.c.b.x, select(global4.b.b.x, global2.b.x, global4.d)) ^ abs(countOneBits(vec3<u32>(39026u, 1u, global4.b.b.x))), func_5(_wgslsmith_sub_i32(2147483647i, arg_0.b.x), select(vec4<bool>(false, global4.d, true, global4.c), !vec4<bool>(false, global4.d, global4.c, global4.c), !vec4<bool>(global4.d, global4.c, false, true)), !select(vec3<bool>(false, global4.c, true), vec3<bool>(false, global4.d, global4.d), global4.d), vec4<bool>(true, global4.c, global4.d, global4.c)).b).c, !all(select(select(vec4<bool>(global4.c, true, global4.c, global4.c), vec4<bool>(global4.d, false, false, false), global4.d), !vec4<bool>(global4.d, global4.c, global4.d, global4.c), true)), true);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_4(arg_0.a, vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), global4.b), vec4<i32>(28077i, -1i, global1[_wgslsmith_index_u32(global4.b.b.x, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))) + _wgslsmith_f_op_f32(min(-1645f, arg_0.c.a.x))), 482f, _wgslsmith_f_op_f32(func_3(-2147483647i >> (1u % 32u), arg_0, max(vec4<i32>(arg_0.b.x, -1i, global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_0.b.x), vec4<i32>(global1[_wgslsmith_index_u32(5682u, 29u)], -26897i, 0i, arg_0.b.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(238f, arg_0.c.a.x, arg_0.c.a.x))), vec3<f32>(_wgslsmith_f_op_f32(global2.a.x + -910f), global2.a.x, _wgslsmith_f_op_f32(step(arg_0.c.a.x, -980f))))));
    global0 = array<vec3<f32>, 16>();
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x))), 601f)), func_5(arg_0.b.x, select(vec4<bool>(false, global4.c, global4.b.a.x >= global2.a.x, u_input.a.x <= 49121u), !vec4<bool>(global4.c, global4.d, false, global4.d), any(vec4<bool>(false, false, true, true))), !vec3<bool>(!global4.d, global4.c, global4.c), vec4<bool>(true, true, true, true)).b, all(vec4<bool>(true, any(!vec3<bool>(global4.c, false, true)), true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global4.b.a.x)))) >= _wgslsmith_f_op_f32(-906f - global4.b.a.x));
    global4 = Struct_2(global4.a, arg_0.c, false, !((-26858i == arg_0.b.x) | true));
    return Struct_2(vec3<f32>(1213f, -1464f, -692f), func_5(_wgslsmith_mult_i32(func_5(global1[_wgslsmith_index_u32(func_5(0i, vec4<bool>(global4.d, false, true, global4.c), vec3<bool>(true, true, global4.d), vec4<bool>(true, global4.c, global4.d, false)).b.b.x, 29u)], !vec4<bool>(true, true, global4.d, true), select(vec3<bool>(global4.d, true, false), vec3<bool>(true, global4.d, true), global4.d), vec4<bool>(true, global4.d, global4.d, global4.c)).d.x, -1i), vec4<bool>(global4.b.b.x == global2.b.x, global4.c, all(!vec4<bool>(false, global4.c, false, false)), all(vec3<bool>(global4.c, false, global4.d))), vec3<bool>(false, select(true, true, true), global4.d), vec4<bool>(true, !global4.c, global4.c, true)).b, true | global4.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(_wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(min(1u, global4.b.b.x), 29u)], global1[_wgslsmith_index_u32(func_1(global4.a.x > global4.b.a.x, Struct_2(vec3<f32>(-1415f, 2259f, global2.a.x), Struct_1(vec2<f32>(global2.a.x, global4.b.a.x), vec2<u32>(global2.b.x, 8608u)), false, true)), 29u)]), select(!vec4<bool>(false, global4.c, false, global4.d), vec4<bool>(false, global4.c & true, global4.d, global4.b.b.x < global2.b.x), select(select(vec4<bool>(global4.c, global4.c, global4.d, true), vec4<bool>(global4.c, true, global4.c, false), global4.c), !vec4<bool>(global4.d, true, global4.d, global4.d), true)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, 1u), ~u_input.a.x), min(~vec3<u32>(global4.b.b.x, u_input.a.x, 4294967295u), ~vec3<u32>(global2.b.x, 1u, 0u))), func_5(~_wgslsmith_div_i32(-2147483647i, global1[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(false, true, false, !global4.c), vec3<bool>(true, !global4.c, global4.c), vec4<bool>(true, global4.c, all(vec3<bool>(global4.d, true, global4.d)), false)).b));
    let var_1 = false && !select(true, global4.c, var_0.c);
    var var_2 = func_6(38135i, vec4<bool>(true, true, !global4.c, true && (var_0.d & true)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x, countOneBits(var_0.b.b.x)), 86128u & global4.b.b.x), ~var_0.b.b.x, 1u), func_5(-func_5(~2147483647i, select(vec4<bool>(true, var_0.d, true, var_1), vec4<bool>(var_1, global4.c, var_0.d, var_0.c), global4.c), !vec3<bool>(global4.d, false, global4.c), select(vec4<bool>(var_1, var_1, var_0.c, var_1), vec4<bool>(false, true, false, var_0.d), vec4<bool>(true, true, true, global4.d))).d.x, vec4<bool>(any(select(vec4<bool>(var_0.c, global4.d, false, false), vec4<bool>(false, var_0.c, false, true), vec4<bool>(global4.c, false, var_0.d, true))), false, var_1, var_1), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_1, true), vec3<bool>(true, true, global4.c), false), vec3<bool>(true, global4.c, var_1)), !(!vec3<bool>(global4.d, true, global4.d)), vec3<bool>(select(false, global4.c, var_0.c), var_1, true)), select(select(vec4<bool>(true, var_0.d, var_0.c, global4.c), select(vec4<bool>(false, global4.c, true, false), vec4<bool>(var_0.c, true, true, false), global4.c), select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_0.d, global4.d, global4.c, false), vec4<bool>(var_0.d, var_1, true, var_0.c))), !select(vec4<bool>(global4.c, true, false, global4.c), vec4<bool>(false, var_1, true, var_0.c), vec4<bool>(var_1, true, global4.d, false)), !vec4<bool>(true, var_0.c, var_0.c, false))).b);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global4.a, vec3<f32>(_wgslsmith_f_op_f32(1000f + global2.a.x), _wgslsmith_f_op_f32(func_3(19485i, Struct_4(4294967295u, var_2.b, var_0.b), vec4<i32>(global1[_wgslsmith_index_u32(4999u, 29u)], -16610i, 28577i, 16316i))), -1035f), false))), func_7(func_6(func_6(i32(-1i) * -1i, vec4<bool>(global4.d, global4.c, global4.d, var_0.c), ~vec3<u32>(76127u, 1u, 8426u), func_7(Struct_4(1u, vec3<i32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(global4.b.b.x, 29u)], -1i), global4.b)).b).b.x, vec4<bool>(true, var_0.c, var_1, global4.d), countOneBits(~vec3<u32>(u_input.a.x, global2.b.x, var_2.c.b.x)), global4.b)).b, !(!var_1), true);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(1f + var_0.a.x), _wgslsmith_f_op_f32(round(546f)));
    global4 = func_7(Struct_4(u_input.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(func_6(var_2.b.x, vec4<bool>(true, global4.d, false, var_0.d), vec3<u32>(0u, global4.b.b.x, u_input.a.x), var_0.b).b.x, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 29u)], var_2.b.x), var_2.b.x), firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(global2.b.x, 29u)], var_2.b.x, 1i))), func_6(i32(-1i) * -2147483647i, !(!vec4<bool>(var_0.c, global4.d, true, var_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 107790u, global4.b.b.x), firstTrailingBit(vec3<u32>(global2.b.x, global2.b.x, 62994u))), func_6(-global1[_wgslsmith_index_u32(4948u, 29u)], !vec4<bool>(false, true, var_1, true), vec3<u32>(var_0.b.b.x, global2.b.x, 0u), Struct_1(vec2<f32>(var_3.x, 431f), vec2<u32>(var_0.b.b.x, 16834u))).c).c));
    global3 = array<vec4<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(~var_2.c.b.x)), ~1u, var_2.a, ~(~max(u_input.a.x, 4294967295u))), vec3<f32>(var_2.c.a.x, 380f, _wgslsmith_f_op_f32(round(-1114f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.c.a.x, 2317f, 1000f)))))));
}

