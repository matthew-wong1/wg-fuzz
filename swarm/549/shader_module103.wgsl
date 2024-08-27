struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<i32, 26>;

var<private> global2: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-1876f, -283f, -443f, -514f), vec4<f32>(1061f, -316f, -786f, -314f), vec4<f32>(-580f, 1285f, -1373f, 557f), vec4<f32>(-613f, 1000f, 566f, -274f), vec4<f32>(295f, -2044f, 671f, 437f), vec4<f32>(1240f, -172f, -574f, -163f), vec4<f32>(1828f, -1424f, 1000f, -1306f), vec4<f32>(-837f, -1858f, 418f, -564f), vec4<f32>(243f, 677f, -364f, 1739f), vec4<f32>(1052f, -1080f, 1024f, 1752f), vec4<f32>(-991f, 356f, 349f, 548f), vec4<f32>(311f, -205f, 749f, -954f), vec4<f32>(-500f, 1065f, -793f, -1000f), vec4<f32>(1000f, 457f, 341f, 774f), vec4<f32>(-638f, -1140f, -1347f, -924f), vec4<f32>(-1000f, -103f, 818f, 1139f), vec4<f32>(1000f, 1379f, 1745f, 709f), vec4<f32>(-203f, -441f, 1312f, -449f), vec4<f32>(1374f, -398f, 732f, 1000f), vec4<f32>(316f, -461f, 991f, 1462f), vec4<f32>(-187f, 149f, 819f, -639f), vec4<f32>(-615f, 1481f, 1000f, 1484f), vec4<f32>(1478f, -2637f, -944f, 577f), vec4<f32>(-981f, -1155f, -732f, -142f), vec4<f32>(1000f, -389f, -261f, 953f), vec4<f32>(-604f, 1148f, 176f, 984f), vec4<f32>(-1824f, 1000f, -1328f, 811f));

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(18211i, 77898i), vec2<i32>(58355i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(33484i, 2147483647i), vec2<i32>(1i, -15071i), vec2<i32>(2197i, 71352i), vec2<i32>(36722i, -1i), vec2<i32>(i32(-2147483648), 47845i), vec2<i32>(-1i, 0i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<f32>, 27>();
    let var_0 = 84019u;
    let var_1 = all(vec2<bool>(true, all(vec3<bool>(false, global3.x, global3.x)) | any(!global3.zz)));
    var var_2 = Struct_3(Struct_1(u_input.a), global3.zx, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(4294967295u, var_0))) & _wgslsmith_mult_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(var_0, 25u)], 4657u)), ~min(vec2<u32>(u_input.a, var_0), vec2<u32>(global0[_wgslsmith_index_u32(106125u, 25u)], 78049u))), Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~countOneBits(var_0)), 9u)], _wgslsmith_mod_vec3_u32(min(~vec3<u32>(4294967295u, u_input.a, var_0), vec3<u32>(0u, 55139u, 4294967295u)), ~(~vec3<u32>(4294967295u, 1u, 4294967295u))), min(-_wgslsmith_dot_vec3_i32(vec3<i32>(-49435i, global1[_wgslsmith_index_u32(46311u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), vec3<i32>(global1[_wgslsmith_index_u32(var_0, 26u)], global1[_wgslsmith_index_u32(10899u, 26u)], 2147483647i)), global1[_wgslsmith_index_u32(select(var_0, 73060u, false || global3.x), 26u)]), Struct_1(~u_input.a)));
    return Struct_1(30863u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = vec4<i32>(1i, -18950i, ~(max(reverseBits(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 26u)]), 13582i) & arg_0.a.x), abs(arg_2.x));
    global0 = array<u32, 25>();
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(91525u, 4294967295u, arg_0.d.a, 4294967295u) >> (~vec4<u32>(12158u, 97303u, arg_1, arg_0.b.x) % vec4<u32>(32u))), vec4<u32>(40194u, ~1474u, _wgslsmith_sub_u32(2257u, u_input.a | global0[_wgslsmith_index_u32(1u, 25u)]), abs(abs(u_input.a)))));
    global4 = array<vec2<i32>, 9>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~86571u, 0u), 26u)];
    return select(!select(select(!vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, arg_3, true, arg_3), !vec4<bool>(global3.x, false, arg_3, global3.x), vec4<bool>(global3.x, false, global3.x, global3.x)), !(!vec4<bool>(arg_3, false, arg_3, arg_3))), vec4<bool>(!global3.x, any(global3.zy), any(select(select(vec4<bool>(false, arg_3, false, global3.x), vec4<bool>(false, global3.x, global3.x, arg_3), vec4<bool>(global3.x, arg_3, false, true)), !vec4<bool>(arg_3, false, arg_3, false), select(vec4<bool>(false, global3.x, false, false), vec4<bool>(arg_3, arg_3, false, false), arg_3))), true), select(vec4<bool>(any(global3.zx), any(select(vec3<bool>(true, true, false), vec3<bool>(global3.x, false, global3.x), global3.x)), any(vec3<bool>(global3.x, global3.x, false)), !select(true, false, false)), select(!vec4<bool>(arg_3, arg_3, arg_3, arg_3), !select(vec4<bool>(global3.x, true, arg_3, global3.x), vec4<bool>(false, arg_3, true, true), false), select(select(vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(global3.x, true, true, arg_3)), select(vec4<bool>(arg_3, true, true, global3.x), vec4<bool>(false, true, false, arg_3), arg_3), arg_3 & true)), !(!vec4<bool>(false, true, true, arg_3))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = false;
    var var_1 = Struct_2(firstTrailingBit(vec2<i32>(arg_1.d.a.x, firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 26u)]))) & (_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 0i), arg_1.d.a | global4[_wgslsmith_index_u32(0u, 9u)]) >> (min(_wgslsmith_sub_vec2_u32(arg_1.d.b.yz, vec2<u32>(1281u, global0[_wgslsmith_index_u32(4294967295u, 25u)])), select(vec2<u32>(4294967295u, arg_1.c.x), arg_1.c, arg_2.yz)) % vec2<u32>(32u))), arg_1.d.b, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(~abs(arg_1.c.x), 26u)] >> (arg_1.c.x % 32u), _wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.c.x), 26u)], _wgslsmith_mod_i32(max(global1[_wgslsmith_index_u32(55309u, 26u)], 2147483647i), 2147483647i))), Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(func_2().a, arg_1.a.a))));
    global4 = array<vec2<i32>, 9>();
    let var_2 = var_1.b.zz >> (var_1.b.xy % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f + -1216f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(862f)) - _wgslsmith_f_op_f32(ceil(-384f)))));
    return arg_1.d.d;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_3(func_4(select(~(-1i), _wgslsmith_mult_i32(-4154i, 1i) & global1[_wgslsmith_index_u32(min(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 25u)]), 26u)], true), Struct_3(func_2(), !(!global3.yz), ~(vec2<u32>(28789u, u_input.a) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), Struct_2(-global4[_wgslsmith_index_u32(0u, 9u)], firstTrailingBit(vec3<u32>(0u, 0u, 1u)), global1[_wgslsmith_index_u32(6528u, 26u)] >> (global0[_wgslsmith_index_u32(4294967295u, 25u)] % 32u), Struct_1(28079u))), select(vec4<bool>(false, global3.x, !global3.x, global3.x), !func_3(Struct_2(vec2<i32>(10018i, 2000i), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(12879u, 25u)], 1u), 57980i, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)])), 39612u, vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]), global3.x), func_3(Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(13295u, 26u)], global1[_wgslsmith_index_u32(81479u, 26u)]), vec3<u32>(8243u, 0u, 1u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 26u)], Struct_1(u_input.a)), countOneBits(2214u), abs(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 26u)], global1[_wgslsmith_index_u32(72158u, 26u)])), false))), vec2<bool>(any(global3.yz), (max(13416u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]) ^ 4294967295u) < (abs(global0[_wgslsmith_index_u32(0u, 25u)]) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]), 25u)], 25u)] % 32u))), vec2<u32>(firstLeadingBit(33236u), ~(~global0[_wgslsmith_index_u32(u_input.a, 25u)])) | ((vec2<u32>(0u, u_input.a) & (vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 25u)]) % vec2<u32>(32u)))) & reverseBits(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23951u, 25u)], 25u)], 25u)], 25u)], u_input.a))), Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a, 26u)])), vec2<i32>(-59826i, global1[_wgslsmith_index_u32(9331u, 26u)])), vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], -1i)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a), vec3<u32>(81820u, u_input.a, 4294967295u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31596u, 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67221u, 25u)], 25u)]))), _wgslsmith_add_i32(_wgslsmith_div_i32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 26u)], -364i), abs(-1i)), Struct_1(global0[_wgslsmith_index_u32(1u, 25u)] << (_wgslsmith_mod_u32(4294967295u, 1u) % 32u))));
    global2 = array<vec4<f32>, 27>();
    let var_1 = arg_0.x;
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(min(-1212f, _wgslsmith_f_op_f32(311f - arg_0.x)));
    return ~(18138u | var_0.c.x) << (_wgslsmith_clamp_u32(u_input.a, abs(_wgslsmith_div_u32(min(var_0.d.b.x, u_input.a), 1u)), u_input.a) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(func_1(global2[_wgslsmith_index_u32(0u, 27u)]));
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(22247u, 9u)], ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], u_input.a), vec3<u32>(u_input.a, 105789u, u_input.a)) >> (~vec3<u32>(~28183u, ~52603u, ~1u) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstTrailingBit(4294967295u), min(67640u, min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], u_input.a))) >> (39581u % 32u), 26u)], Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)]));
    let var_2 = var_1.d;
    let var_3 = Struct_3(var_1.d, global3.yz, var_1.b.xy, Struct_2(-vec2<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 26u)], abs(var_1.c)), max(var_1.b, ~vec3<u32>(45482u, var_2.a, var_2.a)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_1.a.x, -10307i, -16933i, 44130i)), vec4<i32>(var_1.a.x, var_1.c, -5511i, -4482i) & vec4<i32>(global1[_wgslsmith_index_u32(28313u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], -11817i, var_1.c)), -vec4<i32>(10623i, var_1.c, var_1.a.x, 0i) ^ ~vec4<i32>(-1i, 18322i, 34048i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11445u, 25u)], 25u)], 26u)])), var_1.d));
    global4 = array<vec2<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_sub_u32(~min(abs(60048u), _wgslsmith_add_u32(var_3.c.x, var_1.b.x)), 6101u), ~vec4<u32>(~var_3.d.b.x, 1u, 0u, ~var_1.d.a) << (~vec4<u32>(51474u, ~0u, ~global0[_wgslsmith_index_u32(u_input.a, 25u)], 17024u) % vec4<u32>(32u)), var_3.d.b);
}

