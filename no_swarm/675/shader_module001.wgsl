struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: vec3<i32>;

var<private> global3: array<u32, 15>;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<f32>(-957f, -1268f), vec2<u32>(0u, 45263u), 0u, vec2<f32>(1586f, 1224f), false), Struct_1(vec2<f32>(1347f, 1098f), vec2<u32>(4294967295u, 48219u), 11867u, vec2<f32>(797f, -827f), true), Struct_1(vec2<f32>(-504f, 1950f), vec2<u32>(13674u, 6574u), 19783u, vec2<f32>(634f, 1355f), true), vec2<u32>(6896u, 0u), Struct_2(Struct_1(vec2<f32>(-1630f, -1248f), vec2<u32>(9039u, 1u), 1u, vec2<f32>(1072f, 320f), false), Struct_1(vec2<f32>(1876f, -708f), vec2<u32>(4294967295u, 35531u), 0u, vec2<f32>(-1043f, 825f), true), vec3<f32>(-374f, -770f, 975f), 37103u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(1i), 0i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-34068i, global2.x, global2.x), vec3<i32>(global2.x, -2147483647i, 23266i)), vec3<i32>(2147483647i, global2.x, 2147483647i) << (u_input.a.yxx % vec3<u32>(32u))), abs(0i), global2.x), _wgslsmith_div_i32(1i, 1i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, global2.x, global2.x)), ~max(-40071i, 2147483647i))) & _wgslsmith_add_vec4_i32(~select(~vec4<i32>(4796i, 2147483647i, global2.x, 10195i), -vec4<i32>(global2.x, global2.x, global2.x, -1i), select(vec4<bool>(global4.a.e, false, arg_2.c.e, arg_2.a.e), vec4<bool>(true, true, global4.c.e, true), false)), firstTrailingBit(select(vec4<i32>(global2.x, global2.x, global2.x, global2.x), ~vec4<i32>(global2.x, global2.x, global2.x, 23890i), any(vec4<bool>(global4.e.b.e, global4.e.b.e, global4.e.a.e, false)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-186f, 434f))), vec2<f32>(global4.a.d.x, -192f)), max(select(global0[_wgslsmith_index_u32(countOneBits(1847u), 2u)], ~global0[_wgslsmith_index_u32(arg_0, 2u)], vec2<bool>(true, true)), vec2<u32>(~arg_2.d.x, _wgslsmith_dot_vec3_u32(u_input.a.zzx, u_input.a.zyy))), firstTrailingBit(37250u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1650f, 938f) * global4.a.d)) - arg_2.e.b.d), false), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.e.a.a.x, arg_3))), select(vec2<u32>(~global3[_wgslsmith_index_u32(global4.c.b.x, 15u)], 30836u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.d.x, 1u), 2u)], select(select(vec2<bool>(arg_2.b.e, global4.c.e), vec2<bool>(false, arg_2.c.e), vec2<bool>(true, true)), select(vec2<bool>(global4.b.e, arg_2.a.e), vec2<bool>(false, arg_2.c.e), vec2<bool>(true, global4.b.e)), arg_2.e.b.a.x < global4.c.d.x)), arg_0, _wgslsmith_f_op_vec2_f32(min(arg_2.c.a, vec2<f32>(-1355f, arg_3))), true), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-908f)), _wgslsmith_f_op_f32(1028f - arg_3)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 199f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.d.x, global4.a.d.x)))), firstTrailingBit(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(73990u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global3[_wgslsmith_index_u32(arg_1, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)])))), arg_2.e.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3, 1012f), vec2<f32>(-462f, 178f))))), false), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, ~u_input.a.x), (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1[_wgslsmith_index_u32(0u, 9u)], u_input.a.ww) | firstTrailingBit(arg_2.a.b)) | global0[_wgslsmith_index_u32(4294967295u, 2u)]), arg_2.e);
    let var_2 = global4.e;
    var var_3 = vec2<i32>(i32(-1i) * -_wgslsmith_mod_i32(select(-5681i, var_0.x, true), _wgslsmith_sub_i32(global2.x, var_0.x)), -2147483647i);
    global4 = Struct_3(var_2.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1773f) * _wgslsmith_f_op_f32(-911f - -344f)), -120f), ~vec2<u32>(24997u, var_2.a.c) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(11752u, var_2.b.b.x), u_input.a.xz), 0u, vec2<f32>(_wgslsmith_f_op_f32(global4.b.a.x * global4.a.d.x), arg_3), true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.a.x, -940f)), abs(~vec2<u32>(52974u, arg_2.c.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(36807u, u_input.a.x, arg_2.b.b.x, 1u) | _wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global4.e.a.b.x, 15u)], 4294967295u, 0u, 0u), u_input.a), vec4<u32>(4294967295u, countOneBits(arg_2.b.b.x), ~34330u, ~1u)), _wgslsmith_f_op_vec2_f32(-global4.e.b.a), all(vec4<bool>(arg_1 <= arg_1, true, true, true))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(26359u, 2u)], reverseBits(vec2<u32>(3529u, arg_0))), vec2<u32>(136965u, u_input.a.x >> (arg_1 % 32u)), min(vec2<u32>(4294967295u, arg_2.a.c), vec2<u32>(global3[_wgslsmith_index_u32(arg_2.e.a.c, 15u)], 36978u)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_1, 0u))), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.a), ~u_input.a), 4294967295u)), arg_2.e);
    return !select(select(!select(vec4<bool>(var_1.b.e, var_2.a.e, var_1.b.e, arg_2.b.e), vec4<bool>(true, true, false, var_2.b.e), vec4<bool>(false, true, false, var_2.b.e)), !select(vec4<bool>(true, true, var_2.b.e, true), vec4<bool>(true, true, false, arg_2.c.e), vec4<bool>(global4.b.e, var_1.e.b.e, true, false)), vec4<bool>(any(vec4<bool>(var_2.b.e, true, true, var_1.b.e)), !global4.c.e, 1751u >= arg_1, var_1.a.e)), vec4<bool>(var_1.b.e, all(select(vec4<bool>(true, arg_2.e.a.e, false, true), vec4<bool>(false, true, true, var_2.a.e), var_1.b.e)), select(global4.e.b.e, !var_2.b.e, true), !(-2147483647i < var_3.x)), select(!(!vec4<bool>(true, var_2.b.e, true, false)), vec4<bool>(true, all(vec2<bool>(global4.b.e, false)), !global4.c.e, !var_1.c.e), !arg_2.e.b.e));
}

fn func_2() -> u32 {
    global3 = array<u32, 15>();
    var var_0 = Struct_4(global4.e.b, vec4<f32>(global4.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.e.a.d.x))), 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), 454f)), _wgslsmith_f_op_f32(global4.a.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1003f))));
    var var_1 = u_input.a.x >> (u_input.a.x % 32u);
    let var_2 = !any(func_3(u_input.a.x | 51386u, 8644u << (u_input.a.x % 32u), Struct_3(Struct_1(vec2<f32>(-702f, var_0.a.a.x), global4.c.b, 80089u, var_0.a.a, true), Struct_1(vec2<f32>(146f, -799f), global0[_wgslsmith_index_u32(20039u, 2u)], 27568u, var_0.a.d, false), var_0.a, firstTrailingBit(global4.c.b), Struct_2(var_0.a, Struct_1(var_0.b.wz, var_0.a.b, 1964u, var_0.a.a, true), var_0.b.zww, global3[_wgslsmith_index_u32(4294967295u, 15u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-434f + global4.a.d.x)))));
    global3 = array<u32, 15>();
    return ~(~u_input.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = ~(func_2() ^ min(~global4.d.x ^ global4.d.x, u_input.a.x));
    var var_1 = Struct_3(global4.c, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(global4.b.a)))))), vec2<u32>(var_0, ~global4.e.a.b.x & ~global4.b.c), ~(~0u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c.d), _wgslsmith_f_op_vec2_f32(global4.a.a + global4.b.d)))), all(vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.e.c.x, global4.e.b.a.x))), ~(~min(global4.a.b, vec2<u32>(global4.d.x, 0u))), 5284u, global4.a.a, abs(17031u) <= firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 4294967295u))), vec2<u32>(~43131u, 1u), Struct_2(global4.e.b, Struct_1(_wgslsmith_f_op_vec2_f32(-global4.b.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), u_input.a), 9u)], (global4.a.b.x | 41315u) ^ (global4.d.x ^ global3[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, global4.e.c.x))), select(false, 14425u < var_0, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.e.c.x * global4.a.d.x), global4.e.c.x, -700f)), reverseBits(~(~u_input.a.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.a)))), abs(~(~(~var_1.c.b))), var_1.d.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(146f, _wgslsmith_f_op_f32(857f * -252f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(353f)), -617f)), -1000f), all(vec3<bool>(!global4.b.e, true, true)) | global4.e.a.e);
    global4 = Struct_3(global4.b, global4.e.b, global4.a, global4.d, Struct_2(var_1.b, var_1.b, vec3<f32>(_wgslsmith_div_f32(-355f, _wgslsmith_f_op_f32(select(global4.b.a.x, 2485f, false))), 649f, var_2.a.x), 1u));
    var var_3 = vec4<i32>(~13320i, 1i, ~(~firstTrailingBit(global2.x)), -2147483647i);
    return Struct_3(Struct_1(var_2.d, _wgslsmith_add_vec2_u32(u_input.a.zz, var_2.b), ~(_wgslsmith_clamp_u32(2468u, 4800u, u_input.a.x) & (global3[_wgslsmith_index_u32(global4.d.x, 15u)] | global3[_wgslsmith_index_u32(global4.d.x, 15u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(168f, 415f), vec2<f32>(1659f, 405f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.d.x, global4.a.d.x), var_1.e.a.d)), var_1.e.c.zy))), !var_2.e), Struct_1(_wgslsmith_f_op_vec2_f32(var_2.d * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.c.a)))), countOneBits(vec2<u32>(global4.a.c, var_0 | u_input.a.x)), u_input.a.x ^ u_input.a.x, global4.e.a.a, _wgslsmith_add_i32(_wgslsmith_add_i32(global2.x, global2.x), 2147483647i >> (global3[_wgslsmith_index_u32(3695u, 15u)] % 32u)) > _wgslsmith_add_i32(1i, countOneBits(14853i))), Struct_1(var_2.d, var_2.b, var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.c.x, global4.b.d.x) + global4.b.a) * vec2<f32>(_wgslsmith_f_op_f32(-996f * var_2.d.x), -160f)), global4.b.e), ~max(~var_2.b, var_1.a.b), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1().e;
    var var_2 = ~firstLeadingBit(-(~(~vec4<i32>(-25748i, global2.x, global2.x, global2.x))));
    global3 = array<u32, 15>();
    global3 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 80920u);
}

