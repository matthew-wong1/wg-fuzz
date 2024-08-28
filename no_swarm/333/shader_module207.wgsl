struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<bool>(true, false, true, true), -441f, vec3<bool>(true, true, true), vec3<i32>(0i, -17633i, -8197i)), Struct_1(vec4<bool>(true, false, false, false), -1214f, vec3<bool>(false, false, false), vec3<i32>(6279i, i32(-2147483648), -29196i)), Struct_1(vec4<bool>(true, false, false, false), -1508f, vec3<bool>(false, true, false), vec3<i32>(1i, -59932i, -33687i)), Struct_1(vec4<bool>(true, true, true, true), -692f, vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 0i, 15755i)), Struct_1(vec4<bool>(true, false, false, false), -1213f, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), -10381i, -34881i)), Struct_1(vec4<bool>(true, true, false, true), -142f, vec3<bool>(true, true, true), vec3<i32>(44674i, 1i, -35970i)), Struct_1(vec4<bool>(true, true, false, false), 770f, vec3<bool>(false, false, true), vec3<i32>(1i, -46980i, 0i)), Struct_1(vec4<bool>(true, true, false, true), -1298f, vec3<bool>(false, false, false), vec3<i32>(-1i, 0i, -58668i)), Struct_1(vec4<bool>(true, false, false, false), -832f, vec3<bool>(true, false, false), vec3<i32>(1i, 27783i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, false), 312f, vec3<bool>(true, true, true), vec3<i32>(-6122i, 23673i, 2147483647i)), Struct_1(vec4<bool>(false, false, false, true), 1124f, vec3<bool>(true, true, true), vec3<i32>(19016i, -1i, 0i)), Struct_1(vec4<bool>(true, false, false, false), -1131f, vec3<bool>(true, false, true), vec3<i32>(-1535i, i32(-2147483648), 34925i)), Struct_1(vec4<bool>(true, true, true, false), -820f, vec3<bool>(false, false, true), vec3<i32>(1i, i32(-2147483648), -27677i)), Struct_1(vec4<bool>(false, false, true, false), 554f, vec3<bool>(true, false, false), vec3<i32>(-15833i, 1i, -14001i)), Struct_1(vec4<bool>(false, true, false, true), 1000f, vec3<bool>(false, false, false), vec3<i32>(-28391i, 13843i, -6693i)), Struct_1(vec4<bool>(false, false, false, true), -406f, vec3<bool>(true, true, false), vec3<i32>(14538i, -31465i, 60400i)), Struct_1(vec4<bool>(false, false, true, true), 674f, vec3<bool>(true, true, false), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(vec4<bool>(true, true, false, true), 414f, vec3<bool>(false, false, true), vec3<i32>(7375i, 2147483647i, -6904i)), Struct_1(vec4<bool>(false, false, true, true), -1193f, vec3<bool>(true, true, false), vec3<i32>(-3895i, -29855i, -22842i)), Struct_1(vec4<bool>(false, true, true, true), -272f, vec3<bool>(false, false, true), vec3<i32>(-1i, 2147483647i, -1i)), Struct_1(vec4<bool>(true, false, true, true), 2240f, vec3<bool>(true, true, true), vec3<i32>(2555i, -1i, 60578i)), Struct_1(vec4<bool>(true, true, true, true), 627f, vec3<bool>(false, true, false), vec3<i32>(27272i, 16821i, 0i)), Struct_1(vec4<bool>(true, false, true, true), -279f, vec3<bool>(true, false, true), vec3<i32>(-70010i, -83304i, 0i)));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), -814f, vec3<bool>(false, false, true), vec3<i32>(-8119i, -28746i, 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = u_input.b.x;
    global1 = arg_1;
    let var_2 = vec4<u32>(u_input.b.x ^ ~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u), u_input.b.x, _wgslsmith_mult_u32(3769u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 27756u, 25663u, u_input.b.x)))), 0u) | vec4<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), firstTrailingBit(~0u)), ~u_input.b.x, ~select(u_input.b.x, 0u, all(vec3<bool>(var_0.a.x, var_0.a.x, true))), u_input.b.x);
    let var_3 = global0[_wgslsmith_index_u32(var_2.x, 23u)];
    return 24106u;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = global1.a.x;
    let var_1 = any(select(global1.a, vec4<bool>(global1.c.x, !all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true)), true, u_input.b.x <= u_input.b.x), vec4<bool>(true, true, true, global1.c.x)));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(abs(func_3(vec3<f32>(479f, global1.b, -1793f), global0[_wgslsmith_index_u32(14295u, 23u)], vec2<f32>(global1.b, global1.b))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(31145u, u_input.b.x, 0u), u_input.b)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 63485u), firstLeadingBit(vec4<u32>(3298u, u_input.b.x, u_input.b.x, 10832u))))), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<i32>(min(-(~1i), arg_1.d.x), _wgslsmith_div_i32(arg_3.d.x, 4510i), ~_wgslsmith_dot_vec2_i32(arg_1.d.yz, _wgslsmith_div_vec2_i32(-arg_3.d.yz, max(arg_1.d.yx, global1.d.xx))), min(~_wgslsmith_sub_i32(~1i, arg_1.d.x >> (u_input.b.x % 32u)), u_input.c));
    global0 = array<Struct_1, 23>();
    let var_1 = arg_0.c.zy;
    var var_2 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, 80075u, u_input.b.x, u_input.b.x)), vec4<u32>(~(u_input.b.x | u_input.b.x), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 21605u, 50411u)), reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), 0u, _wgslsmith_mult_u32(1u, ~u_input.b.x)));
    var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(-u_input.a) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_3.d.x, 2147483647i), vec3<i32>(arg_1.d.x, 28105i, u_input.c)), global1.d & vec3<i32>(48371i, var_0.x, arg_3.d.x)), ~13569i, var_0.x ^ arg_0.d.x, arg_0.d.x >> (select(var_2.x, var_2.x, any(vec2<bool>(global1.a.x, true))) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(44574u, 23u)];
    var_0 = Struct_1(select(var_0.a, !global1.a, global1.a.x | var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(var_0.a, -2035f, vec3<bool>(var_0.c.x, true, var_0.c.x), global1.d), func_2(), -1532f, Struct_1(global1.a, global1.b, vec3<bool>(global1.a.x, var_0.a.x, true), vec3<i32>(48151i, -2147483647i, var_0.d.x)))) + _wgslsmith_f_op_f32(sign(-1211f))) * var_0.b), select(vec3<bool>(var_0.a.x, global1.c.x, var_0.c.x), global1.c, !select(select(vec3<bool>(false, global1.c.x, var_0.c.x), var_0.a.xzw, var_0.c), vec3<bool>(var_0.a.x, true, false), vec3<bool>(var_0.a.x, false, global1.c.x))), var_0.d);
    var var_1 = func_2();
    let var_2 = firstLeadingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, global1.d.x, 2380i, var_1.d.x), vec4<i32>(var_0.d.x, var_1.d.x, -2147483647i, var_1.d.x))) << (((~(~vec4<u32>(37298u, 0u, 4294967295u, 0u)) | ~(vec4<u32>(u_input.b.x, 45411u, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, 46262u, 0u))) | vec4<u32>(max(u_input.b.x, abs(4294967295u)), ~u_input.b.x, u_input.b.x, ~firstLeadingBit(4294967295u))) % vec4<u32>(32u));
    var_1 = Struct_1(!vec4<bool>(func_2().a.x, false, any(var_1.a.ww), false), 581f, global1.c, global1.d | vec3<i32>(0i, ~_wgslsmith_clamp_i32(var_1.d.x, u_input.a.x, var_0.d.x), -1i >> (~u_input.b.x % 32u)));
    return !select(!global1.a, select(var_1.a, !(!var_0.a), true), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.b.x, (4294967295u | u_input.b.x) | ~(~u_input.b.x), u_input.b.x);
    global1 = global0[_wgslsmith_index_u32(~u_input.b.x, 23u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(firstLeadingBit(0u & _wgslsmith_div_u32(45413u, u_input.b.x)), 66420u), _wgslsmith_mod_u32(max(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 1u), u_input.b.x) >> (_wgslsmith_clamp_u32(43677u, 25974u, _wgslsmith_div_u32(reverseBits(1u), reverseBits(u_input.b.x))) % 32u)), 23u)];
    global1 = Struct_1(!func_1(), global1.b, var_1.c, -global1.d);
    let var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(vec3<i32>(u_input.a.x, global1.d.x, var_1.d.x) << (var_0 % vec3<u32>(32u))) & (_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(1242i, var_1.d.x, var_1.d.x)) | -vec3<i32>(1i, u_input.a.x, 14940i))), ~u_input.b.x, _wgslsmith_add_i32(-max(0i, global1.d.x), -firstTrailingBit(~u_input.c)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-2147483647i, -34722i)), ~vec2<i32>(2147483647i, u_input.c)), countOneBits(min(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d.x, -19020i), vec2<i32>(var_1.d.x, global1.d.x)), _wgslsmith_div_vec2_i32(u_input.a.zx, var_1.d.yy)))));
}

