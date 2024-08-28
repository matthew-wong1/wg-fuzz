struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 5316u, 29790u, 9466u, 1544u, 19396u, 683u);

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, false, true, false, true, true, false, false, false, true, true, true, false, true, false, true, false, true);

var<private> global2: Struct_4;

var<private> global3: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(select(true, select(_wgslsmith_sub_i32(-11591i, global2.b.x), 3844i, true) < _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.b.yz, global2.b.xy), global2.b.x), u_input.b.x >= ~u_input.a.x), -(~(~vec3<i32>(global2.b.x, -2147483647i, 1468i))));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(~1u, 19u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, 1000f, -1614f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -789f, -1014f), vec3<f32>(-365f, -518f, -1000f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(-697f)), _wgslsmith_f_op_f32(abs(960f)), _wgslsmith_f_op_f32(-640f - 631f))))), global2.b.zx, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, global2.b.x, var_0.b.x, -2147483647i), vec4<i32>(0i, var_0.b.x, var_0.b.x, var_0.b.x)), ~var_0.b.x, select(global2.b.x, ~2147483647i, true), 1i) | ~vec4<i32>(var_0.b.x, var_0.b.x, 3827i, _wgslsmith_dot_vec4_i32(vec4<i32>(15106i, -26651i, 1635i, -2147483647i), vec4<i32>(1i, var_0.b.x, var_0.b.x, 31752i))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), var_1.b.x, select(!any(vec4<bool>(var_1.a, global2.a, var_1.a, global2.a)) && true, all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(var_1.a, global2.a), false)), true)));
    global1 = array<bool, 19>();
    global3 = 2147483647i;
    return vec2<bool>(all(select(!vec2<bool>(var_0.a, false), vec2<bool>(true, false), select(vec2<bool>(var_1.a, global1[_wgslsmith_index_u32(u_input.c.x, 19u)]), !vec2<bool>(true, var_1.a), vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 19u)])))), true && !(all(vec3<bool>(true, false, false)) & !global1[_wgslsmith_index_u32(u_input.a.x, 19u)]));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_2 {
    global3 = global2.b.x;
    var var_0 = select(!select(vec2<bool>(select(false, true, false), global1[_wgslsmith_index_u32(4294967295u, 19u)]), select(select(vec2<bool>(global2.a, global2.a), vec2<bool>(false, false), false), vec2<bool>(true, true), !global1[_wgslsmith_index_u32(arg_1.x, 19u)]), true), !select(vec2<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(global2.a, global2.a), false), !vec2<bool>(global2.a, true), !vec2<bool>(global2.a, global2.a))), !select(!vec2<bool>(global2.a, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 19u)]), !func_3()));
    var_0 = !vec2<bool>(~global2.b.x < -1i, _wgslsmith_f_op_f32(select(arg_0.x, -1076f, all(vec4<bool>(var_0.x, true, false, var_0.x)))) != _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, -811f), 545f)));
    var_0 = vec2<bool>(true == var_0.x, global2.a != true);
    var var_1 = Struct_4(var_0.x, max(global2.b >> (countOneBits(arg_1) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -31712i, abs(1i), _wgslsmith_dot_vec2_i32(global2.b.yx, global2.b.zy))) ^ global2.b);
    return Struct_2(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(abs(global0[_wgslsmith_index_u32(~0u, 7u)]), ~_wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.x ^ 0u, abs(global0[_wgslsmith_index_u32(arg_1.x, 7u)])), global0[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_1.b.x << (global0[_wgslsmith_index_u32(2692u, 7u)] % 32u), firstTrailingBit(-2147483647i)), 2147483647i, var_1.b.x & var_1.b.x), vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(1i, var_1.b.x)), -(~1i), _wgslsmith_mod_i32(~global2.b.x, max(global2.b.x, global2.b.x)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.x, 1302f, global2.a)))) != arg_0.x, _wgslsmith_div_vec3_f32(vec3<f32>(-991f, _wgslsmith_f_op_f32(arg_0.x * 1000f), _wgslsmith_div_f32(-1000f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-673f, -303f, -327f), vec3<f32>(-1307f, 732f, -1000f), false)))), vec2<i32>(-2147483647i, 3821i), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, var_1.b.x, 1i, -2147483647i), ~max(vec4<i32>(-25059i, 19476i, var_1.b.x, -1i), vec4<i32>(global2.b.x, var_1.b.x, global2.b.x, global2.b.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = (func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-655f, -198f)))), firstTrailingBit(abs(vec3<u32>(global0[_wgslsmith_index_u32(arg_1.a.x, 7u)], 41920u, u_input.b.x)))).a.x << (~arg_1.a.x % 32u)) > ~_wgslsmith_dot_vec4_u32(arg_0, arg_0);
    global1 = array<bool, 19>();
    global3 = -2147483647i ^ global2.b.x;
    return Struct_3(vec3<u32>(51598u, _wgslsmith_sub_u32(arg_1.a.x, 4294967295u), countOneBits(1u)) | ~(arg_0.wxw ^ ~vec3<u32>(4294967295u, 1u, 0u)), global2.b.x, any(!(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1.a.x, 19u)], global2.a), vec3<bool>(arg_1.c.a, true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(14771u, 19u)], global2.a)))), arg_1);
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 7>();
    let var_0 = func_4(vec4<u32>(~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 7u)]), ~_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(~u_input.b.x, 7u)]), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1390u ^ (1u | u_input.c.x), 7u)], 7u)], firstTrailingBit(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), 7u)])), u_input.a.x | 1u), func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(402f, -1000f))))))), vec3<u32>(16409u ^ _wgslsmith_mod_u32(u_input.a.x, 1u), ~(~global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), u_input.a.x)));
    let var_1 = func_4(vec4<u32>(~var_0.a.x, u_input.c.x, 4294967295u, ~4294967295u), var_0.d);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, var_1.d.c.b.x)), ~var_0.d.a).a.x;
    var_2 = countOneBits(~u_input.c.x);
    return var_1.d.c;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    global2 = Struct_4(global2.a, func_1().d.www);
    let var_0 = -2147483647i;
    global0 = array<u32, 7>();
    global3 = arg_3.c.c.x;
    var var_1 = Struct_3(arg_3.a, _wgslsmith_clamp_i32(-abs(arg_3.b), -(max(-23586i, arg_0.c.x) & arg_3.c.d.x), arg_3.c.d.x), ~firstLeadingBit(~4294967295u) < u_input.a.x, Struct_2(~(~vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 4294967295u)), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(arg_2), reverseBits(0i), arg_0.d.x), arg_0.d.wzy), func_2(vec2<f32>(_wgslsmith_div_f32(-1769f, -1197f), 1305f), firstLeadingBit(vec3<u32>(arg_3.a.x, global0[_wgslsmith_index_u32(arg_3.a.x, 7u)], 4294967295u) & arg_3.a)).c));
    return var_1.d.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(41919u, 7u)], 19u)] & any(select(!(!vec2<bool>(arg_1.a, arg_1.a)), vec2<bool>(func_4(vec4<u32>(4294967295u, 21547u, 34479u, u_input.a.x), Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x, 4294967295u), 2147483647i, arg_0)).d.c.a, true), vec2<bool>(func_4(vec4<u32>(u_input.c.x, 1u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), Struct_2(vec3<u32>(48543u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), global2.b.x, arg_0)).d.c.a, global1[_wgslsmith_index_u32(~4294967295u, 19u)])));
    var_0 = arg_0.a;
    let var_1 = any(vec4<bool>(any(!select(vec4<bool>(global2.a, false, false, true), vec4<bool>(true, arg_1.a, arg_1.a, true), true)), false, true, !func_4(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 52367u, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.c.x), Struct_2(u_input.b, -2147483647i, Struct_1(true, arg_0.b, global2.b.zz, vec4<i32>(global2.b.x, arg_0.d.x, global2.b.x, arg_0.c.x)))).c));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    return _wgslsmith_mod_i32(34819i, arg_0.c.x ^ ((_wgslsmith_mod_i32(40301i, -2147483647i) & arg_0.c.x) ^ ~func_1().d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(reverseBits(~u_input.b) >> (~vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), func_6(func_5(func_1(), abs(u_input.b.x | 8942u), _wgslsmith_mult_i32(global2.b.x << (36790u % 32u), firstTrailingBit(0i)), Struct_2(~vec3<u32>(27406u, 16175u, u_input.b.x), global2.b.x << (4294967295u % 32u), func_2(vec2<f32>(-369f, -295f), u_input.b).c)), Struct_4(true, ~vec3<i32>(1i, global2.b.x, 2430i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !(~global0[_wgslsmith_index_u32(40368u, 7u)] >= _wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 0u)) == func_5(Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-223f, -698f, 494f))), vec2<i32>(2147483647i, global2.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, 0i, -6292i, -1i), vec4<i32>(global2.b.x, 1i, global2.b.x, global2.b.x))), func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 92280u, 14886u, 27775u), vec4<u32>(u_input.b.x, 43175u, 29703u, u_input.a.x)), func_2(vec2<f32>(114f, -573f), vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)]))).a.x, global2.b.x, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1885f, -275f) - vec2<f32>(-541f, 679f)), u_input.b << (u_input.b % vec3<u32>(32u)))).a, func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2145f)) + _wgslsmith_div_f32(165f, 908f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f - 1148f) - -542f)), firstLeadingBit(vec3<u32>(13755u, 1u ^ global0[_wgslsmith_index_u32(0u, 7u)], ~global0[_wgslsmith_index_u32(11879u, 7u)]))));
    var var_1 = abs(firstLeadingBit(~vec4<u32>(~u_input.c.x, var_0.d.a.x, ~u_input.a.x, ~u_input.c.x)));
    var_1 = max(countOneBits(select(select(~vec4<u32>(43014u, 7048u, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 86082u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(var_1.x, 7u)], 1u, var_1.x), vec4<u32>(17750u, global0[_wgslsmith_index_u32(7254u, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)], 4294967295u)), global1[_wgslsmith_index_u32(countOneBits(var_0.a.x), 19u)]), abs(~vec4<u32>(39433u, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x)), any(vec4<bool>(true, true, true, true)))), firstTrailingBit(~vec4<u32>(var_0.a.x, min(u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), 26326u << (var_1.x % 32u), ~4294967295u)));
    let var_2 = 38917i;
    var var_3 = Struct_4(var_0.c, vec3<i32>(-func_2(var_0.d.c.b.xy, var_0.d.a).c.c.x >> (0u % 32u), -39498i, -var_0.b));
    let var_4 = !(!(!vec3<bool>(false, global2.a, !global1[_wgslsmith_index_u32(u_input.c.x, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(var_0.d.c.d >> (vec4<u32>(4294967295u, _wgslsmith_sub_u32(var_1.x, u_input.a.x), 1u, var_1.x) % vec4<u32>(32u)), vec4<i32>(func_5(var_0.d.c, u_input.c.x >> (1u % 32u), global2.b.x, var_0.d).d.x, ~var_0.d.c.d.x, -67641i, _wgslsmith_add_i32(-var_0.b, 0i)), _wgslsmith_sub_vec4_i32(var_0.d.c.d, vec4<i32>(i32(-1i) * -9361i, var_3.b.x, -13784i, 19846i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1445f - _wgslsmith_f_op_f32(-1614f * var_0.d.c.b.x)), 936f, _wgslsmith_f_op_f32(var_0.d.c.b.x + _wgslsmith_div_f32(982f, var_0.d.c.b.x)))), 1i, 0u);
}

