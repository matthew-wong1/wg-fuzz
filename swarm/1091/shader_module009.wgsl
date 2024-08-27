struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 55330i);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: i32;

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 0u, 7249u) ^ select(vec3<u32>(31478u, 0u, 1u), vec3<u32>(16568u, 0u, 1u), false), ~vec3<u32>(0u, u_input.a, u_input.a)), _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(~60078u, 4294967295u)), _wgslsmith_mod_vec3_i32(vec3<i32>(25454i, abs(-44545i), _wgslsmith_mult_i32(1i, arg_0)), ~vec3<i32>(arg_0, 1i, arg_0) >> (vec3<u32>(u_input.a & 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.a, u_input.a, 61881u, 5758u)), _wgslsmith_add_u32(61521u, 1u)) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(56821u, 29u)]);
    global3 = array<Struct_1, 29>();
    let var_1 = -2147483647i;
    let var_2 = 241f;
    global3 = array<Struct_1, 29>();
    return Struct_3(firstTrailingBit(i32(-1i) * -2147483647i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> vec3<f32> {
    let var_0 = select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, false), arg_1.zz);
    var var_1 = Struct_1(!arg_1);
    var var_2 = Struct_2(_wgslsmith_div_vec3_u32(min(~vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(arg_0.x, u_input.a, 4294967295u)) & reverseBits(~vec3<u32>(31753u, 16753u, 4294967295u)), select(~vec3<u32>(arg_0.x, 4294967295u, 4294967295u), abs(vec3<u32>(arg_0.x, u_input.a, arg_0.x)) << (~vec3<u32>(u_input.a, 1259u, arg_0.x) % vec3<u32>(32u)), all(var_1.a.zwx))), u_input.a, vec3<i32>(40192i, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -18534i, -7844i, global0.x), vec4<i32>(global0.x, global0.x, 3452i, global0.x), vec4<i32>(global0.x, global0.x, -2147483647i, 2147483647i)), select(~vec4<i32>(global0.x, global0.x, global0.x, global0.x), ~vec4<i32>(global0.x, 1i, -26820i, 33719i), true)), global0.x), Struct_1(select(vec4<bool>(any(vec3<bool>(arg_1.x, false, true)), false, true, true), vec4<bool>(true, false, var_1.a.x, true), var_1.a.x)));
    var var_3 = arg_0;
    var var_4 = Struct_1(vec4<bool>(any(!arg_1.xx), true, true, all(select(vec3<bool>(var_0.x, global1.x, arg_1.x), !var_1.a.yxy, !vec3<bool>(true, arg_1.x, true)))));
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_2 {
    global2 = 0i;
    let var_0 = u_input.a;
    var var_1 = all(vec4<bool>(false, global1.x, global1.x, false));
    let var_2 = -vec3<i32>(arg_1.a, (abs(-36479i) << (var_0 % 32u)) ^ ~arg_0.a, arg_0.a);
    var var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, -44473i, 2147483647i, -56819i), select(vec4<i32>(-60537i, arg_0.a, -1130i, arg_1.a), vec4<i32>(global0.x, 37715i, var_2.x, var_2.x), global1.x)), global0.x, arg_1.a), vec3<i32>(_wgslsmith_mult_i32(select(arg_0.a, arg_0.a, true), ~arg_0.a), max(global0.x, -1i), -1i));
    return Struct_2(vec3<u32>(abs(~4294967295u) | _wgslsmith_add_u32(u_input.a, ~0u), ~u_input.a, ~(~var_0 & ~var_0)), var_0, firstLeadingBit(max(countOneBits(vec3<i32>(-25711i, -1i, 16287i)), ~(vec3<i32>(106955i, arg_0.a, arg_1.a) | vec3<i32>(arg_0.a, -9930i, var_2.x)))), Struct_1(select(select(select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, false), true), vec4<bool>(false, global1.x, global1.x, true), !global1.x), select(!vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, false), true), global1.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    var var_0 = func_4(func_2(-2147483647i), func_2(~(~(~(-2147483647i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1277f, -244f, -433f), vec3<f32>(1000f, 1548f, 461f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, -874f, -1117f))) - vec3<f32>(-1119f, _wgslsmith_f_op_f32(1906f - -2972f), 719f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(min(vec2<u32>(1105u, u_input.a), vec2<u32>(u_input.a, u_input.a)), !arg_1, vec3<f32>(-516f, -2178f, 673f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1855f, -874f, 1393f))), vec3<f32>(529f, -370f, -948f))), !global1.x)));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(-arg_0, -1372i), _wgslsmith_mult_i32(0i ^ min(~arg_0, i32(-1i) * -57247i), firstLeadingBit(~0i)), i32(-1i) * -33271i, min(_wgslsmith_div_i32(-14038i, func_2(func_4(Struct_3(0i), Struct_3(0i), vec3<f32>(-276f, -1876f, 1024f)).c.x).a), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(arg_0), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(6972i, -25476i), vec2<i32>(13669i, -35561i))), var_0.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))))));
    global2 = arg_0;
    var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.c.yz, vec2<i32>(-1i) * -vec2<i32>(arg_0, var_0.c.x)), abs(~(-23908i)), global0.x, reverseBits(reverseBits(0i))) & select(max(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 0i, arg_0, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(5680i, 1i, var_0.c.x, arg_0), vec4<i32>(1i, 2147483647i, -20112i, 25395i))), ~vec4<i32>(arg_0, 2147483647i, var_0.c.x, arg_0)), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_0, var_0.c.x, var_1.x, global0.x)), max(vec4<i32>(-64277i, var_0.c.x, arg_0, global0.x), vec4<i32>(-1i, arg_0, var_1.x, 0i))), all(select(vec4<bool>(true, true, global1.x, arg_2.x), !vec4<bool>(true, arg_2.x, true, true), arg_1)));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec3<bool>(global1.x, !func_1(global0.x, vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x)) == select(func_4(Struct_3(-1i), Struct_3(4455i), vec3<f32>(1172f, 1010f, 522f)).d.a.x, false, true), false);
    var var_0 = select(vec2<bool>(!global1.x, func_4(Struct_3(_wgslsmith_add_i32(0i, 59141i)), func_2(global0.x ^ global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1933f, 568f, -992f), vec3<f32>(458f, 1000f, -1588f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(416f, 1185f, 640f)))).d.a.x), select(!global1.zz, !vec2<bool>(!global1.x, false), !global1.yz), global1.yy);
    global3 = array<Struct_1, 29>();
    var var_1 = firstLeadingBit(vec4<i32>(-1i, abs(~(~global0.x)), global0.x, ~19639i));
    let var_2 = !global1.xy;
    var var_3 = !global1.x;
    var var_4 = Struct_1(vec4<bool>(!(!(!global1.x)), !func_1(_wgslsmith_add_i32(1i, var_1.x), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_2.x, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), select(vec4<bool>(true, global1.x, true, true), vec4<bool>(false, global1.x, global1.x, true), false)), false, true));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(509f, 1104f) + _wgslsmith_f_op_f32(ceil(-752f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1201f)), -1073f, var_2.x)), _wgslsmith_f_op_f32(round(-554f)), 384f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) * -1238f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, -547f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-879f + -626f)), 340f)));
    var_3 = var_4.a.x | all(func_4(func_2(var_1.x ^ global0.x), func_2(~0i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_5.xzx * vec3<f32>(var_5.x, 1499f, var_5.x))))).d.a.www);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, u_input.a, u_input.a, ~(~u_input.a)), _wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 22420u, u_input.a)) ^ ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<bool>(!global1.x, !var_4.a.x, func_4(Struct_3(var_1.x), Struct_3(var_1.x), var_5.xwz).d.a.x, false)), ~select(vec4<u32>(7396u, u_input.a, u_input.a, 11932u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a), var_4.a.x) << (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(58221u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 15779u)), vec4<u32>(4294967295u, 1u, u_input.a, 38752u)) % vec4<u32>(32u))), ~_wgslsmith_mod_vec2_i32(func_4(func_2(0i), Struct_3(1i), var_5.zzx).c.yy, ~min(var_1.zx, var_1.ww)));
}

