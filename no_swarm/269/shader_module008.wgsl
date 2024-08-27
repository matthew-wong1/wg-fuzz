struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, false, false, false), 3921u, vec3<u32>(20706u, 0u, 0u), vec2<bool>(false, true));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false, vec2<bool>(true, true), -436f, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true), -1771f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, true), -1954f, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false), -1235f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, true), 112f, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, true), 1395f, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, false), -229f, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(true, true), -131f, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(false, false), -1160f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, false), -218f, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, true), 261f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, false), -778f, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(false, true), 550f, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, false), 1240f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, false), -648f, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, true), 2003f, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false), 498f, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true), -1105f, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(true, false), -1041f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, true), -219f, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, false), 618f, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, true), 694f, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(true, false), -444f, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, false), -314f, vec2<bool>(true, false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, -min(_wgslsmith_dot_vec2_i32(global0.xx, global0.xx), 4958i), i32(-1i) * -25476i, u_input.a), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(0i, 23517i, global0.x, u_input.a)) >> (~vec4<u32>(45427u, global1.c.x, 47961u, global1.b) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(abs(-23052i)), _wgslsmith_div_i32(max(u_input.a, global0.x), abs(global0.x)), u_input.a, _wgslsmith_mult_i32(abs(-35038i), 1i))));
    global2 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) * vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec4<f32>(arg_0, arg_0, 1000f, 666f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1973f, 1429f, 965f, 364f), vec4<f32>(1109f, arg_0, 573f, arg_0), vec4<bool>(false, arg_1.x, true, arg_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(max(2059f, -528f)), arg_0), reverseBits(34999u) >= select(_wgslsmith_sub_u32(~29116u, _wgslsmith_dot_vec2_u32(global1.c.zx, vec2<u32>(0u, global1.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 3200u), global1.c.yz) << (4294967295u % 32u), true)));
    var var_1 = global0.yw;
    let var_2 = ~(~1u);
    return var_2;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_2(vec4<bool>(false, all(select(!global1.a, !vec4<bool>(false, false, true, global1.a.x), !global1.a)), global1.d.x, false), arg_2.x, ~(~vec3<u32>(firstLeadingBit(global1.b), global1.b, global1.c.x)), !select(select(!global1.d, global1.d, any(global1.a)), select(global1.d, vec2<bool>(global1.a.x, global1.d.x), vec2<bool>(true, false)), true));
    var var_1 = global2[_wgslsmith_index_u32(9684u, 24u)];
    var var_2 = firstTrailingBit(0u);
    var_2 = countOneBits(~arg_2.x);
    var var_3 = Struct_2(vec4<bool>(!(-u_input.a >= ~arg_0.x), true, any(!vec4<bool>(var_0.d.x, true, var_1.a, global1.d.x)), all(vec4<bool>(select(var_0.d.x, false, true), any(vec4<bool>(false, false, false, var_0.a.x)), false, var_0.d.x))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(firstTrailingBit(var_0.c.x), _wgslsmith_add_u32(var_0.c.x, 4294967295u))), var_0.c.xy), abs(vec3<u32>(global1.c.x, global1.c.x, 4294967295u)) ^ firstLeadingBit(abs(abs(vec3<u32>(arg_2.x, 88126u, arg_1.x)))), var_1.d);
    return var_3.a.zz;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = Struct_1(global1.a.x, func_4(global0.xxw, vec4<u32>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -344f), global1.d), global1.c.x, 1u, 0u), ~vec4<u32>(func_3(-293f, vec2<bool>(global1.d.x, global1.a.x)), _wgslsmith_clamp_u32(28606u, 0u, global1.c.x), _wgslsmith_sub_u32(global1.c.x, 4294967295u), ~global1.c.x)), _wgslsmith_f_op_f32(199f * arg_1.c), vec2<bool>(true, func_4(reverseBits(global0.yxw) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, -2416i), global0.wxw), select(vec4<u32>(global1.c.x, 32507u, global1.b, 0u), vec4<u32>(4294967295u, global1.b, global1.b, 52368u), select(global1.a, vec4<bool>(false, false, true, false), vec4<bool>(global1.d.x, global1.d.x, false, global1.d.x))), ~min(vec4<u32>(global1.b, 0u, global1.b, global1.c.x), vec4<u32>(1u, 61422u, global1.b, global1.b))).x));
    let var_1 = all(select(select(select(func_4(vec3<i32>(-27343i, -63471i, -26490i), vec4<u32>(1u, global1.b, 44185u, 4294967295u), vec4<u32>(4294967295u, 1u, global1.b, global1.b)), !var_0.b, select(global1.a.yw, global1.d, vec2<bool>(false, global1.a.x))), vec2<bool>(var_0.d.x, false), 4294967295u > global1.b), !vec2<bool>(true, !var_0.b.x), select(var_0.b, var_0.d, !vec2<bool>(var_0.d.x, global1.d.x))));
    var var_2 = global1.d.x;
    var var_3 = global1.a.yw;
    let var_4 = u_input.a << (global1.b % 32u);
    return abs(global1.c ^ reverseBits(~(~global1.c)));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32) -> Struct_3 {
    global2 = array<Struct_1, 24>();
    var var_0 = Struct_1(global0.x != 0i, func_4(_wgslsmith_mult_vec3_i32(firstTrailingBit(global0.zww), ~firstTrailingBit(global0.xyx)), vec4<u32>(~(0u ^ global1.c.x), arg_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 0u, arg_0.x), vec3<u32>(1u, global1.b, 410u)), _wgslsmith_dot_vec3_u32(vec3<u32>(34033u, 4294967295u, 4294967295u), vec3<u32>(global1.b, 11242u, global1.b) & vec3<u32>(43223u, 1u, 1u))), ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(38743u, 1u, 34790u, 54060u)), select(vec4<u32>(arg_0.x, global1.b, arg_0.x, 4294967295u), vec4<u32>(0u, global1.b, 0u, arg_0.x), global1.a), ~vec4<u32>(10995u, 1u, arg_0.x, 22920u))), arg_1, global1.a.yx);
    global1 = Struct_2(!vec4<bool>(false, true, func_4(vec3<i32>(global0.x, global0.x, 1i) >> (vec3<u32>(global1.c.x, arg_0.x, global1.c.x) % vec3<u32>(32u)), vec4<u32>(global1.c.x, arg_0.x, global1.c.x, arg_0.x) & vec4<u32>(3703u, global1.c.x, 18350u, 0u), vec4<u32>(80026u, 19320u, global1.c.x, 1u)).x, !var_0.a || false), _wgslsmith_mult_u32(func_2(~abs(u_input.a), Struct_3(var_0.c, _wgslsmith_div_f32(var_0.c, arg_1), _wgslsmith_f_op_f32(-arg_1))).x, reverseBits(arg_0.x)), ~arg_0, var_0.b);
    var var_1 = Struct_2(global1.a, ~11534u, countOneBits(arg_0), !vec2<bool>(global1.a.x, global1.a.x));
    var var_2 = -10496i & u_input.a;
    return Struct_3(1242f, arg_1, -461f);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> Struct_3 {
    global2 = array<Struct_1, 24>();
    var var_0 = countOneBits(global0.wzx);
    var_0 = -select(vec3<i32>(~var_0.x, var_0.x, ~(-53102i | global0.x)), arg_2.xyw, vec3<bool>((global0.x & 48201i) >= 2812i, arg_3, global1.d.x));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -109f)) + vec2<f32>(-531f, arg_0.c)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(arg_0.c, arg_0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(318f, arg_0.c) + vec2<f32>(-470f, -659f)), !arg_3))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - arg_0.c)), -2150f));
    var var_2 = func_5(~_wgslsmith_add_vec3_u32(select(func_2(2147483647i, Struct_3(var_1.x, -960f, var_1.x)), vec3<u32>(global1.b, global1.c.x, 28484u), true && global1.a.x), ~abs(global1.c)), -949f);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c, var_2.a))))), func_5(max(vec3<u32>(_wgslsmith_add_u32(global1.c.x, 4294967295u), 96069u, _wgslsmith_mult_u32(global1.c.x, global1.c.x)), global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + 240f))) + _wgslsmith_f_op_f32(-498f + func_5(global1.c, -1619f).b))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1f)) + var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(global1.c.x, 24u)], 0i, vec4<i32>(global0.x, -global0.x, 35515i, _wgslsmith_mod_i32(abs(u_input.a) << (~1u % 32u), ~(-1i))), all(select(!select(global1.a, global1.a, global1.d.x), vec4<bool>(global1.d.x, !global1.a.x, true, true), global1.d.x)));
    let var_1 = abs(~vec4<i32>(_wgslsmith_sub_i32(countOneBits(0i), _wgslsmith_mod_i32(global0.x, -1i)), _wgslsmith_sub_i32(6665i, 45865i), 12529i, select(global0.x, countOneBits(global0.x), false)));
    var_0 = Struct_3(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(var_0.c, var_0.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(select(-908f, _wgslsmith_f_op_f32(-1498f - -1000f), true))), _wgslsmith_f_op_f32(f32(-1f) * -815f))));
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(global1.c.x), 24u)];
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1055f, _wgslsmith_f_op_f32(171f + -2884f), _wgslsmith_f_op_f32(-var_2.c)))), vec3<u32>(~_wgslsmith_mult_u32(~global1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 8793u, 4294967295u, global1.b), vec4<u32>(global1.c.x, 139272u, 4294967295u, 101387u))), ~_wgslsmith_mult_u32(~56695u, global1.c.x), abs(~(~global1.c.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(1u, global1.b, global1.c.x)), func_2(global0.x, Struct_3(-1741f, 435f, -2177f)).x), vec3<u32>(_wgslsmith_mod_u32(0u, 64401u), global1.c.x, 4294967295u)), max(global1.b, _wgslsmith_dot_vec3_u32(global1.c, global1.c)), ~1u), vec3<u32>(func_3(func_1(global2[_wgslsmith_index_u32(~global1.b, 24u)], ~var_1.x, var_1 << (vec4<u32>(28322u, global1.c.x, global1.c.x, global1.b) % vec4<u32>(32u)), true).c, var_2.b), _wgslsmith_div_u32(1u, 34402u), 1u), 7066u);
}

