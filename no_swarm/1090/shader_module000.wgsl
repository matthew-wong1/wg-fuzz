struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(0u, 37859u, 4294967295u), 0u));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4508u, 30049u, 0u), 0u);

var<private> global2: array<bool, 31>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<f32> {
    global2 = array<bool, 31>();
    var var_0 = arg_3;
    global0 = arg_3;
    var_0 = arg_1;
    var var_1 = vec2<bool>(arg_2.x, true);
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(193f, _wgslsmith_f_op_f32(1393f + -579f)), -153f, _wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(min(1448f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(497f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1148f)), -654f, !global2[_wgslsmith_index_u32(global0.a.b, 31u)]))), -293f, -212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f * 332f)) - -2055f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32) -> StorageBuffer {
    let var_0 = u_input.b.x;
    global0 = Struct_2(global0.a);
    let var_1 = vec3<i32>(-23740i, abs(var_0), var_0);
    global2 = array<bool, 31>();
    let var_2 = select(true, !(!global2[_wgslsmith_index_u32(88572u, 31u)]), true);
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.a, Struct_2(global0.a), vec2<bool>(true, false), Struct_2(global0.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, 1000f, -555f, -375f)), vec4<f32>(1f, -742f, -1055f, _wgslsmith_div_f32(-754f, 1407f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1015f, 1332f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(688f, -510f), vec2<f32>(-878f, 1621f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(433f, -686f), vec2<f32>(-729f, 1222f), arg_1.zz)) * vec2<f32>(-902f, -556f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1490f, 842f) - vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(16562u, arg_2, 50484u), global0.a.a), 10477u), Struct_2(global0.a), select(!vec2<bool>(arg_1.x, false), arg_1.yx, vec2<bool>(false, var_2)), Struct_2(global0.a))).wx)), -497f);
}

fn func_1() -> StorageBuffer {
    return func_2(max(_wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(global0.a.b, 0u, 4294967295u, global1.b), vec4<u32>(62824u, 44790u, 0u, global1.b), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 31u)], true, global2[_wgslsmith_index_u32(global0.a.a.x, 31u)]))), ~abs(vec4<u32>(0u, global1.a.x, 0u, 4294967295u))), _wgslsmith_sub_vec4_u32(abs(select(vec4<u32>(global1.b, global0.a.a.x, 16604u, global0.a.b), vec4<u32>(4381u, 7979u, global0.a.a.x, global0.a.a.x), true)), abs(reverseBits(vec4<u32>(global1.a.x, 958u, 1u, 17487u))))), !(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(global1.b, 31u)], global2[_wgslsmith_index_u32(69351u, 31u)], global2[_wgslsmith_index_u32(global0.a.a.x, 31u)])))), 18096u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    global1 = Struct_1(var_0.a, 1u);
    let var_1 = Struct_2(Struct_1(var_0.a, var_0.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-737f, -329f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(904f, -1496f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1134f, 739f, 1213f) * vec3<f32>(240f, 1652f, -2043f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 940f, -478f) * vec3<f32>(-457f, -820f, -759f)))) + vec3<f32>(668f, _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(step(-547f, 484f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1393f)), -433f, _wgslsmith_f_op_f32(abs(414f)))))));
    let var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = func_1();
}

