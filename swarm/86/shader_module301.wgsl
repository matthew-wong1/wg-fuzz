struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 45233u;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, true), vec4<u32>(55774u, 4294967295u, 55666u, 4294967295u), vec3<f32>(175f, 631f, -204f), vec3<i32>(0i, -37849i, 9519i));

var<private> global2: array<bool, 27> = array<bool, 27>(true, false, true, true, false, false, true, false, false, true, true, false, true, true, true, false, false, false, false, true, true, true, true, true, false, true, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_2(!(!vec2<bool>(select(true, true, global1.a.x), !global1.a.x)), vec4<u32>(min(~select(global1.b.x, global1.b.x, false), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, global1.b.x), vec3<u32>(1u, 3513u, global1.b.x)), 4294967295u)), 4294967295u, ~(~firstLeadingBit(143518u)), _wgslsmith_sub_u32(global1.b.x, ~_wgslsmith_sub_u32(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x))), global1.c.x, -1504f)), global1.d);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~62790u, var_0.b.x, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(global1.b.x, 1u), ~global1.b.x)), global1.b.zyy, vec3<u32>(1u, firstLeadingBit(4294967295u), 1u));
    global2 = array<bool, 27>();
    global2 = array<bool, 27>();
    let var_2 = 0i;
    return var_2;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec4<i32> {
    var var_0 = vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.b.x >> (4294967295u % 32u), arg_0.b.x), global1.b.x >> (_wgslsmith_clamp_u32(global1.b.x, 0u, 6194u) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~global1.b.wyy, arg_0.b.yww, countOneBits(firstTrailingBit(vec3<u32>(u_input.b.x, 0u, u_input.c)))), vec3<u32>(_wgslsmith_mod_u32(57242u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, arg_0.b.x), vec3<u32>(global1.b.x, 24575u, u_input.c))), ~(global1.b.x << (u_input.c % 32u)), select(1u, _wgslsmith_sub_u32(u_input.c, arg_1.c), !arg_1.a.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(585f + global1.c.x)), _wgslsmith_div_f32(arg_0.c.x, -1287f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * global1.c.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x + 140f), _wgslsmith_f_op_f32(-1000f + arg_0.c.x), _wgslsmith_f_op_f32(-global1.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x), arg_0.c.x, -2305f))), _wgslsmith_f_op_vec3_f32(-arg_0.c), -(_wgslsmith_mod_i32(arg_1.b.x, u_input.d) >> (19304u % 32u)), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(2250i, -22673i, 2147483647i, u_input.d)), min(vec4<i32>(34515i, arg_0.d.x, arg_1.b.x, global1.d.x), -vec4<i32>(arg_0.d.x, 24747i, -56797i, arg_0.d.x))) & vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.d >> (19699u % 32u), -2147483647i ^ arg_0.d.x), arg_1.b.x, -25229i), global1.b.x);
    var var_2 = arg_1;
    let var_3 = u_input.a.xz;
    let var_4 = _wgslsmith_f_op_f32(338f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * arg_0.c.x)));
    return _wgslsmith_mod_vec4_i32(-var_1.d, (min(vec4<i32>(-2147483647i, 7951i, var_1.d.x, -66474i), vec4<i32>(var_2.b.x, 1i, -7330i, -1i) >> (global1.b % vec4<u32>(32u))) & ~max(vec4<i32>(1i, -15011i, var_1.c, 1i), vec4<i32>(-26259i, u_input.d, arg_0.d.x, global1.d.x))) | max(~vec4<i32>(var_1.c, global1.d.x, 16995i, 1i), var_1.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(!select(global1.a, select(vec2<bool>(global1.a.x, global1.a.x), !global1.a, global1.a), !select(vec2<bool>(false, true), global1.a, vec2<bool>(true, false))), vec4<u32>(arg_1.e, _wgslsmith_dot_vec2_u32(arg_3.a.b.xz ^ _wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.a.zy), abs(~arg_3.a.b.yz)), ~(~21910u), ~51003u), arg_3.a.c, _wgslsmith_mod_vec3_i32(arg_0.wyy >> (reverseBits(select(arg_3.a.b.wzw, u_input.b.wxy, vec3<bool>(false, false, true))) % vec3<u32>(32u)), vec3<i32>(arg_0.x, u_input.d, -6950i)));
    global0 = 1443u;
    let var_1 = vec4<i32>(var_0.d.x, -13614i, _wgslsmith_sub_i32(-13569i, arg_0.x), var_0.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-538f, 1919f), arg_3.b.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1209f, 237f, global2[_wgslsmith_index_u32(57126u, 27u)]))))))));
    global1 = Struct_2(global1.a, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, 1u, _wgslsmith_div_u32(arg_1.e, arg_1.e)), _wgslsmith_add_vec3_u32(u_input.b.yxw, vec3<u32>(arg_1.e, 65103u, arg_3.e.e))), arg_3.d, ~(~countOneBits(16550u)), max(0u, ~(~u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -272f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), global1.c.x), func_3(Struct_2(vec2<bool>(false, false), u_input.a << (var_0.b % vec4<u32>(32u)), var_0.c, func_3(arg_3.a, Struct_4(vec2<bool>(true, var_0.a.x), arg_3.e.d.xxy, arg_1.e)).xzx), Struct_4(global1.a, -vec3<i32>(arg_3.a.d.x, 1i, 1i), var_0.b.x ^ 1u)).wyw ^ -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(arg_3.e.d.x, 31257i), ~12392i));
    return 4294967295u >= (~reverseBits(arg_3.e.e) >> (global1.b.x % 32u));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-549f)));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(174f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - var_0))))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(abs(-1000f)))));
    var var_3 = vec2<bool>(!((_wgslsmith_f_op_f32(757f - 2389f) != var_0) != !(global2[_wgslsmith_index_u32(global1.b.x, 27u)] | false)), func_4(~max(vec4<i32>(global1.d.x, 27768i, global1.d.x, 0i), vec4<i32>(-24473i, 1i, 0i, u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-777f, 433f, 2242f) + global1.c), _wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(-273f, -875f, var_0)), -40181i, ~vec4<i32>(2147483647i, u_input.d, -63215i, u_input.d), 4294967295u), global1.d.zy, Struct_3(Struct_2(global1.a, global1.b, vec3<f32>(global1.c.x, -640f, global1.c.x), vec3<i32>(-53838i, -39466i, global1.d.x)), Struct_1(global1.c, global1.c, 16081i, vec4<i32>(u_input.d, global1.d.x, u_input.d, u_input.d), u_input.b.x), func_3(Struct_2(vec2<bool>(true, global1.a.x), u_input.a, vec3<f32>(-188f, global1.c.x, var_0), vec3<i32>(24708i, -2147483647i, -48491i)), Struct_4(vec2<bool>(true, true), vec3<i32>(global1.d.x, u_input.d, u_input.d), 4294967295u)), _wgslsmith_clamp_u32(u_input.c, 20289u, global1.b.x), Struct_1(vec3<f32>(var_0, global1.c.x, -1152f), global1.c, u_input.d, vec4<i32>(-2147483647i, u_input.d, 32360i, u_input.d), u_input.a.x))) | any(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c), global1.c)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x + var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-493f * var_0))), -2541f))), max(global1.d.x, 0i), vec4<i32>(-(u_input.d & -2147483647i) | global1.d.x, ~_wgslsmith_mod_i32(global1.d.x, _wgslsmith_sub_i32(40867i, u_input.d)), global1.d.x, ~global1.d.x), 0u);
    return select(_wgslsmith_div_u32(0u, ~1u), ~abs(4294967295u), !func_4(vec4<i32>(-43139i, u_input.d, 2147483647i, global1.d.x), Struct_1(var_4.a, vec3<f32>(global1.c.x, 381f, 1106f), u_input.d, vec4<i32>(global1.d.x, 13283i, 35860i, 0i), 48439u), -var_4.d.xy, Struct_3(Struct_2(vec2<bool>(var_3.x, global2[_wgslsmith_index_u32(8812u, 27u)]), vec4<u32>(1u, var_4.e, 0u, var_4.e), vec3<f32>(588f, global1.c.x, 937f), global1.d), Struct_1(vec3<f32>(var_4.b.x, var_4.b.x, 1000f), vec3<f32>(-345f, var_0, 1533f), u_input.d, var_4.d, u_input.b.x), vec4<i32>(-17355i, var_4.d.x, 0i, u_input.d), u_input.b.x, Struct_1(vec3<f32>(var_4.b.x, -1847f, global1.c.x), vec3<f32>(-866f, global1.c.x, var_4.a.x), 1i, var_4.d, 4294967295u)))) & 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, -625f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), -514f)), global1.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-global1.c.x), 1f, _wgslsmith_f_op_f32(global1.c.x - 181f)))));
    var var_1 = Struct_4(global1.a, vec3<i32>(-22579i & _wgslsmith_dot_vec3_i32(-vec3<i32>(-49209i, 2147483647i, -35784i), global1.d), firstLeadingBit(global1.d.x), -func_1(max(global1.d, vec3<i32>(30887i, 2147483647i, -46042i)))), ~(~global1.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -581f, 1526f) + global1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_0.wxz, global1.c, vec3<bool>(global2[_wgslsmith_index_u32(var_1.c, 27u)], true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, -1020f, global1.c.x), var_0.yyx))))), -1274i & _wgslsmith_mult_i32(func_1(-global1.d), -1i & _wgslsmith_div_i32(global1.d.x, var_1.b.x)), abs(~abs(vec4<i32>(0i, var_1.b.x, global1.d.x, -46573i))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(global1.b, countOneBits(global1.b)), ~firstLeadingBit(global1.b), global1.b) % vec4<u32>(32u)), global1.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_2.b.x, false)))), 276f, _wgslsmith_f_op_f32(966f * global1.c.x), 1000f) + vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, -176f), global1.c.x)), 1180f));
    var var_4 = var_2;
    let var_5 = func_2();
    var var_6 = u_input.c >> (firstTrailingBit(~(~43267u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zz);
}

