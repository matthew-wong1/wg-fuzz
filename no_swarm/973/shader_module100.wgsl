struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(-450f, 205f, -1296f), 341f, Struct_1(vec2<u32>(0u, 4294967295u), vec2<i32>(-1i, 1i)));

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, true, true, true, false, true, false, true, false, true, false, false);

var<private> global3: u32 = 1u;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    global1 = array<vec2<bool>, 22>();
    let var_0 = vec3<i32>(2147483647i, firstTrailingBit(1i), ~_wgslsmith_sub_i32(-2147483647i, -64836i));
    return Struct_2(!select(vec4<bool>(false, true, global0.a.x, any(global0.a.zw)), select(global0.a, vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.d.a.x, 13u)], global0.a.x), vec4<bool>(true, global0.a.x, false, false)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 13u)], global0.a.x, true, true), global0.a, global0.a.x), global0.a, any(global0.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(251f, -1048f, 840f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f))) * _wgslsmith_f_op_f32(196f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1914f))))), global0.d);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    global2 = array<bool, 13>();
    let var_0 = !all(vec2<bool>(true, global0.a.x && false)) || global0.a.x;
    var var_1 = reverseBits(vec2<u32>(u_input.d, ~firstTrailingBit(abs(global0.d.a.x))));
    let var_2 = func_2();
    let var_3 = select(select(arg_2.x, _wgslsmith_f_op_f32(func_2().c * -933f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f * global0.c)), select(true, all(global0.a.yy), !(var_2.d.a.x >= 2601u))), true, !(!arg_2.x));
    return -1250f;
}

fn func_1() -> Struct_2 {
    global2 = array<bool, 13>();
    let var_0 = func_2();
    let var_1 = 9845i;
    var var_2 = Struct_2(vec4<bool>(all(global0.a), all(!(!vec3<bool>(global0.a.x, global2[_wgslsmith_index_u32(1u, 13u)], var_0.a.x))), var_0.a.x, (_wgslsmith_mod_i32(0i, var_0.d.b.x) << (0u % 32u)) <= ~0i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-863f)) + var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f + _wgslsmith_f_op_f32(func_3(var_0.a.x, Struct_2(vec4<bool>(var_0.a.x, false, true, true), vec3<f32>(var_0.c, 587f, global0.c), global0.c, Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(2147483647i, -2147483647i))), var_0.a, var_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-488f, var_0.b.x)) + _wgslsmith_f_op_f32(-1558f * global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(361f - var_0.b.x) * 1000f))), 606f, func_2().d);
    global1 = array<vec2<bool>, 22>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = min(var_0.d.a.x, ~_wgslsmith_dot_vec2_u32(func_2().d.a, ~vec2<u32>(2719u, 0u))) >= ~u_input.d;
    var var_2 = -(~(i32(-1i) * -min(global0.d.b.x, 1i)));
    var_0 = Struct_2(!select(var_0.a, !select(var_0.a, vec4<bool>(true, global0.a.x, false, false), var_0.a), var_0.a.x), var_0.b, func_2().b.x, func_1().d);
    global2 = array<bool, 13>();
    var var_3 = Struct_2(!var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_f32(func_1().c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))))), func_1().d);
    var var_4 = Struct_1(~min((vec2<u32>(3186u, global0.d.a.x) >> (u_input.a.xz % vec2<u32>(32u))) ^ countOneBits(vec2<u32>(52731u, 3607u)), vec2<u32>(~34565u, ~var_3.d.a.x)), _wgslsmith_sub_vec2_i32(global0.d.b, vec2<i32>(1i, 1i)));
    global3 = abs(1u);
    var var_5 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(-1652f * 647f))))), _wgslsmith_f_op_f32(round(func_2().c)));
}

