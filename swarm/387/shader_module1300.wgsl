struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, true, false, false, true, true, false, true, true, true, false, true, true, true, true, true, false, true, false, true, true, true, false, true);

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c, 0u, 17018u), vec3<u32>(0u, 0u, abs(arg_0.c))), ~countOneBits(max(u_input.b, u_input.b))), ~vec4<u32>(~0u, ~arg_1.c, 0u, arg_1.c));
    var var_1 = _wgslsmith_f_op_f32(abs(-124f));
    let var_2 = arg_1.d.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(global1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.a.b))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-103f, arg_1.a.b.x, 122f, arg_0.a.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, _wgslsmith_f_op_f32(sign(arg_0.a.b.x)), _wgslsmith_f_op_f32(1225f - arg_1.a.b.x), global1.b.x))))));
    global1 = Struct_2(Struct_1(!select(!global1.c.a, arg_0.a.a.a, false == arg_1.d.a.x)), arg_0.a.b, Struct_1(vec4<bool>(arg_0.a.b.x >= _wgslsmith_f_op_f32(-arg_0.a.b.x), !all(vec2<bool>(false, arg_1.b)), global0[_wgslsmith_index_u32(arg_0.c, 25u)] & (global1.a.a.x || false), !all(arg_0.a.a.a))));
    return -280f;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 6>();
    global0 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(global1.c.a), vec4<f32>(-459f, 401f, -1300f, global1.b.x), global2[_wgslsmith_index_u32(u_input.b | u_input.b, 6u)]), true, ~(~4294967295u), Struct_1(!global1.c.a)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(~u_input.b, 6u)], _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-1139f, -2054f, global1.b.x, 1000f)), global1.a), true, ~u_input.b, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, global1.c.a.x, global0[_wgslsmith_index_u32(u_input.b, 25u)])))))));
    let var_1 = Struct_2(global1.c, vec4<f32>(-871f, _wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(global1.a, vec4<f32>(383f, -210f, 439f, 953f), Struct_1(global1.c.a)), global1.c.a.x, u_input.b, Struct_1(vec4<bool>(false, global1.a.a.x, false, global0[_wgslsmith_index_u32(36941u, 25u)]))), Struct_3(Struct_2(global1.a, global1.b, global1.a), false, 46120u, Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(60752u, 25u)], true)))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0))))), _wgslsmith_f_op_f32(max(-380f, _wgslsmith_f_op_f32(-var_0)))), Struct_1(select(vec4<bool>(true, global1.c.a.x && false, true || global1.c.a.x, !global1.a.a.x), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 25u)], true), global0[_wgslsmith_index_u32(4294967295u, 25u)])));
    var var_2 = global2[_wgslsmith_index_u32(0u, 6u)];
    return var_1.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    return Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(trunc(global1.b)), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(~abs(7616u), ~u_input.b);
    var var_1 = func_1(~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, -22407i, -2147483647i) >> (vec3<u32>(30883u, u_input.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 334i, -86351i), countOneBits(vec3<i32>(u_input.a.x, -1i, u_input.a.x)), select(vec3<i32>(u_input.c, u_input.a.x, u_input.c), vec3<i32>(u_input.c, u_input.c, 31404i), true))), global1.c, countOneBits(_wgslsmith_clamp_i32(~(~u_input.a.x), _wgslsmith_div_i32(-28782i, 1i), -32592i)));
    var_0 = abs(_wgslsmith_mod_u32(1u, countOneBits(4294967295u)));
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u, 25u)];
    var var_3 = global1.c.a.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_mult_vec2_i32(-select(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(-28114i, u_input.c), global1.a.a.zz) & u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.b), select(vec2<u32>(59673u, u_input.b), vec2<u32>(0u, 26335u), var_1.a.a.wz), vec2<u32>(35570u, u_input.b) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), vec2<u32>(~4294967295u, u_input.b)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)) | vec2<u32>(u_input.b, 0u), vec2<u32>(~27142u, firstTrailingBit(u_input.b)))));
}

