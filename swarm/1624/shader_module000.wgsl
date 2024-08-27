struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<u32>(34489u, 0u)), Struct_2(vec2<u32>(1u, 2787u)), Struct_2(vec2<u32>(30318u, 4294967295u)), Struct_2(vec2<u32>(23877u, 27717u)), Struct_2(vec2<u32>(14637u, 1u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(31021u, 0u)), Struct_2(vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(1u, 4294967295u)), Struct_2(vec2<u32>(49129u, 61089u)), Struct_2(vec2<u32>(4294967295u, 53331u)), Struct_2(vec2<u32>(0u, 35717u)), Struct_2(vec2<u32>(0u, 8767u)), Struct_2(vec2<u32>(5404u, 4294967295u)), Struct_2(vec2<u32>(7646u, 62847u)), Struct_2(vec2<u32>(1u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(1u, 1u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(34476u, 7110u)));

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-452f, 2688f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 480f) + _wgslsmith_div_f32(-1766f, 1000f)))));
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    var var_1 = ~min(4294967295u, 4294967295u);
    global1 = array<Struct_2, 20>();
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<bool> {
    global2 = Struct_2(firstLeadingBit(select(vec2<u32>(0u, global2.a.x) << (vec2<u32>(arg_0.a.x, 3788u) % vec2<u32>(32u)), vec2<u32>(arg_0.a.x, 1u), arg_2.x && true)) ^ vec2<u32>(global2.a.x << (~4294967295u % 32u), firstTrailingBit(~global2.a.x)));
    let var_0 = !vec4<bool>(arg_1.a, any(select(vec3<bool>(arg_1.a, arg_1.a, false), !arg_2.zzw, select(vec3<bool>(true, arg_2.x, arg_2.x), arg_2.zzy, arg_1.a))), arg_2.x, arg_1.a);
    let var_1 = select(arg_2, arg_2, vec4<bool>(true, all(select(!var_0, select(arg_2, vec4<bool>(true, false, false, false), true), !var_0)), var_0.x, !all(select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, false), vec2<bool>(true, var_0.x)))));
    var var_2 = arg_1.b.x;
    global2 = arg_0;
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = !select(select(vec4<bool>(func_2(global0[_wgslsmith_index_u32(1u, 20u)], arg_2, 4294967295u), true, true, true), func_3(arg_1, Struct_3(true, vec2<f32>(1000f, -632f), 101f, Struct_1(global2.a.x)), vec4<bool>(true, false, false, false)), true), func_3(Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(1058u, 0u), arg_2.a)), Struct_3(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1975f, -762f))), 1f, global0[_wgslsmith_index_u32(max(3510u, arg_0), 20u)]), func_3(Struct_2(vec2<u32>(1u, 56981u)), Struct_3(true, vec2<f32>(-1865f, -514f), -659f, Struct_1(251u)), vec4<bool>(false, true, false, true))), true);
    var var_2 = Struct_3(any(vec4<bool>(true, !var_1.x, !var_1.x || var_1.x, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1818f, -1804f)))), 1000f, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2.a.x ^ arg_2.a.x, arg_1.a.x, arg_0), 20u)]);
    global1 = array<Struct_2, 20>();
    var_2 = Struct_3(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1405f, -559f)))), _wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(537f, var_2.c))) + 1000f)), Struct_1(~(~(0u ^ var_0.a.x))));
    return !vec3<bool>(var_2.a, !(!(!var_1.x)), countOneBits(_wgslsmith_mod_u32(0u, 4294967295u)) >= abs(arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(all(func_1(global2.a.x, Struct_2(vec2<u32>(global2.a.x, global2.a.x)), global1[_wgslsmith_index_u32(global2.a.x & global2.a.x, 20u)])), false, any(!func_3(global1[_wgslsmith_index_u32(global2.a.x, 20u)], Struct_3(true, vec2<f32>(-1010f, 939f), -1130f, Struct_1(1u)), vec4<bool>(true, false, true, false)).ww));
    global0 = array<Struct_1, 20>();
    global1 = array<Struct_2, 20>();
    global0 = array<Struct_1, 20>();
    var var_1 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global2.a.x), -1226f, select(reverseBits(u_input.a.xx), ~u_input.a.wz & ~(u_input.a.zw << (global2.a % vec2<u32>(32u))), select(func_1(_wgslsmith_clamp_u32(global2.a.x, global2.a.x, 26161u), Struct_2(vec2<u32>(global2.a.x, global2.a.x)), Struct_2(vec2<u32>(global2.a.x, global2.a.x))).yz, vec2<bool>(true, true), func_3(Struct_2(global2.a), Struct_3(true, vec2<f32>(-620f, 122f), -377f, global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(false, false, false, true)).xw)));
}

