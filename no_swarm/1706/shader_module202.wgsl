struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(230f, 1698f, 118f, 1706f);

var<private> global1: i32 = 2147483647i;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(true, vec2<bool>(true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = 2147483647i;
    var var_0 = Struct_2(abs(firstLeadingBit(select(vec3<u32>(27343u, u_input.a, 4294967295u), vec3<u32>(40388u, 48490u, 0u), arg_0.b.x))) << (~vec3<u32>(~u_input.a, ~u_input.a, u_input.a & 0u) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))) <= global0.x, select(vec2<bool>(true, 0u == u_input.a), vec2<bool>(true, !arg_0.b.x), false)), 1i, 1i, u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.yzx, vec3<f32>(global0.x, -1300f, global0.x))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(807f, global0.x, 470f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(677f + global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3314f)), global0.x, arg_0.b.x & (false | arg_0.a)))));
    global1 = -44506i;
    let var_2 = true;
    return global0.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    var var_1 = Struct_2(~(~vec3<u32>(u_input.a << (u_input.a % 32u), u_input.a ^ 1u, ~u_input.a)), Struct_1((all(vec4<bool>(var_0, global3.a, var_0, global3.a)) && any(global3.b)) && true, vec2<bool>(global3.b.x, global3.b.x)), 1i, arg_0 | arg_0, 75449u);
    global2 = ~1960u;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(global0.x, 1f), global0.x, -931f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(var_1.b)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-var_2.x)));
    return Struct_1(var_0 || true, vec2<bool>(global3.a, var_1.b.a));
}

fn func_1() -> Struct_2 {
    global3 = func_2(1i);
    let var_0 = any(!vec3<bool>(global3.b.x, true, global3.b.x));
    let var_1 = !vec4<bool>(global3.b.x && true, any(select(vec4<bool>(var_0, var_0, global3.a, var_0), !vec4<bool>(true, global3.b.x, false, true), vec4<bool>(var_0, true, false, global3.b.x))), global3.a, false);
    return Struct_2(vec3<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.a) & 23340u, u_input.a, u_input.a), func_2(i32(-1i) * -24213i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(-16920i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(4389i), 0i), ~vec2<i32>(0i, 0i))), _wgslsmith_mult_i32(_wgslsmith_div_i32(-57916i, ~1i), 0i), reverseBits(select(min(_wgslsmith_mult_u32(u_input.a, 18393u), _wgslsmith_add_u32(1u, u_input.a)), 1397u, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> f32 {
    let var_0 = true;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1177f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(2375f + 928f), arg_1.b.x, 1037f, _wgslsmith_f_op_f32(2579f * global0.x)))))));
    let var_1 = global0.x;
    var var_2 = arg_0;
    var var_3 = Struct_3(!(!select(!arg_1.a, vec4<bool>(true, false, true, global3.b.x), true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.x)) - -417f)))), func_1().b, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_2.c, var_2.c, 2147483647i), arg_1.d) ^ select(arg_1.d << (vec4<u32>(1u, 0u, 5867u, var_2.a.x) % vec4<u32>(32u)), arg_1.d, !arg_0.b.a), firstTrailingBit(min(arg_1.d >> (vec4<u32>(4294967295u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), vec4<i32>(-26676i, arg_1.d.x, arg_0.d, var_2.c)))));
    return -844f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(func_4(func_1(), Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(select(global0.x, 798f, true)), global3.b.x, any(vec4<bool>(global3.b.x, true, true, global3.b.x)) && global3.a, all(vec2<bool>(false, global3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-239f, global0.x, 1000f, global0.x), vec4<f32>(-507f, global0.x, global0.x, global0.x)))), func_1().b, reverseBits(abs(vec4<i32>(14617i, 10522i, 0i, -36518i)))), _wgslsmith_clamp_i32((func_1().c & 1i) << (0u % 32u), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-4406i, -1i, 1i, -7583i), vec4<i32>(2147483647i, 12897i, -16496i, 48235i) >> (vec4<u32>(u_input.a, 9757u, u_input.a, u_input.a) % vec4<u32>(32u)))), -(~(-19895i)) << (func_1().e % 32u))));
    var var_2 = Struct_3(select(select(vec4<bool>(global3.a, true, global3.b.x, global3.a), !(!vec4<bool>(global3.a, global3.b.x, global3.b.x, true)), any(vec4<bool>(global3.b.x, false, false, false))), vec4<bool>(any(vec4<bool>(false, false, global3.a, global3.a)) || func_1().b.b.x, false, global3.b.x == true, all(!global3.b)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, global0.x, var_1, _wgslsmith_f_op_f32(abs(-724f))))), func_1().b, -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, -21143i, 5950i), vec4<i32>(-16484i, -1i, 4640i, 0i), vec4<i32>(2147483647i, 1i, 0i, 1i)) | abs(vec4<i32>(1i, -2147483647i, 2147483647i, 10087i))));
    var var_3 = func_2(firstTrailingBit(_wgslsmith_clamp_i32(-13139i, var_2.d.x, firstLeadingBit(abs(-33607i)))));
    let var_4 = Struct_3(vec4<bool>(true, all(select(select(var_2.a.zzy, vec3<bool>(global3.a, var_3.a, var_2.c.b.x), false), !var_2.a.zyy, select(var_2.a.wzw, vec3<bool>(true, global3.b.x, false), false))), !all(!var_2.a), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.x, -1i), var_2.d.wz)) != min(-var_2.d.x, var_2.d.x)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(903f - 409f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -1565f))), -186f, _wgslsmith_f_op_f32(f32(-1f) * -780f)), var_2.c, vec4<i32>(2147483647i, _wgslsmith_sub_i32(var_2.d.x, _wgslsmith_mod_i32(0i, abs(var_2.d.x))), var_2.d.x, ~2147483647i));
    var_0 = _wgslsmith_mod_u32(~(~(~(~1u))), _wgslsmith_add_u32(~u_input.a, 39235u) | 31199u);
    global3 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

