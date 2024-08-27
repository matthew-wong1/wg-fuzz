struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: vec3<i32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<bool> {
    var var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(120f, 1316f))), -1304f, _wgslsmith_f_op_f32(ceil(-274f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-717f, _wgslsmith_f_op_f32(f32(-1f) * -268f), -198f) - vec3<f32>(_wgslsmith_f_op_f32(max(-197f, 503f)), _wgslsmith_f_op_f32(step(-682f, 162f)), -1722f)), select(vec3<bool>(true, true, u_input.d > u_input.b.x), select(!vec3<bool>(false, global0.x, true), !vec3<bool>(global0.x, true, false), !global0.x), global0.x)))));
    var var_2 = ~global2.yz;
    var var_3 = var_1.x;
    global2 = _wgslsmith_div_vec3_i32(vec3<i32>(-var_2.x, ~_wgslsmith_clamp_i32(~global2.x, var_2.x, select(1i, var_2.x, global3.x)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.e, var_2.x, -2147483647i), var_2.x) ^ ~6669i), vec3<i32>(-global2.x, 2147483647i, -3330i) ^ firstLeadingBit(~u_input.c.www));
    return !vec4<bool>(true, -2121f < var_1.x, true, !global0.x);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec2<u32> {
    var var_0 = select(any(select(global3.zy, global3.yy, global0.x)), true, all(!vec2<bool>(any(vec3<bool>(global3.x, global0.x, global3.x)), u_input.d < 4294967295u)));
    var var_1 = arg_1 > -2147483647i;
    var var_2 = any(vec4<bool>((u_input.a.x > _wgslsmith_div_i32(global2.x, u_input.c.x)) & !global0.x, global3.x, !any(func_3()), !(global2.x > 2553i)));
    var_1 = !(!any(select(vec3<bool>(false, global3.x, global0.x), func_3().xww, select(vec3<bool>(global0.x, global3.x, true), vec3<bool>(global0.x, false, false), vec3<bool>(false, true, true)))));
    let var_3 = Struct_4(vec2<bool>(true, true), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a), arg_0.b, arg_0.b, arg_0.d, 102267u), _wgslsmith_mod_i32(arg_1, -2147483647i) >= -u_input.e);
    return ~u_input.b;
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = Struct_1(false, 1i << (u_input.d % 32u), arg_0.b.c.a <= _wgslsmith_dot_vec2_u32(min(vec2<u32>(18927u, arg_0.b.c.a), func_2(Struct_3(arg_0.b.a, arg_0.b.b, Struct_2(arg_0.b.e), 43687u, 1u), global2.x)), ~abs(u_input.b)), -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(506f, arg_0.b.a.x, -396f, arg_0.b.a.x) * vec4<f32>(-328f, -252f, -1000f, arg_0.b.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x))), vec4<f32>(205f, 1110f, -1544f, arg_0.b.a.x), vec4<bool>(true, global0.x, arg_0.c, global3.x))))));
    global3 = vec3<bool>(global0.x, true, !var_0.a);
    let var_1 = Struct_2(~reverseBits(19068u));
    global2 = -(~vec3<i32>((2147483647i >> (1u % 32u)) & u_input.e, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-14364i, u_input.a.x, -2147483647i), vec3<i32>(global2.x, -2147483647i, u_input.a.x))), _wgslsmith_sub_i32(u_input.e, max(0i, u_input.e))));
    let var_2 = Struct_1(false, _wgslsmith_sub_i32(var_0.b, -(~(-var_0.d))), all(!vec4<bool>(all(vec2<bool>(false, true)), var_0.a, false, true)), -13847i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.x, 2098f, var_0.e.x, arg_0.b.a.x) - vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x)))) + vec4<f32>(781f, _wgslsmith_f_op_f32(780f * -1000f), _wgslsmith_f_op_f32(-arg_0.b.a.x), arg_0.b.a.x))));
    return arg_0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec2_u32(reverseBits(u_input.b), u_input.b) & reverseBits(~(~u_input.b) & vec2<u32>(~4294967295u, 4294967295u));
    global3 = vec3<bool>(true, !(!all(!vec4<bool>(global0.x, true, arg_2, arg_2))), !all(func_3().zyz));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.b.a);
    let var_2 = global0.x;
    let var_3 = Struct_1(true, arg_0 ^ (i32(-1i) * -46587i), true, ~(-arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1363f, -775f, -554f, -1197f))));
    return ~(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, arg_1.b.b.a, 1u) << (vec3<u32>(arg_1.b.e, u_input.d, 75408u) % vec3<u32>(32u)), vec3<u32>(arg_1.b.b.a, u_input.b.x, u_input.d)), vec3<u32>(~4294967295u, u_input.b.x, 1u ^ var_0.x)) | ~reverseBits(select(vec3<u32>(4294967295u, 4294967295u, arg_1.b.b.a), vec3<u32>(arg_1.b.b.a, 9419u, 1841u), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-_wgslsmith_add_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.e), _wgslsmith_div_i32(-2147483647i, -15956i)), -(global2.x | -2147483647i)), Struct_4(func_1(Struct_4(!global3.yy, Struct_3(vec2<f32>(253f, 2038f), Struct_2(1u), Struct_2(u_input.b.x), 22397u, u_input.d), any(vec4<bool>(true, false, false, global0.x)))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-119f, 162f), vec2<f32>(701f, 709f), false))), Struct_2(~u_input.d), Struct_2(u_input.b.x), u_input.d, u_input.d), true & global3.x), func_1(Struct_4(global3.xx, Struct_3(vec2<f32>(-1000f, -1142f), Struct_2(0u), Struct_2(u_input.b.x), 0u, u_input.b.x), true)).x || true);
    var var_1 = -791f;
    var_1 = 451f;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(343f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1105f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)))) * vec2<f32>(444f, _wgslsmith_f_op_f32(round(658f))));
    global3 = vec3<bool>(func_1(Struct_4(vec2<bool>(!global0.x, !global0.x), Struct_3(vec2<f32>(-109f, -1828f), Struct_2(u_input.b.x), Struct_2(var_0.x), min(var_0.x, 0u), abs(u_input.d)), any(select(vec2<bool>(global0.x, true), global3.zx, vec2<bool>(global3.x, false))))).x, !any(global3.yz) & !(!any(vec2<bool>(global3.x, global0.x))), global3.x);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_2.x))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, var_2.x)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(816f, var_2.x)), vec2<f32>(var_2.x, var_2.x)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, -102f), vec2<f32>(-1209f, _wgslsmith_f_op_f32(f32(-1f) * -1654f))))), Struct_2(1u), Struct_2(var_0.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, var_0.x, var_0.x) >> (vec3<u32>(var_0.x, 15775u, var_0.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(var_0, var_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 1u, 0u) | var_0, var_0)), ~var_0.x), var_0.x);
    let var_4 = ~_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(func_2(Struct_3(var_3.a, Struct_2(0u), var_3.c, var_3.d, 0u), i32(-1i) * -13372i).x, 1u, var_0.x));
    var var_5 = ~max(0u >> (var_3.e % 32u), reverseBits(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy, select(select(min(vec4<u32>(1u, 4294967295u, u_input.d, 80064u), vec4<u32>(var_4.x, var_3.d, u_input.b.x, 0u)), ~vec4<u32>(var_3.c.a, var_3.b.a, var_0.x, var_3.e), true & global0.x), vec4<u32>(45066u, 0u, _wgslsmith_mult_u32(15067u, 62745u), var_0.x & u_input.d), vec4<bool>(global0.x, false, func_1(Struct_4(vec2<bool>(true, global3.x), var_3, false)).x, global3.x)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 18318u, var_4.x, 4294967295u), vec4<u32>(var_4.x, 16599u, 0u, 4294967295u)), vec4<u32>(u_input.b.x, u_input.d, var_4.x, u_input.d)), ~(vec4<u32>(var_3.e, u_input.d, 18233u, 58278u) >> (vec4<u32>(0u, 0u, 0u, 55367u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.e, var_4.x, var_0.x, u_input.b.x) << (vec4<u32>(4294967295u, 40335u, 0u, var_0.x) % vec4<u32>(32u)), ~vec4<u32>(8332u, var_4.x, 19356u, 24296u))) % vec4<u32>(32u)), select(min(global2.yy, global1[_wgslsmith_index_u32(1u, 13u)]), vec2<i32>(min(14509i, ~0i), global2.x), global3.x));
}

