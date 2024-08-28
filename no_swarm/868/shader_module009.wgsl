struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 0u;

var<private> global2: vec4<f32> = vec4<f32>(1165f, -580f, -1246f, -751f);

var<private> global3: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    global1 = arg_0.x;
    var var_0 = ~64488u;
    let var_1 = -1440f;
    var var_2 = 120f;
    let var_3 = vec4<f32>(global2.x, -716f, _wgslsmith_f_op_f32(select(1332f, _wgslsmith_f_op_f32(global2.x - global3.x), !all(arg_1.b.ww))), _wgslsmith_f_op_f32(-2285f - var_1));
    return global3.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    global0 = !select((2147483647i <= reverseBits(u_input.c.x)) & false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false))), true);
    global1 = ~abs(~arg_2.a.x & _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.x, 8667u), _wgslsmith_sub_u32(35239u, arg_2.a.x)));
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1112f, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_div_vec4_f32(vec4<f32>(489f, global2.x, arg_2.e.x, 554f), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, arg_2.c.x, 442f, -170f), vec4<f32>(-571f, global2.x, 852f, 791f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1772f, arg_2.e.x, 1304f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b.x + 374f))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(-1753f, global2.x)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(-2421f)), -269f, _wgslsmith_f_op_f32(-global2.x))))), true));
    let var_0 = countOneBits(arg_0.x);
    return _wgslsmith_f_op_vec3_f32(step(global2.xxy, arg_2.c));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_5(2147483647i);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u ^ arg_3.d.x, 60092u, arg_2.a.x << (89425u % 32u)), ~vec3<u32>(_wgslsmith_div_u32(arg_3.a.x, 52363u), 0u, 1u)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.e.x * -879f), _wgslsmith_f_op_f32(func_1(vec2<u32>(arg_3.a.x, arg_2.a.x), Struct_2(920f, vec4<bool>(false, false, false, false), 404f), 12947i))))), arg_3.e, ~(~(arg_2.d | arg_2.a.yy)), arg_3.e);
    let var_2 = ~arg_2.a.x;
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(471f, var_1.e.x, _wgslsmith_f_op_f32(func_1(vec2<u32>(0u, 4294967295u), Struct_2(arg_2.c.x, vec4<bool>(arg_1, true, arg_1, arg_1), 529f), 11413i))))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.x, _wgslsmith_f_op_f32(arg_3.b.x - 615f), 1893f)))), select(select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), true), vec2<bool>(true, arg_1), vec2<bool>(true, true)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), arg_1), vec2<bool>(select(all(vec2<bool>(arg_1, true)), !arg_1, arg_1), arg_1), !(arg_1 || all(vec3<bool>(true, false, arg_1)))));
    global0 = !all(vec4<bool>((arg_3.d.x >= 2621u) != true, var_3.b.x, false, true));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(select(select(vec4<i32>(u_input.c.x, -1i, var_0.a, 39301i), vec4<i32>(1i, arg_0, -2147483647i, arg_0), vec4<bool>(var_3.b.x, false, var_3.b.x, var_3.b.x)), vec4<i32>(-33738i, u_input.c.x, arg_0, u_input.e), all(var_3.b))), abs(min(~vec4<i32>(var_0.a, u_input.a, var_0.a, arg_0), -vec4<i32>(-1i, var_0.a, 24988i, u_input.c.x)))), _wgslsmith_div_vec4_i32(vec4<i32>(select(_wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.c.yx), ~arg_0, true), arg_0, -2147483647i, 1i), firstLeadingBit(firstLeadingBit(vec4<i32>(-2468i, 2147483647i, arg_0, u_input.e) >> (vec4<u32>(arg_3.d.x, 1u, arg_3.d.x, 41895u) % vec4<u32>(32u))))));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = vec3<i32>(u_input.a, ~(-_wgslsmith_add_i32(u_input.e, u_input.e)), -7540i);
    var var_1 = reverseBits(_wgslsmith_mod_vec4_i32(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, var_0.x, u_input.b, u_input.c.x), vec4<i32>(var_0.x, u_input.b, -1i, u_input.e))), vec4<i32>(u_input.a, 11641i, 27902i, -62885i)));
    var_1 = -func_4(2147483647i, true, Struct_1(vec3<u32>(29380u, reverseBits(1541u), 0u), vec2<f32>(_wgslsmith_f_op_f32(global2.x + -1000f), -1012f), _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, 1u, 0u), _wgslsmith_f_op_f32(-global2.x), Struct_1(vec3<u32>(34005u, 34710u, 4294967295u), global2.zy, vec3<f32>(-761f, -755f, global3.x), vec2<u32>(11865u, 1u), vec3<f32>(global3.x, 273f, -453f)))), _wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, 28821u), vec2<u32>(1u, 5190u)), firstLeadingBit(vec2<u32>(1u, 29346u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global3.x, global2.x) - _wgslsmith_f_op_vec3_f32(-global3.xwz))), Struct_1(~(~vec3<u32>(59296u, 24757u, 4294967295u)), global2.zy, vec3<f32>(global3.x, -1000f, _wgslsmith_f_op_f32(global2.x + global2.x)), vec2<u32>(17705u, reverseBits(70919u)), global3.wyz));
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(0i, min(-(var_1.x | 63904i), abs(_wgslsmith_div_i32(var_1.x, var_1.x))), u_input.c.x, u_input.a), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(u_input.a, 9780i)), abs(1i)), 1i, ((u_input.d ^ 30113i) >> (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)) >> (38616u % 32u), u_input.a));
    var var_2 = !arg_0.b.x;
    return vec2<f32>(_wgslsmith_div_f32(-783f, _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.xxz;
    var_0 = global3.wzw;
    var var_1 = countOneBits(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, 21445u, 49308u, 35209u), vec4<u32>(36910u, 1u, 4294967295u, 37267u), vec4<bool>(true, true, true, true)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(60760u, 129088u, 1u, 0u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(33148u, 0u, 4294967295u, 4294967295u))));
    global1 = ~79320u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_1(select(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 0u), true), Struct_2(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), var_0.x), -24038i))), -276f);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-1000f + global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -686f) * global2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-290f, -438f))))), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(-1943f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_0.x >= var_0.x), 1313f))), vec2<bool>(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x)))) <= -1315f)));
    var var_4 = reverseBits(u_input.e);
    let var_5 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(687f)))), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 122f)) - _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 21799u)), Struct_2(var_3.x, vec4<bool>(false, true, true, true), global2.x), firstLeadingBit(1i))))), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), false), true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(select(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), u_input.e, true))), max(-func_4(abs(u_input.e), !var_5.b.x, Struct_1(vec3<u32>(0u, 1u, 1u), var_5.a.zy, vec3<f32>(2028f, 628f, global3.x), vec2<u32>(33762u, 1996u), vec3<f32>(var_3.x, -1042f, -294f)), Struct_1(vec3<u32>(80338u, 1u, 22119u), var_0.xz, global3.wwz, vec2<u32>(1u, 73031u), vec3<f32>(438f, -231f, var_5.a.x))), ~vec4<i32>(u_input.e, u_input.a, 37444i, 1i)), vec2<u32>(~(~(~4294967295u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 23349u, 0u, 13032u)), abs(vec4<u32>(1u, 1u, 4294967295u, 29216u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), abs(_wgslsmith_div_vec2_u32(select(select(vec2<u32>(1u, 1u), vec2<u32>(16178u, 4523u), false), _wgslsmith_mod_vec2_u32(vec2<u32>(43788u, 16658u), vec2<u32>(4294967295u, 49835u)), true), vec2<u32>(1u, _wgslsmith_add_u32(79546u, 0u)))));
}

