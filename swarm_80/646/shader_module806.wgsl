struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(false, 0u, 0i);

var<private> global2: Struct_1;

var<private> global3: array<f32, 20>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = ~select(abs(select(select(vec4<u32>(global2.b, 1u, arg_0, global1.b), vec4<u32>(arg_0, 1u, global2.b, 43742u), vec4<bool>(global2.a, global2.a, global1.a, true)), vec4<u32>(global1.b, global1.b, 1u, global2.b), global1.a)), ~vec4<u32>(global2.b, 3073u, arg_0, global2.b) ^ ~(~vec4<u32>(27853u, 4294967295u, arg_0, global2.b)), global1.c != reverseBits(-u_input.b));
    let var_1 = Struct_1(true, global2.b, _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-13887i, 18236i, u_input.b)), -vec3<i32>(37345i, 9130i, u_input.a))), -5941i));
    global1 = Struct_1(!any(!select(vec2<bool>(false, true), vec2<bool>(global2.a, false), vec2<bool>(var_1.a, global2.a))), global1.b, global2.c);
    var var_2 = Struct_1(select(true, true, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0, 20u)]) != 977f) == (!global2.a & ((global2.a && false) && true)), 1u, ~(-(-2147483647i | var_1.c) & -2147483647i));
    let var_3 = _wgslsmith_add_vec4_i32(abs(max(~(~vec4<i32>(global1.c, u_input.a, var_1.c, global2.c)), vec4<i32>(-49359i, -9414i, firstTrailingBit(var_1.c), _wgslsmith_clamp_i32(1i, var_1.c, u_input.a)))), -countOneBits(-(vec4<i32>(0i, var_2.c, global2.c, -1i) | vec4<i32>(var_1.c, 35524i, var_2.c, 32875i))));
    return !all(!vec3<bool>(var_2.a, !global1.a, false));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_0 = Struct_1(func_3(max(~_wgslsmith_add_u32(4294967295u, arg_2), 21691u)), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(9584u, 957u, global2.b, arg_2)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, arg_2, 4294967295u, global2.b), vec4<u32>(global2.b, arg_2, 32928u, 34859u))) >> (countOneBits(0u) % 32u), -u_input.b);
    var var_1 = select(!select(!select(vec3<bool>(global1.a, global2.a, global2.a), vec3<bool>(var_0.a, true, true), vec3<bool>(true, global2.a, true)), select(!vec3<bool>(true, var_0.a, false), select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, false, global2.a), vec3<bool>(true, true, global1.a)), !global1.a), !select(vec3<bool>(true, global1.a, false), vec3<bool>(false, true, true), var_0.a)), select(!select(!vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, global1.a, global2.a), global2.a), vec3<bool>(false, true, any(!vec4<bool>(false, global2.a, false, false))), true), all(!select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false)), vec2<bool>(true, global2.a), any(vec3<bool>(global2.a, global2.a, var_0.a)))));
    var_1 = select(!vec3<bool>(false, !any(vec4<bool>(false, false, false, false)), select(!global2.a, true, true)), vec3<bool>(global1.a, global1.a, global2.a), !global2.a);
    let var_2 = true;
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.b, var_0.b), 1u) >= ~global2.b, _wgslsmith_add_u32(0u, var_0.b) >> (global2.b % 32u), 72540i);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(42002u, 20u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(41427u, 20u)])))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, global3[_wgslsmith_index_u32(global2.b, 20u)], global3[_wgslsmith_index_u32(89189u, 20u)]))) * vec3<f32>(-1143f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.b, 20u)] + -2035f), 1134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.b, 20u)])))), min(_wgslsmith_mult_vec2_i32(~vec2<i32>(30047i, 34234i), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.c, arg_1), vec2<i32>(1i, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, 8762i), vec2<i32>(-2147483647i, 18158i)))), vec2<i32>(global2.c, _wgslsmith_add_i32(~2147483647i, ~global1.c))), global1.b, abs(u_input.b));
    var var_2 = Struct_1(any(vec3<bool>(all(!vec4<bool>(false, var_1.a, true, false)), _wgslsmith_f_op_f32(trunc(-240f)) >= 646f, true)), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(50659u, global1.b), vec2<u32>(var_1.b, 4294967295u)), _wgslsmith_clamp_u32(global2.b, 89990u, global2.b)), ~abs(vec2<u32>(0u, 28609u))), _wgslsmith_clamp_i32(-2147483647i, ~func_2(vec3<f32>(global3[_wgslsmith_index_u32(3470u, 20u)], -247f, -280f), vec2<i32>(1i, -34633i), 28736u, global2.c).c, -8138i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, ~4522i), ~vec2<i32>(u_input.a, u_input.b)));
    let var_3 = Struct_1(~(~global1.b) <= (arg_0 & 5640u), arg_0, -2147483647i);
    return var_3;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(global3[_wgslsmith_index_u32(~1u, 20u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1911f) + _wgslsmith_f_op_f32(max(-1521f, 458f)))));
    var var_1 = ~firstTrailingBit(~vec3<u32>(func_2(vec3<f32>(1000f, -662f, -352f), vec2<i32>(u_input.a, u_input.b), global1.b, arg_0.c).b, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, arg_0.b, 0u), vec3<u32>(22586u, arg_0.b, arg_0.b)), ~arg_0.b));
    let var_2 = global3[_wgslsmith_index_u32(global1.b, 20u)];
    global0 = global3[_wgslsmith_index_u32(~(~4294967295u), 20u)];
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(1u, 20u)], -1117f, 2300f))) - vec3<f32>(913f, 344f, 1865f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(global1.b, 20u)], 1793f, 717f))))))), _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, u_input.a, -18234i), vec3<i32>(28952i, -24309i, u_input.b)), u_input.b), -vec2<i32>(-1i, global2.c)), var_1.x, firstLeadingBit(reverseBits(~_wgslsmith_add_i32(28264i, global2.c))));
    return Struct_1(true & global2.a, 1u, global2.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<i32> {
    global3 = array<f32, 20>();
    let var_0 = func_4(arg_0);
    var var_1 = arg_1;
    let var_2 = vec3<u32>(var_0.b, _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(61892u, var_0.b, arg_1.b))), countOneBits(firstLeadingBit(min(vec3<u32>(var_0.b, 7801u, 5855u), vec3<u32>(var_1.b, global1.b, var_1.b))))), 1u);
    var var_3 = arg_2.ww;
    return abs(-(~arg_2.zzw));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, func_5(Struct_1(all(!vec3<bool>(global1.a, global2.a, global2.a)), 33356u, 419i), func_4(func_1(~global2.b, global2.c)), vec4<i32>(-1i, global1.c, select(u_input.b >> (global1.b % 32u), abs(0i), true), u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~global1.b, 20u)], 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(34339u, 20u)])))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b, 20u)]))), 906f)), vec3<u32>(global1.b, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 71183u), vec2<u32>(global1.b, 23516u))), ~4294967295u));
}

