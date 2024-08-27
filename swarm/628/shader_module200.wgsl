struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 43433u), vec3<u32>(86319u, 4294967295u, 37790u), vec2<bool>(true, false));

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-115f, -302f, -1911f), vec3<f32>(-604f, -556f, 1464f), vec3<f32>(-1352f, -778f, -542f), vec3<f32>(353f, -281f, 2218f), vec3<f32>(353f, 1751f, 949f), vec3<f32>(-1848f, -296f, -322f), vec3<f32>(159f, 1081f, 1028f), vec3<f32>(2075f, 861f, -168f), vec3<f32>(789f, -282f, 369f), vec3<f32>(672f, 867f, -1229f), vec3<f32>(-243f, -887f, -1472f), vec3<f32>(1167f, 1000f, 1228f), vec3<f32>(-492f, 565f, 1000f), vec3<f32>(100f, -182f, -1686f), vec3<f32>(-1421f, 143f, -856f), vec3<f32>(1452f, 996f, 745f), vec3<f32>(-157f, -265f, 141f), vec3<f32>(1471f, 387f, 1803f), vec3<f32>(-563f, 533f, 1174f));

var<private> global3: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = Struct_1(~7004u, arg_2, max(countOneBits(~(~vec4<u32>(1u, 0u, global1.b.x, u_input.a))), vec4<u32>(global3.x, ~global3.x, select(4294967295u, firstLeadingBit(global0[_wgslsmith_index_u32(0u, 29u)]), global1.a.x), ~47827u)));
    var var_1 = ~_wgslsmith_mult_vec4_i32(select(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3, arg_3, u_input.b.x, u_input.b.x), vec4<i32>(arg_0.x, arg_0.x, -2147483647i, 1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(25348i, u_input.b.x, arg_3, 61243i) ^ vec4<i32>(-63197i, arg_0.x, arg_0.x, arg_0.x), ~vec4<i32>(u_input.b.x, arg_0.x, -1i, 48492i)), false), ~abs(vec4<i32>(1i, 14785i, arg_0.x, arg_0.x)));
    let var_2 = u_input.a >= 0u;
    var var_3 = 1u;
    var var_4 = 874f;
    return var_0.b;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    var var_0 = vec2<bool>(any(select(!(!vec2<bool>(arg_1.a.x, arg_2.a.x)), vec2<bool>(u_input.b.x > -9196i, !arg_2.d.x), !(arg_1.a.x || false))), !(!(!(!arg_2.d.x))));
    let var_1 = !func_3(vec2<i32>(1i, -1i), min(firstTrailingBit(global1.b.x), firstTrailingBit(countOneBits(8456u))), arg_1.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(1i, u_input.b.x, 2147483647i) ^ vec3<i32>(-34761i, u_input.b.x, -33252i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2818i, u_input.b.x), vec3<i32>(18i, -1i, 41245i))), -vec3<i32>(-82253i, 1637i, 76837i)));
    let var_2 = arg_1;
    return u_input.b.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = false;
    let var_1 = firstTrailingBit(arg_2.c);
    let var_2 = arg_0;
    var var_3 = Struct_2(vec3<bool>(!(any(vec4<bool>(arg_2.b, var_0, true, var_0)) & (var_2.x >= arg_1.x)), false, true), global1.c, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(select(global3.x, u_input.d, true), select(28265u, var_1.x, global1.d.x), abs(var_1.x)), arg_2.c.xzz), ~(~max(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.c.x, 29u)], u_input.c, global1.c.x), vec3<u32>(var_1.x, 44991u, 4235u))), global1.c), global1.a.xz);
    global0 = array<u32, 29>();
    return Struct_2(!(!var_3.a), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.d, 29u)], var_3.c.x, global3.x), abs(vec4<u32>(1693u, var_3.c.x, arg_2.a, 55031u))), 0u, firstTrailingBit(2141u) ^ (global0[_wgslsmith_index_u32(var_3.b.x, 29u)] ^ arg_2.a)), (global1.b & vec3<u32>(4294967295u, 58864u, global1.b.x)) << (vec3<u32>(1u, var_3.b.x, _wgslsmith_mod_u32(0u, 43896u)) % vec3<u32>(32u))), select(~firstLeadingBit(vec3<u32>(23696u, 4294967295u, arg_2.c.x)), var_1.wzz, true), vec2<bool>(false, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = func_4(vec2<f32>(-795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(479f + _wgslsmith_f_op_f32(f32(-1f) * -301f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1613f, -1000f, global1.d.x)))))), global2[_wgslsmith_index_u32(arg_2.a & global3.x, 19u)], Struct_1(~61875u, true, ~(~vec4<u32>(48658u, u_input.d, 4294967295u, u_input.a)) << (_wgslsmith_div_vec4_u32(vec4<u32>(15226u, arg_2.c.x, global0[_wgslsmith_index_u32(1u, 29u)], global3.x), abs(vec4<u32>(4294967295u, 45770u, global3.x, global1.c.x))) % vec4<u32>(32u))), u_input.b.x);
    var var_1 = false;
    var var_2 = u_input.b.x;
    let var_3 = Struct_2(vec3<bool>(true, false | select(var_0.a.x || var_0.d.x, arg_2.b, all(arg_0)), true), global1.c, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1860f, -1000f)))), vec3<f32>(-302f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-1292f, -176f)), _wgslsmith_f_op_f32(-765f - _wgslsmith_f_op_f32(min(743f, 1000f)))), Struct_1(~(u_input.d ^ arg_2.a), all(select(arg_0, vec4<bool>(true, false, global1.a.x, true), arg_0)), vec4<u32>(arg_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 109863u, arg_1.b.x, arg_2.a), vec4<u32>(0u, 90740u, arg_2.c.x, 0u)), ~global1.c.x, _wgslsmith_div_u32(global1.b.x, arg_1.b.x))), u_input.b.x).b, select(global1.a.xx, global1.d, !var_0.a.xz));
    global3 = var_0.b.yy;
    return var_3;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> bool {
    global1 = func_5(vec4<bool>(select(_wgslsmith_f_op_f32(round(132f)) < -186f, false, all(global1.a)), arg_0.d.x, true, false), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, -363f)) * vec2<f32>(1000f, 1000f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1169f, 511f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(4294967295u, 19u)], vec3<f32>(1538f, 366f, 173f), vec3<bool>(global1.a.x, false, global1.d.x)))) * _wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(15420u, 19u)]))), Struct_1(abs(47252u), true, ~vec4<u32>(0u, arg_0.c.x, arg_0.b.x, global1.c.x)), func_2(-758f, Struct_2(vec3<bool>(arg_1, true, global1.a.x), global1.b, arg_0.b, global1.a.xz), arg_0, vec4<f32>(-468f, 469f, 839f, 727f)) << (4294967295u % 32u)), Struct_1(global3.x, true, _wgslsmith_div_vec4_u32(~vec4<u32>(64310u, 52568u, u_input.d, 13309u), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, 24872u, 0u, global3.x), vec4<u32>(global3.x, global1.b.x, 0u, global1.b.x)), firstTrailingBit(vec4<u32>(1u, 10727u, global1.b.x, 16835u))))));
    var var_0 = global1.d.x;
    var var_1 = !arg_0.a.x;
    var_0 = true;
    let var_2 = Struct_1(func_5(!vec4<bool>(func_3(u_input.b, global0[_wgslsmith_index_u32(global3.x, 29u)], false, -1i), global1.d.x, false, global1.c.x < 0u), Struct_2(!select(global1.a, arg_0.a, vec3<bool>(arg_2, true, arg_0.a.x)), global1.b, ~vec3<u32>(20494u, arg_0.b.x, global3.x) << (~vec3<u32>(arg_0.c.x, global0[_wgslsmith_index_u32(global1.b.x, 29u)], 22747u) % vec3<u32>(32u)), vec2<bool>(true, true)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(61849u, global0[_wgslsmith_index_u32(global3.x, 29u)], 23204u), vec3<u32>(arg_0.b.x, 13490u, arg_0.b.x)), u_input.b.x <= -u_input.b.x, vec4<u32>(global3.x, global3.x, arg_0.b.x, u_input.a) << (reverseBits(vec4<u32>(22903u, u_input.a, 44583u, global3.x)) % vec4<u32>(32u)))).c.x, arg_2, vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global1.c.x, global1.b.x, arg_0.c.x), ~vec3<u32>(global3.x, 3772u, 4294967295u)), vec3<u32>(abs(26669u), ~global1.b.x, global1.c.x)), u_input.a, abs(4294967295u), 50578u));
    return true && global1.d.x;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_2 {
    global1 = func_5(select(select(select(select(vec4<bool>(arg_1.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), vec4<bool>(arg_2, true, global1.d.x, true)), !vec4<bool>(true, false, arg_1.b, true), select(vec4<bool>(arg_2, arg_1.b, arg_2, arg_0.b), vec4<bool>(true, arg_0.b, true, arg_2), arg_0.b)), select(vec4<bool>(arg_2, arg_1.b, global1.d.x, false), vec4<bool>(false, arg_0.b, global1.a.x, global1.a.x), func_4(vec2<f32>(1782f, 745f), global2[_wgslsmith_index_u32(17453u, 19u)], Struct_1(global1.c.x, arg_0.b, vec4<u32>(global3.x, 0u, 4294967295u, arg_1.a)), u_input.b.x).a.x), all(!global1.a.yz)), vec4<bool>(true, true, true, true), !(!(!vec4<bool>(arg_0.b, false, arg_2, global1.d.x)))), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1086f, 223f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -785f, 844f) + global2[_wgslsmith_index_u32(22632u, 19u)])), arg_1, arg_3).a, select(vec3<u32>(17357u, 68269u, global3.x << (global3.x % 32u)), min(max(vec3<u32>(arg_0.c.x, global1.b.x, 14531u), arg_1.c.zwz), vec3<u32>(0u, global1.b.x, arg_1.c.x)), any(!vec4<bool>(arg_0.b, arg_2, true, global1.a.x))), global1.c, !func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1064f, -851f) - vec2<f32>(919f, 1000f)), vec3<f32>(1f, 1f, 1f), arg_1, arg_3).a.yz), arg_1);
    global3 = select(vec2<u32>(firstTrailingBit(10048u), 35985u), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.c.xyx << (global1.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(90724u, 19726u, global1.b.x), arg_1.c.yyx)), 29u)] ^ arg_0.c.x, 33765u), func_5(vec4<bool>(global1.d.x, any(vec2<bool>(arg_2, arg_0.b)), global1.d.x, !any(global1.a.yy)), Struct_2(!global1.a, ~vec3<u32>(1519u, arg_0.a, 1u) >> (vec3<u32>(0u, 28040u, 66435u) % vec3<u32>(32u)), func_5(!vec4<bool>(arg_1.b, arg_1.b, arg_0.b, true), Struct_2(global1.a, vec3<u32>(arg_1.c.x, global3.x, global3.x), vec3<u32>(49029u, 3871u, 1u), global1.d), arg_0).b, !vec2<bool>(arg_2, arg_2)), arg_0).d);
    let var_0 = func_5(select(vec4<bool>(true, global1.d.x, _wgslsmith_f_op_f32(ceil(-391f)) == _wgslsmith_f_op_f32(517f + 148f), true), select(!(!vec4<bool>(true, arg_1.b, true, arg_2)), !(!vec4<bool>(arg_2, global1.d.x, arg_2, true)), arg_1.b), select(select(!vec4<bool>(true, global1.d.x, true, true), !vec4<bool>(true, arg_0.b, arg_0.b, false), false), !(!vec4<bool>(true, false, arg_0.b, arg_0.b)), arg_1.b)), Struct_2(global1.a, ~min(_wgslsmith_mod_vec3_u32(arg_1.c.xzw, vec3<u32>(global1.c.x, global1.c.x, 48247u)), ~vec3<u32>(global3.x, global3.x, 55673u)), func_5(vec4<bool>(true, any(vec3<bool>(arg_1.b, true, false)), true, !global1.d.x), Struct_2(!vec3<bool>(arg_0.b, global1.d.x, false), reverseBits(vec3<u32>(global3.x, 0u, global0[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_div_vec3_u32(arg_0.c.zxx, global1.c), global1.a.xy), arg_1).c, !(!global1.a.zx)), Struct_1(func_5(vec4<bool>(arg_1.b, true, arg_2, global1.d.x), func_5(vec4<bool>(arg_1.b, true, false, arg_0.b), Struct_2(global1.a, vec3<u32>(4294967295u, 6843u, global3.x), vec3<u32>(23264u, global1.b.x, 12057u), vec2<bool>(global1.d.x, true)), Struct_1(global1.c.x, false, vec4<u32>(0u, global1.b.x, global3.x, arg_0.a))), Struct_1(_wgslsmith_clamp_u32(0u, arg_1.c.x, arg_1.c.x), true, _wgslsmith_mult_vec4_u32(vec4<u32>(10040u, global1.c.x, u_input.a, u_input.d), arg_0.c))).b.x, global1.a.x, arg_0.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2375f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = array<vec3<f32>, 19>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(global3.x, select(!func_1(Struct_2(global1.a, global1.c, vec3<u32>(24285u, 18499u, 8984u), global1.d), true, false), any(vec2<bool>(false, false)), true & all(global1.d)), ~(~vec4<u32>(14555u, 7192u, 4294967295u, global3.x))), Struct_1(4294967295u, func_5(!(!vec4<bool>(global1.a.x, global1.a.x, global1.d.x, true)), Struct_2(!global1.a, abs(global1.c), global1.c, !vec2<bool>(global1.d.x, true)), Struct_1(4294967295u, global1.d.x, vec4<u32>(u_input.a, 4294967295u, global1.b.x, 4294967295u) & vec4<u32>(0u, 1u, global1.c.x, 72601u))).d.x, firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], u_input.a, global0[_wgslsmith_index_u32(1691u, 29u)], global1.c.x), vec4<u32>(32871u, global1.c.x, global0[_wgslsmith_index_u32(global3.x, 29u)], 1u)), vec4<u32>(24627u, 4294967295u, 11510u, global1.c.x), vec4<u32>(4294967295u, global3.x, global0[_wgslsmith_index_u32(global3.x, 29u)], 389u)))), global1.a.x, firstTrailingBit(i32(-1i) * -u_input.b.x));
    var var_1 = ~35875u;
    let var_2 = ~firstTrailingBit(firstTrailingBit(vec4<u32>(~9486u, 0u, ~4294967295u, func_5(vec4<bool>(var_0.d.x, var_0.a.x, false, true), Struct_2(vec3<bool>(var_0.a.x, false, var_0.a.x), global1.c, vec3<u32>(26034u, global0[_wgslsmith_index_u32(global1.c.x, 29u)], 1u), var_0.d), Struct_1(0u, global1.a.x, vec4<u32>(62555u, global0[_wgslsmith_index_u32(1u, 29u)], 8994u, global1.c.x))).c.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-554f, -2174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-229f, -255f, global1.a.x)) - _wgslsmith_f_op_f32(select(-438f, -1702f, global1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-884f, -174f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, 1530f, 2465f, -1000f))))))), vec4<bool>(true, var_2.x > _wgslsmith_dot_vec3_u32(~global1.c, var_0.b), any(vec3<bool>(u_input.b.x != -2147483647i, !var_0.d.x, true)), !func_6(Struct_1(4294967295u, var_0.d.x, vec4<u32>(1u, 0u, var_0.c.x, var_2.x)), Struct_1(1u, global1.a.x, var_2), global1.d.x, ~u_input.b.x).d.x)));
    var var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_add_u32(2069u, var_0.c.x)), 1u, 1u));
}

