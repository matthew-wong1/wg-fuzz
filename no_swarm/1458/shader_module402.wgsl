struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, false, 2557i);

var<private> global1: f32 = 452f;

var<private> global2: array<Struct_2, 28>;

var<private> global3: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = all(select(vec3<bool>(all(vec2<bool>(false, arg_1)), true, select(arg_2.b, arg_3.d.b, true)), vec3<bool>(arg_0 > firstTrailingBit(arg_3.e), !global0.b, false), !any(!vec3<bool>(false, true, arg_3.d.b))));
    global0 = Struct_1(~(~_wgslsmith_mult_i32(~global3.x, 17593i)), all(select(!vec3<bool>(global0.b, arg_3.d.b, true), vec3<bool>(true, !arg_1, -2147483647i < global3.x), vec3<bool>(arg_2.b, arg_3.d.b, global0.a > u_input.a.x))), global3.x);
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(~(~(~12244u))), 28u)];
    var var_2 = Struct_3(arg_3.a, _wgslsmith_f_op_f32(-1410f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3.b, arg_3.b)))))), _wgslsmith_add_i32(u_input.b, select(31820i, _wgslsmith_add_i32(~(-32565i), global0.a), arg_3.d.b)), Struct_1(countOneBits(-u_input.a.x), ((true || var_0) & true) || any(vec3<bool>(var_0, arg_2.b, arg_1)), global3.x & 0i), _wgslsmith_add_u32(74211u, _wgslsmith_add_u32(28578u, 142000u)));
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(var_2.e >> (81333u % 32u)), 28u)];
    return true;
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(0i, func_3(35481u, !global0.b, Struct_1(14071i, true, _wgslsmith_sub_i32(max(u_input.b, global0.c), _wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.zzy))), Struct_3(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), -1i, Struct_1(u_input.b, true, 1i), 6659u)), 1i);
    var var_1 = Struct_1(min(-var_0.a, global3.x) >> (_wgslsmith_mod_u32(4294967295u, ~1u) % 32u), any(!vec2<bool>(all(vec3<bool>(true, true, false)), true)), min(-global0.a, reverseBits(1i)));
    var var_2 = reverseBits(~(~0u)) >> (_wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(1u, 33243u, 1u))), select(abs(abs(vec3<u32>(92116u, 9101u, 580u))), vec3<u32>(1u, firstLeadingBit(36807u), ~39993u), _wgslsmith_clamp_u32(1u, 0u, 4294967295u) <= _wgslsmith_clamp_u32(6401u, 40446u, 17735u))) % 32u);
    global3 = u_input.a.xy;
    let var_3 = vec3<u32>(19714u, select(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(20337u, 4294967295u)), vec2<u32>(1u, 1u)), firstLeadingBit(41590u), true), _wgslsmith_clamp_u32(1u, min(4294967295u, select(_wgslsmith_mod_u32(4294967295u, 8609u), _wgslsmith_mult_u32(5653u, 2172u), false)), 1u));
    return u_input.b;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    global2 = array<Struct_2, 28>();
    let var_0 = vec4<i32>(firstLeadingBit(~max(-56690i, func_2(global2[_wgslsmith_index_u32(65177u, 28u)]))), -(~(-global0.c)), 29823i, func_2(global2[_wgslsmith_index_u32(~(~1u), 28u)]));
    global3 = min(vec2<i32>(_wgslsmith_dot_vec4_i32(-(~u_input.a), vec4<i32>(-1i, -20104i, global0.a, global3.x) | vec4<i32>(global0.a, u_input.b, global3.x, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(15644i, global3.x), countOneBits(-2147483647i), global3.x, -global0.c), u_input.a | var_0)), vec2<i32>(-firstTrailingBit(-1i | global0.a), select(min(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 1i, u_input.a.x), u_input.a.xyw), _wgslsmith_mod_i32(2147483647i, global3.x)), _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a, var_0.x), ~var_0.yx), global0.b)));
    let var_1 = _wgslsmith_add_i32(~_wgslsmith_add_i32(_wgslsmith_div_i32(-47087i, global0.c), ~(2147483647i & global3.x)), _wgslsmith_div_i32(-max(-u_input.b, _wgslsmith_mod_i32(global0.c, u_input.b)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 3441i), vec2<i32>(-17395i, u_input.b)) ^ 2147483647i));
    let var_2 = ~vec2<i32>(~0i, -func_2(global2[_wgslsmith_index_u32(4294967295u, 28u)]));
    return -220f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-498f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(105f, -975f), _wgslsmith_f_op_f32(abs(-1568f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2249f, -986f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1734f * 1497f)), _wgslsmith_f_op_f32(func_1(vec4<f32>(911f, -177f, 1584f, 806f))))));
    var var_1 = Struct_1(u_input.a.x, !all(select(select(vec4<bool>(global0.b, false, global0.b, false), vec4<bool>(false, global0.b, global0.b, global0.b), vec4<bool>(true, true, true, true)), vec4<bool>(false, global0.b, true, false), any(vec2<bool>(global0.b, global0.b)))), _wgslsmith_mult_i32(37566i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(u_input.b, global3.x & 2544i))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1435f, 2208f)))));
    global3 = ~vec2<i32>(-1i, u_input.a.x);
    global0 = Struct_1(u_input.a.x, var_1.b, ~_wgslsmith_sub_i32(-24496i, ~u_input.a.x & _wgslsmith_mult_i32(-35208i, var_1.a)));
    let var_3 = Struct_3(vec2<u32>(1u, countOneBits(~31086u)), var_0.x, ~1i, Struct_1(-1i, all(!select(vec2<bool>(global0.b, var_1.b), vec2<bool>(var_1.b, global0.b), vec2<bool>(global0.b, var_1.b))), -1i | _wgslsmith_clamp_i32(i32(-1i) * -32328i, abs(-25875i), global3.x)), 25192u);
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, 923f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_3.b, -165f, 590f), vec4<f32>(-199f, var_0.x, var_0.x, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(func_1(vec4<f32>(var_3.b, -526f, var_3.b, 1000f))), -1746f, -313f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_4.yw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.xx) * vec2<f32>(685f, 1000f)), vec2<bool>(false, all(vec3<bool>(false, true, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b, 924f))) * vec2<f32>(var_0.x, -399f)))), firstLeadingBit(~abs(~vec3<u32>(1u, 3580u, 4294967295u))), global0.a, countOneBits(u_input.a.wy & (u_input.a.xz ^ vec2<i32>(u_input.b, var_3.d.c))));
}

