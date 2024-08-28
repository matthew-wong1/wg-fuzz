struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1792f, -313f, 1632f, -1813f), vec2<bool>(false, true), vec2<i32>(2147483647i, -2665i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool) -> vec2<bool> {
    var var_0 = vec3<u32>(0u, u_input.c.x, max(9072u, countOneBits(firstLeadingBit(reverseBits(55952u)))));
    let var_1 = global0.c;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, arg_0, global0.a.x, -309f)), _wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, -125f, 876f, 142f))))))), global0.b, vec2<i32>(-1i) * -(~global0.c));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(518f * arg_1), -884f, _wgslsmith_f_op_f32(select(arg_1, -1546f, arg_2)), _wgslsmith_f_op_f32(max(-261f, -1256f))))), vec2<bool>(any(select(vec3<bool>(true, global0.b.x, false), select(vec3<bool>(false, global0.b.x, false), vec3<bool>(true, false, arg_2), vec3<bool>(false, arg_2, false)), !vec3<bool>(arg_2, true, false))), !(global0.c.x >= 1i)), -global0.c);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.a)), vec4<f32>(arg_1, arg_0, -1065f, 628f)), global0.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1157f, global0.a.x, global0.a.x, arg_1))) * vec4<f32>(arg_0, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(arg_1 - 290f), arg_0))), !vec2<bool>(true, !(!global0.b.x)), ~reverseBits(global0.c));
    return !vec2<bool>(any(vec4<bool>(arg_2, !global0.b.x, u_input.a <= 0u, any(vec3<bool>(true, true, false)))), global0.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = vec4<i32>(-53673i, _wgslsmith_div_i32((global0.c.x ^ arg_0.c.x) & firstTrailingBit(arg_0.c.x), firstLeadingBit(var_0.c.x) | _wgslsmith_clamp_i32(0i, var_0.c.x, var_0.c.x)), 0i, -_wgslsmith_dot_vec2_i32(arg_1.c, select(vec2<i32>(-1i, -27574i), arg_1.c, true))) & abs(vec4<i32>(1i, var_0.c.x, 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.x, 0i, global0.c.x), vec3<i32>(-25382i, 0i, 6718i)), -vec3<i32>(arg_0.c.x, var_0.c.x, arg_0.c.x))));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xy, vec2<u32>(u_input.b.x, arg_2.x)) & _wgslsmith_add_u32(0u, _wgslsmith_div_u32(1u, u_input.c.x)), ~10612u), arg_2.x, arg_2.x, 4294967295u);
    var var_3 = !select(!vec3<bool>(!global0.b.x, func_3(819f, -240f, true).x, arg_0.b.x), !select(select(vec3<bool>(global0.b.x, global0.b.x, false), vec3<bool>(true, true, true), vec3<bool>(true, var_0.b.x, var_0.b.x)), vec3<bool>(global0.b.x, true, arg_0.b.x), arg_0.b.x), any(select(select(vec4<bool>(false, arg_1.b.x, false, true), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_0.b.x, false), vec4<bool>(false, false, arg_1.b.x, arg_1.b.x)), !vec4<bool>(arg_0.b.x, false, arg_1.b.x, false), vec4<bool>(true, false, true, arg_0.b.x))));
    let var_4 = true;
    return global0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(arg_0.a, func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 153f, -518f, _wgslsmith_f_op_f32(trunc(-1062f))), func_3(_wgslsmith_f_op_f32(round(-556f)), 573f, true), ~arg_0.c), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, arg_0.a.x, global0.a.x, -2236f), global0.a), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 1283f))), !func_3(1195f, global0.a.x, arg_0.b.x), -(arg_0.c ^ vec2<i32>(arg_0.c.x, -15524i))), vec4<u32>(_wgslsmith_div_u32(~3747u, 20807u), ~_wgslsmith_clamp_u32(68412u, 0u, 4294967295u), ~(~4294967295u), u_input.a)), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.x, 16480i), _wgslsmith_sub_vec2_i32(global0.c, arg_0.c), countOneBits(global0.c))));
    var var_0 = arg_0;
    var var_1 = !var_0.b.x;
    var var_2 = true;
    let var_3 = func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(step(var_0.a.x, global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) * 426f)), arg_1.xy, firstTrailingBit(vec2<i32>(var_0.c.x, var_0.c.x) ^ var_0.c)), arg_0, vec4<u32>(99282u, min(~0u, 4294967295u), _wgslsmith_mult_u32(~(~u_input.b.x), _wgslsmith_mult_u32(~u_input.b.x, countOneBits(0u))), firstLeadingBit(reverseBits(~u_input.a)))).x;
    return arg_0;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, arg_0)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, 1611f, arg_0, -145f)))), global0.a)), select(vec2<bool>(true, any(!vec3<bool>(true, global0.b.x, false))), global0.b, !vec2<bool>(!global0.b.x, !global0.b.x)), firstTrailingBit(global0.c));
    global0 = func_2(Struct_1(vec4<f32>(var_0.a.x, 772f, 580f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-610f - var_0.a.x), -2201f, true))), select(var_0.b, vec2<bool>(true, true), false), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.x, 1i), vec2<i32>(_wgslsmith_sub_i32(var_0.c.x, var_0.c.x), global0.c.x))), vec4<bool>(abs(84579u) < u_input.a, ((global0.c.x << (49558u % 32u)) >= -2147483647i) | global0.b.x, true, !((global0.b.x && true) != true)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), 921f)));
    global0 = func_2(Struct_1(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(max(669f, -473f))), -1508f, func_2(arg_0, vec4<bool>(false, arg_1.b.x, true, global0.b.x)).a.x), vec2<bool>(arg_1.a.x <= 1354f, arg_0.c.x >= arg_0.c.x), vec2<i32>(max(0i, 1i), -global0.c.x) >> (~(~vec2<u32>(17206u, 18350u)) % vec2<u32>(32u))), !vec4<bool>(all(vec2<bool>(global0.b.x, true)), true, arg_1.b.x, global0.b.x));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(func_1(584f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 1987f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.x))))), !vec2<bool>(arg_1.b.x != global0.b.x, max(u_input.b.x, u_input.c.x) < ~4959u), arg_0.c);
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(arg_1.a)), vec2<bool>(all(vec3<bool>(true, true, true)) && all(select(vec4<bool>(var_1.b.x, false, true, global0.b.x), vec4<bool>(global0.b.x, var_1.b.x, arg_1.b.x, arg_0.b.x), global0.b.x)), arg_0.b.x), vec2<i32>(24107i, -global0.c.x));
    return select(vec2<bool>(arg_0.b.x, true || arg_0.b.x), !arg_1.b, arg_1.a.x > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(firstLeadingBit(74615u) << (u_input.b.x % 32u), u_input.c.x);
    let var_1 = u_input.a;
    var var_2 = ~abs(vec4<u32>(u_input.a, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.c.yx, ~vec2<u32>(u_input.b.x, u_input.a)), u_input.a));
    let var_3 = abs(vec3<i32>(global0.c.x, ~firstTrailingBit(-1i), global0.c.x));
    let var_4 = Struct_1(global0.a, func_5(Struct_1(vec4<f32>(_wgslsmith_div_f32(global0.a.x, global0.a.x), -466f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), global0.b, _wgslsmith_mod_vec2_i32(firstTrailingBit(var_3.yz), -vec2<i32>(-20204i, 1i))), Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(-428f + -792f), global0.a.x, 965f), !global0.b, _wgslsmith_mult_vec2_i32(-global0.c, _wgslsmith_mod_vec2_i32(var_3.zy, vec2<i32>(2147483647i, var_3.x)))), var_3.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-756f * -727f) * _wgslsmith_f_op_f32(func_1(1262f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f + global0.a.x) * _wgslsmith_f_op_f32(select(137f, -2090f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * -105f), -1899f), _wgslsmith_f_op_f32(trunc(global0.a.x)))), ~(-abs(countOneBits(vec2<i32>(global0.c.x, 3253i)))));
    var var_5 = func_2(var_4, select(select(vec4<bool>(true, true || var_4.b.x, true, func_3(-1000f, -210f, var_4.b.x).x), vec4<bool>(!global0.b.x, false, false, true), !(!vec4<bool>(var_4.b.x, false, true, var_4.b.x))), select(select(select(vec4<bool>(global0.b.x, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, var_4.b.x, global0.b.x)), !vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), !vec4<bool>(false, global0.b.x, global0.b.x, false)), vec4<bool>(true, true, var_1 <= var_2.x, all(vec3<bool>(false, global0.b.x, global0.b.x))), false), vec4<bool>(func_3(var_4.a.x, _wgslsmith_f_op_f32(min(var_4.a.x, global0.a.x)), global0.b.x && true).x, func_2(func_2(var_4, vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x)), !vec4<bool>(true, true, true, var_4.b.x)).b.x, false, select(any(vec3<bool>(false, true, true)), true, true))));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_4.a.zx), func_2(var_4, !vec4<bool>(var_6, true, var_6, var_4.b.x)).a.xy, vec2<bool>(var_6, var_4.b.x)))), ~1u);
}

