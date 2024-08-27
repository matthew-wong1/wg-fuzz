struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 54373u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, 571f)))))) - global0.zz);
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), !(!vec2<bool>(var_0.x > -371f, true)), vec4<bool>(true, (firstTrailingBit(arg_0.x) >= u_input.b.x) == all(vec2<bool>(true, true)), false, all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true))), vec4<u32>(u_input.a.x, firstLeadingBit(_wgslsmith_mult_u32(global1.x & u_input.a.x, u_input.a.x ^ 0u)), 4294967295u, _wgslsmith_sub_u32(~0u, 32900u)));
    global1 = vec3<u32>(global1.x, ~1u, 4294967295u);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -625f, 1000f), vec3<f32>(global0.x, -1249f, 493f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, var_0.x, -229f))), select(vec3<bool>(true, true, false), !var_1.c.zwx, var_1.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(ceil(arg_1)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-404f, -1000f))))));
    let var_2 = Struct_1(var_1.a, var_1.c.xx, select(var_1.a, vec4<bool>(false, true, var_1.a.x, 1445f > global0.x), var_1.b.x), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(89331u, u_input.a.x, var_1.d.x, var_1.d.x), vec4<u32>(39397u, global1.x, 0u, 4294967295u)), var_1.d), max(vec4<u32>(var_1.d.x, 4294967295u, global1.x, 0u) >> (vec4<u32>(4294967295u, 0u, 0u, var_1.d.x) % vec4<u32>(32u)), ~var_1.d)) | ~var_1.d);
    return select(vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1619f, 1000f))), false, !all(!var_1.c.xwy)), vec3<bool>(any(vec4<bool>(all(vec3<bool>(true, true, true)), var_2.c.x, var_1.b.x, all(vec3<bool>(true, var_2.c.x, var_2.b.x)))), var_1.a.x, var_2.c.x | any(vec3<bool>(var_1.b.x, false, var_1.c.x))), true);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_1(!(!vec4<bool>(false, arg_0, arg_0, all(vec4<bool>(arg_0, true, false, arg_0)))), !vec2<bool>(36583u >= u_input.a.x, arg_0 | any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), vec4<bool>(true, select(arg_0, any(!vec4<bool>(arg_0, arg_0, false, arg_0)), all(!vec3<bool>(true, arg_0, true))), arg_0, true), ~vec4<u32>(103008u, u_input.a.x, global1.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 7212u), vec3<u32>(29796u, 7777u, 59216u)))));
    return var_0.a.zz;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = u_input.b;
    let var_1 = -firstLeadingBit(vec4<i32>(1i, -(~arg_1), ~(-u_input.b.x), -(~1i)));
    let var_2 = u_input.b.yy;
    let var_3 = arg_0;
    var var_4 = func_4(all(select(select(vec3<bool>(true, var_3, false), !vec3<bool>(arg_0, var_3, var_3), var_3), vec3<bool>(arg_0, u_input.b.x == arg_3.x, false), select(func_3(vec3<i32>(23399i, var_0.x, 14939i), 1287f), vec3<bool>(true, false, arg_0), any(vec3<bool>(false, false, arg_0))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-var_2.x, firstLeadingBit(var_2.x ^ u_input.b.x), countOneBits(~var_1.x)), firstTrailingBit(vec3<i32>(arg_1, arg_3.x, var_1.x) >> (~vec3<u32>(4294967295u, 4294967295u, global1.x) % vec3<u32>(32u)))), global0.x);
    return -458f;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1720f, global0.x) * vec3<f32>(767f, -1989f, -448f)) + vec3<f32>(global0.x, 1019f, global0.x))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 127f), _wgslsmith_f_op_f32(func_2(true, u_input.b.x ^ -74116i, _wgslsmith_div_vec4_f32(vec4<f32>(-608f, 181f, global0.x, 2135f), vec4<f32>(global0.x, 1015f, -993f, global0.x)), u_input.b.xz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -2555f)))));
    let var_0 = (vec3<u32>(~4294967295u, ~2987u, firstLeadingBit(global1.x)) ^ vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, 25609u, 0u), vec3<u32>(12826u, global1.x, global1.x)), ~vec3<u32>(64566u, 4294967295u, 0u)), abs(u_input.a.x))) ^ vec3<u32>(global1.x & countOneBits(firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(35305u, 34992u, u_input.a.x, 0u) >> (vec4<u32>(4294967295u, 19981u, global1.x, global1.x) % vec4<u32>(32u))), ~vec4<u32>(u_input.a.x, global1.x, global1.x, 4294967295u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, global1.x, 8165u), vec4<u32>(u_input.a.x, 1u, 1u, global1.x)) % vec4<u32>(32u))), 0u);
    let var_1 = _wgslsmith_mult_u32(var_0.x, 45258u);
    var var_2 = reverseBits(firstLeadingBit(-749i));
    let var_3 = u_input.b.x;
    return ~(~abs(~0u) & (~1u << (var_1 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global1.x >> (global1.x % 32u), _wgslsmith_mult_u32(u_input.a.x, 1u)), func_1(), 37931u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 8559u, 4294967295u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1075u, 18533u, 15819u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 36162u, 96760u), global1.x >> (47726u % 32u), global1.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    let var_3 = 1i;
    global1 = (firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(var_1.x, 112762u), func_1(), _wgslsmith_mod_u32(4294967295u, 1u))) >> (~var_1 % vec3<u32>(32u))) >> ((var_1 >> ((vec3<u32>(4294967295u, ~57151u, var_1.x) >> (~(~var_1) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_4 = Struct_1(select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), all(vec2<bool>(true, true))), any(vec3<bool>(true, true, true))), true), vec2<bool>(true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), !func_3(u_input.b, global0.x).x, true, true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 25630u), u_input.a) != u_input.a.x), ~vec4<u32>(1u, ~32201u, reverseBits(9595u), 30805u));
    let var_5 = Struct_1(var_4.a, var_4.b, select(select(select(var_4.c, !vec4<bool>(false, var_4.c.x, false, var_4.a.x), var_2.x <= global0.x), !(!vec4<bool>(var_4.a.x, true, var_4.b.x, var_4.a.x)), func_4(true, ~u_input.b, _wgslsmith_div_f32(global0.x, var_2.x)).x), var_4.a, var_4.a), var_4.d);
    var var_6 = var_5;
    var_4 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz, vec2<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f))))), var_6.d.x);
}

