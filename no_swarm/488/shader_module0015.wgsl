struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<i32, 1>;

var<private> global3: array<f32, 21>;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_1.a), 21u)]), _wgslsmith_div_f32(-1267f, global4.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.c.x), -371f, false)))), _wgslsmith_f_op_f32(max(global4.c.x, -135f))));
    global4 = arg_1.b;
    global4 = arg_1.b;
    return Struct_1(select(!arg_1.b.a, select(!global4.a, vec2<bool>(true, arg_1.b.a.x), all(!vec3<bool>(true, global4.a.x, arg_1.b.a.x))), false), global2[_wgslsmith_index_u32(~u_input.a, 1u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1773f), 1000f, arg_1.b.c.x)), arg_1.b.d);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.c.x), 270f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-819f, -987f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u | arg_0.x, 21u)])))));
    let var_1 = func_2(vec2<i32>((global2[_wgslsmith_index_u32(0u, 1u)] & global4.b) << (0u % 32u), 1i) ^ (_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(48068u, 1u)], 1i), vec2<i32>(global4.b, global4.b) | vec2<i32>(-32789i, -23849i)) ^ vec2<i32>(~global4.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-22038i, 0i, 2147483647i), vec3<i32>(-31224i, 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 1u)])))), Struct_2(abs(u_input.a), Struct_1(!global4.a, 37161i, vec3<f32>(-138f, global3[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_div_f32(var_0, 1970f)), u_input.a)), -1i);
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    global1 = array<Struct_2, 26>();
    global0 = _wgslsmith_mod_u32(~(func_2(max(vec2<i32>(global2[_wgslsmith_index_u32(arg_0.d, 1u)], 0i), vec2<i32>(0i, global2[_wgslsmith_index_u32(global4.d, 1u)])), Struct_2(arg_0.d, arg_0), i32(-1i) * -2147483647i).d | _wgslsmith_add_u32(arg_0.d, firstLeadingBit(1u))), arg_1.x);
    global2 = array<i32, 1>();
    let var_0 = select(select(countOneBits(arg_1.zxx), countOneBits(select(~vec3<u32>(global4.d, 4294967295u, global4.d), ~vec3<u32>(arg_1.x, u_input.a, arg_1.x), arg_0.a.x)), any(vec3<bool>(true, arg_0.a.x | arg_0.a.x, arg_0.a.x))), arg_1.wxx, global4.a.x);
    global0 = var_0.x | ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~arg_1, ~vec4<u32>(global4.d, 0u, 4294967295u, 4294967295u)), func_2(vec2<i32>(1i, -2147483647i), Struct_2(0u, Struct_1(global4.a, arg_0.b, global4.c, 1u)), global4.b).d, _wgslsmith_mod_u32(arg_1.x, ~1u));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let var_0 = Struct_1(select(global4.a, select(!global4.a, vec2<bool>(true, true), select(!global4.a, !vec2<bool>(true, global4.a.x), global4.a.x)), vec2<bool>(true, true)), ~(-2147483647i), global4.c, ~(~1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.c - _wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(885f, _wgslsmith_f_op_f32(f32(-1f) * -1012f), global3[_wgslsmith_index_u32(u_input.a, 21u)]))));
    global2 = array<i32, 1>();
    var var_2 = vec3<u32>(func_3(func_1(firstTrailingBit(vec4<u32>(var_0.d, global4.d, 32875u, global4.d)) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 24241u, 0u, u_input.a), vec4<u32>(10973u, global4.d, global4.d, 4294967295u)), false), vec4<u32>(u_input.a, ~abs(global4.d), 60169u, 1u)), _wgslsmith_sub_u32(~54036u, u_input.a), 1u);
    var var_3 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(24001u, u_input.a, global4.d)), firstTrailingBit(~vec3<u32>(global4.d, var_2.x, 54421u))), vec3<u32>(var_2.x, _wgslsmith_add_u32(u_input.a, 2417u), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.d, u_input.a, var_0.d), vec3<u32>(var_0.d, 86302u, global4.d))) | abs(min(vec3<u32>(global4.d, 0u, 0u), vec3<u32>(var_0.d, 34905u, var_2.x))), ~(~max(vec3<u32>(47685u, var_2.x, var_2.x), vec3<u32>(0u, u_input.a, global4.d)))));
    let var_4 = Struct_2(var_0.d, var_0);
    var_3 = vec3<u32>(~22254u, 0u, 0u);
    global4 = Struct_1(!(!(!(!vec2<bool>(true, var_4.b.a.x)))), abs(abs(-51642i)), _wgslsmith_f_op_vec3_f32(-var_0.c), abs(_wgslsmith_mod_u32(0u, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, abs(4294967295u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.c.x + 869f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-674f, -1700f))), var_1.x, _wgslsmith_f_op_f32(trunc(var_4.b.c.x)), -2640f), var_4.a);
}

