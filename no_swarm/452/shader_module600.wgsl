struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

var<private> global2: bool = true;

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<u32> {
    global2 = true;
    let var_0 = Struct_1(global3.c.a, true, _wgslsmith_mult_vec2_i32(u_input.a.zz, select(-global0.c.c, firstLeadingBit(vec2<i32>(global3.c.c.x, -1536i)), arg_0.b) << (max(arg_2.yz, arg_1.d ^ vec2<u32>(global0.b.d.x, arg_3.d.x)) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(~arg_3.d, min(arg_0.d >> (arg_1.d % vec2<u32>(32u)), countOneBits(arg_2.wx))), false);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a))))));
    let var_2 = global3.b;
    let var_3 = var_2.a;
    return ~firstLeadingBit(vec2<u32>(var_0.d.x, var_2.d.x));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-1205f + _wgslsmith_div_f32(global3.b.a, 1646f)))), global0.c.e, abs(countOneBits(u_input.a.yx)), max(firstLeadingBit(func_3(Struct_1(1713f, false, vec2<i32>(global0.d, global3.d), global0.b.d, true), global0.b, vec4<u32>(1u, global3.e.x, global0.e.x, global3.e.x), global0.c)), func_3(global3.b, global0.c, abs(vec4<u32>(global3.c.d.x, 4294967295u, global0.b.d.x, 2769u)), Struct_1(arg_0, true, global0.b.c, vec2<u32>(global3.e.x, 0u), global3.c.e))) << (vec2<u32>(0u, func_3(global0.b, global0.b, vec4<u32>(global3.c.d.x, global3.e.x, global3.e.x, 6703u) ^ vec4<u32>(global0.b.d.x, global3.c.d.x, global0.c.d.x, global0.b.d.x), global0.c).x) % vec2<u32>(32u)), true);
    global0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, _wgslsmith_clamp_i32(var_0.c.x, 14526i, var_0.c.x)) & -vec3<i32>(global0.c.c.x, 20984i, -21289i), -vec3<i32>(min(global3.d, global3.d), _wgslsmith_add_i32(var_0.c.x, 1i), u_input.b)), Struct_1(-1479f, any(vec4<bool>(var_0.b, false, true, global3.c.a != 347f)), -_wgslsmith_add_vec2_i32(vec2<i32>(8129i, 2147483647i), vec2<i32>(u_input.a.x, global3.a.x)) & -_wgslsmith_div_vec2_i32(global0.c.c, vec2<i32>(global0.c.c.x, global0.d)), global3.b.d, ~(-var_0.c.x) <= u_input.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -674f), !(!all(vec3<bool>(false, true, false))), ~vec2<i32>(abs(u_input.c), global0.a.x), vec2<u32>(abs(320u), _wgslsmith_div_u32(firstTrailingBit(0u), global3.e.x >> (var_0.d.x % 32u))), false), -10895i, vec2<u32>(max(abs(max(1u, 4294967295u)), 4294967295u), var_0.d.x << (var_0.d.x % 32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + global0.c.a) + global3.b.a) - _wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(-1370f + 1130f)))), true, select(vec2<i32>(_wgslsmith_dot_vec3_i32(global3.a, global0.a) << ((29280u << (global3.b.d.x % 32u)) % 32u), 0i), vec2<i32>(~(-3861i), select(-30661i, u_input.a.x, global3.c.b)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.d.x), global0.c.d | vec2<u32>(18441u, 4294967295u)) % vec2<u32>(32u)), select(vec2<bool>(all(vec3<bool>(global0.b.b, true, false)), !global3.c.e), select(select(vec2<bool>(false, true), vec2<bool>(global0.b.b, global3.b.b), vec2<bool>(true, false)), select(vec2<bool>(global3.c.e, false), vec2<bool>(false, false), var_0.e), true), global3.b.b)), func_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.a, 1754f)), var_0.a)), any(vec4<bool>(false, false, false, true)) & false, -u_input.a.xy, _wgslsmith_div_vec2_u32(~global0.b.d, firstLeadingBit(vec2<u32>(47602u, 1u))), true), Struct_1(_wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(f32(-1f) * -2029f)), _wgslsmith_f_op_f32(trunc(1000f)) < global3.b.a, u_input.a.xz, vec2<u32>(1u, global3.c.d.x), _wgslsmith_f_op_f32(trunc(-138f)) > arg_0), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.d.x, var_0.d.x, 0u, 0u), vec4<u32>(global3.b.d.x, var_0.d.x, 0u, 4294967295u))), _wgslsmith_sub_u32(var_0.d.x, global3.b.d.x), var_0.d.x, ~(~0u)), global3.b), true);
    let var_2 = Struct_2(global3.a, global3.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a))), true, u_input.a.zy, _wgslsmith_mod_vec2_u32(reverseBits(max(vec2<u32>(0u, var_1.d.x), var_1.d)), ~global3.e), true), abs(i32(-1i) * -1i), vec2<u32>(0u, func_3(global0.c, global0.b, ~vec4<u32>(var_1.d.x, 2311u, var_0.d.x, var_1.d.x), global3.c).x));
    let var_3 = true;
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec3<f32> {
    let var_0 = -u_input.a.xz;
    let var_1 = Struct_1(-2822f, global3.b.e, countOneBits(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(step(-2290f, -351f)))).c), min(~vec2<u32>(4294967295u, ~global3.b.d.x), arg_0.d >> (countOneBits(global0.e) % vec2<u32>(32u))), !(true || all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(863f, arg_3, global3.c.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_1.a, arg_3)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(555f, global0.c.a, arg_0.a))), vec3<bool>(false, false, false)))))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_sub_u32(max(global3.c.d.x, global0.c.d.x), ~(~(~global0.e.x) ^ global0.c.d.x));
    global2 = false && !(!all(!vec3<bool>(global0.b.e, false, true)));
    let var_1 = reverseBits(~(~vec3<u32>(global3.b.d.x, 1u << (global0.b.d.x % 32u), ~35837u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(_wgslsmith_f_op_f32(-1483f + global3.b.a)), Struct_1(_wgslsmith_f_op_f32(-772f - 214f), any(vec3<bool>(false, global0.b.e, false)), -vec2<i32>(u_input.b, 1i), vec2<u32>(4294967295u, 0u), global3.a.x > 1i), false, -1069f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.a, _wgslsmith_f_op_f32(f32(-1f) * -678f), global3.b.a)))));
    let var_3 = true;
    return StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.d, u_input.c, 20262i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-28968i, -14393i))), global3.b.c.x, abs(u_input.b)) >> (vec3<u32>(global3.b.d.x, 1u, firstLeadingBit(~4294967295u)) % vec3<u32>(32u)), var_1.x, var_2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global3.b.a, global0.c.a)), _wgslsmith_f_op_f32(-850f + -649f))), _wgslsmith_f_op_f32(global0.c.a - _wgslsmith_div_f32(var_2.x, var_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(global3.c.a)), var_2.x, global3.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

