struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = -61975i;
    return ~_wgslsmith_mult_u32(~arg_0.a.e, 0u);
}

fn func_2() -> vec3<i32> {
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, max(1i, u_input.b), u_input.a.x), -countOneBits(~global0.d.zzw)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-global0.d.yx | reverseBits(vec2<i32>(global0.d.x, 11343i)), vec2<i32>(global0.a.x >> (1u % 32u), global0.d.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(global0.d.xx), select(vec2<i32>(41905i, global0.a.x), vec2<i32>(u_input.c.x, -21901i), false), vec2<i32>(-2147483647i, u_input.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -29642i), vec2<i32>(11455i, -4598i)))), global0.c & vec4<u32>(1u, _wgslsmith_add_u32(u_input.e.x, 36717u) & max(u_input.e.x, 109077u), global0.c.x, _wgslsmith_div_u32(u_input.e.x, firstLeadingBit(global0.c.x))), vec4<i32>(u_input.b, ~global0.a.x, -15982i, u_input.c.x), select(global0.c.x, firstLeadingBit(_wgslsmith_add_u32(49427u, func_3(Struct_2(Struct_1(global0.a, vec2<i32>(u_input.b, 49642i), vec4<u32>(global0.c.x, u_input.e.x, u_input.d, 4294967295u), global0.d, 19639u), vec2<bool>(true, false)), -788f))), true));
    var var_0 = !vec4<bool>(all(vec2<bool>(true, true)), false, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)));
    global0 = Struct_1(~_wgslsmith_div_vec3_i32(max(vec3<i32>(24603i, 29775i, u_input.a.x) << (vec3<u32>(63823u, 0u, 100007u) % vec3<u32>(32u)), global0.a), vec3<i32>(global0.b.x, countOneBits(1i), firstLeadingBit(u_input.a.x))), vec2<i32>(reverseBits(1i << (~global0.c.x % 32u)), reverseBits(-5402i)), global0.c, vec4<i32>(abs(_wgslsmith_mult_i32(-43508i, -1i >> (u_input.e.x % 32u))), _wgslsmith_div_i32(-u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, 5474i), ~1702i)), 1i, 33087i), u_input.d);
    let var_1 = min(1i, 0i);
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.c, global0.d.xw) ^ max(80043i, -2147483647i), var_1), _wgslsmith_clamp_vec3_i32(-max(global0.d.wzy, vec3<i32>(var_1, global0.d.x, u_input.c.x)), abs(-vec3<i32>(-28124i, -11488i, 0i)), vec3<i32>(2147483647i >> (0u % 32u), firstTrailingBit(global0.d.x), select(u_input.a.x, u_input.a.x, true)))), u_input.c, vec4<u32>(~1u, _wgslsmith_sub_u32(0u, global0.c.x), 0u, ~_wgslsmith_add_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(global0.c.xxx, global0.c.yyw))), abs(vec4<i32>(var_1, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, var_1, u_input.a.x, var_1)), global0.d), 2147483647i, -countOneBits(-62098i))), _wgslsmith_add_u32(13910u, 89387u));
    return ~countOneBits(-global0.a | (select(vec3<i32>(0i, u_input.a.x, 2147483647i), global0.d.yzx, true) << (global0.c.zyz % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = 11739u;
    var var_1 = arg_0.a;
    var var_2 = vec2<f32>(-1050f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-646f + -1061f))) * 840f) - arg_2.x));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-1427f, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x)), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f - -167f)), -512f));
    return select(vec4<bool>(arg_0.b.x, any(vec3<bool>(any(arg_0.b), u_input.b > var_1.a.x, arg_0.b.x)), true && !arg_0.b.x, arg_0.b.x), vec4<bool>(~(global0.c.x | 12725u) < ~_wgslsmith_dot_vec2_u32(vec2<u32>(32774u, 1u), vec2<u32>(u_input.e.x, 4294967295u)), !((arg_0.b.x || true) & all(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true))), all(!vec3<bool>(false, arg_0.b.x, false)), arg_0.b.x), vec4<bool>(-_wgslsmith_mod_i32(var_1.d.x, -6383i) < select(_wgslsmith_div_i32(-1i, u_input.c.x), countOneBits(var_1.d.x), all(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), any(vec4<bool>(arg_0.b.x, any(vec2<bool>(arg_0.b.x, false)), any(vec3<bool>(arg_0.b.x, true, true)), arg_0.b.x)), arg_0.b.x, arg_0.b.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = func_4(Struct_2(Struct_1(func_2(), global0.a.yy, _wgslsmith_mult_vec4_u32(global0.c << (var_0.c % vec4<u32>(32u)), var_0.c), _wgslsmith_clamp_vec4_i32(-vec4<i32>(16706i, arg_1.b.x, 0i, 0i), -var_0.d, abs(vec4<i32>(var_0.a.x, u_input.a.x, arg_1.d.x, u_input.c.x))), 74615u), vec2<bool>(true, true)), max(vec3<u32>(func_3(Struct_2(Struct_1(vec3<i32>(u_input.c.x, 26450i, global0.a.x), var_0.b, var_0.c, vec4<i32>(var_0.a.x, arg_1.b.x, -2147483647i, 0i), 1u), vec2<bool>(true, false)), 798f), arg_0, arg_0), ~(var_0.c.zwy | vec3<u32>(4294967295u, global0.e, var_0.c.x))) ^ arg_1.c.xyy, vec4<f32>(_wgslsmith_f_op_f32(round(390f)), -594f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(133f)) + _wgslsmith_f_op_f32(f32(-1f) * -1323f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-334f, 408f)) * _wgslsmith_f_op_f32(864f * 540f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-881f))), 145f)));
    return ~global0.e;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~vec3<i32>(-62699i, 49834i, -max(i32(-1i) * -36502i, 1i));
    let var_1 = -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-var_0.x, -1i) | (~u_input.a.x | (-2147483647i & global0.d.x)), 1i, -_wgslsmith_mult_i32(11048i, -34148i));
    global0 = Struct_1(vec3<i32>(-2147483647i << (0u % 32u), -arg_3.a.x, ~(i32(-1i) * -2147483647i)), vec2<i32>(~select(var_0.x, -var_0.x, 19271u > arg_3.e), -1i), ~abs(global0.c), vec4<i32>(-2147483647i, ~reverseBits(u_input.c.x) | arg_3.d.x, -global0.b.x, -arg_3.d.x), u_input.e.x);
    let var_2 = Struct_2(Struct_1(arg_3.d.wyx, vec2<i32>(global0.a.x, abs(_wgslsmith_dot_vec4_i32(arg_3.d, global0.d))), vec4<u32>(countOneBits(1u), u_input.d & _wgslsmith_add_u32(4294967295u, 0u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 57472u, 4294967295u, 13033u), vec4<u32>(global0.e, 58733u, 2763u, 38597u)) | max(global0.c.x, u_input.e.x)), arg_3.d, 0u >> (max(global0.c.x, 0u) % 32u)), arg_2.xy);
    var var_3 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_1.x), ~abs(countOneBits(arg_3.c.x)) >= _wgslsmith_add_u32(~(~arg_0.x), _wgslsmith_mod_u32(var_2.a.e, arg_0.x) >> (firstTrailingBit(var_2.a.e) % 32u))));
    return Struct_1(abs(global0.d.zxw), vec2<i32>(reverseBits(_wgslsmith_mod_i32(-83256i, ~arg_3.b.x)), -_wgslsmith_sub_i32(func_2().x, var_1)), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.c.zz ^ select(arg_3.c.yy, u_input.e, vec2<bool>(arg_2.x, var_2.b.x)), vec2<u32>(var_2.a.e, arg_3.e)), arg_0.x, _wgslsmith_clamp_u32(max(1u, 4294967295u), 4052u, 0u), 4294967295u), global0.d, ~(~arg_3.e) ^ ~(~func_1(u_input.d, Struct_1(var_2.a.d.xxz, vec2<i32>(arg_3.b.x, -3520i), global0.c, vec4<i32>(62334i, var_2.a.a.x, global0.a.x, -37075i), arg_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x;
    global0 = func_5(_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(global0.c.x, _wgslsmith_clamp_u32(u_input.e.x, 4294967295u, func_1(53578u, Struct_1(vec3<i32>(-2147483647i, -1i, 15229i), global0.a.xx, global0.c, global0.d, 4294967295u))))), vec4<f32>(550f, _wgslsmith_div_f32(-2973f, 2797f), -2464f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-121f, -629f)))))), vec3<bool>(true, true | !any(vec3<bool>(false, false, true)), false), Struct_1(vec3<i32>(abs(-1i << (1u % 32u)), -18349i, _wgslsmith_div_i32(reverseBits(1i), global0.d.x)), vec2<i32>(reverseBits(global0.b.x), -26422i) << (global0.c.yz % vec2<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.c.wzx, vec3<u32>(u_input.e.x, 4294967295u, 1u)), global0.c.x), global0.e, ~70726u ^ abs(u_input.e.x), global0.c.x), ~(-(~vec4<i32>(u_input.b, -2147483647i, 39403i, global0.a.x))), abs(~global0.e)));
    var var_1 = vec3<i32>(u_input.a.x, u_input.b, -5548i);
    var var_2 = select(!any(func_4(Struct_2(Struct_1(global0.d.zzz, u_input.a.xz, global0.c, vec4<i32>(23364i, u_input.b, var_1.x, u_input.b), 22046u), vec2<bool>(false, false)), global0.c.xwy, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2811f, -1517f, -1000f, -1000f) - vec4<f32>(1811f, 811f, -280f, -934f))).yzy), -1i >= abs(_wgslsmith_div_i32(_wgslsmith_div_i32(global0.a.x, 1265i), abs(0i))), true);
    var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, 5184i) & u_input.c.x, u_input.b), -15530i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, 2147483647i), ~(~(u_input.d | ~global0.c.x)), global0.a.x, firstLeadingBit(u_input.a));
}

