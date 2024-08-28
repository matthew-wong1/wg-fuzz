struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(3456u, 47086u, 3746u);

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<bool> {
    global1 = 49532i;
    let var_0 = Struct_2(_wgslsmith_mod_i32(-(arg_0.b.c.x & arg_1.x) & -reverseBits(-1i), -54258i), 0i & max(20338i, ~2147483647i & u_input.b));
    global0 = reverseBits(firstLeadingBit(vec3<u32>(~18368u, 4294967295u, global0.x & _wgslsmith_mod_u32(global0.x, global0.x))));
    let var_1 = var_0;
    let var_2 = Struct_2(arg_0.b.c.x, max(arg_1.x, _wgslsmith_mult_i32(-16909i, u_input.b)));
    return vec3<bool>(arg_0.a, select(all(select(!vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, arg_0.a, arg_0.a), arg_0.a))), arg_0.a, true), ~u_input.a == 5797u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = all(!func_2(Struct_3(all(vec4<bool>(false, false, true, false)), arg_1, -483f), ~u_input.c));
    global1 = 0i;
    global0 = firstTrailingBit(~(~(~(~vec3<u32>(4294967295u, global0.x, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)))));
    global1 = arg_3.x;
    return ~vec4<u32>(~26416u, _wgslsmith_clamp_u32(global0.x, abs(_wgslsmith_add_u32(72504u, u_input.a)), ~15631u), ~0u, u_input.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_2.b;
    let var_1 = arg_2.c;
    let var_2 = arg_2;
    let var_3 = global0.yx;
    var var_4 = -1i;
    return Struct_2(arg_2.c.x, -u_input.b);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(abs(arg_0), arg_1.b.b ^ global0.x), 1u), ~4294967295u);
    global1 = 24181i;
    let var_2 = func_4(!(!(!func_2(Struct_3(false, arg_1.b, -1947f), arg_1.b.c))), func_2(arg_1, reverseBits(vec4<i32>(arg_1.b.c.x, 30851i, arg_1.b.c.x, -15220i)) >> (func_3(-arg_1.b.c.x, Struct_1(-1369f, u_input.e, vec4<i32>(arg_1.b.c.x, 38905i, u_input.c.x, 2147483647i)), _wgslsmith_div_vec2_f32(vec2<f32>(-267f, 1956f), vec2<f32>(arg_1.c, 1167f)), -arg_1.b.c.wx) % vec4<u32>(32u))).xx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a - arg_1.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1.c)), var_1, (abs(vec4<i32>(1767i, arg_1.b.c.x, arg_1.b.c.x, -1i)) | vec4<i32>(-2147483647i, u_input.c.x, 10739i, arg_1.b.c.x)) << (reverseBits(select(vec4<u32>(global0.x, u_input.e, 1u, u_input.a), vec4<u32>(27953u, var_1, 30834u, 4294967295u), false)) % vec4<u32>(32u))));
    let var_3 = countOneBits(_wgslsmith_add_u32(u_input.a << (19241u % 32u), ~(~select(58763u, 39182u, arg_1.a))));
    return Struct_2(2147483647i, firstLeadingBit(u_input.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(var_0.a)), max(u_input.e, arg_0.b), vec4<i32>(min(arg_0.c.x, -41847i), countOneBits(_wgslsmith_div_i32(var_0.c.x << (1u % 32u), firstTrailingBit(arg_0.c.x))), 17097i, arg_1.a));
    var var_2 = !select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), any(vec2<bool>(func_2(Struct_3(false, Struct_1(arg_2.x, var_0.b, vec4<i32>(arg_1.a, var_0.c.x, var_0.c.x, 72177i)), 1073f), u_input.c).x, true)));
    var var_3 = ~arg_0.b;
    let var_4 = select(select(vec3<bool>(any(var_2.zxx), false, true), select(var_2.yyw, select(!vec3<bool>(false, var_2.x, false), select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, false, false), true), true), true), vec3<bool>(select(var_2.x, any(vec4<bool>(false, true, true, true)), true), true, _wgslsmith_mult_i32(u_input.b, -2147483647i) >= u_input.b)), var_2.yyz, !vec3<bool>(all(select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, true, false), vec4<bool>(var_2.x, var_2.x, true, var_2.x))), false, all(vec3<bool>(var_2.x, var_2.x, true))));
    return countOneBits(~(~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c.x;
    var var_0 = _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(1u, ~1u), global0.x & 1993u);
    global1 = _wgslsmith_div_i32(-1i, 1i << (func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -186f), global0.x, vec4<i32>(u_input.c.x, u_input.d.x, 0i, u_input.c.x)), func_1(~73603u, Struct_3(true, Struct_1(-430f, u_input.a, u_input.c), 644f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(366f, 1662f)))))) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-257f)) - -466f))), 19493u, u_input.c);
    let var_2 = Struct_2(abs(i32(-1i) * -10586i), abs(_wgslsmith_sub_i32(-12841i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.c.x, var_1.c.x), vec4<i32>(-13704i, u_input.b, -2147483647i, u_input.b)) & (var_1.c.x | 7833i))));
    var_0 = ~abs(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.x, 31108u), vec3<u32>(var_1.b, global0.x, global0.x)), vec3<u32>(u_input.a, global0.x, var_1.b) >> (vec3<u32>(global0.x, 0u, 1u) % vec3<u32>(32u)))) & 0u;
    let var_3 = (min(1i, ~u_input.b) << (~(~u_input.e) % 32u)) & var_1.c.x;
    let var_4 = Struct_3(false, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2480f - var_1.a)))), 128828u, abs(abs(firstLeadingBit(u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(var_1.a, var_1.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(359f, var_1.a)))));
    var var_5 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1372f, -var_3);
}

