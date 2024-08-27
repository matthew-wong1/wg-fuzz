struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: vec4<f32> = vec4<f32>(570f, -812f, 940f, -798f);

var<private> global3: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec3<bool>(false, true, false)), vec4<bool>(true, true, false, true), 1i, 1553f), Struct_3(Struct_1(vec3<bool>(true, false, true)), vec4<bool>(true, false, false, true), 0i, -3131f), Struct_3(Struct_1(vec3<bool>(true, false, false)), vec4<bool>(false, true, true, true), -1i, 1055f), Struct_3(Struct_1(vec3<bool>(true, false, false)), vec4<bool>(false, true, false, true), 8186i, -848f), Struct_3(Struct_1(vec3<bool>(false, true, true)), vec4<bool>(true, true, true, true), 2147483647i, 1000f), Struct_3(Struct_1(vec3<bool>(true, false, false)), vec4<bool>(false, true, false, false), -24986i, -1088f), Struct_3(Struct_1(vec3<bool>(true, true, true)), vec4<bool>(true, true, false, false), 2147483647i, 1000f));

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = u_input.b.wx;
    let var_1 = vec4<i32>(reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 72447i, u_input.d.x, u_input.a), vec4<i32>(35592i, -17192i, u_input.d.x, 38351i))), ~(-4214i), -abs(~1i), ~u_input.a) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32((vec4<u32>(143492u, 75736u, 25087u, 4294967295u) >> (vec4<u32>(1u, 47860u, 17784u, u_input.c.x) % vec4<u32>(32u))) & select(vec4<u32>(6219u, 0u, var_0.x, var_0.x), vec4<u32>(u_input.c.x, 11686u, var_0.x, 4294967295u), vec4<bool>(true, false, true, false)), ~vec4<u32>(u_input.c.x, var_0.x, var_0.x, var_0.x)), countOneBits(vec4<u32>(abs(u_input.b.x), select(var_0.x, var_0.x, false), 75363u, ~1u))) % vec4<u32>(32u));
    global3 = array<Struct_3, 7>();
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.a)))), -357f)))));
    let var_3 = true;
    return _wgslsmith_mod_u32(~var_0.x, ~(~(~u_input.c.x & (u_input.c.x & u_input.c.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1024u, _wgslsmith_mod_u32(50771u, ~max(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~u_input.b.x))), 7u)];
    let var_1 = -3197f;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), ~vec2<u32>(43345u, u_input.c.x))) ^ ~u_input.c.x, func_3(Struct_2(global0.a))), 7u)];
    let var_3 = Struct_3(Struct_1(var_0.b.wyz), vec4<bool>(!(arg_0.x || arg_0.x) & !any(vec2<bool>(arg_0.x, true)), arg_0.x, false, _wgslsmith_f_op_f32(min(1414f, _wgslsmith_div_f32(global2.x, var_1))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.a, var_0.d))))), 31784i, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(select(553f, 1653f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1277f))))));
    let var_4 = vec3<f32>(-105f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.a, global2.x), _wgslsmith_f_op_f32(sign(global0.a))))))), -242f);
    return u_input.d.x;
}

fn func_1() -> bool {
    var var_0 = func_2(!select(vec4<bool>(false, true, true, select(true, false, false)), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, 141f <= global2.x), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, 67786i)), -vec2<i32>(-8822i, u_input.a)), countOneBits(u_input.a & 0i))));
    var_0 = ~u_input.a;
    let var_1 = -u_input.a;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, (abs(~1u) ^ u_input.c.x) | _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(18514u, u_input.b.x, u_input.b.x), u_input.b.xxw, u_input.b.yxw)), ~u_input.b.wxx | _wgslsmith_sub_vec3_u32(u_input.b.yyz, u_input.b.wxy))), 7u)];
    global1 = _wgslsmith_clamp_u32(~(~((u_input.c.x >> (u_input.b.x % 32u)) | (u_input.c.x >> (u_input.c.x % 32u)))), (58095u >> (1u % 32u)) << ((~func_3(Struct_2(255f)) ^ 0u) % 32u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 0u)) & ~(vec2<u32>(u_input.c.x, 1u) | u_input.b.yx), _wgslsmith_sub_vec2_u32(abs(u_input.b.wz), ~u_input.b.yw)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -585f;
    let var_1 = select(vec4<bool>(any(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true)), false, any(vec3<bool>(true, true, true)), true), vec4<bool>(func_1(), true, !any(vec2<bool>(true, true)), any(vec2<bool>(true, true))), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.wzw - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0.a, _wgslsmith_f_op_f32(trunc(global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -108f, global2.x))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))));
    let var_4 = select(!vec2<bool>(var_1.x & true, -1196i != (u_input.a << (44123u % 32u))), !select(vec2<bool>(true, var_1.x), select(!vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(var_1.x, true))), !select(var_1.xz, vec2<bool>(true, false), false)), true);
    let var_5 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(957f + 1000f), global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, -select(vec4<i32>(~(-2147483647i), -3587i, 0i, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d)), vec4<i32>(~u_input.a, abs(-169i), 1i, 0i ^ u_input.d.x), select(!vec4<bool>(var_4.x, var_1.x, true, var_4.x), var_1, true)));
}

