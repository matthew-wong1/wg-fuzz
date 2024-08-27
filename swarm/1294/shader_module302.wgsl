struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-309f, vec4<i32>(-1i, -10183i, -3447i, 11751i), 0u);

var<private> global1: vec3<f32> = vec3<f32>(-653f, 335f, -342f);

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-599f, -1000f, 806f), vec3<f32>(487f, -594f, -827f), vec3<f32>(1397f, -411f, -1700f), vec3<f32>(-1000f, -758f, -519f), vec3<f32>(274f, -554f, -207f), vec3<f32>(-1509f, -1553f, 149f), vec3<f32>(717f, 195f, 899f), vec3<f32>(-1098f, 628f, -748f), vec3<f32>(-561f, -1244f, -1125f), vec3<f32>(-469f, 2565f, -167f), vec3<f32>(771f, 1450f, -500f), vec3<f32>(-1211f, -540f, 2091f), vec3<f32>(150f, -220f, -1557f), vec3<f32>(-1122f, 2282f, -2797f), vec3<f32>(-2318f, -1191f, 485f), vec3<f32>(-1142f, -1862f, 2282f), vec3<f32>(-193f, 179f, 1566f), vec3<f32>(119f, -533f, -915f), vec3<f32>(-880f, 1773f, 274f), vec3<f32>(-484f, 959f, -837f), vec3<f32>(-1702f, -238f, 517f), vec3<f32>(932f, -276f, 1000f), vec3<f32>(-798f, -955f, 920f), vec3<f32>(-316f, 106f, -989f), vec3<f32>(-1000f, 1000f, 346f), vec3<f32>(1171f, -896f, -1000f), vec3<f32>(218f, -527f, 915f), vec3<f32>(-441f, 695f, -663f), vec3<f32>(-1000f, -1000f, -2203f));

var<private> global3: array<bool, 5>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = ((vec2<i32>(-9811i, _wgslsmith_mult_i32(global0.b.x, -1i)) >> (u_input.c % vec2<u32>(32u))) & abs(vec2<i32>(-global0.b.x, ~50911i))) & (reverseBits(-u_input.d.zy) >> (u_input.b.yz % vec2<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-769f, global1.x) - global1.x), global0.b, 6421u);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), global1.x, all(select(global4.xz, global4.zy, global4.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, 415f, global3[_wgslsmith_index_u32(global0.c, 5u)]))) * global0.a)) - vec3<f32>(997f, -748f, global1.x));
    global2 = array<vec3<f32>, 29>();
    var var_1 = Struct_1(global0.a, vec4<i32>(u_input.a, max(~(-var_0.x), 36586i >> (_wgslsmith_clamp_u32(global0.c, 2572u, 4294967295u) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.x, _wgslsmith_div_i32(u_input.a, var_0.x), _wgslsmith_dot_vec4_i32(global0.b, global0.b), i32(-1i) * -2147483647i), vec4<i32>(~73293i, 43871i, 0i, 1i)), min(~var_0.x << (abs(0u) % 32u), ~2147483647i)), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.b.x, 17940u, u_input.b.x, 0u), vec4<u32>(4294967295u, 57793u, 16486u, 46861u), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)], true, false)), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(50941u, global0.c, 4294967295u, global0.c)) << (u_input.b % vec4<u32>(32u))) | _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.c.x, 1u)));
    return _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c, 0u, global0.c, 0u), ~u_input.b) << (~(~u_input.c.x) % 32u), 1u), ~(~global0.c), var_1.c);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_clamp_u32(abs(46592u), global0.c, ~_wgslsmith_sub_u32(select(func_3(), u_input.c.x, !global3[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 97258u, u_input.c.x), u_input.b.ywy & u_input.b.zyw)));
    var var_1 = u_input.b.ywz;
    global3 = array<bool, 5>();
    global4 = vec3<bool>((!any(global4.yx) && (u_input.d.x < ~21790i)) && !(!(global1.x >= 317f)), !any(vec3<bool>(true, all(vec4<bool>(global3[_wgslsmith_index_u32(global0.c, 5u)], global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(19175u, 5u)], false)), false)), true);
    return true;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_vec2_f32(global1.xz, global1.zy), vec2<bool>(true, func_2(-501f))));
    var var_1 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1421f)), countOneBits(_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.a, 1i, global0.b.x, u_input.a), global0.b), vec4<i32>(62461i, 12051i, -20886i, 1i))), _wgslsmith_mod_u32(1u & global0.c, reverseBits(global0.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a)))), global0.b, _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.zx), firstLeadingBit(vec2<u32>(98694u, 9532u))) & 22839u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1.x, u_input.b.x), arg_1) ^ u_input.b.xww), countOneBits((arg_1 << (vec3<u32>(arg_1.x, global0.c, 9911u) % vec3<u32>(32u))) ^ abs(vec3<u32>(arg_1.x, global0.c, 6181u)))));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.zy, global1.yy))), Struct_1(global0.a, _wgslsmith_div_vec4_i32(reverseBits(var_1.b.b), abs(vec4<i32>(var_1.b.b.x, global0.b.x, var_1.b.b.x, var_1.b.b.x))), 27149u), Struct_1(_wgslsmith_f_op_f32(ceil(var_0.x)), -abs(global0.b), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, var_1.b.c), ~10311u)), abs(var_1.d | var_1.d)), Struct_3(select(reverseBits(select(arg_1, vec3<u32>(35049u, 73412u, 22219u), vec3<bool>(false, false, arg_0))), ~vec3<u32>(0u, arg_1.x, var_1.b.c) >> (_wgslsmith_add_vec3_u32(var_1.d, vec3<u32>(arg_1.x, var_1.d.x, 25390u)) % vec3<u32>(32u)), true), abs((vec4<i32>(u_input.a, u_input.d.x, global0.b.x, var_1.b.b.x) ^ global0.b) | abs(vec4<i32>(-68069i, -20225i, 2147483647i, -1i))), firstTrailingBit(var_1.d.yx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xx - vec2<f32>(139f, global0.a)), vec2<f32>(-1513f, global0.a))), !global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1728f + var_1.a.x) * global0.a), Struct_2(vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(-1382f))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), global0.a)), ~vec4<i32>(-13145i, var_1.b.b.x, 30790i, u_input.a), arg_1.x), Struct_1(_wgslsmith_f_op_f32(1247f + _wgslsmith_f_op_f32(select(global1.x, -940f, global3[_wgslsmith_index_u32(u_input.b.x, 5u)]))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, var_1.b.b.x, var_1.b.b.x, 2147483647i), var_1.c.b, abs(vec4<i32>(7084i, global0.b.x, global0.b.x, 2147483647i))), ~arg_1.x), firstTrailingBit(_wgslsmith_mod_vec3_u32(reverseBits(arg_1), var_1.d))), Struct_3(~var_1.d, ~var_1.b.b, abs(var_1.d.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, global0.a))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.a, var_0.x), var_0)))), global3[_wgslsmith_index_u32(~global0.c, 5u)]));
    let var_3 = u_input.d.x;
    var_1 = var_2.a;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.c.a)), _wgslsmith_f_op_f32(-global0.a)), var_1.a.x, true))), countOneBits(var_2.e.b), reverseBits(var_2.d.d.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global3 = array<bool, 5>();
    let var_0 = firstTrailingBit(arg_0.d.xy);
    let var_1 = reverseBits(select(~(-(~vec2<i32>(global0.b.x, 12803i))), abs(vec2<i32>(16239i, u_input.d.x) | vec2<i32>(global0.b.x, -15857i)), global3[_wgslsmith_index_u32(func_1(true, abs(abs(u_input.b.yxy))).c, 5u)]));
    var var_2 = vec4<f32>(1000f, 497f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), arg_0.b.a);
    global2 = array<vec3<f32>, 29>();
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.zy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1925f)) * arg_0.a)))), func_1(true, vec3<u32>(u_input.b.x, 1u, ~1u)), func_1(!global3[_wgslsmith_index_u32(arg_0.b.c, 5u)], vec3<u32>(arg_0.c.c, global0.c << (func_3() % 32u), ~4294967295u)), ~_wgslsmith_add_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(60972u, arg_0.c.c, 5591u))), select(vec3<u32>(var_0.x, 1u, 1u), u_input.b.zzw, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]) | u_input.b.xwx));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(vec3<bool>(true, true, true), vec3<bool>(1u == ~u_input.c.x, global3[_wgslsmith_index_u32(6209u, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global1.x)) <= global0.a), vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(20287u, 1u, global0.c), u_input.b.zxy), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global0.c, 0u), ~vec3<u32>(31821u, global0.c, global0.c))), 5u)], true, !(true != global3[_wgslsmith_index_u32(global0.c, 5u)]) && global4.x));
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-943f, 555f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.a)), ~abs(vec4<i32>(-24613i, global0.b.x, u_input.a, 0i)), u_input.b.x), func_1(all(select(vec3<bool>(false, false, false), vec3<bool>(true, global4.x, false), false)), min(firstTrailingBit(u_input.b.yxz), abs(u_input.b.yzz))), u_input.b.xyx));
    var var_1 = vec3<u32>(max(0u, select(~var_0.c.c << (120913u % 32u), 1u, -2147483647i != (var_0.c.b.x & global0.b.x))), u_input.b.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(u_input.b, u_input.b, true), u_input.b), countOneBits(~u_input.b)) % 32u), _wgslsmith_mult_u32(global0.c, ~(~u_input.b.x)));
    var_1 = ~vec3<u32>(21348u, ~(var_0.c.c & ~16707u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, 0u), ~12125u));
    let var_2 = var_0.c.b.x;
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(global0.c, 29u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.x, global1.x, u_input.b.yx, select(global0.b, vec4<i32>(~15148i, 1i, firstLeadingBit(-61332i), global0.b.x), true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1280f, var_0.c.a), _wgslsmith_f_op_f32(select(111f, global0.a, true)))) - _wgslsmith_f_op_f32(926f - _wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f + var_0.c.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(2212f)))))));
}

