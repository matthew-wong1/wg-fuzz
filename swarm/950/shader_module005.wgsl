struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 41194i, 14385i, -15426i);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<vec2<u32>, 31>;

var<private> global4: array<Struct_2, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> bool {
    global1 = select(!vec3<bool>(all(select(global1.zx, vec2<bool>(global1.x, arg_0), global1.x)), global1.x, !(-14479i > u_input.a.x)), vec3<bool>(any(select(global1.xy, global1.xx, vec2<bool>(arg_0, global1.x))), global0.x != _wgslsmith_mod_i32(countOneBits(global0.x), u_input.a.x), !(global1.x | arg_0)), select(select(vec3<bool>(!global1.x, false, !arg_0), vec3<bool>(true, arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, false))), !(!vec3<bool>(true, false, global1.x))), select(vec3<bool>(any(vec3<bool>(false, global1.x, false)), any(vec2<bool>(true, false)), !arg_0), vec3<bool>(false, all(vec4<bool>(false, global1.x, arg_0, true)), arg_0), true), true));
    let var_0 = vec4<f32>(-852f, arg_1.b.a, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -157f));
    var var_1 = var_0.x;
    var var_2 = ~(~(~1i));
    let var_3 = global4[_wgslsmith_index_u32(~(~72523u), 14u)];
    return any(vec4<bool>(false, arg_0, arg_0, false));
}

fn func_2() -> i32 {
    global1 = vec3<bool>(true, true, true);
    var var_0 = !vec3<bool>(func_3(!global1.x, Struct_2(Struct_1(1000f, vec4<f32>(902f, -1837f, 262f, 201f)), global2[_wgslsmith_index_u32(~51274u, 12u)], vec3<i32>(-2147483647i, 786i, global0.x))), true, (~u_input.a.x | firstLeadingBit(u_input.a.x)) < countOneBits(global0.x));
    var_0 = vec3<bool>(all(select(select(select(vec4<bool>(true, global1.x, true, true), vec4<bool>(true, var_0.x, false, global1.x), global1.x), vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, var_0.x)), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, true, false), var_0.x), !vec4<bool>(var_0.x, var_0.x, global1.x, false))), false, true);
    var var_1 = select(vec4<bool>(true, any(!select(vec3<bool>(global1.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, global1.x))), false, !(true | global1.x)), select(!vec4<bool>(select(false, global1.x, true), true, !global1.x, var_0.x), !vec4<bool>(true, global1.x && false, true, global1.x), var_0.x), vec4<bool>(var_0.x, true, true, any(select(!global1.yx, global1.zz, select(global1.yx, global1.yz, vec2<bool>(global1.x, global1.x))))));
    var var_2 = 23764u;
    return -2147483647i;
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    global2 = array<Struct_1, 12>();
    var var_0 = ~vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(~(-1i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global0.x, global0.x, 33261i)))), i32(-1i) * -18045i, -func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x | u_input.a.x, u_input.a.x >> (55175u % 32u)), reverseBits(~vec2<i32>(-2147483647i, u_input.a.x))));
    global3 = array<vec2<u32>, 31>();
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(abs(1u)), 12u)];
    var var_2 = vec4<bool>(true, !(global1.x && (_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)) > var_1.a)), !arg_0.x, _wgslsmith_div_u32(17938u, abs(55002u)) != _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 44145u, 21843u)), ~vec4<u32>(0u, 37130u, 1u, 49960u)));
    return vec4<bool>(true && !any(arg_0), true, !(_wgslsmith_f_op_f32(-1099f + 1259f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1225f * var_1.b.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1173f - -1641f), 1000f))))));
    global2 = array<Struct_1, 12>();
    global1 = vec3<bool>(global1.x, !all(func_1(vec3<bool>(global1.x, true, global1.x))), global1.x);
    var var_1 = global1.x;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(186f)), _wgslsmith_div_f32(var_0.x, 850f));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-abs(vec2<i32>(-1i, -41243i))), vec2<i32>(-2147483647i & max(u_input.a.x, u_input.a.x), -1i)));
}

