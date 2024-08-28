struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -15422i, 2147483647i, 2147483647i);

var<private> global3: array<f32, 21> = array<f32, 21>(1165f, 810f, -2070f, 747f, -414f, -497f, 1463f, -747f, 1000f, -359f, 1096f, 1000f, 456f, 756f, 1277f, -1462f, 607f, -1000f, 520f, 1109f, 769f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, global2.x, -17777i, u_input.c), global0.c), global2.x, _wgslsmith_dot_vec3_i32(abs(global0.c.zzx), global0.c.zxx)), vec3<i32>(arg_0.a, -5896i, u_input.c)), arg_0.c.yzw);
    global3 = array<f32, 21>();
    let var_1 = -918f;
    global0 = Struct_1(_wgslsmith_sub_i32(~min(_wgslsmith_add_i32(u_input.c, global2.x), max(-38019i, -2147483647i)), ~firstTrailingBit(0i)), _wgslsmith_f_op_f32(-325f * global0.b), ~vec4<i32>(-global0.c.x, _wgslsmith_add_i32(global2.x, 1i) & ~global2.x, reverseBits(var_0.x), abs(_wgslsmith_mult_i32(35914i, 2904i))));
    var var_2 = arg_0.b;
    return _wgslsmith_add_i32(firstLeadingBit(countOneBits(_wgslsmith_add_i32(-global0.c.x, global0.c.x))), _wgslsmith_mod_i32(arg_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a, 1i, 984i), vec3<i32>(2147483647i, var_0.x, 19301i)), arg_0.c.xzz), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_0.x, -1i, arg_0.c.x)), ~vec3<i32>(var_0.x, 0i, 1i)))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -562f))), 2146f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.d | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.a, u_input.a)), 1u), abs(u_input.e)), 21u)]);
    let var_1 = Struct_1(-47245i & (func_3(Struct_1(arg_0, var_0.x, vec4<i32>(0i, u_input.b, -54053i, 1i))) << (u_input.d % 32u)), global0.b, (-vec4<i32>(36074i, 1i, arg_0, 2147483647i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.d, 80332u), vec4<u32>(u_input.a, 57810u, 81496u, u_input.e)) % vec4<u32>(32u))) >> (firstTrailingBit(~(vec4<u32>(1u, u_input.e, 26501u, 12155u) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u)));
    global3 = array<f32, 21>();
    global2 = vec4<i32>(1i, global2.x, i32(-1i) * -1i, -17141i);
    let var_2 = select(vec4<bool>(!select(var_0.x < global0.b, false, -155f >= var_1.b), !all(vec3<bool>(true, true, true)), !(true != any(vec2<bool>(false, arg_1))), var_1.b <= _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global0.b))), select(!vec4<bool>(true, false | arg_1, true, arg_1 || true), !vec4<bool>(true, any(vec4<bool>(arg_1, true, false, arg_1)), all(vec4<bool>(false, arg_1, false, true)), global3[_wgslsmith_index_u32(137605u, 21u)] > var_0.x), vec4<bool>(arg_1, false, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.e, 0u), vec4<u32>(u_input.e, 0u, u_input.d, u_input.d)), 21u)] < _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 21u)], -276f)), false)), true);
    return var_1;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = select(!select(!select(arg_1.yy, vec2<bool>(arg_1.x, false), arg_1.x), !select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), vec2<bool>(false, arg_1.x)), vec2<bool>(true, true)), !(!(!select(vec2<bool>(arg_1.x, true), vec2<bool>(false, false), arg_1.x))), select(arg_1.xz, !arg_1.zw, arg_1.yx));
    global2 = vec4<i32>(-(global2.x >> (u_input.a % 32u)), abs(abs(-arg_3.x)), func_3(arg_2), arg_2.a) << (~vec4<u32>(30097u, ~abs(4294967295u), u_input.d | ~u_input.d, reverseBits(_wgslsmith_mult_u32(30493u, u_input.d))) % vec4<u32>(32u));
    global2 = -vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, arg_0), global2.x) & (~17171i >> ((u_input.d >> (u_input.a % 32u)) % 32u)), -24724i, arg_0, 28846i);
    let var_2 = ~u_input.e;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = func_4(_wgslsmith_dot_vec4_i32(max(global0.c, ~vec4<i32>(-2147483647i, global2.x, -2147483647i, global2.x)), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(arg_0.c, vec4<i32>(u_input.c, global2.x, global0.c.x, 34904i))), vec4<bool>(all(vec3<bool>(true, true, true)), any(select(global1[_wgslsmith_index_u32(6495u, 23u)], vec3<bool>(false, false, true), all(vec2<bool>(false, false)))), false, false), arg_2, vec4<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.c.zx, vec2<i32>(u_input.c, global2.x)), arg_0.c.xx >> (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u))), 2147483647i << (min(u_input.d, _wgslsmith_mult_u32(u_input.a, 0u)) % 32u), ~26160i, 1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(311f))), _wgslsmith_f_op_f32(-1f)) - vec4<f32>(arg_1.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.e << (4294967295u % 32u)), 21u)], -534f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-2331f, arg_1.x))))))));
    var var_2 = global1[_wgslsmith_index_u32(u_input.d, 23u)];
    let var_3 = abs(vec4<i32>(0i, -_wgslsmith_dot_vec3_i32(arg_2.c.wzz, max(arg_0.c.yzx, vec3<i32>(arg_2.c.x, -21131i, 13464i))), -1i, _wgslsmith_add_i32(var_0.a, _wgslsmith_mod_i32(-41839i, firstLeadingBit(1i)))));
    let var_4 = true;
    return select(select(vec2<bool>(any(select(vec2<bool>(var_2.x, true), var_2.zx, var_2.x)), var_2.x), !var_2.xz, true), select(vec2<bool>(25226u <= min(u_input.e, 49598u), true), !select(select(var_2.zz, vec2<bool>(var_4, var_4), var_2.xz), vec2<bool>(false, true), var_2.zy), _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(arg_2.b - arg_1.x)), var_0.b == _wgslsmith_f_op_f32(f32(-1f) * -624f));
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = any(func_5(func_4(global2.x, vec4<bool>(true, true, arg_0 == u_input.d, any(vec2<bool>(true, false))), func_2(u_input.b, any(vec4<bool>(true, false, true, true))), vec4<i32>(~12018i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, global0.c.x), global0.c.xyw), u_input.b, _wgslsmith_mod_i32(u_input.c, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1486f, global3[_wgslsmith_index_u32(arg_0, 21u)], global0.b, 443f))))), func_4(~func_3(Struct_1(global0.a, global0.b, global0.c)), vec4<bool>(any(global1[_wgslsmith_index_u32(1u, 23u)]), true, true, false), func_4(1i, vec4<bool>(true, true, true, false), Struct_1(0i, global3[_wgslsmith_index_u32(5788u, 21u)], vec4<i32>(-2147483647i, 0i, 0i, global2.x)), -global0.c), firstTrailingBit(select(vec4<i32>(global0.c.x, 50613i, 18293i, global0.c.x), global0.c, true)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(25823u, 21u)])))), -224f, global3[_wgslsmith_index_u32(~abs(arg_0) << ((firstLeadingBit(max(34087u, 13133u)) >> (_wgslsmith_mod_u32(~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, arg_0, 4294967295u), vec3<u32>(u_input.d, 4294967295u, arg_1))) % 32u)) % 32u), 21u)]);
    var var_2 = 0i;
    let var_3 = ~1u;
    var var_4 = vec4<i32>(-1i) * -(~global0.c);
    return 481f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_mult_i32(3362i, -u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~u_input.d), ~select(4294967295u, u_input.a, true)))), _wgslsmith_sub_vec4_i32(min(func_4(select(-1i, -1i, true), vec4<bool>(true, true, true, true), func_4(global0.a, vec4<bool>(true, false, true, false), Struct_1(u_input.b, -1263f, global0.c), vec4<i32>(-2147483647i, 1i, global2.x, -3539i)), ~vec4<i32>(u_input.b, 48258i, global0.a, -2147483647i)).c, vec4<i32>(~(-2705i), u_input.c, _wgslsmith_mod_i32(u_input.b, 30103i), func_3(Struct_1(global0.c.x, global0.b, global0.c)))), vec4<i32>(abs(-62822i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 5294i, global0.c.x, u_input.b), global0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global2.x, global2.x, global2.x), global0.c ^ vec4<i32>(u_input.b, global2.x, global2.x, 11527i)), select(global0.a, ~0i, true))));
    let var_1 = !select(!select(!global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(u_input.e, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(50986u, 0u), vec2<u32>(u_input.a, u_input.a)) >= ~0u, true, true), u_input.d > ~u_input.e);
    var var_2 = func_4(6889i | _wgslsmith_sub_i32(i32(-1i) * -global2.x, min(var_0.c.x, -27000i)), select(select(!(!vec4<bool>(false, true, var_1.x, var_1.x)), vec4<bool>(true, !var_1.x, var_1.x, var_1.x), func_5(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-592f, 521f, global3[_wgslsmith_index_u32(4294967295u, 21u)], -251f) * vec4<f32>(1271f, var_0.b, -1000f, 543f)), Struct_1(global0.c.x, var_0.b, global0.c)).x), !select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, true), !vec4<bool>(false, var_1.x, true, true)), !((1u << (u_input.d % 32u)) < 0u)), func_4(-1i, vec4<bool>(true == all(vec2<bool>(var_1.x, false)), !(u_input.a > u_input.a), all(vec4<bool>(false, false, true, var_1.x)), true), func_2(~(-42027i), !all(global1[_wgslsmith_index_u32(u_input.a, 23u)])), min(func_4(global2.x, vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_0, vec4<i32>(-39847i, 2147483647i, global2.x, global0.a)).c ^ firstTrailingBit(vec4<i32>(var_0.a, u_input.b, 2147483647i, -1i)), ~vec4<i32>(var_0.c.x, global0.c.x, var_0.c.x, 430i) << (~vec4<u32>(22184u, 0u, u_input.e, 8956u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.x, u_input.c, global2.x, -87908i), var_0.c, global0.c) << (firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, u_input.e, u_input.a)) % vec4<u32>(32u))), ~(var_0.c | select(vec4<i32>(u_input.b, u_input.c, -22639i, 2147483647i), var_0.c, vec4<bool>(false, false, var_1.x, false)))));
    var var_3 = any(!vec2<bool>(var_1.x, false));
    let var_4 = ~(~(~(~(~vec4<u32>(4294967295u, 32110u, 10473u, 4294967295u)))));
    global0 = func_2(1i << (~select(_wgslsmith_sub_u32(32429u, u_input.a), var_4.x, var_1.x) % 32u), var_1.x);
    let var_5 = func_4(var_2.a, !(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), Struct_1(0i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, max(var_4.x, ~var_4.x)), 21u)], var_2.c), _wgslsmith_div_vec4_i32(abs(-vec4<i32>(global2.x, var_2.a, global2.x, var_0.a)), firstLeadingBit(var_2.c)));
    var var_6 = Struct_1(reverseBits(global0.c.x), global0.b, _wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), -2147483647i, -41255i, 1i) ^ vec4<i32>(21715i, 2147483647i, abs(global2.x), 1i), func_4(_wgslsmith_add_i32(~3437i, var_5.a), vec4<bool>(false, true, u_input.d >= 0u, var_1.x), Struct_1(_wgslsmith_mult_i32(global2.x, var_2.a), _wgslsmith_f_op_f32(977f - global3[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<i32>(-22132i, global0.c.x, var_2.a, 1i) | vec4<i32>(0i, var_2.a, -2147483647i, 2147483647i)), vec4<i32>(-30565i, var_5.a << (u_input.e % 32u), -global2.x, select(u_input.c, 2147483647i, var_1.x))).c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1433f, 426f), _wgslsmith_div_vec2_f32(vec2<f32>(var_5.b, 867f), vec2<f32>(global0.b, 242f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2028f, global0.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, -857f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2342f, 649f))))), _wgslsmith_add_i32(var_2.a, var_6.c.x) < var_0.c.x)), !var_1.xy)), 2147483647i, vec3<i32>(reverseBits(1i) | ~var_6.c.x, -_wgslsmith_div_i32(u_input.b >> (var_4.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-19508i, 18964i, -5236i, var_6.a), var_5.c)), var_6.a), _wgslsmith_div_f32(-764f, -1000f), ~vec4<u32>(var_4.x, var_4.x, _wgslsmith_dot_vec2_u32(vec2<u32>(7260u, 4294967295u), var_4.yx) ^ var_4.x, u_input.a));
}

