struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: array<i32, 5> = array<i32, 5>(8850i, 9i, 5107i, 0i, 1i);

var<private> global1: vec4<f32> = vec4<f32>(-800f, -393f, -1211f, -1471f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_3(arg_1.x);
    let var_1 = any(!select(!(!vec4<bool>(arg_0.a, true, arg_0.b, true)), !vec4<bool>(arg_0.b, arg_0.b, false, false), select(vec4<bool>(arg_0.d, true, arg_0.d, arg_0.a), select(vec4<bool>(true, true, arg_0.d, false), vec4<bool>(arg_0.b, false, true, arg_0.a), true), func_3(arg_0.e.x, false, vec2<bool>(arg_0.b, arg_0.b)))));
    let var_2 = true;
    global0 = array<i32, 5>();
    var var_3 = Struct_1(true & (all(select(vec4<bool>(false, true, false, arg_0.b), vec4<bool>(var_1, var_2, var_1, false), vec4<bool>(false, var_2, true, arg_0.d))) || var_2), var_2, _wgslsmith_f_op_f32(f32(-1f) * -402f), all(vec2<bool>(false, arg_0.b || var_1)), _wgslsmith_div_vec4_u32(arg_0.e, _wgslsmith_sub_vec4_u32(arg_0.e, ~reverseBits(arg_0.e))));
    return -9629i << (arg_0.e.x % 32u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_3(~(-1i));
    var var_1 = func_4(Struct_1(!(any(vec3<bool>(arg_0, arg_0, true)) == true), func_3(reverseBits(u_input.a), true, vec2<bool>(any(vec3<bool>(true, arg_0, true)), arg_0)), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1.x)))))), true, vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), firstTrailingBit(reverseBits(u_input.b)), ~(u_input.a & u_input.a), u_input.b)), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 1i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(-33404i, u_input.c.x, var_0.a)), _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(34236i, global0[_wgslsmith_index_u32(u_input.a, 5u)]), i32(-1i) * -4858i), ~(-u_input.c.x)), -1i ^ u_input.c.x, reverseBits(~var_0.a) ^ -(i32(-1i) * -29621i)));
    var var_2 = select(_wgslsmith_mod_i32(21610i, 2147483647i), ~(-1i), true);
    var_1 = select(abs(_wgslsmith_clamp_i32(-10264i, reverseBits(-1i), ~(~global0[_wgslsmith_index_u32(0u, 5u)]))), ~(-11346i), false);
    var_0 = Struct_3(-65057i);
    return _wgslsmith_f_op_f32(-1889f - _wgslsmith_f_op_f32(select(global1.x, arg_2.x, false)));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global1 = vec4<f32>(-744f, _wgslsmith_f_op_f32(func_2(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.d.x)), global1.x))), _wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 538f, -1802f) * arg_0.e.zxz), vec3<f32>(-1513f, -655f, 401f))))), -569f, global1.x);
    global0 = array<i32, 5>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.xww)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.x, 255f, -1143f))), arg_0.e.yxy)), arg_0.c)), arg_0);
    return Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(func_4(Struct_1(arg_0.c, true, var_0.b.b.c, true, var_0.b.b.e), vec4<i32>(-9122i, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.c.x)), -14473i)), _wgslsmith_sub_i32(-1i, u_input.c.x)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(global1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1021f - -409f) * _wgslsmith_f_op_f32(round(global1.x))), !(true && (-11975i == select(global0[_wgslsmith_index_u32(arg_1, 5u)], arg_3.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(1446f, 782f), _wgslsmith_f_op_f32(exp2(global1.x))))), global1.x), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), all(vec2<bool>(false, false)))), vec4<u32>(~abs(arg_1), arg_1, 0u | _wgslsmith_dot_vec4_u32(vec4<u32>(9343u, arg_1, u_input.b, arg_1), ~vec4<u32>(48476u, 24482u, 55568u, arg_1)), _wgslsmith_clamp_u32(u_input.a >> (~5546u % 32u), 0u, _wgslsmith_mod_u32(firstLeadingBit(arg_1), _wgslsmith_clamp_u32(4819u, 47564u, 1u)))));
    global0 = array<i32, 5>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(1479f * -593f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) + _wgslsmith_f_op_f32(-var_0.c)), var_0.c, -1890f);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -755f, -1964f, 1123f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(f32(-1f) * -1269f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(224f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - -562f), _wgslsmith_f_op_f32(global1.x + global1.x)), var_0.c) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0.c, -438f, global1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c, -1031f, -1463f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -1549f, var_0.c, global1.x))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_1.x)));
    return var_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = firstTrailingBit(-2147483647i);
    let var_1 = func_1(Struct_2(global1.yxx, Struct_1(func_3(1u, arg_1.b.b || false, vec2<bool>(arg_1.b.a, arg_2.c)), arg_1.b.e.x > ~1u, 866f, !(u_input.c.x > -2147483647i), vec4<u32>(24166u, firstLeadingBit(1556u), 1u, _wgslsmith_div_u32(1u, 54076u))), true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(arg_1.a.xx, arg_2.a.yy)), vec2<f32>(arg_0.x, arg_3))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.c, arg_3, arg_1.a.x, arg_1.d.x), _wgslsmith_f_op_vec4_f32(-arg_1.e), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -719f, -2395f, -168f)), arg_2.e))));
    let var_2 = arg_1;
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(-1i, global0[_wgslsmith_index_u32(~(~1u) >> (~(~0u) % 32u), 5u)]), ~global0[_wgslsmith_index_u32(24520u, 5u)], -(~(-78562i)), _wgslsmith_sub_i32(min(3982i, -1i) & var_1.a, i32(-1i) * -1i) & -2147483647i);
    var var_4 = !arg_2.b.b;
    return var_2;
}

fn func_7(arg_0: Struct_2) -> Struct_3 {
    let var_0 = false;
    var var_1 = arg_0.b;
    var var_2 = global1.x;
    var var_3 = vec3<bool>(false, !(global1.x <= _wgslsmith_f_op_f32(select(global1.x, -1382f, false))), arg_0.c);
    let var_4 = arg_0;
    return Struct_3(func_4(func_5(func_1(var_4), 60135u, ~u_input.c.x, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 34814i), vec4<i32>(global0[_wgslsmith_index_u32(74251u, 5u)], 0i, 9091i, u_input.c.x))), vec4<i32>(1i, 1i, -1i, u_input.c.x) >> (vec4<u32>(1u, var_4.b.e.x, var_1.e.x, var_4.b.e.x) % vec4<u32>(32u))) ^ max(global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 5u)], ~max(-44283i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(51136u & (1u & u_input.a), ~_wgslsmith_mod_u32(u_input.b, ~(~u_input.a)));
    let var_1 = !any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) == false;
    let var_2 = _wgslsmith_mod_u32(u_input.b, u_input.a);
    let var_3 = ~4294967295u;
    var var_4 = func_7(func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 752f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1010f, global1.x)) - _wgslsmith_f_op_vec2_f32(-global1.wy)), !select(vec2<bool>(true, true), vec2<bool>(true, var_1), vec2<bool>(var_1, true)))), Struct_2(global1.zwz, func_5(func_1(Struct_2(global1.zyx, Struct_1(false, var_1, -793f, var_1, vec4<u32>(1u, u_input.a, 31020u, 16218u)), false, global1.zz, vec4<f32>(global1.x, -372f, global1.x, 336f))), u_input.b, min(global0[_wgslsmith_index_u32(32468u, 5u)], u_input.c.x), ~vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -19609i)), false, vec2<f32>(_wgslsmith_f_op_f32(global1.x - 236f), _wgslsmith_f_op_f32(428f * 638f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1408f), global1.x, func_5(Struct_3(50380i), u_input.a, 0i, vec4<i32>(-1i, u_input.c.x, global0[_wgslsmith_index_u32(var_2, 5u)], u_input.c.x)).c, _wgslsmith_f_op_f32(-global1.x))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, -636f, 1262f) * vec3<f32>(-1000f, -233f, global1.x)) * _wgslsmith_f_op_vec3_f32(-global1.xzx)), func_5(Struct_3(u_input.c.x), firstTrailingBit(var_2), -1i, firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], -2147483647i, u_input.c.x, -1i))), var_1, global1.zx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, 1827f, 2116f, -2116f)))))), 349f));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<u32>(_wgslsmith_add_u32(var_2, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_2, u_input.a)), abs(109186u)), ~(~vec3<u32>(42958u, var_2, u_input.a)), vec3<bool>(!var_1, true, true)));
}

