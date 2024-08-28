struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<u32, 24>();
    return Struct_1(vec4<bool>(false, select(true, true, true) && any(arg_0.zz), arg_1 & (true && (arg_1 && false)), (~u_input.d.x | (12305i << (u_input.a % 32u))) > -2147483647i), arg_0.x);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<bool> {
    return !select(vec4<bool>(~1u <= _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11641u, 24u)], 24u)], 24u)], u_input.a, u_input.a), !any(vec4<bool>(false, false, true, true)), arg_1.b, _wgslsmith_f_op_f32(step(1239f, 1597f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1581f)), vec4<bool>(any(arg_1.a) | arg_1.a.x, func_2(arg_1.a.xzy, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1977f, 1310f))).b, func_2(!arg_1.a.zyx, all(arg_1.a.ywz), vec2<f32>(1f, 1f)).a.x, !(arg_1.b && true)), !func_2(vec3<bool>(true, true, arg_1.b), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, 863f))).a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 24>();
    var var_0 = vec3<f32>(238f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.x, -501f))))), -1327f);
    let var_1 = func_3(abs(vec2<i32>(u_input.d.x, 20937i) & select(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(-13290i, 0i), arg_1.a.zw)) ^ -reverseBits(vec2<i32>(u_input.d.x, 1i)), func_2(vec3<bool>(true, true, false), !(!(arg_0.a.x || arg_0.a.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1129f, 112f))))))).yw;
    var_0 = arg_2.zzx;
    var var_2 = Struct_1(arg_1.a, arg_0.a.x);
    return func_2(arg_1.a.wxx, arg_0.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(arg_3 - arg_2.x)))) + _wgslsmith_f_op_vec2_f32(select(arg_2.zw, vec2<f32>(_wgslsmith_f_op_f32(293f + -390f), _wgslsmith_f_op_f32(f32(-1f) * -295f)), var_2.b || any(arg_1.a.zyx)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(vec3<bool>(true, true, true), true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1354f, _wgslsmith_f_op_f32(step(-165f, -946f)))))), Struct_1(select(vec4<bool>(true, true, true, true), func_3(vec2<i32>(u_input.d.x, 56307i), func_2(vec3<bool>(false, true, true), true, vec2<f32>(2184f, 2195f))), all(vec4<bool>(false, true, true, true))), false), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(958f, 1030f, 1386f, 1298f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1254f, -307f, -170f, _wgslsmith_div_f32(1576f, 945f))))), _wgslsmith_f_op_f32(trunc(-136f)));
    let var_1 = global0[_wgslsmith_index_u32(1u & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u << (u_input.b.x % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 24u)] ^ global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), 24u)], u_input.b.x), 24u)];
    global0 = array<u32, 24>();
    var var_2 = vec4<bool>(any(!(!select(vec3<bool>(true, true, var_0.a.x), var_0.a.yyz, true))), false, any(func_2(!select(var_0.a.zyy, var_0.a.yzz, var_0.b), var_0.a.x, vec2<f32>(-536f, -688f)).a.zzw), !var_0.a.x & false);
    global0 = array<u32, 24>();
    return func_4(func_4(func_4(var_0, Struct_1(func_2(var_2.xzx, true, vec2<f32>(2299f, 2296f)).a, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(642f, 485f, -523f, 2174f), vec4<f32>(797f, 964f, 416f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-712f, -230f, -714f, 534f)))), -556f), Struct_1(!vec4<bool>(var_2.x, false, false, var_2.x), true), vec4<f32>(1f, 1f, 1f, 1f), -354f), Struct_1(vec4<bool>(any(func_3(u_input.d.yx, var_0).zz), false, var_0.b, true), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(739f, -482f, -850f, -1631f) + vec4<f32>(2012f, -1329f, -1058f, 806f)), vec4<f32>(1111f, 605f, 404f, 645f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -388f, -486f, 466f) + vec4<f32>(551f, 1221f, -106f, 271f))))))), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(0u ^ ~global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.xww, i32(-1i) * -407i);
}

