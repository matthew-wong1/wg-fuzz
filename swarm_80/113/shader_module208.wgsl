struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = select(vec4<bool>(false, global1.x, true, global1.x), select(select(!select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, true, global1.x, true), true), select(vec4<bool>(global1.x, global1.x, false, false), !vec4<bool>(global1.x, global1.x, true, global1.x), !global1.x), !select(vec4<bool>(false, false, true, global1.x), vec4<bool>(false, true, global1.x, false), vec4<bool>(global1.x, true, global1.x, true))), select(select(vec4<bool>(false, false, true, global1.x), select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, false, global1.x, true)), select(vec4<bool>(false, true, true, global1.x), vec4<bool>(true, global1.x, false, false), global1.x)), vec4<bool>(true, !global1.x, !global1.x, true), select(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global1.x, global1.x, false)), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, true))), false), select(vec4<bool>(!(true | global1.x), false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, !select(global1.x, false, false), true && all(vec4<bool>(false, false, global1.x, false))), !vec4<bool>(!global1.x, !global1.x, true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 947f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1359f, 2175f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2644f)))))), !(!select(!vec3<bool>(global1.x, true, var_0.x), var_0.yww, true)));
    let var_2 = global1.x;
    return var_1.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> Struct_2 {
    global1 = vec3<bool>(true, true, global1.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()), !(!select(vec3<bool>(false, arg_2, global1.x), !vec3<bool>(global1.x, global1.x, true), true)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1329f)))));
    let var_3 = var_1;
    return Struct_2(1059f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)) * _wgslsmith_f_op_f32(var_2 - -407f)), !var_0.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(16020u, 4780u, 27973u, 11187u), vec4<u32>(0u, 47466u, 7655u, 0u))) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(4826u, 42391u, 21420u, 49256u), ~vec4<u32>(1u, 1u, 1112u, 0u), any(vec3<bool>(true, arg_2.b.x, true))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 2282u), reverseBits(52356u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(56932u, 0u), vec2<u32>(94663u, 132824u)))) % vec4<u32>(32u)), -216f, true);
    let var_1 = func_2(~(~(~abs(vec4<u32>(15687u, 1u, 4294967295u, 0u)))), arg_2.a, var_0.b.b.x).b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * var_0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(global1.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, false), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(-1536f, vec3<bool>(true, global1.x, false))))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-824f, -114f))) | true, (false != global1.x) & false);
    let var_0 = func_2(vec4<u32>(0u, _wgslsmith_sub_u32(45300u, 1u), 1u, ~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(~vec4<u32>(1u, 1u, 1146u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -855f), true).a) * -672f), global1.x).b.b;
    global0 = true;
    global0 = all(!var_0.zx);
    let var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(abs(func_2(vec4<u32>(29948u, 3385u, 34006u, 1u), -1249f, false).a)) <= -736f), any(select(!vec4<bool>(false, var_0.x, false, global1.x), !vec4<bool>(var_0.x, global1.x, var_0.x, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4748u, 1u)) >= 1u)), select(true, var_0.x, !global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(34594u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-298f, 1f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2051f), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f * -630f))), !global1.x)));
}

