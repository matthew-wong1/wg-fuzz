struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: u32;

var<private> global4: u32 = 51042u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_sub_vec3_u32(~u_input.a.zwz, global2[_wgslsmith_index_u32(reverseBits(arg_0.c ^ 15718u), 3u)]) << (vec3<u32>(~_wgslsmith_div_u32(10350u, ~86243u), arg_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b), ~global2[_wgslsmith_index_u32(4294967295u, 3u)])) % vec3<u32>(32u));
    let var_1 = ((vec4<i32>(-1i) * -vec4<i32>(-9490i, -34974i, -15842i, -40827i)) | (vec4<i32>(i32(-1i) * -45794i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(28307i, -2147483647i)), _wgslsmith_clamp_i32(0i, -20372i, 51268i)) >> ((u_input.a | u_input.a) % vec4<u32>(32u)))) << (vec4<u32>(~(reverseBits(1u) << (var_0.x % 32u)), 71052u, arg_0.c, var_0.x) % vec4<u32>(32u));
    var var_2 = arg_0;
    var var_3 = Struct_1(-1224f, !arg_0.b, 1u, var_2.b.zz);
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(global1.x, arg_1.b, 0u, !arg_1.d);
    var var_1 = !(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.c, u_input.a.x), vec2<u32>(arg_1.c, var_0.c)) <= max(~min(arg_1.c, var_0.c), _wgslsmith_dot_vec2_u32(u_input.a.wz, _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(arg_1.c, 1u)))));
    var var_2 = select(select(select(select(!arg_1.b.xzx, var_0.b.zwz, !arg_1.b.zyw), arg_1.b.xwy, true), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.c, var_0.c), arg_1.c), 16u)], true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(arg_1.c, var_0.c) >> (u_input.a.yw % vec2<u32>(32u))), 16u)]), vec3<bool>(true, func_3(var_0), false)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], any(var_0.b), arg_1.b.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], !var_0.b.x & (var_0.d.x || true), countOneBits(~var_0.c) != max(0u << (u_input.a.x % 32u), 4294967295u)));
    var_2 = !select(vec3<bool>(all(select(vec2<bool>(arg_0.x, arg_1.d.x), vec2<bool>(arg_0.x, true), vec2<bool>(true, true))), any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.c, 16u)], var_0.b.x, true)), true), select(arg_1.b.wzx, !select(var_0.b.wzz, vec3<bool>(true, arg_0.x, false), arg_0), arg_1.b.yyx), !vec3<bool>(var_2.x || true, true, true));
    global2 = array<vec3<u32>, 3>();
    return all(select(arg_1.b.yzx, select(arg_1.b.ywz, vec3<bool>(all(arg_0.xy), !global0[_wgslsmith_index_u32(var_0.c, 16u)], 66715u >= arg_1.c), func_3(Struct_1(arg_1.a, var_0.b, 17435u, vec2<bool>(var_0.d.x, false)))), arg_0.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = ~(~_wgslsmith_div_vec2_u32(u_input.a.wz, u_input.a.wx));
    var_0 = ~vec2<u32>(0u, 1u);
    var_0 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~(u_input.a | u_input.a), ~u_input.a ^ u_input.a)), u_input.b);
    let var_1 = select(vec3<bool>(any(arg_1.b), arg_0.x, true), select(arg_1.b.wwz, select(arg_1.b.yyx, select(select(vec3<bool>(arg_1.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(arg_1.c, 16u)], false), arg_1.b.wyz), vec3<bool>(arg_0.x, true, arg_0.x), arg_1.d.x), !func_2(arg_1.b.wyy, Struct_1(arg_1.a, arg_1.b, 52183u, arg_0))), select(!arg_1.b.xwy, arg_1.b.ywz, arg_1.b.yyz)), true);
    global0 = array<bool, 16>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -225f), vec2<f32>(global1.x, -2297f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(arg_1.a, global1.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, -542f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a, -1057f)))))) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(select(1675f, -950f, arg_1.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, select(true, true, true), true);
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, false), Struct_1(1000f, var_0, 94870u, vec2<bool>(var_0.x, true))))))))));
    let var_1 = 4294967295u;
    global2 = array<vec3<u32>, 3>();
    var var_2 = global1.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -427f), var_0, _wgslsmith_add_u32(var_1, 4294967295u), vec2<bool>(!(!all(var_0.zzx)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), u_input.a << (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(func_1(!var_0.yw, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2305f), select(var_0, var_3.b, var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 20604u), ~vec2<u32>(u_input.a.x, var_1)), !(!var_3.d)))).x);
}

