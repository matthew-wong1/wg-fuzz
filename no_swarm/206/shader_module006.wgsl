struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: Struct_2 = Struct_2(4665i, vec2<i32>(-57468i, 1i), vec4<f32>(-2335f, 355f, 1033f, 909f), vec4<f32>(1184f, 1899f, -791f, -1241f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = global0.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f * 725f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1206f + global2.a.c.x), _wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c.x), -1480f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_2(global3.a, abs(max(~select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(2147483647i, 1i), global2.b.a.ww), global0.b)), vec4<f32>(-507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(-global0.d.x)) + global0.d.x), _wgslsmith_f_op_f32(func_3(0i, global2.a)), -458f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-251f, _wgslsmith_f_op_f32(520f * 616f), 1f, global1.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)))));
    return Struct_3(global2.a, Struct_1(select(global1.b.a, global1.b.a, select(select(global1.b.a.x, global2.b.a.x, global1.b.a.x), all(vec4<bool>(true, global2.b.a.x, true, false)), global2.b.a.x))), global1.a.c.zw);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.b, 60719u)), ~vec2<u32>(4294967295u, ~u_input.c)), global3.a, ~(~vec2<u32>(76767u >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(43541u, u_input.b), vec2<u32>(u_input.b, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~arg_0.a.a, Struct_2(~(-28593i), _wgslsmith_mod_vec2_i32(vec2<i32>(-23122i, -18127i), countOneBits(vec2<i32>(global3.a, 25756i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 278f, global0.c.x, var_0.a.d.x)), vec4<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(arg_0.c.x - global2.c.x), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(min(global3.d.x, 230f)))))));
    var_0 = Struct_3(func_2(vec2<u32>(49936u, ~min(u_input.c, u_input.b)), arg_1.x, max(~vec2<u32>(u_input.b, 33739u) << (firstTrailingBit(vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)), ~vec2<u32>(0u, 1u))).a, Struct_1(!(!vec4<bool>(global1.b.a.x, arg_2.a.x, false, var_0.b.a.x))), _wgslsmith_f_op_vec2_f32(-arg_0.a.c.wz));
    global2 = func_2(abs(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 10829u), arg_2.a.zx), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, u_input.c)), max(vec2<u32>(66442u, u_input.b), vec2<u32>(1986u, 4294967295u))), vec2<u32>(~u_input.c, ~1537u))), 2147483647i, abs(vec2<u32>(_wgslsmith_sub_u32(u_input.b, ~u_input.c), u_input.c)));
    let var_2 = global0.a;
    return func_2(vec2<u32>(abs(_wgslsmith_div_u32(abs(30665u), _wgslsmith_dot_vec4_u32(vec4<u32>(26112u, 1u, u_input.b, u_input.c), vec4<u32>(u_input.c, 30050u, 1u, u_input.b)))), ~4735u), _wgslsmith_mod_i32(_wgslsmith_div_i32(-arg_1.x, -5904i), u_input.a), ~abs(~vec2<u32>(4294967295u, 12854u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 66350u, 4294967295u), vec3<u32>(46474u, 1u, _wgslsmith_clamp_u32(50701u, 31849u, 28015u)))), select(_wgslsmith_add_vec3_u32(~vec3<u32>(8766u, u_input.c, 1u), firstLeadingBit(vec3<u32>(927u, 0u, 0u))), ~(vec3<u32>(0u, 1u, u_input.b) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), vec3<bool>(any(global2.b.a.yw), true, func_2(vec2<u32>(u_input.c, u_input.b), 1i, vec2<u32>(72298u, u_input.b)).b.a.x)) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 13878u, u_input.c, 0u), abs(vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.c))), ~4294967295u ^ u_input.b, _wgslsmith_div_u32(u_input.c, u_input.b)) % vec3<u32>(32u)));
    var var_1 = func_1(func_1(func_2(var_0.xy, 43564i, var_0.yz), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global3.a, -4318i, -6725i), _wgslsmith_add_vec3_i32(vec3<i32>(global2.a.a, global3.a, 1i) | vec3<i32>(-1i, 0i, 7570i), vec3<i32>(global2.a.a, -19309i, -1i) << (vec3<u32>(u_input.b, 2072u, u_input.c) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(-1i, 1934i), -2147483647i, 0i)), global1.b), -(~vec3<i32>(_wgslsmith_mod_i32(arg_1.a.a, 35527i), reverseBits(-2147483647i), arg_1.a.a)), global1.b).a.a;
    let var_2 = any(!global1.b.a.wxy);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-451f)))), 643f), _wgslsmith_f_op_f32(-451f + arg_1.a.c.x), global3.d.x));
    let var_4 = reverseBits(_wgslsmith_clamp_u32(reverseBits(41244u), _wgslsmith_clamp_u32(firstTrailingBit(1u << (u_input.c % 32u)), min(select(4294967295u, var_0.x, global2.b.a.x), 1u), select(u_input.b, 4294967295u, var_2) | 22847u), _wgslsmith_mod_u32(1u ^ _wgslsmith_mult_u32(u_input.c, 32187u), _wgslsmith_div_u32(~var_0.x, ~34605u))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-309f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.x)) + -599f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(func_4(Struct_1(vec4<bool>(global2.b.a.x, global2.b.a.x, global1.b.a.x, true)), func_1(Struct_3(global1.a, Struct_1(global1.b.a), global3.c.yx), vec3<i32>(global0.a, 1i, global1.a.b.x), global1.b), false && global2.b.a.x, _wgslsmith_f_op_f32(floor(global3.c.x))))), _wgslsmith_f_op_f32(-global1.c.x)) - func_2(_wgslsmith_clamp_vec2_u32(min(~vec2<u32>(u_input.b, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 0u))), ~max(vec2<u32>(u_input.c, 95635u), vec2<u32>(u_input.b, u_input.c)), select(vec2<u32>(1u, u_input.c) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(0u, 15939u), vec2<bool>(false, global1.b.a.x))), _wgslsmith_add_i32(u_input.a, ~(-global0.b.x)), ~(~vec2<u32>(4294967295u, 38608u) ^ vec2<u32>(25995u, u_input.b))).c);
    let var_1 = _wgslsmith_f_op_f32(exp2(global2.c.x));
    let var_2 = 4294967295u;
    global1 = Struct_3(Struct_2(func_2(~(~vec2<u32>(var_2, u_input.b)), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(global3.a, global2.a.a)), max(~vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(var_2, var_2))).a.a, global1.a.b >> (firstTrailingBit(select(vec2<u32>(var_2, u_input.c), vec2<u32>(var_2, 50533u), true)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 1825f, 357f, -591f)))), global3.c), Struct_1(func_1(Struct_3(func_2(vec2<u32>(u_input.c, 4294967295u), 1i, vec2<u32>(0u, 62857u)).a, Struct_1(vec4<bool>(global1.b.a.x, false, global1.b.a.x, false)), global2.c), ~(-vec3<i32>(0i, global1.a.b.x, 2147483647i)), func_1(func_2(vec2<u32>(var_2, 7293u), global3.b.x, vec2<u32>(u_input.b, 47831u)), select(vec3<i32>(global3.b.x, global0.b.x, global1.a.b.x), vec3<i32>(global3.a, global2.a.a, 32117i), global1.b.a.x), global2.b).b).b.a), vec2<f32>(global2.a.c.x, _wgslsmith_div_f32(-494f, 898f)));
    let var_3 = global2.b.a;
    let var_4 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2946i, abs(14259i), -global3.a) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.c, 15941u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 17164u, 4294967295u), vec3<u32>(u_input.b, 109990u, u_input.b)), vec3<u32>(36457u, 4294967295u, u_input.c)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(-1i), abs(20551i)), firstLeadingBit(5267i) >> ((9789u ^ var_2) % 32u), ~global1.a.b.x & min(global1.a.a, global0.a))), _wgslsmith_sub_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.a, -280i, u_input.a), vec3<i32>(global1.a.a, 35091i, global3.a))), -vec3<i32>(-25230i, 29779i, -13880i)) & vec3<i32>(-_wgslsmith_add_i32(28767i, global3.b.x), -2147483647i ^ global3.b.x, ~(global2.a.a | 0i)));
    var var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.c.x)), -202f), _wgslsmith_f_op_f32(f32(-1f) * -478f)) * _wgslsmith_f_op_f32(func_3(func_1(func_1(Struct_3(Struct_2(-2147483647i, vec2<i32>(global2.a.b.x, var_4.x), vec4<f32>(845f, global0.c.x, var_1, global0.d.x), global2.a.d), Struct_1(global1.b.a), vec2<f32>(-1000f, -151f)), vec3<i32>(global3.b.x, global0.a, global2.a.b.x), Struct_1(global2.b.a)), vec3<i32>(1i, 1i, u_input.a), global2.b).a.a, Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-9476i, 0i), global1.a.b), vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, var_0.x, 235f, -1110f)), vec4<f32>(global0.c.x, global3.c.x, -683f, 1484f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global3.b.x, global2.a.a, -1i), vec4<i32>(-2977i, -1074i, u_input.a, global2.a.b.x)) & (-vec4<i32>(global2.a.b.x, global2.a.a, global0.b.x, var_4.x) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_4.x, global1.a.a, 17499i, global2.a.b.x), vec4<i32>(global0.b.x, 0i, u_input.a, -2147483647i))), -vec4<i32>(1i, 2147483647i, -38269i, 0i)));
}

