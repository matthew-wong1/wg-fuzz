struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -1i);

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = _wgslsmith_mult_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33099u), vec2<u32>(arg_0, 0u)) << ((_wgslsmith_mod_u32(var_1.a.x, global4.b.x) >> (abs(global4.b.x) % 32u)) % 32u)), min(4294967295u, _wgslsmith_clamp_u32(4294967295u, ~1u, global1.b.x)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-832f))) + _wgslsmith_f_op_f32(f32(-1f) * -1226f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(346f, 1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(786f * _wgslsmith_f_op_f32(f32(-1f) * -462f)) + -434f));
    let var_3 = Struct_1(firstLeadingBit(countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.b.x, var_0.a.x), var_1.a))), _wgslsmith_sub_vec4_u32(~(~select(vec4<u32>(u_input.a, var_1.b.x, 4294967295u, 29100u), vec4<u32>(var_0.b.x, var_0.a.x, 7919u, 23873u), vec4<bool>(false, var_1.c.x, var_0.c.x, true))), vec4<u32>(1u, 1u, 1u, ~_wgslsmith_dot_vec3_u32(arg_1.b.xyz, vec3<u32>(4294967295u, 1u, 4294967295u)))), vec2<bool>(!global1.c.x, any(vec3<bool>(true, false, all(vec3<bool>(true, false, false))))));
    return global1.c.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32) -> vec2<u32> {
    let var_0 = -1889f;
    global1 = Struct_1(global4.a, global1.b, vec2<bool>(all(!select(arg_1.zy, global4.c, vec2<bool>(false, arg_1.x))), func_3(countOneBits(firstTrailingBit(4294967295u)), Struct_1(_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, 20683u)), vec4<u32>(56663u, u_input.b.x, 44498u, global4.b.x), vec2<bool>(false, true)))));
    var var_1 = Struct_1((min(vec2<u32>(29759u, 55248u), ~u_input.b.yx) << (firstLeadingBit(global1.a) % vec2<u32>(32u))) & (global1.a | global1.a), ~reverseBits(_wgslsmith_div_vec4_u32(global1.b, _wgslsmith_mult_vec4_u32(vec4<u32>(global4.b.x, 1u, global1.a.x, global4.b.x), global4.b))), vec2<bool>(select(!any(vec4<bool>(global1.c.x, arg_1.x, true, global4.c.x)), global1.c.x, global4.c.x), true));
    let var_2 = -1882f;
    global1 = Struct_1(~_wgslsmith_div_vec2_u32(min(~u_input.c.yy, ~u_input.c.zz), vec2<u32>(abs(global4.a.x), 59131u)), _wgslsmith_clamp_vec4_u32(countOneBits(select(firstLeadingBit(global1.b), global4.b, global0.x != global0.x)), vec4<u32>(4294967295u, _wgslsmith_add_u32(global1.a.x, global1.a.x) ^ global1.b.x, _wgslsmith_clamp_u32(global4.a.x, var_1.a.x, var_1.a.x), abs(var_1.b.x & global4.a.x)), firstTrailingBit(min(~global4.b, select(vec4<u32>(u_input.b.x, 26071u, 29981u, var_1.b.x), vec4<u32>(14228u, global1.b.x, global1.a.x, global4.a.x), false)))), !var_1.c);
    return vec2<u32>(select(~_wgslsmith_dot_vec3_u32(u_input.b ^ vec3<u32>(44593u, u_input.b.x, var_1.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, global4.a.x), var_1.b.wxz)), abs(var_1.a.x), global4.c.x), _wgslsmith_dot_vec2_u32(~u_input.c.xz, vec2<u32>(16610u, _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(4294967295u, 42652u))) & ((global1.a << (global1.a % vec2<u32>(32u))) << (abs(vec2<u32>(global4.b.x, 45927u)) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = Struct_1(~vec2<u32>(0u, ~51695u) >> (_wgslsmith_sub_vec2_u32(min(min(vec2<u32>(0u, global4.b.x), global4.a), func_2(vec4<f32>(arg_0.x, 1000f, -946f, 1056f), vec4<bool>(true, global1.c.x, false, global4.c.x), 12625i)), ~select(u_input.b.xx, vec2<u32>(u_input.a, global1.a.x), true)) % vec2<u32>(32u)), min(~vec4<u32>(1u, global1.a.x, u_input.a, global4.a.x) & global1.b, ~(~vec4<u32>(global4.a.x, global4.b.x, global4.b.x, 4294967295u))), !(!global4.c));
    var var_1 = vec2<u32>(max(4294967295u, 35040u), reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(3506u, var_0.a.x, 13019u)), global1.b.yxx | global4.b.yzx), select(vec3<u32>(4294967295u, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, 1u, 1u), true))));
    let var_2 = true;
    var var_3 = ~vec3<i32>(global0.x, 176i, _wgslsmith_dot_vec2_i32(~min(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(arg_1.x, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec3_i32(arg_1.zyz, arg_1.yxx), _wgslsmith_mod_i32(arg_1.x, arg_1.x))));
    global0 = vec2<i32>(arg_1.x, global0.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(~global4.b.wz, ~vec2<u32>(38096u, 1u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), global1.a) ^ global4.b.xz, u_input.b.zz, ~(u_input.b.yy ^ global1.a))), select(global4.b, ~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, 0u, global4.a.x, global4.a.x), global1.b)), vec4<bool>(global4.c.x & false, global4.c.x, _wgslsmith_div_u32(global4.a.x, 1u) > global4.a.x, global4.c.x)), !vec2<bool>(!(true && global4.c.x), !(global4.c.x & false)));
    global1 = Struct_1(vec2<u32>(global4.b.x, _wgslsmith_add_u32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(488f, -416f, -140f) + vec3<f32>(170f, 336f, 1000f)), vec4<i32>(-1i, global0.x, global0.x, 5225i), vec4<f32>(922f, 1553f, 369f, -952f)), _wgslsmith_dot_vec3_u32(global4.b.xyx, global1.b.wwy) & func_1(vec3<f32>(405f, -1850f, -635f), vec4<i32>(global0.x, global0.x, -40340i, -20425i), vec4<f32>(-199f, 1372f, -1000f, -1293f)))), vec4<u32>(global1.b.x, 1u, 1u, ~3746u) ^ max(global4.b, global1.b), !global4.c);
    global4 = Struct_1(vec2<u32>(global4.a.x, ~abs(global4.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(u_input.c.x, global1.a.x), global1.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(17929u, 47007u, global4.b.x, 18859u), global1.b), ~_wgslsmith_dot_vec2_u32(u_input.c.zy, global4.b.wy)), firstTrailingBit(vec4<u32>(global1.a.x, _wgslsmith_mod_u32(u_input.a, global4.a.x), _wgslsmith_mod_u32(global1.b.x, 9026u), 44359u)), vec4<u32>(1u, u_input.b.x, global1.b.x, func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(992f, -382f, 1026f), vec3<f32>(-959f, 719f, 318f), vec3<bool>(global1.c.x, global1.c.x, true))), select(vec4<i32>(global0.x, global0.x, 1i, -35653i), vec4<i32>(global0.x, global0.x, global0.x, global0.x), global1.c.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(982f, 497f, -2707f, -442f), vec4<f32>(928f, 484f, -842f, -697f), vec4<bool>(false, true, false, false)))))), vec2<bool>(func_3(1u, Struct_1(firstTrailingBit(vec2<u32>(0u, u_input.c.x)), vec4<u32>(56356u, global1.a.x, 57626u, 73974u) | global1.b, select(global4.c, vec2<bool>(false, global1.c.x), false))), global1.c.x));
    var var_0 = select(vec4<bool>(!(1u != _wgslsmith_mult_u32(global4.b.x, 1u)), global4.c.x, global1.c.x, true || any(!vec3<bool>(true, global1.c.x, false))), select(vec4<bool>(global4.c.x, false, global4.c.x, global4.c.x), select(!select(vec4<bool>(global1.c.x, global1.c.x, true, true), vec4<bool>(global1.c.x, false, true, global4.c.x), vec4<bool>(true, global1.c.x, true, false)), select(vec4<bool>(global1.c.x, true, true, global4.c.x), vec4<bool>(global4.c.x, global1.c.x, true, false), global0.x >= 22201i), !all(vec4<bool>(global4.c.x, global4.c.x, global4.c.x, true))), !vec4<bool>(global1.c.x, all(global1.c), false, true)), global1.c.x);
    let var_1 = 19108i;
    var var_2 = ~((-firstTrailingBit(vec2<i32>(var_1, var_1)) ^ reverseBits(vec2<i32>(var_1, var_1) ^ vec2<i32>(43373i, var_1))) & ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(46021i, -45813i), vec2<i32>(var_1, 1i)), global0.x));
    let var_3 = var_0.wyz;
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(-2147483647i), abs(var_1) & 54420i), vec2<i32>(-1i) * -firstLeadingBit(abs(vec2<i32>(var_1, -42384i))));
    global4 = Struct_1(firstLeadingBit(vec2<u32>(global1.a.x & 20014u, 181u) | vec2<u32>(1u, _wgslsmith_add_u32(33220u, u_input.b.x))), ~(vec4<u32>(_wgslsmith_sub_u32(global1.b.x, global4.a.x), ~global4.b.x, abs(u_input.c.x), 4294967295u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(55746u, u_input.c.x, 67343u, 0u), global4.b >> (vec4<u32>(4294967295u, u_input.c.x, global1.b.x, u_input.b.x) % vec4<u32>(32u)), global1.b | global4.b)), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -1i, var_1), vec3<i32>(var_1, var_1, global0.x)), firstLeadingBit(var_1))), abs(_wgslsmith_div_i32(var_2.x, global0.x)), -var_2.x, firstLeadingBit(~(24881i << (global4.a.x % 32u)))), ~min(vec3<u32>(global1.b.x, abs(18853u), max(0u, 1u)), vec3<u32>(u_input.c.x & 0u, 0u, func_1(vec3<f32>(-480f, 1076f, -1371f), vec4<i32>(-24291i, -37340i, 1i, 0i), vec4<f32>(-885f, 448f, 275f, 1912f)))), vec2<u32>(global1.b.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(global4.a.x, 5814u) >> (global1.b.wz % vec2<u32>(32u))), vec2<u32>(_wgslsmith_mod_u32(global4.a.x, 1u), u_input.a))), countOneBits(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global0.x, var_2.x, var_1, 2147483647i)), max(vec4<i32>(2147483647i, var_2.x, global0.x, 2147483647i), vec4<i32>(var_1, 1390i, 1i, var_2.x)))) >> (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, 4294967295u, 0u, 11569u)), global4.b, global1.b) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-55286i, 55581i, 11082i, 2147483647i) >> (~global4.b % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(-max(vec4<i32>(var_1, var_2.x, var_1, global0.x), vec4<i32>(5394i, 1i, var_1, global0.x)), -(~vec4<i32>(var_2.x, 1i, var_2.x, var_1))));
}

