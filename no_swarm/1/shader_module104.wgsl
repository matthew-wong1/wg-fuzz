struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 1240f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<bool> {
    return !select(select(select(vec3<bool>(arg_2.a, false, false), !vec3<bool>(arg_2.a, false, arg_2.a), u_input.a > -1i), select(select(vec3<bool>(true, arg_2.a, false), vec3<bool>(false, false, arg_2.a), vec3<bool>(false, arg_2.a, false)), !vec3<bool>(arg_2.a, false, true), !vec3<bool>(arg_2.a, false, arg_2.a)), select(!vec3<bool>(arg_2.a, false, arg_2.a), !vec3<bool>(arg_2.a, false, true), arg_2.a & true)), select(vec3<bool>(arg_2.a, !arg_2.a, arg_2.a), select(vec3<bool>(arg_2.a, arg_2.a, false), !vec3<bool>(arg_2.a, true, true), select(vec3<bool>(false, arg_2.a, false), vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, arg_2.a))), !select(vec3<bool>(false, false, false), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(true, true, arg_2.a))), vec3<bool>(false, all(vec2<bool>(false, arg_2.a)), u_input.b.x != 9563u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = arg_1;
    var var_1 = -u_input.a;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x - arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1447f)) - _wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(-var_0.b), !vec2<bool>(false, var_0.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(608f - _wgslsmith_f_op_f32(-521f - var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -3126f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_1.b)))))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(arg_1.b));
    let var_2 = Struct_1(true, arg_1.b, -171f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(701f * global0.x), _wgslsmith_f_op_f32(select(var_0.c, arg_2, arg_1.a)), func_1(1u, vec4<f32>(-1330f, global0.x, var_2.c, 1112f), arg_1).x))))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-144f + -323f), -177f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), Struct_1(false, vec2<f32>(global0.x, -1465f), -1005f), global0.x))), global0.x))));
    let var_0 = !(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))));
    let var_1 = vec3<i32>(min(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(abs(u_input.a), -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(max(-17742i, 2147483647i), u_input.a), ~arg_0.xz << (~u_input.b.wy % vec2<u32>(32u))), min(-arg_0.x, ~14245i) & arg_0.x) << (countOneBits(u_input.b.wwy) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, _wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -2172f), vec2<f32>(-1641f, global0.x))), vec2<f32>(global0.x, 976f), vec2<bool>(var_0.x, true)))), var_0.yy)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-155f, global0.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1327f), -143f), !var_0.x))));
    var var_2 = Struct_1(select(all(vec3<bool>(any(var_0), u_input.b.x < 1u, false)), 4294967295u < max(~u_input.b.x, ~26157u), any(var_0)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 116f), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1367f + _wgslsmith_f_op_f32(round(global0.x))) - global0.x)));
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(1f + 522f)), arg_0.c, arg_2)));
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, reverseBits(u_input.b.x), u_input.b.x), vec3<u32>(u_input.b.x ^ 1u, u_input.b.x, min(u_input.b.x, 1192u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -343f), true)) - global0.x), global0.x));
    let var_0 = func_4(Struct_1(all(select(vec3<bool>(true, false, true), func_1(24110u, vec4<f32>(-476f, 1064f, global0.x, 478f), Struct_1(false, vec2<f32>(global0.x, 479f), global0.x)), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1395f, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, -102f))), 426f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -143f) - vec2<f32>(global0.x, -946f)), vec2<f32>(global0.x, global0.x), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(29761i, -48790i, u_input.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -2869f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(724f, global0.x) * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(-930f)), -226f));
    var var_1 = -(i32(-1i) * -u_input.a);
    var var_2 = var_0;
    var var_3 = countOneBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(min(vec2<i32>(15396i, u_input.a) | select(vec2<i32>(1i, u_input.a), vec2<i32>(-72435i, u_input.a), vec2<bool>(var_2.a, true)), ~(-vec2<i32>(u_input.a, -1i))), -vec2<i32>(u_input.a, u_input.a)), abs(_wgslsmith_mod_vec3_i32((vec3<i32>(u_input.a, 17505i, 23177i) << (vec3<u32>(1u, var_3.x, 1u) % vec3<u32>(32u))) & max(vec3<i32>(-60097i, u_input.a, -20203i), vec3<i32>(u_input.a, u_input.a, 44833i)), abs(vec3<i32>(-2366i, -50292i, u_input.a)) | abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-695f, global0.x, var_0.a)), _wgslsmith_f_op_f32(global0.x - 965f), _wgslsmith_f_op_f32(-var_0.b.x)))), u_input.b, u_input.a);
}

