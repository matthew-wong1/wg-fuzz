struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: i32 = 0i;

var<private> global3: Struct_1 = Struct_1(true, 889f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = abs(~1u);
    let var_0 = Struct_1(global1.x, global3.b);
    global2 = abs(i32(-1i) * -68921i);
    var var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - -124f) + _wgslsmith_f_op_f32(f32(-1f) * -1085f)), -1371f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1038f)) - vec2<f32>(-1000f, -1658f)))), _wgslsmith_mod_i32(u_input.c.x, -2147483647i), -2188f, Struct_1(!(-2147483647i == u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-748f + -219f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -234f))) - 1000f));
    var var_2 = -(~var_1.b);
    return global3.b;
}

fn func_4(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = arg_0.x;
    let var_1 = u_input.b;
    var var_2 = vec4<i32>(var_1, ~_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, u_input.b), -max(vec2<i32>(u_input.b, 16916i), vec2<i32>(-1i, var_1))), firstLeadingBit(28311i | ~_wgslsmith_mult_i32(var_1, u_input.c.x)), 2147483647i);
    global2 = select(u_input.e, _wgslsmith_div_i32(var_2.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_2.ywz, vec3<i32>(-2147483647i, -29684i, 2147483647i)), firstTrailingBit(-12047i))), all(vec2<bool>(true, true))) & 1i;
    var var_3 = Struct_1(~(~_wgslsmith_div_u32(69119u, u_input.a.x)) >= 537u, _wgslsmith_f_op_f32(abs(-1000f)));
    return vec4<bool>(!(!(!global1.x)), !(any(!vec4<bool>(true, var_3.a, global1.x, true)) & global3.a), !(!(!select(false, global3.a, true))), global3.a);
}

fn func_5(arg_0: vec4<bool>) -> vec2<f32> {
    global3 = Struct_1(!any(!(!arg_0.wz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(global3.b - -489f)) * _wgslsmith_f_op_f32(select(global3.b, _wgslsmith_f_op_f32(global3.b - -1000f), !arg_0.x)))));
    global1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.b, global3.b, global3.b, global3.b), vec4<f32>(-933f, global3.b, global3.b, -272f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, global3.b, 1196f, global3.b)), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global3.a, global1.x, global3.a, false), true))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1905f, _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.d, 1u, 0u, u_input.d))), _wgslsmith_f_op_f32(-global3.b), 560f)))).xw;
    let var_0 = -23400i;
    let var_1 = vec3<bool>(all(vec4<bool>(true, _wgslsmith_f_op_f32(sign(global3.b)) != 790f, true, global3.a)), !all(func_4(vec4<f32>(global3.b, 513f, global3.b, global3.b)).zy) && !func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1001f, 1067f, global3.b, global3.b) + vec4<f32>(global3.b, global3.b, -1040f, 996f))).x, global1.x);
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d, 4294967295u, 126252u, u_input.a.x), vec4<u32>(0u, u_input.d, 0u, u_input.d), func_4(vec4<f32>(global3.b, 827f, 527f, global3.b))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.d, u_input.a.x, u_input.d)), countOneBits(vec4<u32>(11961u, 69181u, 0u, u_input.a.x)))), ~_wgslsmith_mult_u32(13918u, u_input.a.x >> (u_input.a.x % 32u)), u_input.a.x), ~(vec4<u32>(0u, 0u, ~u_input.d, u_input.d ^ 1u) ^ abs(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-894f, -1428f) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 2464f), vec2<f32>(1273f, -921f), vec2<bool>(var_1.x, var_1.x)))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b, 1853f), vec2<f32>(global3.b, -555f), arg_0.zw))))))));
}

fn func_2(arg_0: bool) -> f32 {
    global0 = u_input.d;
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1696f), 680f, 1793f, _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, 44529u, u_input.a.x, u_input.a.x))))))), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))))), Struct_1(true, _wgslsmith_f_op_f32(sign(global3.b))), global3.b);
    return global3.b;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(347f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(true)))))));
    let var_1 = select(!func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(394f, var_0, -1320f, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, global3.b, 500f, var_0))))), select(!(!(!vec4<bool>(false, global1.x, global1.x, true))), vec4<bool>(u_input.a.x < (u_input.d << (u_input.a.x % 32u)), false, global3.a, global3.a), vec4<bool>(!func_4(vec4<f32>(global3.b, global3.b, global3.b, global3.b)).x, true, global3.a, global3.a)), global1.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, -570f))), -2147483647i, var_0, Struct_1(!(!(global3.a & true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1192f))))), -1000f);
    var var_3 = reverseBits(firstLeadingBit(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b, -1i, -2147483647i, var_2.b), vec4<i32>(-12213i, 42424i, -80264i, 2147483647i)), select(vec4<i32>(u_input.c.x, u_input.c.x, 1i, var_2.b), vec4<i32>(0i, u_input.e, u_input.e, u_input.e), global1.x) & vec4<i32>(u_input.e, 0i, 34618i, var_2.b), var_1)));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(825f, var_0) * vec2<f32>(-1763f, 1405f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.a)))), _wgslsmith_mod_i32(var_3.x, _wgslsmith_mult_i32(firstLeadingBit(-56333i), ~1i)) >> (~0u % 32u), var_2.d.b, var_2.d, global3.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(select(select(!vec2<bool>(global3.a, global1.x), vec2<bool>(u_input.b == -21808i, global3.a), any(vec2<bool>(false, true))), select(!select(vec2<bool>(global3.a, true), vec2<bool>(true, global3.a), false), select(vec2<bool>(global1.x, false), select(vec2<bool>(true, global1.x), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(global1.x, true)), vec2<bool>(true, true)), select(vec2<bool>(u_input.a.x == u_input.a.x, global1.x), vec2<bool>(true, true), false)), vec2<bool>(func_1(), (global3.a | func_1()) == any(select(vec2<bool>(false, global1.x), vec2<bool>(false, false), vec2<bool>(false, global1.x)))), !(_wgslsmith_f_op_f32(func_3(min(vec4<u32>(1u, 1u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 11916u, 46236u)))) <= _wgslsmith_f_op_f32(-global3.b)));
    var var_0 = !(!global3.a);
    global0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 1u), firstTrailingBit(0u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - _wgslsmith_f_op_f32(min(global3.b, 621f))) * -1812f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f) + -1000f) * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b, -144f) + global3.b) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-370f + 962f), _wgslsmith_f_op_f32(-global3.b))), global3.b))), 475f);
    let var_2 = Struct_1(global3.a, _wgslsmith_f_op_f32(floor(var_1.x)));
    var var_3 = abs(abs(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(u_input.d, u_input.d, 23401u, 15752u)), ~vec4<u32>(u_input.d, u_input.a.x, 4294967295u, 0u)) << (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(20357u, u_input.d, 7266u, 37155u), vec4<u32>(4294967295u, 4294967295u, u_input.d, 2398u))) % vec4<u32>(32u)), u_input.c, max(-(~abs(vec2<i32>(21484i, -204i))), firstTrailingBit(u_input.c)));
}

