struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_3, 26>();
    let var_0 = 918f;
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(~vec2<u32>(4294967295u, 18206u))), 15278u) << (firstLeadingBit(_wgslsmith_sub_u32(51035u, 1u)) % 32u);
    var var_3 = _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2, 4294967295u, var_2), vec4<u32>(34470u, 4294967295u, 29548u, 22935u)), ~vec4<u32>(41688u, 68343u, 4294967295u, var_2)))) << (36425u % 32u);
    return ~abs(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4280u, 1u), firstTrailingBit(vec2<u32>(var_2, var_2))), vec2<u32>(var_2, var_2)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> vec3<u32> {
    global0 = arg_3;
    var var_0 = _wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(2147483647i, reverseBits(1i), arg_2 ^ arg_2)), vec3<i32>(~abs(_wgslsmith_div_i32(-2760i, u_input.a)), arg_2, ~(i32(-1i) * -53343i)));
    global0 = true;
    global0 = true;
    var_0 = vec3<i32>(-1i) * -select(firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, u_input.a)), ~vec3<i32>(var_0.x, var_0.x, 2147483647i), arg_1);
    return ~vec3<u32>(1u, ~72277u, ~(~4294967295u));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    global0 = !(!(!(arg_0 != arg_2.x)) && true);
    global0 = arg_1.a.x;
    global1 = array<Struct_3, 26>();
    var var_0 = Struct_3(Struct_1(1u), arg_1.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(933f, 1426f, -455f, 403f) * vec4<f32>(-1150f, -902f, -1159f, -180f))), vec4<f32>(-837f, -658f, _wgslsmith_f_op_f32(1599f * -370f), _wgslsmith_f_op_f32(select(2395f, -1599f, arg_1.a.x))), select(select(vec4<bool>(true, arg_1.a.x, false, arg_1.a.x), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true)), vec4<bool>(true, true, arg_1.a.x, false), true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 1366f), _wgslsmith_div_f32(-1106f, 671f), -1485f, _wgslsmith_f_op_f32(-651f - 2676f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-364f, -1060f, -243f, 407f), vec4<f32>(551f, 1274f, -682f, -1259f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-452f, 451f, -2286f, -343f), vec4<f32>(-457f, -310f, -607f, -1725f)))))), Struct_2(!vec2<bool>(select(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a.x)), select(select(vec3<bool>(true, !arg_1.a.x, arg_1.a.x), select(arg_1.a, arg_1.a, arg_1.a.x), !(!vec3<bool>(arg_1.a.x, false, arg_1.a.x))), vec3<bool>(!select(arg_1.a.x, arg_1.a.x, arg_1.a.x), _wgslsmith_div_i32(u_input.a, u_input.a) <= ~u_input.a, true), !arg_1.a));
    global0 = var_0.e.x;
    return select(abs(arg_0), 86700u, -187f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + -770f), _wgslsmith_div_f32(_wgslsmith_div_f32(-292f, var_0.c.x), -1980f)));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> vec3<bool> {
    let var_0 = ~(~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1u, arg_0.a.a, arg_0.a.a)), firstLeadingBit(vec3<u32>(90959u, arg_1, arg_1)) | vec3<u32>(arg_0.a.a, arg_0.a.a, arg_1), vec3<u32>(arg_0.a.a, arg_1, arg_0.a.a & 20098u)));
    var var_1 = arg_1;
    var_1 = _wgslsmith_mod_u32(~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, 0u), var_0.x)), arg_0.a.a);
    var var_2 = arg_0.a;
    var_1 = 18432u;
    return !select(select(!select(arg_0.e, vec3<bool>(arg_0.e.x, arg_0.b, false), arg_0.e), !(!arg_0.e), !arg_0.b), !arg_0.e, arg_0.b & arg_0.d.a.x);
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(39374u, 1u)), func_2()), vec2<u32>(1u, 1u)), func_2()), ~1u), 26u)];
    let var_1 = Struct_4(select(vec3<bool>(any(vec2<bool>(var_0.b, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), any(var_0.e)), func_5(global1[_wgslsmith_index_u32(func_4(firstLeadingBit(var_0.a.a), Struct_4(vec3<bool>(false, var_0.b, var_0.e.x)), func_3(-1120f, vec3<bool>(true, var_0.d.a.x, var_0.d.a.x), u_input.a, false)), 26u)], ~0u), var_0.d.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.c.yy)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1612f)), -1096f);
    let var_4 = Struct_2(vec2<bool>(any(var_1.a), !(!any(vec4<bool>(var_1.a.x, false, var_0.d.a.x, true)))));
    return var_0.c.x;
}

fn func_6(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_4(select(select(!func_5(arg_2, arg_2.a.a), select(vec3<bool>(arg_3.d.a.x, false, arg_2.e.x), !arg_2.e, !vec3<bool>(arg_2.b, arg_3.d.a.x, false)), arg_3.e.x), !(!vec3<bool>(false, arg_3.e.x, arg_3.d.a.x)), vec3<bool>(all(vec4<bool>(false, arg_2.e.x, arg_3.e.x, arg_3.b)), true, all(arg_3.e.xy))));
    var var_1 = arg_3.d;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(select(-1285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), var_0.a.x)), _wgslsmith_f_op_f32(round(-1576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-180f, arg_3.c.x)), _wgslsmith_f_op_f32(732f + arg_0.x), arg_2.e.x)))));
    let var_3 = var_0;
    var_1 = arg_3.d;
    return _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2.a.a, 0u, 32492u, 70641u), vec4<u32>(arg_3.a.a, 4294967295u, arg_2.a.a, arg_2.a.a), ~vec4<u32>(arg_2.a.a, arg_3.a.a, arg_2.a.a, arg_3.a.a))) >> (vec4<u32>(arg_2.a.a, 34506u, 86759u, 0u) % vec4<u32>(32u)), reverseBits(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, arg_3.a.a, 11259u), vec4<u32>(arg_3.a.a, arg_2.a.a, arg_3.a.a, arg_3.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(1u, 0u << (0u % 32u));
    var var_1 = global1[_wgslsmith_index_u32(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(487f - -1542f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(466f - 1044f), -1000f)))), select(1i ^ _wgslsmith_clamp_i32(u_input.a, u_input.a, -3298i), ~u_input.a | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i) & vec2<i32>(u_input.a, -1i), -vec2<i32>(u_input.a, u_input.a)), false), global1[_wgslsmith_index_u32(1u, 26u)], Struct_3(Struct_1(1u), _wgslsmith_add_i32(-u_input.a, _wgslsmith_mult_i32(u_input.a, 0i)) <= u_input.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(381f, -654f, -981f, 211f))))), Struct_2(func_5(global1[_wgslsmith_index_u32(func_4(2397u, Struct_4(vec3<bool>(true, false, true)), vec3<u32>(1u, 1u, 36035u)), 26u)], 0u << (1u % 32u)).xy), select(!func_5(global1[_wgslsmith_index_u32(94482u, 26u)], 40992u), vec3<bool>(any(vec2<bool>(false, false)), false, true), vec3<bool>(u_input.a >= u_input.a, any(vec3<bool>(false, true, true)), false)))), 26u)];
    var_1 = Struct_3(var_1.a, u_input.a != -u_input.a, var_1.c, Struct_2(func_5(Struct_3(Struct_1(var_1.a.a), !var_1.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x) * var_1.c), Struct_2(vec2<bool>(var_1.b, true)), func_5(global1[_wgslsmith_index_u32(var_1.a.a, 26u)], var_1.a.a)), _wgslsmith_add_u32(var_1.a.a & var_1.a.a, var_1.a.a | var_1.a.a)).zy), var_1.e);
    var var_2 = Struct_4(vec3<bool>(all(var_1.e), var_1.e.x, var_1.e.x));
    var_2 = Struct_4(vec3<bool>(any(!select(var_2.a.xy, vec2<bool>(var_2.a.x, false), false)), any(select(select(vec3<bool>(true, true, var_2.a.x), var_1.e, var_2.a), !vec3<bool>(true, true, var_2.a.x), !vec3<bool>(true, var_2.a.x, true))), any(vec3<bool>(var_1.d.a.x, false, !var_1.d.a.x))));
    var var_3 = var_2.a.x;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(floor(var_1.c.x)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1487f, var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_1.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * 119f) - var_1.c.x)))));
    var_1 = Struct_3(Struct_1(var_1.a.a), true, var_4, var_1.d, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10026u, 1u, var_1.a.a), vec4<u32>(4294967295u, 52308u, 1u, var_1.a.a)))));
}

