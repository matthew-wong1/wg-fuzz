struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -32419i, -3188i, -38119i));

var<private> global3: array<bool, 19>;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(-561f, -577f, -1894f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    global2 = Struct_1(select(vec4<i32>(_wgslsmith_sub_i32(reverseBits(u_input.a), 1i), u_input.a, -u_input.b.x, arg_2), -global2.a ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, global2.a.x, arg_2, u_input.a), global2.a) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), select(vec4<bool>(false, select(global3[_wgslsmith_index_u32(84289u, 19u)], false, false), true, global2.a.x == global2.a.x), vec4<bool>(true, true, any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)])), true), !any(vec4<bool>(global3[_wgslsmith_index_u32(23438u, 19u)], true, false, arg_0)))));
    global2 = Struct_1(_wgslsmith_mult_vec4_i32(-(-global2.a << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), min(vec4<i32>(arg_2, 86531i, u_input.b.x ^ -15966i, _wgslsmith_clamp_i32(14394i, 2147483647i, global2.a.x)), -global2.a)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 754f, 786f, arg_1.a.x), vec4<f32>(global0.x, global4.a.x, global4.a.x, 572f)), vec4<f32>(-1133f, -715f, -463f, global0.x), select(vec4<bool>(true, true, arg_0, true), vec4<bool>(true, arg_0, false, false), false))))), vec4<f32>(-822f, _wgslsmith_f_op_f32(round(-481f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a.x))), 535f))));
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)) * -568f), 212f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + _wgslsmith_f_op_f32(f32(-1f) * -654f)))))));
    let var_0 = vec3<u32>(1u, 1u, 1u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f * global4.a.x) - -322f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -616f, -1663f, 1366f);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(func_3(false, Struct_2(global0.wyz), 6388i));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, global4.a.x, global4.a.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 505f, global0.x, global0.x), vec4<f32>(-595f, global0.x, global4.a.x, 550f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.a.x, 941f, global0.x, -1921f))))))));
    global2 = Struct_1(arg_2.a);
    let var_0 = _wgslsmith_div_u32(reverseBits(arg_0), reverseBits(~_wgslsmith_sub_u32(~17469u, ~arg_0)));
    let var_1 = arg_1;
    return Struct_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), -1000f));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec2<f32> {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global0.x, global4.a.x, -3109f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, global0.x, arg_0.a.x), vec4<f32>(global0.x, global4.a.x, 189f, -473f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2036f, -199f, global0.x, -1000f)))))));
    global2 = Struct_1(global2.a);
    global3 = array<bool, 19>();
    var var_0 = arg_0;
    let var_1 = max(~_wgslsmith_mod_u32(firstTrailingBit(arg_1.x), ~arg_1.x) >> (abs(_wgslsmith_mod_u32(arg_1.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(arg_1.x, 0u)))) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.x | ~61u, 45149u), ~arg_1));
    return global4.a.yz;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global4.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_4(func_2(0u, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, global2.a.x)), Struct_1(vec4<i32>(u_input.a, -47005i, -1i, u_input.a))), ~vec2<u32>(68601u, 4294967295u), var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.wz * vec2<f32>(-327f, 1850f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, global4.a.x))))))));
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a) + global0.yyw))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global4.a.x + var_1.x), -1373f, _wgslsmith_f_op_f32(select(global0.x, global4.a.x, global3[_wgslsmith_index_u32(4294967295u, 19u)])))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-935f)), _wgslsmith_f_op_f32(-2164f * var_1.x))), _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -272f) * 277f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-748f + -1000f), _wgslsmith_f_op_f32(-var_0.a.x), global3[_wgslsmith_index_u32(1u, 19u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_vec2_f32(func_4(Struct_2(global0.wyz), vec2<u32>(63264u, 35525u), global4.a)).x, _wgslsmith_f_op_f32(1000f * global0.x), func_2(1u, Struct_1(vec4<i32>(32351i, global2.a.x, u_input.b.x, global2.a.x)), Struct_1(global2.a)).a.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1328f, var_1.x, 720f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1558f, 1526f, var_1.x, global0.x) - vec4<f32>(215f, 518f, var_0.a.x, 379f)))))));
    var var_2 = Struct_1(-_wgslsmith_sub_vec4_i32(select(global2.a, _wgslsmith_mod_vec4_i32(global2.a, vec4<i32>(u_input.b.x, u_input.b.x, global2.a.x, global2.a.x)), select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 19u)], false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 19u)], false, global1.x), vec4<bool>(true, true, false, global1.x))), max(vec4<i32>(66092i, u_input.b.x, u_input.b.x, -34852i), global2.a) | global2.a));
    return func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) >> (40094u % 32u), Struct_1(_wgslsmith_add_vec4_i32(global2.a, vec4<i32>(u_input.b.x & -1i, ~var_2.a.x, -1i & u_input.a, 1i))), Struct_1(_wgslsmith_clamp_vec4_i32(abs(min(global2.a, var_2.a)), _wgslsmith_sub_vec4_i32(var_2.a, _wgslsmith_div_vec4_i32(var_2.a, global2.a)), countOneBits(var_2.a))));
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = firstTrailingBit(select(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(17267i, 23084i, u_input.a), global2.a.ywz), -u_input.a, ~(-2147483647i | global2.a.x)), vec3<i32>(_wgslsmith_div_i32(0i, u_input.a) >> (select(1u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 19u)]) % 32u), -1i, ~(-2147483647i)), global1.x));
    global3 = array<bool, 19>();
    var_0 = vec3<i32>(max(max(26338i, 22164i), _wgslsmith_div_i32(var_0.x, -11724i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.x, ~u_input.a), -45309i, reverseBits(~(~(-2147483647i)))), ~(-_wgslsmith_clamp_i32(7419i, _wgslsmith_add_i32(u_input.a, global2.a.x), _wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647i))));
    return StorageBuffer(firstLeadingBit(0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, arg_0.a.x))), func_2(select(1u, 1u, false), Struct_1(vec4<i32>(-18441i, 8601i, global2.a.x, var_0.x)), Struct_1(global2.a)).a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1419f))), _wgslsmith_f_op_f32(-arg_0.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(948f * global4.a.x) * func_1().a.x), func_1().a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1296f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.a.x + arg_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global4.a);
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(global0.wwx, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global4.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1512f, -1104f, 950f))), !vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 19u)], false))), global4.a))));
    let x = u_input.a;
    s_output = func_5(func_1());
}

