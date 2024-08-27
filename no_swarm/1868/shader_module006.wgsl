struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33718u;

var<private> global1: bool;

var<private> global2: vec4<f32>;

var<private> global3: vec3<f32>;

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(-808f);
    var var_1 = select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), global2.x < -1096f), !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), vec4<bool>(true, true, true, true));
    let var_2 = Struct_2(vec3<f32>(arg_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.b.a + -371f), _wgslsmith_f_op_f32(f32(-1f) * -350f))) + arg_0.a.x), arg_1.b.a), arg_0.b);
    let var_3 = min(reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-16483i, 1i, 2147483647i, 0i), vec4<i32>(11108i, 0i, -4038i, -13692i)), 0i, -1i) & firstTrailingBit(vec3<i32>(1i, 1i, -23913i))), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)) >> (reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 41796u, u_input.a) << (vec3<u32>(0u, 4294967295u, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(4294967295u, u_input.a, 0u)))) % vec3<u32>(32u)));
    let var_4 = !var_1.xyy;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(select(271f, 922f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - -1093f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(892f))))) - 494f));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = 1i;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3.yy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.zy, vec2<f32>(arg_0.a, 575f)) + vec2<f32>(global3.x, arg_0.a))), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(global2.xyy, Struct_1(1957f)), Struct_2(vec3<f32>(1145f, arg_0.a, arg_0.a), arg_0))))) - global2.xw);
    var var_3 = all(vec4<bool>(select(false, false & (572f <= global3.x), false), any(vec3<bool>(true, true, select(true, false, true))), true, true));
    let var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(countOneBits(~vec4<i32>(1i, -2147483647i, 6729i, 12488i))), vec4<i32>(abs(-2147483647i), i32(-1i) * -1i, _wgslsmith_mult_i32(1i, -2147483647i << (u_input.a % 32u)), -2147483647i)), countOneBits(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(23869i, 1i, 1i, -1i) >> (vec4<u32>(u_input.a, 4294967295u, 1u, 0u) % vec4<u32>(32u))), ~vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_div_vec4_i32(vec4<i32>(~0i, -11239i, max(firstLeadingBit(21484i), i32(-1i) * -19427i), 1i), vec4<i32>(-34546i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 2147483647i), vec3<i32>(18994i, 11511i, -28796i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -9246i), -vec2<i32>(19620i, 3507i)), -32681i)));
    return firstTrailingBit(4294967295u);
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_mod_u32(79692u, u_input.a) > (u_input.a << (((1u | u_input.a) << (countOneBits(0u) % 32u)) % 32u));
    global0 = abs(func_2(Struct_1(global2.x)));
    global1 = select(!(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))) < _wgslsmith_f_op_f32(exp2(global2.x))), !any(vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)), u_input.a != u_input.a)), true);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global2.x) * 514f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x * -1285f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.yyz), _wgslsmith_f_op_vec3_f32(exp2(global2.yzx))), global2.xxz)) - _wgslsmith_f_op_vec3_f32(floor(global2.zzx))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -227f)));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(772f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - global2.x)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1473f + global3.x)))), func_1().a.x, _wgslsmith_f_op_f32(abs(-1755f)));
    var var_0 = any(select(select(vec4<bool>(true, true, true, arg_0), vec4<bool>(false, all(vec4<bool>(arg_0, true, true, arg_0)), all(vec3<bool>(false, arg_0, true)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0))), select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, true, true), !vec4<bool>(arg_0, false, arg_0, arg_0)), vec4<bool>(arg_2 > arg_2, false, !arg_0, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, arg_0), !vec4<bool>(true, arg_0, arg_0, false))), !select(!vec4<bool>(arg_0, true, arg_0, false), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, arg_0, false, false), true), vec4<bool>(arg_0, arg_0, arg_0, false))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(global2.x, _wgslsmith_f_op_f32(global3.x - global2.x), _wgslsmith_f_op_f32(ceil(global3.x)))))), func_1().b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a, _wgslsmith_f_op_f32(-var_1.b.a)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-arg_1.b.a)))) - _wgslsmith_f_op_f32(1153f * var_1.b.a)));
    var var_3 = vec2<i32>(2147483647i, arg_2);
    return Struct_1(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(abs(var_2.a))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(arg_3.a, 1000f)), _wgslsmith_f_op_f32(-164f * -848f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 1732f), _wgslsmith_f_op_f32(arg_3.a - global3.x)), vec4<f32>(global3.x, arg_3.a, func_1().b.a, _wgslsmith_f_op_f32(-func_4(false, Struct_2(vec3<f32>(global3.x, global2.x, -437f), Struct_1(arg_2.a)), 1i).a))));
    var var_0 = func_1();
    let var_1 = ~18020u;
    global1 = true;
    let var_2 = 6951i | arg_1;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~u_input.a));
    let var_0 = func_5(_wgslsmith_sub_i32(countOneBits(select(_wgslsmith_sub_i32(-1i, -17413i), _wgslsmith_mod_i32(27689i, 2147483647i), any(vec2<bool>(true, false)))), 1i), select(abs(4930i), -37366i, -23374i < max(max(-2147483647i, 1i), -2147483647i << (u_input.a % 32u))), func_4(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), func_1(), min(1i, _wgslsmith_clamp_i32(1i, abs(0i), _wgslsmith_mod_i32(-39673i, -2147483647i)))), Struct_1(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(round(308f)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(-1460f, -2348f));
    global0 = firstTrailingBit(0u);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(1i, _wgslsmith_mult_i32(-23164i, -48820i)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-2147483647i, 1i)), vec2<i32>(1i, -1i))) << ((select(vec2<u32>(68497u, 52818u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 11312u), vec2<u32>(35757u, u_input.a), vec2<u32>(1u, u_input.a)), vec2<bool>(true, false)) ^ ~(vec2<u32>(u_input.a, 0u) << (vec2<u32>(72590u, 0u) % vec2<u32>(32u)))) % vec2<u32>(32u)), ~(~(~vec4<u32>(25682u, u_input.a, 1436u, 83772u)) << (vec4<u32>(16815u, _wgslsmith_sub_u32(u_input.a, 0u), 4294967295u, abs(u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a * var_1.a)), -942f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-195f)) * func_1().b.a))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), firstLeadingBit(u_input.a >> (u_input.a % 32u)), ~_wgslsmith_mult_u32(53995u, u_input.a), max(53873u, 4294967295u | u_input.a)), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 53499u, 4294967295u)), ~vec4<u32>(13321u, u_input.a, u_input.a, u_input.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 49177u, 14731u, 75974u)))), vec2<f32>(451f, _wgslsmith_f_op_f32(var_0.b.a + -908f)));
}

