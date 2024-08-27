struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(69842u, 40455u);

var<private> global2: array<vec3<i32>, 20>;

var<private> global3: bool;

var<private> global4: vec4<f32> = vec4<f32>(-1195f, 713f, -1900f, 178f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = 1u;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, 915f, global4.x) - vec4<f32>(-1005f, 288f, global4.x, -192f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.x, 1337f, -378f, 156f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1410f, global4.x, global4.x, -227f)))))))) + vec4<f32>(-1000f, -461f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global4.x)))))), -379f));
    let var_1 = all(!vec2<bool>(false & all(vec4<bool>(true, false, false, false)), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.zxw))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f - -521f)), !select(select(vec2<bool>(true, true), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), var_1 || true), vec2<bool>(false, !var_1), !(!vec2<bool>(var_1, false))));
    return vec2<bool>(true, any(!vec2<bool>(all(var_3.b), var_1)));
}

fn func_2() -> u32 {
    var var_0 = select(vec4<bool>(any(vec2<bool>(true, true)) == !any(vec2<bool>(false, false)), false, select(false, any(vec4<bool>(false, false, false, true)) || false, true), any(select(func_3(Struct_1(vec4<u32>(1u, 24298u, 11508u, global1.x), u_input.d, vec2<u32>(global1.x, 7572u))), vec2<bool>(true, true), 0u >= u_input.b.x))), vec4<bool>(true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), func_3(Struct_1(vec4<u32>(24962u, u_input.e.x, 1u, u_input.e.x), u_input.c.x, u_input.b.zx)).x)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(true, true))), vec4<bool>(!any(vec4<bool>(false, true, false, true)), !(_wgslsmith_f_op_f32(select(469f, global4.x, true)) <= _wgslsmith_f_op_f32(global4.x - global4.x)), true, select(true, !all(vec2<bool>(true, false)), true)));
    var var_1 = Struct_1(vec4<u32>(1u, ~1u, 1u, u_input.e.x), _wgslsmith_mod_i32(~(u_input.a.x | u_input.d), u_input.a.x), u_input.e.zy);
    let var_2 = _wgslsmith_mult_vec2_i32(countOneBits(min(u_input.a.xz, -vec2<i32>(var_1.b, var_1.b))), _wgslsmith_div_vec2_i32(abs(abs(-u_input.c)), ~vec2<i32>(u_input.a.x & var_1.b, var_1.b)));
    let var_3 = var_0.x;
    let var_4 = min(vec3<i32>(_wgslsmith_add_i32(~var_1.b, -var_1.b) | countOneBits(select(2147483647i, -76177i, var_0.x)), var_2.x, 2147483647i), u_input.a.wzy);
    return abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.c.x, u_input.b.x, max(var_1.a.x ^ global1.x, 1u)), min(~u_input.b.x, firstTrailingBit(u_input.b.x)) >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.e.x, global1.x, u_input.b.x, 4294967295u)) % 32u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, 1145f, global4.x) * vec4<f32>(-1140f, -546f, global4.x, -873f)) - vec4<f32>(2550f, 881f, global4.x, global4.x)))))));
    let var_0 = u_input.a << (~vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, global1.x), u_input.b.zz, vec2<bool>(arg_0, arg_0)), select(vec2<u32>(1u, 46555u), u_input.b.zx, true)), global1.x, ~u_input.e.x | ~1u, func_2() | u_input.e.x) % vec4<u32>(32u));
    let var_1 = Struct_2(global4.x, !vec2<bool>(select(false, true, arg_0), arg_0 || (u_input.d < u_input.c.x)));
    let var_2 = arg_0;
    var var_3 = vec3<i32>(0i, _wgslsmith_sub_i32(firstLeadingBit(~0i) << (~_wgslsmith_sub_u32(u_input.b.x, 42523u) % 32u), u_input.d), ~2147483647i);
    return Struct_1(u_input.b, 1i, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(global1.x, global1.x)), u_input.b.xx) ^ vec2<u32>(u_input.e.x, u_input.b.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(~(1u ^ _wgslsmith_div_u32(4294967295u, ~arg_3.a.x)), 63048u, max(1u, abs(select(0u, arg_3.a.x, true))) ^ _wgslsmith_clamp_u32(~abs(arg_3.a.x), func_1(true).c.x, global1.x), 4294967295u);
    global2 = array<vec3<i32>, 20>();
    let var_1 = 1u;
    let var_2 = Struct_2(arg_0.x, !select(select(vec2<bool>(true, true), func_3(arg_1), false), vec2<bool>(true, all(vec4<bool>(false, true, false, false))), func_3(Struct_1(vec4<u32>(arg_3.c.x, var_1, 4294967295u, u_input.e.x), arg_1.b, vec2<u32>(4294967295u, 4294967295u))).x));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1502f + arg_0.x) * _wgslsmith_div_f32(arg_0.x, -1068f)), 2407f, _wgslsmith_div_f32(849f, -586f), _wgslsmith_f_op_f32(-global4.x)) + vec4<f32>(-1794f, _wgslsmith_f_op_f32(sign(2185f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(trunc(var_2.a)))))));
    return arg_1;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(select(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true), true, !all(vec3<bool>(true, true, true)), any(select(vec4<bool>(func_3(Struct_1(vec4<u32>(1u, 18297u, 1u, global1.x), -192i, u_input.b.yz)).x, select(false, true, true), true, global4.x != arg_0.x), vec4<bool>(true, true, true, true), true)));
    global1 = firstLeadingBit(~(~func_4(vec4<f32>(global4.x, global4.x, -122f, global4.x), arg_1, arg_2.b, arg_1).c));
    let var_1 = ~0i;
    var var_2 = ~1u;
    var_2 = firstLeadingBit(~(~abs(1u) ^ (_wgslsmith_div_u32(1u, arg_1.c.x) ^ arg_1.a.x)));
    return Struct_1(firstTrailingBit(abs(max(u_input.b << (vec4<u32>(36236u, global1.x, arg_1.a.x, u_input.e.x) % vec4<u32>(32u)), select(vec4<u32>(global1.x, u_input.b.x, arg_1.c.x, 47053u), vec4<u32>(44409u, 6849u, arg_1.a.x, 36437u), false)))), arg_1.b, vec2<u32>(_wgslsmith_mod_u32(arg_2.c.x, firstLeadingBit(1u)), 23850u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    var var_0 = (u_input.b.zw >> (u_input.e.yy % vec2<u32>(32u))) >> (reverseBits(u_input.b.xy) % vec2<u32>(32u));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, 1861f)), func_4(vec4<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * 1562f)), global4.x), func_1(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))), ~0i, func_1(any(vec3<bool>(true, true, true)))), func_1(!any(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(abs(global4.x)))));
    var var_3 = any(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global0 = all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), true));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - 541f) - -470f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.yy) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global4.zw, global4.wx, vec2<bool>(false, false))))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -330f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(595f - 707f), _wgslsmith_f_op_f32(1000f * 1860f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(191f, global4.x) * global4.xw) - vec2<f32>(-1249f, var_2))))));
    let var_5 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, var_2) * global4.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.xz)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))))), Struct_1(u_input.b, u_input.c.x, vec2<u32>(~44346u, _wgslsmith_dot_vec4_u32(vec4<u32>(80015u, var_0.x, 16090u, var_0.x), u_input.b) & var_0.x)), func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(905f))), 256f, _wgslsmith_f_op_f32(324f * _wgslsmith_f_op_f32(-global4.x)), var_4.x), func_1(all(vec2<bool>(true, false))), 34857i, func_5(vec2<f32>(_wgslsmith_f_op_f32(var_4.x - 1000f), _wgslsmith_div_f32(global4.x, var_4.x)), func_1(true), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.e.x, var_0.x, 66512u), var_1.a), var_1.b, vec2<u32>(global1.x, var_1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true).c.x);
}

