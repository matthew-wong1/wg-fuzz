struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<i32>(-1i, 64720i, 17201i));

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<f32, 16>;

var<private> global3: vec2<u32> = vec2<u32>(33879u, 67503u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(global0.a, -_wgslsmith_mod_vec3_i32(max(vec3<i32>(-1i, u_input.a.x, global0.b.x), global0.b), global0.b));
    global2 = array<f32, 16>();
    var_0 = Struct_1(true, abs(var_0.b));
    var var_1 = Struct_3(Struct_2(var_0.a), select(!(!(!vec4<bool>(false, global0.a, global0.a, true))), vec4<bool>(true, var_0.a, !var_0.a, global0.a), !all(!vec4<bool>(false, global0.a, var_0.a, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, arg_0, -516f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(4294967295u, global3.x, 139636u)), 16u)], _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 16u)], -168f)), global2[_wgslsmith_index_u32(0u, 16u)]) + vec3<f32>(253f, arg_0, arg_0)))));
    return u_input.a.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = vec4<bool>(any(vec2<bool>(!global0.a, true)) || true, all(vec4<bool>(!arg_1, arg_1, true, global0.a && true)), any(!select(!vec3<bool>(false, global0.a, true), select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(arg_1, arg_1, global0.a), false), arg_1)), true);
    var var_1 = Struct_3(Struct_2(all(vec2<bool>(true, true))), vec4<bool>(!var_0.x, global0.a, arg_1, all(var_0.zzx)));
    var_1 = Struct_3(var_1.a, vec4<bool>(!(global2[_wgslsmith_index_u32(global3.x, 16u)] <= _wgslsmith_f_op_f32(f32(-1f) * -211f)), true, !(!all(var_1.b)), !var_0.x));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 0u), 16u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.x, 16u)])))))))));
    var var_3 = Struct_3(var_1.a, var_1.b);
    return any(!var_1.b) & true;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    global0 = Struct_1(true, -firstLeadingBit(-_wgslsmith_mod_vec3_i32(global0.b, vec3<i32>(1i, 28872i, u_input.a.x))));
    global1 = array<vec2<i32>, 20>();
    var var_0 = true;
    let var_1 = vec3<bool>(arg_0.x, any(select(vec2<bool>(global0.a, global0.a | true), !(!arg_0.yz), arg_0.wz)), !(!arg_0.x));
    var var_2 = Struct_3(Struct_2(!var_1.x), arg_0);
    return Struct_1(44859u < (~global3.x & u_input.b), firstLeadingBit(abs(-(vec3<i32>(20403i, u_input.a.x, -1i) | global0.b))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    global1 = array<vec2<i32>, 20>();
    global3 = ~vec2<u32>(~(~u_input.b), 8317u) | (~vec2<u32>(~0u, ~arg_2.x) | select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(11457u, 0u) ^ arg_2), arg_2, select(vec2<bool>(true, true), select(vec2<bool>(global0.a, arg_0.a), vec2<bool>(arg_3.a, arg_0.a), vec2<bool>(global0.a, global0.a)), all(vec3<bool>(false, arg_3.a, global0.a)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1155f, 484f, arg_1, -682f) + vec4<f32>(1123f, 1196f, arg_1, -153f))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -1708f, arg_1, global2[_wgslsmith_index_u32(69150u, 16u)]), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1128f, -1246f, arg_1, 1529f))))))))));
    global0 = func_4(vec4<bool>(func_2(arg_1) > global0.b.x, func_3(-abs(vec2<i32>(-1i, 1i)), true, i32(-1i) * -2147483647i), false, true), arg_1);
    var var_1 = arg_2.x;
    return ~_wgslsmith_sub_u32(19184u, u_input.b ^ ~min(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(global0.b.x, global0.b.x) <= _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(-24020i), countOneBits(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(select(47472u, 4294967295u, global0.a), 20u)], global0.b.zy & global0.b.yz)));
    var var_1 = countOneBits(select(vec3<u32>(min(4294967295u, 24423u) | ~global3.x, 59935u, u_input.b), vec3<u32>(func_1(Struct_2(global0.a), _wgslsmith_f_op_f32(max(281f, global2[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(global3.x, 0u), vec2<u32>(4294967295u, 156137u)), Struct_2(false)), ~16038u >> (select(global3.x, u_input.b, true) % 32u), global3.x), select(select(!vec3<bool>(false, true, global0.a), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, global0.a, false), vec3<bool>(false, true, global0.a)), all(vec3<bool>(false, false, false))), vec3<bool>(global0.a, true, global0.a), false && global0.a)));
    let var_2 = ~vec2<i32>(537i, -(i32(-1i) * -2147483647i));
    var var_3 = !(any(select(!vec4<bool>(false, true, global0.a, true), !vec4<bool>(global0.a, false, true, true), vec4<bool>(global0.a, global0.a, global0.a, false))) | false);
    var var_4 = Struct_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_mult_i32(func_2(-1031f), select(-1i, u_input.a.x, false)), 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(65594i, var_2.x, var_2.x, -34063i), vec4<i32>(global0.b.x, -2147483647i, var_2.x, -2147483647i))), global0.b.x, -(~global0.b.x));
}

