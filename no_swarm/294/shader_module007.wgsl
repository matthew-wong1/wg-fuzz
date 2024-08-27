struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(528f, 2747f);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = global0.x;
    var var_2 = !vec4<bool>(!(true | global1.x) | global1.x, !(!select(global1.x, global1.x, global1.x)), any(vec2<bool>(global1.x, all(vec4<bool>(true, global1.x, false, false)))), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1382f, arg_0.c.x, 434f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 285f, 1953f, arg_0.c.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.c.x, global0.x, 934f))))), vec4<f32>(-950f, 964f, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-690f - var_0.b.x), -1166f) * global0.x))));
    var_2 = select(vec4<bool>(!all(select(vec4<bool>(true, true, false, global1.x), vec4<bool>(true, var_2.x, global1.x, var_2.x), var_2.x)), any(vec4<bool>(true, global1.x, any(vec3<bool>(true, var_2.x, var_2.x)), all(var_2.yxy))), (0i < u_input.e.x) || true, !(!global1.x)), !select(vec4<bool>(global1.x, arg_1.x > arg_1.x, var_2.x || false, all(vec2<bool>(var_2.x, true))), !select(vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, false, global1.x, true), true), select(select(vec4<bool>(global1.x, global1.x, var_2.x, global1.x), vec4<bool>(var_2.x, true, global1.x, var_2.x), vec4<bool>(true, true, false, var_2.x)), !vec4<bool>(true, var_2.x, var_2.x, global1.x), var_2.x)), true);
    return select(var_2.zw, var_2.zw, global1.x);
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(498f - global0.x), global0.x));
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1617f, global0.x, -375f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, global0.x, 331f))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(684f, 1000f, true)) * global0.x), global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 1152f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-132f, global0.x), vec2<f32>(global0.x, global0.x), global1.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))) * vec2<f32>(-2526f, 759f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1479f, global0.x)), ~firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 4294967295u, 69706u), vec3<u32>(4294967295u, 1u, u_input.c.x))));
    global1 = func_3(var_0, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(21361i, u_input.e.x ^ -16961i, ~u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 476i, u_input.e.x), vec3<i32>(22813i, 36292i, 0i))), abs(-vec4<i32>(1i, u_input.e.x, u_input.e.x, u_input.e.x)))));
    global1 = func_3(Struct_3(var_0.a, _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1633f, global0.x), vec2<f32>(-432f, var_0.b.x))), var_0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(-920f, 1188f)))), ~(~var_0.d)), vec4<i32>(u_input.e.x, _wgslsmith_add_i32(max(u_input.e.x, 2147483647i) | u_input.e.x, -u_input.e.x), u_input.e.x | ~(~u_input.e.x), _wgslsmith_clamp_i32(1i, u_input.e.x, u_input.e.x << (~var_0.d.x % 32u))));
    global1 = vec2<bool>(true | global1.x, all(!vec2<bool>(all(vec2<bool>(global1.x, global1.x)), global1.x & true)));
    return vec2<bool>(!(global1.x | !select(true, true, false)), !(_wgslsmith_f_op_f32(-896f * -466f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -770f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = select(select(!(!(!vec2<bool>(global1.x, global1.x))), select(!(!vec2<bool>(global1.x, false)), !vec2<bool>(global1.x, true), true), select(!(!vec2<bool>(true, global1.x)), select(func_2(), vec2<bool>(true, global1.x), func_3(Struct_3(vec3<f32>(arg_0.x, 1481f, -1000f), arg_0, arg_2.yz, vec3<u32>(u_input.c.x, 4294967295u, 88649u)), vec4<i32>(-42697i, 2147483647i, -15287i, u_input.e.x))), true)), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-858f, arg_1, 1000f))) * arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1120f, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - arg_2.yx)), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.d.x), ~vec3<u32>(u_input.d.x, u_input.b, u_input.a))), (vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -17354i)) ^ firstLeadingBit(~vec4<i32>(-2147483647i, u_input.e.x, u_input.e.x, -12556i))), !(!func_2()));
    var var_1 = firstTrailingBit(~max(select(u_input.d, ~u_input.d, select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x), vec2<bool>(false, true))), vec2<u32>(17270u, 11557u)));
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = Struct_1(select(select(select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, true, global1.x), true), !vec3<bool>(true, global1.x, var_0.x), var_0.x), !select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, true), true), any(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(global1.x, false, global1.x), true), !vec3<bool>(false, true, global1.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, global1.x))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, true)), select(vec3<bool>(global1.x, var_0.x, global1.x), vec3<bool>(false, var_0.x, global1.x), false), true && var_0.x), global1.x), !vec3<bool>(true, global1.x, false)), select(select(vec2<bool>(true, true), !vec2<bool>(false, var_0.x), func_2()), !(!select(vec2<bool>(global1.x, var_0.x), vec2<bool>(false, true), true)), true));
    var_1 = firstTrailingBit(reverseBits(u_input.c));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, true, false)), vec3<bool>(global1.x, true || global1.x, true), global1.x != false), !func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -601f), vec2<bool>(global1.x, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -426f) * -1204f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, global0.x, global0.x))));
    var var_1 = (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, u_input.a)) << ((u_input.d >> (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.d, u_input.c) & vec2<u32>(25482u, u_input.b)) & 36993u) | 840u;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1597f) + _wgslsmith_f_op_f32(min(-888f, _wgslsmith_f_op_f32(-2493f + -1441f))))), var_0, select(max(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, -1i, 50066i, u_input.e.x), vec4<i32>(6755i, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, u_input.e.x)), vec4<i32>(u_input.e.x, -1i, -2147483647i, -15169i)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.e.x, -38605i, -655i, 1i), select(vec4<i32>(-11823i, u_input.e.x, u_input.e.x, -20810i), vec4<i32>(u_input.e.x, u_input.e.x, -24612i, u_input.e.x), vec4<bool>(global1.x, true, false, global1.x)))), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.e.x, -4726i), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), -14139i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -18606i, -2147483647i, 1i), vec4<i32>(u_input.e.x, 9012i, 13280i, u_input.e.x)), max(1i, ~u_input.e.x)), global1.x), select(!select(select(var_0.a, var_0.a, vec3<bool>(false, global1.x, var_0.b.x)), vec3<bool>(var_0.b.x, global1.x, true), func_2().x), select(!(!var_0.a), select(!var_0.a, !vec3<bool>(true, global1.x, false), global1.x | global1.x), vec3<bool>(!global1.x, true, true)), any(select(vec4<bool>(global1.x, var_0.b.x, var_0.b.x, false), select(vec4<bool>(var_0.b.x, var_0.b.x, global1.x, false), vec4<bool>(false, true, true, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.b.x, true)), true))), vec3<i32>(-1i, u_input.e.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, 2147483647i, u_input.e.x, u_input.e.x) ^ vec4<i32>(0i, 28833i, u_input.e.x, u_input.e.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, -7607i, 15380i, -40972i), vec4<i32>(32467i, -16207i, -9124i, 2147483647i), vec4<i32>(u_input.e.x, u_input.e.x, 1i, 0i))), firstLeadingBit(vec4<i32>(1i, u_input.e.x, 30506i, -24161i)) >> (vec4<u32>(u_input.b, 43028u, 0u, u_input.d.x) % vec4<u32>(32u)))));
    let var_3 = ~min(reverseBits(u_input.b), u_input.a);
    var var_4 = firstLeadingBit(select(vec2<u32>(_wgslsmith_div_u32(1u, 1u), 0u), u_input.c, var_0.a.x));
    let var_5 = true;
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_2.a)))))));
    global1 = vec2<bool>(true, !var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(~vec2<u32>(61378u, 81198u)), abs(select(u_input.d >> (u_input.d % vec2<u32>(32u)), select(u_input.c, u_input.d, var_0.a.x), true))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - 278f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1343f, -832f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-875f, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(var_2.a + var_2.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 603f))))), abs(29535i), var_3);
}

