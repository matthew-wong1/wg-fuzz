struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<f32> {
    let var_0 = false;
    global0 = array<vec4<bool>, 2>();
    var var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.d), abs(firstLeadingBit(u_input.d))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(-2147483647i, u_input.a.x)), vec2<i32>(~abs(-1i), 8640i)));
    let var_3 = vec3<bool>(any(select(select(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, false), !vec2<bool>(var_0, true)), select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), var_0), select(vec2<bool>(false, var_0), vec2<bool>(false, false), false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0)), var_0)), any(!select(vec3<bool>(var_0, false, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, true)), !vec3<bool>(var_0, var_0, var_0))), !(!(_wgslsmith_f_op_f32(floor(436f)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(1403f)), 1000f), vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -113f)), _wgslsmith_div_f32(-1651f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -460f)))), -1254f), any(!select(select(vec4<bool>(var_0, true, var_0, var_3.x), vec4<bool>(var_3.x, var_3.x, false, true), true), !global0[_wgslsmith_index_u32(u_input.c, 2u)], !vec4<bool>(var_0, var_3.x, var_0, false)))));
}

fn func_2() -> u32 {
    global0 = array<vec4<bool>, 2>();
    var var_0 = Struct_2(Struct_1(-(~u_input.d ^ 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1015f, -261f, -301f)))))), Struct_1(u_input.d), !vec3<bool>(true, true, any(vec2<bool>(true, false))));
    return ~abs(u_input.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-744f))))));
    let var_1 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(all(vec2<bool>(false, false)), false), vec2<bool>(true, true), all(vec3<bool>(true, true, true))));
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_0, u_input.b)) ^ ~vec2<u32>(0u, 6832u), firstTrailingBit(~vec2<u32>(u_input.b, arg_0))));
    var_2 = ~(_wgslsmith_sub_vec2_u32(vec2<u32>(33004u, u_input.c), ~vec2<u32>(var_2.x, 3965u)) & vec2<u32>(abs(0u), func_2())) | vec2<u32>(~_wgslsmith_div_u32(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 21566u, var_2.x), vec3<u32>(u_input.c, 47090u, 79857u))), ~(~abs(31463u)));
    var var_3 = -23373i;
    return Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1611f, 1698f, -807f), vec3<f32>(-491f, 712f, 1616f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, 2799f, 1343f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(589f, -970f, -1724f))))), arg_1, vec3<bool>(var_1.x, true, true));
}

fn func_1() -> bool {
    global0 = array<vec4<bool>, 2>();
    let var_0 = func_4(func_2(), Struct_1(~u_input.a.x));
    var var_1 = u_input.a;
    let var_2 = Struct_2(Struct_1(-86131i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1574f, -483f, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_0.b.x, -1189f, var_0.b.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x) * vec3<f32>(var_0.b.x, 617f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b) + var_0.b))), func_4(u_input.b, func_4(u_input.c, var_0.c).c).c, !select(vec3<bool>(any(vec2<bool>(var_0.d.x, true)), all(vec3<bool>(true, var_0.d.x, false)), !var_0.d.x), !select(vec3<bool>(var_0.d.x, false, var_0.d.x), vec3<bool>(false, false, false), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), !var_0.d));
    var var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, u_input.b, 0u)), select(vec3<u32>(5359u, 6123u, 50799u), vec3<u32>(36914u, 1u, u_input.b), vec3<bool>(true, true, true)) | vec3<u32>(39117u, u_input.c, 8367u)) & vec3<u32>(u_input.b, ~u_input.c, ~39442u), ~((reverseBits(vec3<u32>(u_input.c, 1u, u_input.b)) ^ select(vec3<u32>(6275u, u_input.b, 41315u), vec3<u32>(u_input.b, u_input.c, 10183u), true)) << (min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.c, u_input.b, 2448u)), vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(func_1(), true, (select(true, true, true) == true) | !func_1()), vec3<bool>(true, true, true), vec3<bool>(min(u_input.d, -u_input.a.x) > _wgslsmith_sub_i32(1i, abs(u_input.a.x)), any(vec2<bool>(true, false)) & all(vec3<bool>(false, false, true)), true));
    let var_1 = Struct_1(u_input.d);
    let var_2 = vec2<f32>(-884f, _wgslsmith_f_op_f32(sign(-1104f)));
    let var_3 = (firstTrailingBit(_wgslsmith_mod_i32(-8559i, -2147483647i)) >= firstTrailingBit(_wgslsmith_mod_i32(max(2147483647i, var_1.a), 26695i | var_1.a))) & (true | (~abs(u_input.c) < ~u_input.c));
    let var_4 = var_1;
    var var_5 = _wgslsmith_f_op_f32(-var_2.x);
    let var_6 = ~(~u_input.c);
    global0 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-840f - var_2.x)))), _wgslsmith_f_op_f32(min(298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))))), var_2.x), vec3<u32>(14308u, 0u, min(24355u, func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(var_2, var_2)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, var_2.x))), false)) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), 676f)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, _wgslsmith_f_op_f32(420f + var_2.x), _wgslsmith_f_op_f32(-var_2.x)))));
}

