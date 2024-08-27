struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-1380f, 296f, 470f, 1000f), vec4<f32>(797f, -450f, 1087f, -301f), vec4<f32>(-922f, 611f, 2661f, 600f), vec4<f32>(1383f, -515f, -907f, -1408f), vec4<f32>(-1000f, 252f, 915f, -1640f), vec4<f32>(-602f, 1239f, -1022f, -351f), vec4<f32>(-1000f, -356f, 936f, -1258f));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<u32>(82623u, 16126u, 0u));

var<private> global2: bool;

var<private> global3: array<u32, 20> = array<u32, 20>(19375u, 2067u, 52199u, 79370u, 6176u, 4294967295u, 39635u, 4294967295u, 24520u, 73408u, 34360u, 89477u, 36865u, 43114u, 0u, 1u, 22020u, 4294967295u, 4294967295u, 0u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = global1.b.x;
    let var_1 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x)), -243i, _wgslsmith_mult_i32(-1i, 0i), -1i) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -3286i), vec4<i32>(-29767i, u_input.a.x, 3439i, u_input.a.x)) | vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), select(vec4<i32>(21469i, u_input.a.x, 2147483647i, -29999i), -vec4<i32>(-1i, 1i, u_input.a.x, u_input.a.x), vec4<bool>(true, false, global1.a.x, true))), select(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(-2211i, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(firstLeadingBit(1i), u_input.a.x, 1i, ~1i)), vec4<i32>(-(~0i), i32(-1i) * -45590i, u_input.a.x << (1u % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -51334i), u_input.a.yx)), vec4<bool>(arg_0.a.a.x && all(arg_0.a.a), false, true, true)), vec4<i32>(~(-1i), _wgslsmith_sub_i32(abs(0i & u_input.a.x), reverseBits(-u_input.a.x)), 1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(45485i, -19139i)), abs(-20520i)), reverseBits(abs(u_input.a.x)))));
    let var_2 = vec2<bool>(!all(select(vec4<bool>(global1.a.x, false, arg_0.a.a.x, true), vec4<bool>(false, arg_0.a.a.x, true, arg_0.a.a.x), false)) != true, true);
    var var_3 = arg_0;
    let var_4 = var_1.zw;
    return Struct_2(var_3.a);
}

fn func_3() -> Struct_2 {
    global1 = func_2(Struct_2(Struct_1(!func_2(Struct_2(Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), global1.b)), global3[_wgslsmith_index_u32(1u, 20u)]).a.a, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4544u, global1.b.x), global1.b), _wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(32430u, 20u)], 4294967295u), global1.b)))), ~_wgslsmith_mod_u32(~(~0u), firstLeadingBit(1u))).a;
    let var_0 = global1.b & countOneBits(global1.b);
    var var_1 = Struct_3(vec3<bool>(select(!global1.a.x && (u_input.a.x >= u_input.a.x), global1.a.x, global1.a.x), !global1.a.x, all(global1.a)), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(false, global1.a.x, false), vec3<u32>(global3[_wgslsmith_index_u32(0u, 20u)], 14537u, var_0.x))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)] ^ 1u).a), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5953u, 32452u), vec2<u32>(1u, var_0.x)) & _wgslsmith_div_u32(4294967295u, 23300u), 4294967295u)).a, func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(true, global1.a.x, global1.a.x), vec3<u32>(global1.b.x, 11146u, 25038u))), firstLeadingBit(var_0.x)).a), 1u).a, ~(abs(global1.b) & countOneBits(vec3<u32>(4294967295u, var_0.x, var_0.x))));
    let var_2 = u_input.a.x;
    global3 = array<u32, 20>();
    return func_2(func_2(func_2(func_2(func_2(Struct_2(var_1.b), 1u), 4294967295u), ~4294967295u), _wgslsmith_mult_u32(~global1.b.x, countOneBits(~var_1.d.x))), global3[_wgslsmith_index_u32(51843u, 20u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(global1.a, Struct_1(func_3().a.a, global1.b), func_2(func_2(arg_0, 1u), ~(~51850u)).a, arg_0.a.b);
    let var_1 = Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(arg_0.a.a.x, arg_1.a.a.x, true), ~vec3<u32>(0u, var_0.b.b.x, 3141u))), reverseBits(1u)).a);
    let var_2 = var_0;
    global1 = Struct_1(vec3<bool>(arg_0.a.a.x, false, global1.a.x & false), func_2(func_2(arg_1, 4294967295u), abs(4294967295u)).a.b);
    var var_3 = arg_1;
    return Struct_4(var_2, arg_1, u_input.a.yz, _wgslsmith_add_u32(~global1.b.x, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(global3[_wgslsmith_index_u32(global1.b.x, 20u)], var_3.a.b.x, 1u, var_3.a.b.x), vec4<u32>(0u, var_1.a.b.x, arg_1.a.b.x, 0u), vec4<bool>(var_2.b.a.x, var_1.a.a.x, false, true)), min(~vec4<u32>(var_3.a.b.x, 85953u, 16469u, var_0.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 82563u, global1.b.x, var_1.a.b.x), vec4<u32>(63495u, var_0.d.x, var_0.c.b.x, var_3.a.b.x))))), var_2);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> vec2<i32> {
    let var_0 = reverseBits(-1i);
    var var_1 = Struct_4(Struct_3(!select(vec3<bool>(global1.a.x, arg_1.b.a.a.x, true), vec3<bool>(true, true, true), var_0 > 0i), func_4(Struct_2(Struct_1(global1.a, vec3<u32>(1u, global1.b.x, arg_1.d))), arg_1.b).b.a, func_4(arg_1.b, func_2(arg_1.b, ~arg_1.a.c.b.x)).b.a, ~select(arg_1.a.b.b, global1.b, global1.a)), Struct_2(func_4(Struct_2(func_3().a), Struct_2(func_2(arg_1.b, 4294967295u).a)).b.a), _wgslsmith_sub_vec2_i32(arg_1.c, -vec2<i32>(var_0, var_0 & 27431i)), abs(global1.b.x), func_4(func_3(), Struct_2(func_4(arg_1.b, Struct_2(Struct_1(global1.a, vec3<u32>(global1.b.x, global3[_wgslsmith_index_u32(15903u, 20u)], arg_1.e.d.x)))).a.b)).e);
    var var_2 = vec4<u32>(func_3().a.b.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(3360u, 29011u), 20u)] ^ firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, arg_1.b.a.b.x, 12329u, arg_1.d), vec4<u32>(arg_1.b.a.b.x, global3[_wgslsmith_index_u32(4294967295u, 20u)], var_1.a.b.b.x, global1.b.x)) & ~arg_1.b.a.b.x), ~(~abs(func_4(Struct_2(Struct_1(vec3<bool>(arg_1.e.b.a.x, true, true), vec3<u32>(arg_1.d, 1u, global1.b.x))), var_1.b).e.d.x)), global1.b.x);
    let var_3 = 10832u;
    var var_4 = Struct_4(Struct_3(global1.a, func_3().a, func_4(arg_1.b, func_3()).e.c, arg_1.e.d), func_4(Struct_2(var_1.b.a), var_1.b).b, ~(-(~vec2<i32>(var_1.c.x, arg_0.x))), countOneBits(30235u ^ var_3) & func_3().a.b.x, Struct_3(select(arg_1.b.a.a, !vec3<bool>(arg_1.a.a.x, true, var_1.e.b.a.x), var_1.e.c.a), Struct_1(select(var_1.b.a.a, !vec3<bool>(false, true, global1.a.x), all(vec4<bool>(false, false, global1.a.x, true))), ~global1.b), Struct_1(global1.a, vec3<u32>(4294967295u >> (1u % 32u), select(35286u, 4294967295u, false), _wgslsmith_sub_u32(27448u, arg_1.b.a.b.x))), max(_wgslsmith_mod_vec3_u32(var_1.b.a.b, firstLeadingBit(vec3<u32>(global1.b.x, 7115u, 0u))), arg_1.b.a.b)));
    return arg_1.c;
}

fn func_1() -> f32 {
    global0 = array<vec4<f32>, 7>();
    let var_0 = func_5(vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(-10855i, u_input.a.x, u_input.a.x, -29049i)), 39293i), func_4(func_2(Struct_2(Struct_1(global1.a, global1.b)), global1.b.x << (global1.b.x % 32u)), func_3())) >> (abs(_wgslsmith_clamp_vec2_u32(global1.b.xx, ~(~vec2<u32>(1u, 1u)), global1.b.xz)) % vec2<u32>(32u));
    global3 = array<u32, 20>();
    let var_1 = Struct_4(func_4(func_3(), func_2(func_2(func_2(Struct_2(Struct_1(global1.a, vec3<u32>(global1.b.x, 52746u, 4294967295u))), global1.b.x), ~0u), 1u)).a, Struct_2(func_3().a), abs(u_input.a.xy), 58370u & _wgslsmith_div_u32(90496u, global3[_wgslsmith_index_u32(~func_4(Struct_2(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.b)), Struct_2(Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), vec3<u32>(59029u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 29306u)))).b.a.b.x, 20u)]), Struct_3(vec3<bool>(true, u_input.a.x > ~u_input.a.x, true), Struct_1(global1.a, ~(global1.b | global1.b)), Struct_1(vec3<bool>(true, true, false), ~max(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(37735u, 20u)]), global1.b)), _wgslsmith_div_vec3_u32(min(global1.b, global1.b), countOneBits(vec3<u32>(14683u, 79627u, global3[_wgslsmith_index_u32(global1.b.x, 20u)])) | _wgslsmith_div_vec3_u32(global1.b, vec3<u32>(1u, global3[_wgslsmith_index_u32(34624u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)])))));
    var var_2 = ~449u;
    return -1000f;
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    var var_0 = -(firstLeadingBit(-_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(arg_1.c.x, arg_1.c.x, -2147483647i))) ^ u_input.a);
    let var_1 = Struct_4(Struct_3(global1.a, arg_1.a.b, Struct_1(global1.a, _wgslsmith_add_vec3_u32(vec3<u32>(39634u, 6107u, 1642u), arg_1.e.b.b & vec3<u32>(arg_2, 25346u, global1.b.x))), global1.b), Struct_2(arg_1.a.b), ~abs(_wgslsmith_add_vec2_i32(vec2<i32>(-76094i, -42046i), -vec2<i32>(1i, arg_1.c.x))), _wgslsmith_dot_vec3_u32(func_4(Struct_2(arg_1.b.a), arg_1.b).a.b.b, vec3<u32>(1u, ~4294967295u, abs(_wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(0u, 68405u, 0u))))), func_4(arg_1.b, arg_1.b).a);
    var var_2 = func_3().a.a.xx;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-349f)), _wgslsmith_div_f32(-1510f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -700f))));
    var_2 = arg_1.e.a.xy;
    return func_2(Struct_2(Struct_1(vec3<bool>(true, arg_1.b.a.a.x & arg_1.b.a.a.x, arg_1.a.c.a.x), ~vec3<u32>(arg_2, 1u, global1.b.x) >> (vec3<u32>(1u, 1u, var_1.d) % vec3<u32>(32u)))), global3[_wgslsmith_index_u32(var_1.e.d.x, 20u)]).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())))), Struct_4(func_4(func_2(Struct_2(Struct_1(global1.a, global1.b)), 4294967295u), func_4(func_4(Struct_2(Struct_1(global1.a, global1.b)), Struct_2(Struct_1(global1.a, vec3<u32>(1u, global1.b.x, global3[_wgslsmith_index_u32(global1.b.x, 20u)])))).b, func_3()).b).a, func_4(func_2(Struct_2(Struct_1(vec3<bool>(false, global1.a.x, true), global1.b)), global1.b.x >> (1u % 32u)), Struct_2(func_3().a)).b, vec2<i32>(func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 11187i)), Struct_4(Struct_3(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), Struct_1(global1.a, global1.b), Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), global1.b), global1.b), Struct_2(Struct_1(global1.a, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 20u)], 20u)], global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(global1.b.x, 20u)]))), u_input.a.zy, 1u, Struct_3(global1.a, Struct_1(vec3<bool>(true, global1.a.x, true), global1.b), Struct_1(global1.a, global1.b), global1.b))).x, -34982i), 4294967295u, Struct_3(global1.a, func_2(func_4(Struct_2(Struct_1(global1.a, global1.b)), Struct_2(Struct_1(vec3<bool>(global1.a.x, global1.a.x, true), global1.b))).b, ~22161u).a, func_2(Struct_2(Struct_1(global1.a, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 20u)], 20u)], 1u, 0u))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(54389u, 20u)], 20u)], 20u)]).a, select(vec3<u32>(global3[_wgslsmith_index_u32(global1.b.x, 20u)], global3[_wgslsmith_index_u32(54001u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]), func_2(Struct_2(Struct_1(global1.a, global1.b)), 4198u).a.b, select(global1.a, vec3<bool>(false, global1.a.x, false), global1.a.x)))), global1.b.x & 64339u);
    global1 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -850f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -111f)))))), Struct_4(Struct_3(vec3<bool>(select(global1.a.x, true, false), true & global1.a.x, !global1.a.x), func_2(Struct_2(Struct_1(global1.a, global1.b)), ~0u).a, func_2(func_4(Struct_2(Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), global1.b)), Struct_2(Struct_1(global1.a, vec3<u32>(global1.b.x, global3[_wgslsmith_index_u32(global1.b.x, 20u)], 29402u)))).b, _wgslsmith_div_u32(4294967295u, global1.b.x)).a, ~(~global1.b)), func_4(Struct_2(Struct_1(vec3<bool>(global1.a.x, false, true), vec3<u32>(11730u, global3[_wgslsmith_index_u32(1u, 20u)], 4294967295u))), func_3()).b, -(u_input.a.zx ^ ~vec2<i32>(-30187i, -1i)), max(global1.b.x, ~global1.b.x) | 42364u, Struct_3(global1.a, func_3().a, Struct_1(global1.a, vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 1u)), func_6(_wgslsmith_f_op_f32(step(-333f, -614f)), Struct_4(Struct_3(global1.a, Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.b), Struct_1(global1.a, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 4907u)), vec3<u32>(global3[_wgslsmith_index_u32(global1.b.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)])), Struct_2(Struct_1(global1.a, vec3<u32>(global3[_wgslsmith_index_u32(25362u, 20u)], 4294967295u, 1u))), u_input.a.xy, 31872u, Struct_3(vec3<bool>(false, false, global1.a.x), Struct_1(vec3<bool>(true, false, global1.a.x), global1.b), Struct_1(vec3<bool>(false, global1.a.x, false), global1.b), global1.b)), 30725u).b)), global3[_wgslsmith_index_u32(1u, 20u)]);
    global0 = array<vec4<f32>, 7>();
    global3 = array<u32, 20>();
    var var_0 = _wgslsmith_mult_u32(1u, ~4294967295u);
    let var_1 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-2276f, _wgslsmith_f_op_f32(-1f), -1370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-399f)), -1341f)) + -176f)), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(1i, u_input.a.x), u_input.a.x, 49060i));
}

