struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(0i, i32(-2147483648), 15009i)), Struct_1(vec3<i32>(99208i, 2147483647i, 67935i)), Struct_1(vec3<i32>(-33678i, -9853i, 536i)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(-13275i, -1i, 2147483647i)), Struct_1(vec3<i32>(10570i, -1i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 21137i)), Struct_1(vec3<i32>(30960i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(-33121i, 0i, 0i)), Struct_1(vec3<i32>(-1i, -140i, 72121i)), Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(-35934i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(-1i, 11228i, 1i)), Struct_1(vec3<i32>(-52832i, 59589i, 0i)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<i32>(16642i, 2147483647i, -23608i)), Struct_1(vec3<i32>(12286i, 0i, 9600i)), Struct_1(vec3<i32>(i32(-2147483648), -14014i, i32(-2147483648))), Struct_1(vec3<i32>(18864i, 20275i, i32(-2147483648))), Struct_1(vec3<i32>(3786i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(102575i, 1i, 7609i)), Struct_1(vec3<i32>(2147483647i, -72670i, i32(-2147483648))), Struct_1(vec3<i32>(-7824i, i32(-2147483648), 48900i)), Struct_1(vec3<i32>(-5301i, 1i, 62817i)), Struct_1(vec3<i32>(30921i, -44489i, 62189i)), Struct_1(vec3<i32>(1i, -1i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), 2126i, -1i)), Struct_1(vec3<i32>(0i, 15481i, i32(-2147483648))));

var<private> global2: vec4<f32> = vec4<f32>(-205f, 580f, -1899f, -1087f);

var<private> global3: i32 = 1i;

var<private> global4: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))))));
    let var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(4294967295u, firstLeadingBit(_wgslsmith_clamp_u32(arg_1.x, u_input.c, 0u)))), 28u)];
    var var_2 = global1[_wgslsmith_index_u32(u_input.e, 28u)];
    global1 = array<Struct_1, 28>();
    let var_3 = global2.zw;
    return var_2.a ^ var_1.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, arg_1), 28u)];
    global0 = Struct_1(_wgslsmith_div_vec3_i32(var_0.a, u_input.d.xxw));
    global0 = Struct_1(countOneBits(reverseBits(max(func_3(vec3<bool>(false, true, true), arg_0.xz), -vec3<i32>(-2147483647i, var_0.a.x, 50288i)))));
    global3 = _wgslsmith_clamp_i32(i32(-1i) * -1i, ~(i32(-1i) * -2147483647i), ~(-14462i));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(arg_2.x, global2.x), 1790f, arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - 201f), _wgslsmith_f_op_f32(global2.x + global2.x)), arg_2.x)))));
    return u_input.c;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(abs(1i), (arg_1.a.x & (~(-1i) >> (1u % 32u))) << (~_wgslsmith_sub_u32(~1842u, _wgslsmith_mod_u32(arg_0.x, 12891u)) % 32u));
    var var_1 = !select(select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), (i32(-1i) * -30749i) != var_0.x), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(global4[_wgslsmith_index_u32(u_input.c, 17u)]));
    var var_2 = _wgslsmith_f_op_f32(-global2.x);
    var var_3 = arg_1;
    var var_4 = select(select(!(!select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false), var_1.x)), select(vec2<bool>(u_input.c < 3209u, !var_1.x), !select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), false), vec2<bool>(true, true)), var_1.x), select(!(!vec2<bool>(var_1.x, true)), select(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(false, false)), vec2<bool>(true, true), var_1.x), select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), !vec2<bool>(false, var_1.x)), vec2<bool>(true, !var_1.x)), select(select(!vec2<bool>(false, var_1.x), vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x)), !(!vec2<bool>(true, var_1.x)), true)), !vec2<bool>(!(global2.x < 529f), !(!var_1.x)));
    return Struct_1(vec3<i32>(func_3(!select(vec3<bool>(false, var_1.x, var_4.x), vec3<bool>(var_1.x, var_4.x, false), vec3<bool>(var_4.x, false, false)), firstLeadingBit(vec2<u32>(1u, arg_0.x)) >> ((arg_0.yy ^ arg_0.yx) % vec2<u32>(32u))).x, _wgslsmith_mod_i32(-25771i, -33719i), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(min(1i, 1i), ~8248i, arg_1.a.x, 0i))));
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(select(u_input.d, vec4<i32>(33114i, u_input.d.x, 0i, u_input.d.x), false), -u_input.d), u_input.d, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(5510i, 2147483647i, global0.a.x, -1i)), u_input.d | vec4<i32>(-9264i, -8952i, u_input.d.x, u_input.b), abs(vec4<i32>(global0.a.x, global0.a.x, 32841i, 1i)))), u_input.d), -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 34372i, 22177i) & -u_input.d, u_input.d));
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global2.x)), 1705f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.x, global2.x))), global2.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 543f, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, -727f, global2.x), vec4<f32>(global2.x, 1946f, global2.x, global2.x), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -370f), _wgslsmith_f_op_f32(global2.x + global2.x))))));
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, -1i), vec3<i32>(-52932i, 58927i, 1i)) << (u_input.e % 32u), -41110i), -(vec3<i32>(global0.a.x, 19836i, u_input.b) << (vec3<u32>(24547u, 60180u, 4294967295u) % vec3<u32>(32u))) ^ (_wgslsmith_div_vec3_i32(u_input.d.www, vec3<i32>(u_input.d.x, 0i, global0.a.x)) ^ (u_input.d.zzx | vec3<i32>(global0.a.x, global0.a.x, global0.a.x)))));
    var var_1 = u_input.d;
    let var_2 = func_4(vec3<u32>(36486u, 1u, func_2(firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.e)), firstTrailingBit(u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -563f, global2.x)))), Struct_1(~u_input.d.xyx));
    return Struct_1(_wgslsmith_add_vec3_i32(u_input.d.zwx, -vec3<i32>(_wgslsmith_clamp_i32(-70853i, -2147483647i, u_input.d.x), global0.a.x >> (4294967295u % 32u), func_3(vec3<bool>(true, false, true), vec2<u32>(u_input.c, 1u)).x)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1703f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))), 1042f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -1076f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(403f, 315f, 1000f, -2523f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, 1510f, global2.x, -1302f)), all(vec2<bool>(false, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1467f, global2.x) - vec4<f32>(global2.x, -679f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 996f, global2.x))), all(vec3<bool>(true, true, true))))));
    global3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.yyy, _wgslsmith_mod_vec3_i32(arg_0.a, -arg_0.a) & -vec3<i32>(u_input.d.x, global0.a.x, u_input.b)), arg_0.a);
    let var_0 = func_1().a.x | (i32(-1i) * -(~func_3(vec3<bool>(false, false, true), vec2<u32>(16226u, u_input.e)).x));
    global1 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), 2503f, _wgslsmith_div_f32(1088f, global2.x)), _wgslsmith_f_op_vec3_f32(-global2.yzx))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(886f, global2.x)), global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(927f)), 1291f, _wgslsmith_f_op_f32(round(-804f))))));
    return global1[_wgslsmith_index_u32(~max(abs(~11538u >> (~4294967295u % 32u)), u_input.c), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), _wgslsmith_add_i32(~(~firstLeadingBit(-1i)), global0.a.x));
    global2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, global2.x, global2.x, global2.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1280f, -166f, 191f, 244f)) - vec4<f32>(-732f, -890f, -841f, -1000f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, 2992f, global2.x, global2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, 1243f, global2.x, -2364f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, global2.x, 1619f, global2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1089f, -764f, -779f))))));
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f)), global2.x, _wgslsmith_f_op_f32(global2.x + 1f))))));
    global3 = global0.a.x;
    let var_1 = Struct_1(select(global0.a | func_1().a, -func_3(vec3<bool>(true, true, true), ~vec2<u32>(471u, 36431u)), select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.e < u_input.c, true), true)));
    let var_2 = vec3<f32>(global2.x, -1864f, _wgslsmith_f_op_f32(-global2.x));
    global3 = -(~u_input.d.x);
    let var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x < _wgslsmith_f_op_f32(-global2.x), (global2.x < var_2.x) & false), !(global0.a.x < -36627i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, -140f, global2.x, 887f)))), ~_wgslsmith_sub_vec4_u32(reverseBits(countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.e, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.c, u_input.c), select(vec4<u32>(1u, 37744u, u_input.c, 43619u), vec4<u32>(10464u, 32630u, 53746u, u_input.e), vec4<bool>(false, false, false, var_3.x)), ~vec4<u32>(91881u, 2490u, u_input.c, u_input.c))), _wgslsmith_add_vec3_i32(vec3<i32>(8383i, -countOneBits(-12894i), 18869i), select(vec3<i32>(max(global0.a.x, global0.a.x), -1i << (u_input.c % 32u), -var_0.a.x), -vec3<i32>(1i, -1i, 27697i), vec3<bool>(var_3.x, all(vec2<bool>(var_3.x, true)), all(vec2<bool>(var_3.x, false))))), u_input.d);
}

