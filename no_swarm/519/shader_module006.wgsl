struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(i32(-2147483648), -60250i), -1715f), Struct_1(vec2<i32>(-1i, -34986i), -469f), Struct_1(vec2<i32>(2147483647i, -64522i), -1568f), Struct_1(vec2<i32>(i32(-2147483648), 13586i), -163f), Struct_1(vec2<i32>(-22282i, -18982i), -532f), Struct_1(vec2<i32>(43553i, 1i), -152f), Struct_1(vec2<i32>(2147483647i, 2147483647i), 582f), Struct_1(vec2<i32>(0i, -18745i), 303f), Struct_1(vec2<i32>(2147483647i, 2147483647i), 351f), Struct_1(vec2<i32>(2582i, -78510i), 336f), Struct_1(vec2<i32>(-5448i, 1i), -1033f), Struct_1(vec2<i32>(33395i, -1641i), 132f), Struct_1(vec2<i32>(-16425i, 2147483647i), 1000f), Struct_1(vec2<i32>(-25265i, -18121i), -1793f), Struct_1(vec2<i32>(-6604i, -1i), 693f), Struct_1(vec2<i32>(90350i, 70599i), 1424f), Struct_1(vec2<i32>(-22048i, -5161i), 550f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -761f), Struct_1(vec2<i32>(i32(-2147483648), 7406i), -2381f), Struct_1(vec2<i32>(2010i, i32(-2147483648)), 767f));

var<private> global2: array<bool, 17>;

var<private> global3: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_1((vec2<i32>(global0.a.x, 1i) ^ vec2<i32>(1i, ~global0.a.x)) & global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + -1352f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b)) - 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))));
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -1000f)))))))));
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    let var_1 = func_2(~(min(vec4<u32>(arg_0, u_input.b, u_input.a, 1u), vec4<u32>(0u, 52469u, u_input.b, arg_0)) << (~vec4<u32>(34672u, arg_0, arg_0, 91213u) % vec4<u32>(32u))) & firstLeadingBit(vec4<u32>(countOneBits(9262u), 44322u, 1u, arg_0 ^ arg_0)), 4294967295u, select(vec2<bool>(true, all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(arg_0, 17u)], global2[_wgslsmith_index_u32(44591u, 17u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0, 17u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], true, false)))), select(select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 17u)], true), false), !(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 17u)], true)), true), false));
    global1 = array<Struct_1, 20>();
    return Struct_1(~global0.a, global0.b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0.a;
    var_0 = vec2<i32>(-_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-var_0.x, _wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(arg_0.a.x, arg_0.a.x))), arg_0.a.x, abs(-arg_0.a.x)), ~(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.x, 15163i, -53142i), -global0.a.x, 2147483647i)));
    global0 = Struct_1(-arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)));
    let var_1 = _wgslsmith_clamp_u32(~abs(4294967295u), 4339u, 51597u);
    global3 = all(select(select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 17u)], true, global2[_wgslsmith_index_u32(arg_1, 17u)]), select(!vec3<bool>(global2[_wgslsmith_index_u32(4944u, 17u)], true, global2[_wgslsmith_index_u32(var_1, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(39371u, 17u)], false), vec3<bool>(global2[_wgslsmith_index_u32(var_1, 17u)], false, global2[_wgslsmith_index_u32(var_1, 17u)])), vec3<bool>(true, global2[_wgslsmith_index_u32(~var_1, 17u)], true)), vec3<bool>(any(vec2<bool>(true, true)), true == all(vec2<bool>(global2[_wgslsmith_index_u32(var_1, 17u)], false)), 0i > _wgslsmith_mult_i32(-17404i, global0.a.x)), !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(92228u, u_input.a), ~4294967295u, 4294967295u), 17u)]));
    return Struct_1(global0.a, 244f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    global0 = func_3(func_1(~abs(u_input.a), Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(643f, 436f)))), u_input.b);
    let var_0 = vec4<f32>(global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), _wgslsmith_f_op_f32(f32(-1f) * -1087f)), global0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b))));
    global1 = array<Struct_1, 20>();
    global3 = true;
    global1 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(844f, 1384f) - 567f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-914f)));
}

