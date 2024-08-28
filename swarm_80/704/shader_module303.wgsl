struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2599f;

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<i32>, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = select(select(vec4<bool>(true, !(arg_1 & true), false, !select(true, arg_2.a.e.x, false)), select(select(select(vec4<bool>(arg_2.a.e.x, true, false, false), vec4<bool>(true, arg_1, arg_2.a.e.x, global1.x), vec4<bool>(arg_0.e.x, false, false, false)), vec4<bool>(false, true, arg_2.a.e.x, true), false), select(select(vec4<bool>(true, arg_2.b, true, arg_0.e.x), vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, false, global1.x, false)), !vec4<bool>(true, arg_2.b, true, false), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(false, false, false, false), arg_2.b)), !(arg_2.b & true)), !(!select(vec4<bool>(arg_0.e.x, global1.x, false, arg_1), vec4<bool>(arg_1, true, arg_2.a.e.x, arg_1), vec4<bool>(arg_0.e.x, arg_0.e.x, true, false)))), vec4<bool>(false, !(!arg_2.a.e.x), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, arg_0.d.x), u_input.b) < (arg_0.c.x | 4294967295u), arg_2.b, all(select(vec3<bool>(false, global1.x, arg_2.b), arg_0.e, true))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1335f)) - -1300f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(325f)), _wgslsmith_f_op_f32(ceil(554f)))));
    var var_1 = Struct_1(-_wgslsmith_add_i32(-2153i | arg_2.a.a, ~(i32(-1i) * -1i)), ~min(arg_2.a.d.x, 30975u), ~(~(~(vec2<u32>(4294967295u, u_input.d.x) | vec2<u32>(21557u, arg_3.x)))), firstLeadingBit(max(select(~u_input.b, arg_2.a.d >> (arg_3.wyz % vec3<u32>(32u)), var_0.wzx), ~arg_3.xzx)), arg_0.e);
    var var_2 = arg_2;
    var var_3 = 1u;
    global1 = select(!select(var_1.e.xz, select(arg_0.e.yx, select(var_1.e.yy, var_1.e.zz, var_0.x), all(vec3<bool>(false, false, false))), select(all(vec3<bool>(false, true, global1.x)), 34868u >= u_input.b.x, arg_0.e.x)), vec2<bool>(var_1.e.x, arg_1), !(!select(vec2<bool>(false, var_0.x), var_2.a.e.xy, select(vec2<bool>(arg_2.a.e.x, true), var_1.e.yz, var_1.e.xx))));
    return var_0;
}

fn func_2() -> vec3<i32> {
    global1 = select(select(vec2<bool>(any(func_3(Struct_1(-73203i, u_input.b.x, vec2<u32>(u_input.a, 41015u), u_input.b, vec3<bool>(global1.x, false, true)), false, Struct_2(Struct_1(13724i, 1u, vec2<u32>(u_input.d.x, 1u), vec3<u32>(u_input.a, 7139u, u_input.a), vec3<bool>(global1.x, true, false)), false), u_input.d)), true), vec2<bool>(!select(global1.x, true, false), func_3(Struct_1(1i, u_input.a, vec2<u32>(0u, 64599u), vec3<u32>(24802u, 10975u, 21753u), vec3<bool>(global1.x, false, global1.x)), global1.x, Struct_2(Struct_1(-982i, u_input.a, u_input.d.xw, u_input.b, vec3<bool>(global1.x, global1.x, global1.x)), global1.x), vec4<u32>(52405u, 30950u, 4294967295u, 0u)).x), any(select(vec3<bool>(false, global1.x, global1.x), !vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, false, global1.x)))), !select(select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), false), vec2<bool>(global1.x, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, global1.x), global1.x))), !func_3(Struct_1(min(39642i, 2147483647i), abs(35205u), vec2<u32>(u_input.b.x, u_input.a), vec3<u32>(36996u, u_input.d.x, 0u), vec3<bool>(true, false, true)), global1.x, Struct_2(Struct_1(-1678i, 49800u, vec2<u32>(u_input.d.x, 0u), u_input.b, vec3<bool>(true, false, global1.x)), true), firstLeadingBit(u_input.d)).xx);
    global1 = vec2<bool>(global1.x, any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x)))));
    return u_input.c.zyz;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(-((_wgslsmith_add_vec3_i32(u_input.c.yww, vec3<i32>(-1i, u_input.c.x, -2147483647i)) ^ func_2()) | abs(vec3<i32>(arg_0.x, 2147483647i, -66119i) >> (vec3<u32>(u_input.a, 0u, u_input.d.x) % vec3<u32>(32u)))), reverseBits(vec3<i32>(1i, -1i, ~(~(-2147483647i)))));
    var var_1 = 594f;
    global1 = !(!(!vec2<bool>(true, false | global1.x)));
    var var_2 = firstLeadingBit(~vec4<i32>(~u_input.c.x, ~arg_0.x, var_0.x, arg_0.x) >> (u_input.d % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(228f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-211f)), -346f))));
    return 8801u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(~30917u, _wgslsmith_mod_u32(u_input.a, 64353u) << (func_1(vec2<i32>(u_input.c.x, -22849i)) % 32u)) == ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(61437u, 8170u, u_input.d.x, u_input.b.x), ~u_input.d), 1u);
    var var_1 = Struct_2(Struct_1(-(~_wgslsmith_mult_i32(0i, u_input.c.x)), min(u_input.d.x, ~u_input.a) ^ 65469u, firstLeadingBit(vec2<u32>(~49786u, ~0u)), vec3<u32>(~18814u, 45514u, firstLeadingBit(0u)) >> (_wgslsmith_div_vec3_u32(abs(u_input.d.ywx), reverseBits(u_input.b)) % vec3<u32>(32u)), func_3(Struct_1(-u_input.c.x, 0u, select(u_input.b.xx, u_input.b.xz, vec2<bool>(true, global1.x)), min(u_input.b, u_input.b), !vec3<bool>(true, false, global1.x)), true, Struct_2(Struct_1(u_input.c.x, u_input.a, vec2<u32>(1u, 4294967295u), vec3<u32>(17142u, u_input.a, 6776u), vec3<bool>(global1.x, false, global1.x)), all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), reverseBits(vec4<u32>(257u, u_input.b.x, u_input.d.x, 4294967295u))).yzx), global1.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1884f - _wgslsmith_f_op_f32(f32(-1f) * -1468f)))) + -977f));
    var var_2 = 1863f;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(367f + -1013f), _wgslsmith_f_op_f32(select(-1486f, -273f, var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(461f - -831f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1485f, 1001f, -1534f, -2396f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-474f, -3108f) * _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(max(720f, -372f)), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(round(704f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1286f, -787f, 577f, -555f), vec4<f32>(459f, 725f, -395f, 426f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 248f, 1577f, -122f))))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(~max(u_input.a, u_input.b.x)), firstTrailingBit(var_1.a.d.x), 13833u));
}

