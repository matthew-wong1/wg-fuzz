struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(190f, -435f);

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(-1i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    return Struct_1(select(firstTrailingBit(19343i), _wgslsmith_add_i32(0i, u_input.c) | global0.a, arg_0.x <= (countOneBits(2147483647i) ^ (u_input.b.x << (u_input.d.x % 32u)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<bool>) -> vec4<i32> {
    global0 = func_2(_wgslsmith_clamp_vec2_i32(firstLeadingBit(abs(u_input.b.zx)), ~vec2<i32>(1i, _wgslsmith_sub_i32(-14925i, u_input.c)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xy, u_input.a.xy), u_input.b.zx), -2147483647i)));
    let var_0 = func_2(u_input.a.xx);
    let var_1 = func_2(-(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, 0i), u_input.b.xy, u_input.b.yy), -u_input.a.yw) & u_input.b.yx));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(10614u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, arg_2), _wgslsmith_mult_u32(~u_input.e.x, ~arg_2), _wgslsmith_clamp_u32(~64438u, ~4294967295u, ~arg_2)), _wgslsmith_mult_u32(~(~1u), ~(~u_input.d.x))), abs(select(~(~arg_2), 2090u, any(!vec3<bool>(arg_1.x, arg_1.x, false)))), 28325u, 55588u);
    global3 = -_wgslsmith_add_i32(~(~_wgslsmith_mod_i32(u_input.a.x, 2147483647i)), -(~var_1.a) >> (_wgslsmith_mult_u32(select(u_input.d.x, 55941u, arg_3.x), max(0u, arg_2)) % 32u));
    return _wgslsmith_sub_vec4_i32(abs(min(-countOneBits(vec4<i32>(-2147483647i, -1720i, var_0.a, global0.a)), vec4<i32>(38821i | var_1.a, var_0.a, 17262i, -26376i))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-336i, -1i), -62774i), i32(-1i) * -18051i, 0i, 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global4 = func_2(max(firstTrailingBit(vec2<i32>(-31075i, global0.a | arg_2.a)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3, -arg_0.a), abs(min(u_input.b.yz, vec2<i32>(14469i, -22528i))))));
    var var_0 = !((-(37452i & global0.a) > 0i) & all(vec3<bool>(true, true, true)));
    let var_1 = select(_wgslsmith_clamp_u32(u_input.d.x, ~_wgslsmith_add_u32(max(u_input.d.x, 76514u), ~47690u), ~21631u), reverseBits(u_input.d.x) | (u_input.e.x | u_input.e.x), !any(vec4<bool>(true, true, true, true)));
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, _wgslsmith_div_i32(global0.a, 2147483647i), -global4.a)), vec3<i32>(arg_3, global0.a, -countOneBits(global4.a))));
    return func_2(u_input.b.xy);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = func_4(Struct_1(countOneBits(global4.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1800f)))), func_2(reverseBits(~_wgslsmith_clamp_vec2_i32(u_input.b.yz, vec2<i32>(1i, -1i), vec2<i32>(-1i, arg_1.a)))), _wgslsmith_dot_vec4_i32(~(u_input.a & func_3(Struct_1(u_input.a.x), vec3<bool>(false, true, true), u_input.d.x, vec4<bool>(true, false, false, false))), select(u_input.a << (firstLeadingBit(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.d.x)) % vec4<u32>(32u)), reverseBits(-vec4<i32>(1i, global0.a, 1i, arg_1.a)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), true))));
    var var_0 = arg_2;
    var var_1 = reverseBits(func_3(arg_1, vec3<bool>(any(vec3<bool>(false, true, false)), true, false), u_input.e.x, vec4<bool>(false, true, true, true)) << (vec4<u32>(select(_wgslsmith_sub_u32(u_input.e.x, u_input.d.x), abs(u_input.e.x), any(vec2<bool>(false, false))), 113938u, abs(u_input.e.x) | 1u, 0u) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x + global2.x), 1587f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(325f, global2.x))), 653f));
    global0 = func_4(Struct_1(-24007i), arg_0, Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-var_1.zzw, -vec3<i32>(u_input.b.x, -1i, -11365i)), _wgslsmith_add_vec3_i32(var_1.ywx, u_input.a.wzz))), 1i);
    return Struct_1(_wgslsmith_sub_i32(0i, -2147483647i));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = Struct_1(global0.a);
    var var_2 = var_1;
    var var_3 = ~firstLeadingBit(max(-1i, global0.a));
    var var_4 = reverseBits(u_input.a.wwx);
    return func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x - -229f))), func_4(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), arg_1, Struct_1(1i)), global2.x, Struct_1(i32(-1i) * -4476i), -_wgslsmith_sub_i32(global4.a & global4.a, 1i)), Struct_1(-_wgslsmith_mult_i32(-global0.a, _wgslsmith_mult_i32(2147483647i, 0i))));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = ~4294967295u;
    global4 = Struct_1(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(-27082i, arg_0.a, -639i)) | (vec3<i32>(2147483647i, -29092i, global0.a) & u_input.b), u_input.b), countOneBits(vec3<i32>(global4.a, global0.a, 0i) | vec3<i32>(u_input.c, 2147483647i, 14652i)) | ~max(u_input.a.xyx, u_input.b)));
    var var_1 = Struct_1(~u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(global2.x));
    global3 = -global4.a;
    return arg_0;
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    return _wgslsmith_mult_u32(u_input.d.x, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(!vec3<bool>(global4.a == global0.a, select(true, false, false), all(vec4<bool>(true, true, true, false))), func_6(func_5(~vec2<u32>(93646u, u_input.e.x), func_1(global2.x, Struct_1(1i), Struct_1(0i)), Struct_1(u_input.b.x)), 9229i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec3<bool>(false, true, false))), Struct_1(-2147483647i)) & select(countOneBits(min(1u ^ u_input.e.x, 31930u << (u_input.d.x % 32u))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.e.x), u_input.e.x), 32352u), any(vec2<bool>(false, false)) & (any(vec2<bool>(false, true)) | true));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1144f, _wgslsmith_f_op_f32(abs(-235f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -727f)), global2.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(591f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(288f, global2.x, global2.x) * vec3<f32>(global2.x, global2.x, global2.x)), any(vec4<bool>(false, true, true, false)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1083f, 717f, global2.x)))))));
    global0 = Struct_1(reverseBits(abs(_wgslsmith_mult_i32(59781i, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(1i, 52848i))))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-global2.x));
    var var_3 = u_input.e.x;
    var var_4 = _wgslsmith_mod_u32(var_0, _wgslsmith_mod_u32(61620u, select(1160u, 6373u, false) | var_0) >> (~1u % 32u));
    global4 = Struct_1(_wgslsmith_add_i32(func_6(func_1(_wgslsmith_div_f32(420f, 393f), Struct_1(-1i), func_5(vec2<u32>(var_0, 56904u), Struct_1(-13079i), Struct_1(-2147483647i))), abs(1i)).a, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(7420u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_0, 67445u, var_0) & vec4<u32>(11430u, var_0, var_0, 1u), vec4<u32>(var_0, u_input.e.x, u_input.e.x, 1u) >> (vec4<u32>(4294967295u, var_0, 36577u, 29562u) % vec4<u32>(32u))), countOneBits(~var_0), u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1070f, var_2.x) - vec3<f32>(global2.x, var_2.x, -277f)))));
}

