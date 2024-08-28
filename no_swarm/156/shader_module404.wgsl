struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(14156u, 26068u, -1105f, vec4<f32>(1000f, 1452f, -1000f, 1387f));

var<private> global2: i32;

var<private> global3: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = ~vec3<u32>(arg_1.b >> (1u % 32u), 102316u, 6558u);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_3.d - global1.d)));
    let var_2 = global0.x;
    var var_3 = arg_3;
    var_3 = Struct_1(0u, ~max(_wgslsmith_sub_u32(~92459u, ~u_input.b.x), global1.a), _wgslsmith_f_op_f32(abs(-233f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, _wgslsmith_f_op_f32(-global1.d.x), arg_1.d.x, _wgslsmith_f_op_f32(-var_3.d.x))))));
    return !vec2<bool>(arg_2.x, all(vec4<bool>(!arg_2.x, any(vec3<bool>(true, arg_2.x, arg_2.x)), arg_0.x, false)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(-2198f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2076f))))), global1.d);
    var var_1 = _wgslsmith_clamp_i32(-firstTrailingBit(-abs(0i)), firstTrailingBit(firstTrailingBit(countOneBits(i32(-1i) * -60117i))), -1i);
    global2 = u_input.a.x;
    let var_2 = select(vec2<bool>(true, all(vec3<bool>(true, false, true))), !select(select(vec2<bool>(true, true), func_3(vec4<bool>(false, true, true, false), var_0, vec3<bool>(global0.x, false, global0.x), Struct_1(79110u, u_input.b.x, 1091f, vec4<f32>(var_0.c, -2019f, -1494f, var_0.d.x))), false), global0.zy, vec2<bool>(true && global0.x, true)), select(func_3(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, true, false, false)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), var_0, vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true, false), var_0), select(global0.xz, select(global0.zy, vec2<bool>(true, global0.x), global0.x), 1i != firstTrailingBit(1i)), select(select(!global0.zy, global0.xz, !vec2<bool>(global0.x, global0.x)), global0.yz, true)));
    global2 = u_input.a.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1687f, var_0.c)), var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.c)), -714f)))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(countOneBits(firstTrailingBit(~(~u_input.b.x))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), global1.c))), vec4<f32>(_wgslsmith_f_op_f32(func_2()), 898f, global1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * _wgslsmith_div_f32(global1.d.x, -421f))))));
    global1 = var_0;
    var var_1 = select(reverseBits(countOneBits(firstTrailingBit(countOneBits(u_input.a.yww)))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(2147483647i, 0i, 12913i) >> (u_input.b.zxx % vec3<u32>(32u)), u_input.c.xyy, vec3<bool>(false, global0.x, global0.x)), select(select(u_input.a.xzx, vec3<i32>(u_input.a.x, u_input.d, u_input.a.x), false), select(u_input.a.xxy, u_input.c.zyw, global0.x), false)), u_input.a.yww), vec3<bool>(false, !global0.x, select(var_0.d.x < 714f, false, !global0.x) && (global0.x & global0.x)));
    let var_2 = Struct_1(firstLeadingBit(max(35424u, ~_wgslsmith_mod_u32(u_input.b.x, 1440u))), 1u, -516f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.d));
    let var_3 = ~32386u;
    return ~86586u;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = var_1;
    global1 = arg_0;
    global2 = ~(-u_input.d);
    return vec4<u32>(4444u, u_input.b.x << (abs(var_1.b) % 32u), firstTrailingBit(_wgslsmith_mod_u32(arg_2, _wgslsmith_clamp_u32(1739u & arg_0.b, ~4294967295u, countOneBits(arg_2)))), arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c);
    let var_2 = arg_0;
    var var_3 = any(!(!(!select(vec4<bool>(false, true, global0.x, true), vec4<bool>(false, true, false, global0.x), false))));
    var var_4 = arg_0;
    return Struct_1(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.b.x, arg_2.x, 16315u, var_4.b)), vec4<u32>(19669u, 51213u, 2857u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.d.x, var_4.c)))) - 532f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - arg_0.c)), -656f, global1.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c.x;
    var var_0 = firstTrailingBit(global1.b);
    let var_1 = func_5(Struct_1(firstTrailingBit(~global1.b), ~1u, 247f, _wgslsmith_f_op_vec4_f32(ceil(global1.d))), _wgslsmith_sub_u32(_wgslsmith_div_u32(~global1.b, reverseBits(_wgslsmith_mod_u32(25357u, u_input.b.x))), 21367u), func_4(Struct_1(_wgslsmith_sub_u32(func_1(), 47501u), ~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, 298f) - _wgslsmith_f_op_f32(1390f - -755f)), global1.d), _wgslsmith_add_i32(-1i, u_input.a.x), 0u), -(~u_input.c));
    global0 = !(!vec3<bool>(false, all(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), false)), true));
    let var_2 = vec4<bool>(true, any(!vec4<bool>(!global0.x, true, func_3(vec4<bool>(global0.x, global0.x, global0.x, true), var_1, vec3<bool>(false, false, global0.x), var_1).x, !global0.x)), global0.x, _wgslsmith_dot_vec3_i32(~u_input.c.yxz, vec3<i32>(u_input.d, -2147483647i, u_input.d)) > (-25936i ^ u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(45497u, ~_wgslsmith_div_u32(abs(var_1.a), global1.a)), global1.a, vec4<u32>(1u, 45528u, u_input.b.x, 1u), ~global1.b);
}

