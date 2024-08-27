struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-881f, vec4<i32>(-1i, -9249i, -9873i, 6929i), 0u, vec3<i32>(1i, -20101i, i32(-2147483648)), vec4<f32>(-297f, 529f, -132f, 808f));

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 14> = array<i32, 14>(2147483647i, 7755i, -1i, 72939i, 12919i, -1330i, -1i, 75502i, -19383i, 0i, 0i, -47320i, 1i, -15594i);

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<u32> {
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global0.c, u_input.a), ~reverseBits(vec3<u32>(70762u, ~4294967295u, abs(39680u))));
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(abs(global0.a)))));
    let var_2 = reverseBits(~(~68254u) & (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, global0.c))) | ~_wgslsmith_div_u32(global1.x, 1u)));
    var var_3 = !(_wgslsmith_sub_i32(2147483647i, 1i) > _wgslsmith_clamp_i32(global0.b.x, 17609i, arg_1));
    return global1.xz;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<u32>) -> vec4<i32> {
    global2 = array<i32, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(global0.e.yyw * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global3.xyy)))))));
    global1 = ~vec3<u32>(firstTrailingBit(u_input.c.x) << (global0.c % 32u), global1.x, global1.x) ^ vec3<u32>(16367u, max(_wgslsmith_add_u32(30284u, ~global0.c), arg_3.x), _wgslsmith_add_u32(26465u ^ global0.c, u_input.a));
    var var_1 = Struct_1(_wgslsmith_div_f32(-1000f, 488f), _wgslsmith_clamp_vec4_i32(firstTrailingBit(reverseBits(_wgslsmith_add_vec4_i32(global0.b, vec4<i32>(arg_0.x, u_input.b.x, global0.d.x, 472i)))), vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(-6618i), -1i), abs(-21149i), _wgslsmith_div_i32(_wgslsmith_sub_i32(-43173i, 45507i), 2147483647i), global2[_wgslsmith_index_u32(arg_3.x, 14u)]), global0.b), abs(~(_wgslsmith_dot_vec3_u32(vec3<u32>(69835u, arg_3.x, 1u), vec3<u32>(global1.x, u_input.c.x, 0u)) & _wgslsmith_mult_u32(global1.x, 0u))), arg_0, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.e))));
    return vec4<i32>(max(i32(-1i) * -13739i, firstTrailingBit(_wgslsmith_div_i32(1i, 1i))), countOneBits(reverseBits(-13022i)), _wgslsmith_div_i32(arg_2, -(arg_2 ^ 16507i)), -_wgslsmith_add_i32(~_wgslsmith_div_i32(arg_0.x, 12409i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(9544i, 1i, 0i, -2147483647i), global0.b, true), firstTrailingBit(var_1.b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec3<u32> {
    var var_0 = Struct_1(-497f, vec4<i32>(_wgslsmith_mod_i32(-1i, ~1i), global2[_wgslsmith_index_u32(~(~global1.x), 14u)], -9833i, ~global0.d.x >> (u_input.c.x % 32u)), global1.x, u_input.b.xww, global0.e);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - arg_0.x) - _wgslsmith_f_op_f32(round(global3.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), global3.x, 315f);
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))) * 809f))), -vec4<i32>(~(-2611i), 33125i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], var_0.d.x), i32(-1i) * -5070i) ^ func_4(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global0.b.x, -2147483647i), vec3<i32>(1i, global2[_wgslsmith_index_u32(0u, 14u)], u_input.b.x)), var_0.d ^ global0.d), select(!vec4<bool>(false, false, arg_2, true), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, arg_1.x, true, arg_2)), select(vec4<bool>(arg_2, arg_2, arg_1.x, true), vec4<bool>(false, arg_2, arg_1.x, arg_2), vec4<bool>(true, false, arg_1.x, true))), var_0.d.x, func_3(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 14u)], -1i), 2147483647i)), global1.x, -(u_input.b.wxz & u_input.b.zwy), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1173f + 1716f)), _wgslsmith_f_op_f32(-global0.a), var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1237f * -419f), -395f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(331f, _wgslsmith_f_op_f32(round(-1275f)), _wgslsmith_f_op_f32(-global3.x), var_0.a), vec4<f32>(-558f, _wgslsmith_f_op_f32(abs(global3.x)), -641f, _wgslsmith_f_op_f32(1032f * global3.x)), arg_1.x)), all(vec4<bool>(arg_2 | true, arg_2, arg_1.x, !arg_2)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_0.e.x)), _wgslsmith_add_vec4_i32(func_4(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.d.x, u_input.b.x, var_0.d.x), u_input.b.wwx << (vec3<u32>(33398u, u_input.a, 5972u) % vec3<u32>(32u)), var_0.b.xzw), !vec4<bool>(false, arg_2, false, true), var_0.b.x, vec2<u32>(firstLeadingBit(4294967295u), u_input.a)), u_input.b), 15153u, var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(sign(-1870f)))), -1172f, 337f, global3.x)));
    let var_3 = arg_0;
    return firstLeadingBit(vec3<u32>(max(var_0.c, var_0.c), ~_wgslsmith_sub_u32(38609u, global0.c), _wgslsmith_div_u32(49879u, ~1u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    global2 = array<i32, 14>();
    global1 = ~(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.c, global1.x, 22535u), vec3<u32>(29556u, 0u, 4294967295u))));
    global1 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, ~(~global0.c), firstTrailingBit(~98085u)), ~((vec3<u32>(45493u, global0.c, 0u) << (vec3<u32>(global0.c, u_input.a, global0.c) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, u_input.c.x)) % vec3<u32>(32u)))));
    let var_0 = select(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c, u_input.c.x, arg_0.c) >> (vec3<u32>(66135u, 57094u, arg_0.c) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 27072u, global0.c), vec3<u32>(11186u, 1u, 10842u), vec3<u32>(arg_0.c, global1.x, 1u))) >> ((vec3<u32>(0u, _wgslsmith_mult_u32(1u, 1u), 4294967295u) | ~func_2(global0.e.xyx, vec3<bool>(true, arg_1.x, arg_1.x), false)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(1u, global0.c, global1.x)) << (~(vec3<u32>(global0.c, 71108u, 553u) | vec3<u32>(58060u, 72887u, 77117u)) % vec3<u32>(32u)), vec3<u32>(global1.x, 4294967295u >> (~global1.x % 32u), max(global0.c, 1u))), ~_wgslsmith_dot_vec3_i32(~u_input.b.zyx, _wgslsmith_mult_vec3_i32(arg_0.d, global0.d)) < global2[_wgslsmith_index_u32(~arg_0.c & u_input.a, 14u)]);
    var var_1 = arg_0;
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(1u, 0u, global0.c, 107070u))), vec4<u32>(var_0.x, var_1.c, global0.c, var_1.c) >> (vec4<u32>(arg_0.c, 0u, arg_0.c, 30300u) % vec4<u32>(32u))) & _wgslsmith_sub_u32(arg_0.c, ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(16284u, func_1(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global3.x + 1404f)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(global0.c, 14u)]), u_input.b.wx), 4088i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(37085u, 14u)], -2147483647i), global0.b.ww), ~global0.d.x), 4294967295u, vec3<i32>(i32(-1i) * -18851i, ~global0.b.x, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(global0.e.x, global0.e.x, -504f, 220f)))), select(vec3<bool>(false, true, true), vec3<bool>(true, false, any(vec4<bool>(true, false, false, false))), all(vec3<bool>(true, true, true)))), 11105u);
    var var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(abs(abs(1u)), ~0u), _wgslsmith_mult_vec2_u32(select(reverseBits(vec2<u32>(16477u, u_input.a)), countOneBits(vec2<u32>(0u, global1.x)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), vec2<u32>(~var_0.x, u_input.a))), reverseBits(firstLeadingBit(abs(vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 55282u)))), -func_4(-vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 14u)], -3273i), vec4<bool>(all(vec4<bool>(true, true, true, true)), global3.x >= global3.x, true, true), select(~1i, -21065i, u_input.b.x == global0.b.x), ~(~var_0.xz)).x);
}

