struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<bool>(false, true), 0i, 79541u, vec2<i32>(i32(-2147483648), 9541i)), Struct_1(vec2<bool>(false, true), -12797i, 7670u, vec2<i32>(43630i, 1i)), Struct_1(vec2<bool>(true, true), 79769i, 47878u, vec2<i32>(15215i, 16037i)), Struct_1(vec2<bool>(false, true), 2147483647i, 23917u, vec2<i32>(1456i, -73572i)), Struct_1(vec2<bool>(true, true), 51002i, 4294967295u, vec2<i32>(2147483647i, -48525i)), Struct_1(vec2<bool>(true, true), 40478i, 4294967295u, vec2<i32>(i32(-2147483648), -15668i)), Struct_1(vec2<bool>(false, true), -18697i, 39933u, vec2<i32>(-1i, 1i)), Struct_1(vec2<bool>(false, true), 24782i, 0u, vec2<i32>(-1208i, 17938i)), Struct_1(vec2<bool>(true, false), 17842i, 7029u, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), -89415i, 4294967295u, vec2<i32>(-32161i, 2147483647i)), Struct_1(vec2<bool>(true, true), i32(-2147483648), 18750u, vec2<i32>(23178i, 24494i)), Struct_1(vec2<bool>(false, true), 2147483647i, 115740u, vec2<i32>(0i, -28073i)), Struct_1(vec2<bool>(true, false), 39137i, 62264u, vec2<i32>(10500i, 0i)));

var<private> global1: array<Struct_1, 14>;

var<private> global2: f32;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global4: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xxw, vec3<u32>(u_input.b, 59427u, 98523u)), firstLeadingBit(u_input.d)), _wgslsmith_add_u32(u_input.c.x, u_input.a.x)) | 30645u;
    var var_1 = u_input.d.x;
    let var_2 = u_input.e;
    var var_3 = !global3.x;
    let var_4 = (select(select(-vec4<i32>(u_input.e.x, 4545i, u_input.e.x, 19407i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, var_2.x, 1i), vec4<i32>(var_2.x, var_2.x, u_input.e.x, var_2.x)), 40254u == u_input.b), abs(vec4<i32>(u_input.e.x, -2147483647i, -1i, -58041i) >> (u_input.a % vec4<u32>(32u))), global3.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(u_input.e.x), -85583i, select(1i, var_2.x, global3.x), -1i), abs(firstTrailingBit(vec4<i32>(-2147483647i, -49776i, 7151i, 1i))))) << (u_input.a % vec4<u32>(32u));
    return vec3<bool>(global3.x, all(!vec4<bool>(true, !global3.x, true, global3.x)), all(global3.wy));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = (global3.x && any(select(vec3<bool>(global3.x, arg_2.a.x, arg_2.a.x), vec3<bool>(true, arg_2.a.x, false), func_3(vec4<f32>(-1161f, -1000f, -557f, 830f))))) && !(!any(global3.xxz));
    global3 = select(select(vec4<bool>(true, arg_0.x, !all(global3.ywz), arg_0.x), vec4<bool>(arg_0.x, !(!var_0), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, -269f, -832f, -1000f))).x, !global3.x), !(!(4294967295u >= u_input.c.x))), select(vec4<bool>(true, !all(global3.wxx), !all(arg_2.a), select(false, func_3(vec4<f32>(-1430f, 492f, 1638f, 1810f)).x, true)), select(select(!vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), !vec4<bool>(var_0, arg_0.x, true, var_0), true), !(!vec4<bool>(true, false, global3.x, arg_2.a.x)), select(vec4<bool>(global3.x, false, arg_2.a.x, global3.x), vec4<bool>(true, false, global3.x, arg_2.a.x), any(global3.xy))), select(arg_0.x, global3.x, var_0 != !var_0)), global3.x);
    let var_1 = true;
    global4 = any(!(!(!select(vec4<bool>(var_1, true, var_0, arg_0.x), vec4<bool>(arg_0.x, var_0, arg_0.x, false), vec4<bool>(global3.x, var_1, global3.x, var_1)))));
    let var_2 = arg_0.x;
    return _wgslsmith_sub_u32(~u_input.a.x, reverseBits(77669u & arg_2.c));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-994f, -1353f, -195f) + _wgslsmith_div_vec3_f32(vec3<f32>(415f, 1218f, 854f), vec3<f32>(-746f, -1409f, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(316f + 1359f), _wgslsmith_f_op_f32(f32(-1f) * -509f), -805f)) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(901f)), _wgslsmith_f_op_f32(step(-263f, -2288f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(-238f, _wgslsmith_f_op_f32(1641f * -237f), _wgslsmith_f_op_f32(abs(360f))))));
    global4 = all(arg_0.xwz);
    let var_1 = vec2<bool>(false, false);
    global3 = vec4<bool>(select(_wgslsmith_f_op_f32(-var_0.x) != -271f, all(!(!vec2<bool>(global3.x, var_1.x))), all(select(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(var_1.x, global3.x, true), global3.x), func_3(vec4<f32>(var_0.x, 508f, 1092f, 1232f)), vec3<bool>(var_1.x, global3.x, true)))), false, true, false | !arg_0.x);
    global0 = array<Struct_1, 13>();
    return Struct_1(select(func_3(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x))).xz, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1384f, var_0.x, var_0.x, 316f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1287f, -1877f, -650f, -688f) - vec4<f32>(var_0.x, 373f, -1311f, var_0.x)))).yz, var_1.x), 32178i, 4294967295u, u_input.e.yz);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -735f), _wgslsmith_f_op_f32(-874f - -765f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1447f, -1521f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1767f, -1085f))))), vec2<f32>(1f, 1f))));
    let var_1 = ~u_input.d.x;
    var var_2 = -(~(~(~_wgslsmith_mod_i32(-8535i, 12124i))));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b, 13u)];
    let var_4 = func_4(!select(vec4<bool>(true, global3.x | global3.x, var_3.c == var_3.c, true), !(!vec4<bool>(global3.x, var_3.a.x, false, var_3.a.x)), true), _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(u_input.b), func_2(vec2<bool>(true, true), u_input.e.x, Struct_1(var_3.a, 62384i, var_3.c, u_input.e.xz))), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~u_input.d.x, _wgslsmith_mod_u32(0u, var_1)))));
    return abs(firstTrailingBit(-2147483647i) | firstLeadingBit(u_input.e.x));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = !(!vec4<bool>(true, arg_0.x != global3.x, true, true));
    var_0 = vec4<bool>(true, global3.x, (func_1() | func_4(!vec4<bool>(false, global3.x, arg_1.a.x, var_0.x), u_input.a.yz >> (vec2<u32>(arg_1.c, arg_1.c) % vec2<u32>(32u))).d.x) <= 2147483647i, arg_0.x);
    var var_1 = !(!vec2<bool>(arg_1.a.x, global3.x));
    let var_2 = -323f;
    global0 = array<Struct_1, 13>();
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1248f, 236f)), -363f, _wgslsmith_f_op_f32(floor(-772f)), 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, 1000f, -509f, 323f) * vec4<f32>(-1097f, -142f, 1529f, -490f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(254f, -2032f, 834f, -663f) + vec4<f32>(1484f, -173f, 2103f, 1923f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-864f, -1338f)), _wgslsmith_f_op_f32(-1f), 592f, _wgslsmith_div_f32(-934f, _wgslsmith_f_op_f32(trunc(1949f)))))));
    var var_1 = -395f;
    let var_2 = Struct_1(global3.wy, _wgslsmith_dot_vec2_i32(-u_input.e.yy << (vec2<u32>(4294967295u, ~4144u) % vec2<u32>(32u)), u_input.e.xy), _wgslsmith_sub_u32(func_5(vec2<bool>(any(global3.xzw), global3.x && false), Struct_1(!global3.wx, func_1(), 0u, max(u_input.e.xx, u_input.e.xz))), ~(~1u)), reverseBits(u_input.e.xz));
    let var_3 = _wgslsmith_clamp_vec3_u32(countOneBits(u_input.a.yyy), vec3<u32>(firstTrailingBit(~u_input.a.x ^ _wgslsmith_add_u32(71120u, 47735u)), firstTrailingBit(~abs(4294967295u)), _wgslsmith_clamp_u32(4294967295u, 1u, min(_wgslsmith_sub_u32(7071u, var_2.c), var_2.c))), firstLeadingBit(vec3<u32>(func_4(!vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x), ~u_input.c.yy).c, firstTrailingBit(u_input.d.x), var_2.c)));
    let var_4 = _wgslsmith_mult_u32(var_2.c, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, reverseBits(var_2.c ^ 1u)), _wgslsmith_mult_u32(~1u, var_3.x)));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(455f + var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))), -1795f, _wgslsmith_f_op_f32(min(var_0.x, -104f)));
}

