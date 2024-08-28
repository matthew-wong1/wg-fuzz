struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(3611u, 4294967295u);

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 10>;

var<private> global3: vec2<u32> = vec2<u32>(4307u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = vec4<bool>(!(all(!vec2<bool>(arg_0.a, false)) != true), any(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~countOneBits(u_input.a.yxw), ~(~u_input.a.wxy)), 10u)]), global1.a != (true & !arg_0.a), all(vec2<bool>(!all(vec2<bool>(true, true)), arg_0.a)));
    var var_1 = Struct_1(any(select(select(!vec2<bool>(false, var_0.x), select(vec2<bool>(false, global1.a), vec2<bool>(true, true), vec2<bool>(arg_0.a, var_0.x)), select(var_0.zz, vec2<bool>(global1.a, var_0.x), var_0.yz)), select(!var_0.yy, var_0.xw, all(vec2<bool>(var_0.x, true))), true)), global0.x, vec2<u32>(abs(select(global3.x | 19822u, firstLeadingBit(41829u), -697f < arg_3.x)), 1u), reverseBits(~(~(~vec2<u32>(global3.x, u_input.a.x)))), arg_3.yy);
    var var_2 = select(vec2<bool>(true, true | (u_input.c.x != _wgslsmith_mult_i32(-1i, arg_1.x))), vec2<bool>(all(select(var_0.www, var_0.xzx, vec3<bool>(true, false, arg_0.a))), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * var_1.e.x)), 128f) <= var_1.e.x);
    let var_3 = Struct_2(!var_2.x);
    let var_4 = 141i;
    return vec2<bool>(!(!any(vec3<bool>(false, var_0.x, arg_0.a))), var_3.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(any(select(select(!vec2<bool>(global1.a, global1.a), !vec2<bool>(global1.a, global1.a), true), select(vec2<bool>(true, global1.a), select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(true, false)), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a)), func_3(Struct_2(true), vec2<i32>(u_input.c.x, u_input.d.x), global0.x, vec4<f32>(895f, 374f, 681f, 659f)), select(vec2<bool>(global1.a, false), vec2<bool>(false, false), false)))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(30694u, 0u, global0.x, u_input.a.x), vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.e.x))), u_input.a), ~min(firstTrailingBit(~u_input.e), u_input.e), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(~global3.x, 1u)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 32021u) >> (vec2<u32>(u_input.a.x, global0.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 22655u), u_input.e))), ~vec2<u32>(8957u, 18081u) << ((vec2<u32>(12675u, u_input.b) >> (~u_input.a.xz % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-483f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(659f)))))));
    global2 = array<vec4<bool>, 10>();
    var var_1 = Struct_1(false, ~global3.x, u_input.a.yy, vec2<u32>(u_input.b, 0u), var_0.e);
    global2 = array<vec4<bool>, 10>();
    var var_2 = _wgslsmith_f_op_f32(floor(var_1.e.x));
    return Struct_1(global1.a, var_0.c.x, var_1.c, ~abs(_wgslsmith_add_vec2_u32(u_input.a.xx, var_1.c)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1068f * _wgslsmith_f_op_f32(sign(var_0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x - -480f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.e.x))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(u_input.a.x, ~global3.x);
    var var_1 = Struct_2(false);
    let var_2 = u_input.a.wxy;
    var var_3 = select(!global1.a, false, arg_3.x);
    var var_4 = func_2();
    return func_2();
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<i32>(u_input.d.x, 26589i);
    let var_1 = vec4<i32>(-10133i, var_0.x, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_0.x, var_0.x)) & ((vec2<i32>(-2147483647i, 0i) & vec2<i32>(u_input.d.x, u_input.d.x)) ^ vec2<i32>(8180i, -2147483647i)), u_input.c.wy & vec2<i32>(u_input.c.x, -72731i)), _wgslsmith_div_i32(-13186i | u_input.d.x, -var_0.x));
    var var_2 = arg_0.yww;
    global1 = Struct_2(arg_1.a);
    global0 = _wgslsmith_div_vec2_u32(select(countOneBits(vec2<u32>(0u, 18761u) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~arg_1.c, u_input.e), -19719i == var_1.x), ~func_2().d);
    return _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(121f * _wgslsmith_f_op_f32(-172f - arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2((1u >= _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(47780u, u_input.e.x, u_input.b, global3.x), vec4<u32>(31985u, 92397u, 0u, u_input.e.x)))) == (false || global1.a));
    let var_0 = global2[_wgslsmith_index_u32(~3421u, 10u)];
    let var_1 = 1752f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(func_4(vec4<f32>(117f, 245f, 2176f, -1353f), func_1(u_input.c.wz, -747f, -726f, vec4<bool>(var_0.x, false, var_0.x, false))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(451f, 869f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, 1865f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-581f, -110f) - vec2<f32>(543f, 264f)))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-381f)), func_1(u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(round(-792f)), !(!vec4<bool>(var_1, var_1, true, false))).e.x));
    global0 = vec2<u32>(38344u, global0.x);
    let var_3 = Struct_1(_wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.b, 1u)), 29866u) != func_1(u_input.c.yy, _wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(trunc(var_2.x)), select(vec4<bool>(true, true, true, var_0.x), global2[_wgslsmith_index_u32(1u, 10u)], var_0.x)).c.x, min(u_input.b, min(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4486u, 55521u), global3.x), global3.x)), _wgslsmith_mult_vec2_u32(u_input.a.zw, vec2<u32>(0u, 1u)), vec2<u32>(global3.x, ~func_2().c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(765f, _wgslsmith_f_op_f32(-414f * -561f))));
    global1 = Struct_2(select(false, any(!select(vec3<bool>(true, true, true), var_0.zzw, global1.a)), _wgslsmith_sub_u32(u_input.a.x, abs(global0.x)) > ~1u));
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_3.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * -610f), _wgslsmith_div_vec3_i32(u_input.c.wzx, vec3<i32>(u_input.d.x, -firstTrailingBit(u_input.c.x), -45673i)), abs(~var_3.d), -4923i);
}

