struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: vec2<f32> = vec2<f32>(1930f, 1065f);

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x & 20180u, 1u, ~11042u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), reverseBits(vec4<u32>(0u, ~30957u, u_input.a.x, 21288u >> (u_input.a.x % 32u)))) >> (u_input.a.x % 32u), 1u)];
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))))));
    var var_1 = Struct_1(vec2<bool>(true, true), !arg_2.b);
    let var_2 = select(1i, 0i, !(var_1.b.x != true));
    global2 = array<Struct_1, 13>();
    return -(~var_2);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-791f, global1.x, true)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1433f, global1.x, 1151f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, -403f)))))));
    let var_1 = Struct_1(arg_0.b.yx, select(vec4<bool>(func_3(arg_0.b.x, vec2<i32>(u_input.c, u_input.d), arg_0, vec2<i32>(u_input.b, u_input.d)) >= abs(-1i), arg_0.b.x, arg_0.b.x, !(!arg_0.b.x)), select(!(!arg_0.b), arg_0.b, all(arg_0.a)), false));
    global0 = array<f32, 1>();
    var var_2 = var_1.b.x;
    global0 = array<f32, 1>();
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~(~abs(vec4<u32>(50608u, u_input.a.x, 1u, 24991u))), ~select(u_input.a ^ u_input.a, ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), true), select(~(~vec4<u32>(u_input.a.x, 5727u, u_input.a.x, 0u)), ~vec4<u32>(4294967295u, u_input.a.x, 60583u, 18332u), func_2(func_2(Struct_1(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), global1.x, u_input.a.xy), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] * -102f), countOneBits(vec2<u32>(1u, u_input.a.x))).b));
    var var_1 = u_input.a.x <= firstLeadingBit(abs(14914u));
    var var_2 = ~27081u;
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.x, 27321u, u_input.a.x, var_0.x) >> (vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 0u) % vec4<u32>(32u))), ~u_input.a), u_input.a), 1u)]);
    return vec4<bool>(true, all(select(vec3<bool>(var_3.a.x, var_3.b.x, false), vec3<bool>(false, false, var_3.a.x), func_2(Struct_1(arg_0.a, var_3.b), global0[_wgslsmith_index_u32(26381u, 1u)], u_input.a.zz).b.x)) & var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1474f - 1531f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f))), false && var_3.b.x);
}

fn func_1() -> f32 {
    var var_0 = !all(!vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true));
    var_0 = _wgslsmith_mod_i32((firstTrailingBit(u_input.b) << (_wgslsmith_mod_u32(19315u, 1u) % 32u)) & u_input.d, u_input.c) != -34735i;
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(true, true)))), select(!func_4(func_2(global2[_wgslsmith_index_u32(var_1, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec2<u32>(0u, var_1))), select(func_2(func_2(global2[_wgslsmith_index_u32(2102u, 13u)], 1105f, u_input.a.yw), -1349f, u_input.a.wy).b, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, true))), vec4<bool>(true, true, true, true)));
    let var_3 = !(!all(vec3<bool>(var_2.a.x, any(var_2.b), !var_2.a.x)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~0u, 66307u | var_1), 1u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-625f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8498u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(319f, -1185f))) - _wgslsmith_div_f32(1018f, _wgslsmith_f_op_f32(func_1()))), -1125f);
    let var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 13u)];
    let var_3 = Struct_1(vec2<bool>(any(func_4(func_2(Struct_1(var_2.b.wx, var_2.b), global1.x, var_0.yz)).xxx), !var_2.a.x), var_2.b);
    let var_4 = var_2.b.zwz;
    var var_5 = vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(0u, ~u_input.a.x), 26314u, _wgslsmith_dot_vec4_u32(u_input.a, var_0));
    let var_6 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_div_vec3_u32(u_input.a.wzz, var_0.yxw));
}

