struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_1(true);
    var_0 = global1[_wgslsmith_index_u32(arg_1, 14u)];
    var_0 = Struct_1(var_0.a);
    let var_1 = false;
    var_0 = Struct_1(var_1);
    return select(vec3<bool>(true, any(select(vec2<bool>(false, var_0.a), select(vec2<bool>(var_0.a, var_1), vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.a)), true)), 1i == -global0[_wgslsmith_index_u32(63402u, 30u)]), select(!vec3<bool>(!var_1, false && var_1, true), vec3<bool>(var_0.a, true, var_0.a), !(!select(vec3<bool>(var_0.a, var_1, var_0.a), vec3<bool>(var_1, var_1, var_0.a), false))), vec3<bool>(var_1, any(vec2<bool>(false, true)), all(vec4<bool>(select(true, var_0.a, var_0.a), true, true, var_0.a))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    global0 = array<i32, 30>();
    var var_0 = Struct_1(true);
    var_0 = Struct_1(arg_0.a);
    var var_1 = any(select(!vec3<bool>(all(vec4<bool>(arg_0.a, true, arg_1.a, var_0.a)), true, true), select(select(func_3(vec3<u32>(1u, 0u, 16889u), 6050u), vec3<bool>(var_0.a, var_0.a, arg_1.a), select(vec3<bool>(arg_1.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, false), arg_1.a)), select(!vec3<bool>(false, arg_0.a, arg_0.a), !vec3<bool>(arg_1.a, true, false), vec3<bool>(false, arg_1.a, false)), all(select(vec3<bool>(arg_1.a, true, false), vec3<bool>(true, arg_1.a, false), vec3<bool>(arg_1.a, var_0.a, var_0.a)))), vec3<bool>(any(vec3<bool>(arg_0.a, true, var_0.a)), false, any(vec2<bool>(false, arg_1.a)))));
    var var_2 = select(-select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27515u, 0u), firstLeadingBit(vec2<u32>(36904u, 44863u))), 30u)], u_input.b, !all(vec2<bool>(arg_1.a, true))), reverseBits(~(~(-26874i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f * -1407f))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-603f, 850f) + -318f))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1141f, _wgslsmith_f_op_f32(512f + _wgslsmith_f_op_f32(f32(-1f) * -911f)), all(!vec2<bool>(true, var_0.a))))))));
}

fn func_4(arg_0: f32) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~0u, 5466u), _wgslsmith_mod_u32(4166u, _wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(67527u, 17410u, 55188u, 17047u), vec4<u32>(0u, 36841u, 46253u, 86297u))), ~vec4<u32>(4294967295u, 46174u, 4294967295u, 1u)))), 14u)];
    var var_1 = abs(max(0u, 0u));
    var var_2 = global1[_wgslsmith_index_u32(0u | firstTrailingBit(~2275u), 14u)];
    var_1 = 1u;
    var_1 = _wgslsmith_mult_u32(~(~66918u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(28383u, 55359u, 1u), vec3<u32>(1u, 1u, 1u))) & (~_wgslsmith_dot_vec3_u32(vec3<u32>(27443u, 9431u, 4294967295u), vec3<u32>(7487u, 1u, 4294967295u)) << (~max(1u, 4294967295u) % 32u)));
    return vec2<u32>(78993u, ~4294967295u);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(462f, 2064f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 242f), _wgslsmith_f_op_f32(-1674f * -251f))));
    global0 = array<i32, 30>();
    var var_1 = var_0;
    var var_2 = firstLeadingBit(func_4(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 14u)], Struct_1(!var_1.a), u_input.a))));
    let var_3 = Struct_1(var_1.a);
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_1, 14>();
    var var_0 = Struct_1(select(arg_0.a, true, arg_1.a) || arg_0.a);
    var var_1 = arg_2;
    let var_2 = func_1();
    var var_3 = true;
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~4294967295u, ~11428u, 30561u) >> (~_wgslsmith_div_u32(1u, 111427u) % 32u), ~abs(~1132u)), 14u)], !(!(!any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 314f), _wgslsmith_f_op_f32(-143f - 150f), 416f, _wgslsmith_f_op_f32(step(-649f, 1511f))))))));
    global1 = array<Struct_1, 14>();
    global0 = array<i32, 30>();
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(~2048u) ^ firstLeadingBit(~7384u >> (_wgslsmith_clamp_u32(52289u, ~42408u, 1u) % 32u)), 14u)];
    var var_2 = ~firstTrailingBit(-global0[_wgslsmith_index_u32(1u, 30u)] & -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(52912u, 30u)]), u_input.c.zw));
    var var_3 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1352f)) + _wgslsmith_f_op_f32(f32(-1f) * -832f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)), !var_0.a);
    var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_i32(1i, firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 30u)] | 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, _wgslsmith_add_i32(max(-10500i, u_input.c.x), countOneBits(2147483647i))), _wgslsmith_div_vec2_i32(u_input.c.zy, vec2<i32>(-2147483647i, ~u_input.c.x))), abs(vec2<u32>(abs(21213u), abs(0u))) & func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(517f, -739f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f * 519f) - _wgslsmith_f_op_f32(trunc(-357f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -577f), 1585f, true)), 1155f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-793f, -2462f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-851f * 423f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(358f, 2275f) * 1690f)))));
}

