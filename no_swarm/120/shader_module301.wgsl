struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(22934i, -1i, 2147483647i, 2147483647i);

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2147483647i, 0i), vec2<f32>(-1630f, 1019f), vec2<i32>(-22071i, 0i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(global0.yx, global2.b, global0.ww);
    var var_1 = u_input.a <= ~firstLeadingBit(max(_wgslsmith_clamp_u32(u_input.c, 0u, u_input.c), 0u));
    global0 = select(-vec4<i32>(var_0.a.x, ~(-1i), firstLeadingBit(0i), ~16511i) ^ select(select(_wgslsmith_add_vec4_i32(vec4<i32>(49714i, 1354i, var_0.a.x, u_input.b), vec4<i32>(1i, -2147483647i, global0.x, 2942i)), reverseBits(vec4<i32>(var_0.a.x, -28774i, -11511i, 2147483647i)), true), ~(vec4<i32>(var_0.a.x, u_input.b, -14774i, 0i) >> (vec4<u32>(0u, 30374u, 4294967295u, 0u) % vec4<u32>(32u))), all(vec4<bool>(true, true, true, true))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(global0.zyx, firstTrailingBit(global0.yyx) | min(global0.zww, vec3<i32>(global2.c.x, u_input.b, -19796i))), firstTrailingBit(i32(-1i) * -2147483647i), -2147483647i), true);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, -941f, global2.b.x) * vec3<f32>(127f, -1064f, global2.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, 1289f, 830f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1108f, -1416f, global2.b.x) * vec3<f32>(var_0.b.x, -561f, -1000f))))))));
    return _wgslsmith_f_op_f32(var_3.x * var_2.b.x);
}

fn func_2() -> i32 {
    let var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), vec2<bool>(true, global2.a.x > global2.a.x)));
    let var_1 = Struct_1(vec2<i32>(max(u_input.b, global0.x), -10962i ^ (global0.x ^ -10098i)), _wgslsmith_f_op_vec2_f32(round(global2.b)), min(vec2<i32>(-85077i, min(_wgslsmith_mult_i32(global2.a.x, -32138i), max(1i, 8967i))), global2.a >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))));
    global2 = Struct_1(_wgslsmith_mult_vec2_i32(select(vec2<i32>(global0.x, u_input.b), global2.c << (vec2<u32>(u_input.c, 33562u) % vec2<u32>(32u)), true), firstLeadingBit(~_wgslsmith_div_vec2_i32(global2.c, vec2<i32>(u_input.b, global2.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(global2.b.x + var_1.b.x), var_1.b.x), global2.c);
    var var_2 = var_1;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - global2.b.x) - _wgslsmith_f_op_f32(-var_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-283f))))), _wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + var_2.b.x) - global2.b.x)))));
    return firstLeadingBit(i32(-1i) * -34892i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_1(select(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(firstLeadingBit(-1i), global2.a.x)), firstLeadingBit(vec2<i32>(0i, 6244i)), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-1433f * 1f)) + arg_0.b), vec2<i32>(2147483647i >> (_wgslsmith_mod_u32(~u_input.a, 4294967295u ^ arg_1.x) % 32u), -(~func_2())));
    var_0 = arg_0;
    global1 = 0i;
    var var_1 = Struct_1(-min(reverseBits(-global0.wy), min(global0.zx, var_0.a | var_0.a)), _wgslsmith_f_op_vec2_f32(round(global2.b)), -arg_0.c);
    var var_2 = Struct_1(~global2.c, vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(min(-789f, -1095f))))), _wgslsmith_sub_vec2_i32(global0.ww, ~(vec2<i32>(-1i) * -global2.a)));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global2.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global0.xw, global2.b, global2.a), vec4<u32>(u_input.c, u_input.a, 71292u, 4294967295u), vec2<f32>(global2.b.x, global2.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-758f - -342f))))));
    global1 = -countOneBits(min(-1i, reverseBits(_wgslsmith_add_i32(-52900i, -29298i))));
    let var_1 = Struct_1(-select(abs(global0.xz), ~_wgslsmith_add_vec2_i32(global2.a, global0.xx), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1125f)), 359f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(global2.b))))), max(~min(~vec2<i32>(global0.x, global2.a.x), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-46726i, u_input.b)), abs(select(vec2<i32>(global0.x, global2.a.x), global2.a, false)))));
    let var_2 = -vec3<i32>(var_1.c.x, select(u_input.b >> (0u % 32u), global0.x, true), _wgslsmith_add_i32(~(-43462i), -func_2()));
    var var_3 = select(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, any(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, min(u_input.c, 0u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(31637u, 0u, u_input.a)), true)), !vec3<bool>((u_input.b < -5626i) | true, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, -14113i > global2.c.x, false));
    var var_4 = var_3.x;
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -917f))), (select(0i, -u_input.b, any(vec4<bool>(true, var_3.x, var_3.x, var_3.x))) >> (countOneBits(u_input.a) % 32u)) >> (~_wgslsmith_mod_u32(u_input.a, ~1u) % 32u), var_1.c.x, abs(_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(63080u, 4294967295u, u_input.c, u_input.c), vec4<u32>(1u, 27500u, 36927u, u_input.c))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 6426u, u_input.a), ~vec4<u32>(u_input.a, u_input.c, 4294967295u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 44084u, u_input.c), vec4<u32>(1761u, u_input.c, u_input.a, u_input.c), vec4<u32>(35280u, u_input.c, 13959u, 1u))))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-51326i, -64170i, var_5.c.x, var_2.x), -vec4<i32>(-1i, 2147483647i, var_1.a.x, var_5.c.x), ~vec4<i32>(-40818i, -39781i, global0.x, 11748i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_5.c.x, 37694i, -27923i, -1i), vec4<i32>(var_5.a.x, 2147483647i, 37788i, var_5.a.x))), vec4<i32>(~var_5.a.x, -3498i & abs(var_2.x), i32(-1i) * -7124i, -var_1.a.x)));
}

