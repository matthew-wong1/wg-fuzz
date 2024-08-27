struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<vec3<i32>, 5>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<u32>) -> vec3<u32> {
    global1 = !select(!vec3<bool>(any(vec4<bool>(global1.x, global1.x, true, global1.x)), any(vec4<bool>(true, global1.x, true, global1.x)), !global1.x), select(vec3<bool>(true != global1.x, !global1.x, true), select(select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, false)), vec3<bool>(false, global1.x, true), any(vec4<bool>(global1.x, false, false, global1.x))), !(!global1.x)), !any(vec4<bool>(true, true, global1.x, true)));
    let var_0 = abs(firstTrailingBit(~min(countOneBits(vec4<i32>(u_input.c.x, -2147483647i, -6599i, u_input.c.x)), ~vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.b))));
    let var_1 = arg_0;
    let var_2 = 1u;
    return _wgslsmith_sub_vec3_u32(var_1.c, vec3<u32>(9153u | (~6180u & arg_0.c.x), 808u, var_2));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<bool>(false, true | all(vec3<bool>(true, 1u <= u_input.e.x, global1.x)), false);
    var var_1 = ~u_input.e.x;
    let var_2 = Struct_1(u_input.e.x << (_wgslsmith_dot_vec2_u32(~reverseBits(u_input.e.yx), select(u_input.e.yz, vec2<u32>(4294967295u, 0u), select(var_0.x, true, true))) % 32u), arg_1, func_3(Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x), u_input.e.x), 2037f, vec3<u32>(u_input.e.x << (u_input.e.x % 32u), 1u, 74865u)), select(u_input.e.wyy, u_input.e.yzz, arg_0.x), -451f, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)));
    var var_3 = var_2;
    let var_4 = !select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, !var_0.x, true), select(!select(arg_0.ywz, vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, global1.x)), select(vec3<bool>(true, var_0.x, true), select(arg_0.wxz, arg_0.zyy, arg_0.x), var_0.x), all(arg_0)));
    return Struct_1(23567u, _wgslsmith_f_op_f32(-1f), ~countOneBits(min(~vec3<u32>(7514u, 4294967295u, var_3.c.x), ~vec3<u32>(0u, 8174u, 18099u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = array<vec3<i32>, 5>();
    global1 = !select(!vec3<bool>(global1.x, !global1.x, arg_0.b < -856f), !vec3<bool>(true, any(global1.yz), true), vec3<bool>(true, global1.x, all(vec4<bool>(false, global1.x, global1.x, true))));
    var var_0 = arg_1;
    var_0 = func_2(!select(vec4<bool>(true, false, true, global1.x && true), vec4<bool>(select(global1.x, false, global1.x), true, global1.x && global1.x, true && global1.x), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f))), 160f);
    let var_1 = vec3<u32>(func_3(func_2(vec4<bool>(true, global1.x, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(arg_1.b * arg_2)), _wgslsmith_f_op_f32(-var_0.b)), vec3<u32>(~_wgslsmith_dot_vec3_u32(var_0.c, arg_0.c), arg_0.a, ~_wgslsmith_sub_u32(var_0.a, arg_1.a)), -1004f, vec3<u32>(16157u, _wgslsmith_clamp_u32(var_0.c.x, 1u, ~0u), 0u)).x, 86746u, func_2(vec4<bool>(!(u_input.a > -10126i), any(select(vec4<bool>(true, true, false, false), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x)), !all(vec3<bool>(global1.x, global1.x, false)), _wgslsmith_f_op_f32(sign(var_0.b)) == _wgslsmith_f_op_f32(-660f - 1003f)), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(-710f - -190f))), _wgslsmith_f_op_f32(-arg_1.b)).c.x);
    return u_input.e.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    global1 = vec3<bool>(global1.x, !(reverseBits(-68857i) == _wgslsmith_sub_i32(-1i, u_input.d)), global1.x);
    global0 = array<vec3<i32>, 5>();
    let var_0 = func_2(select(!vec4<bool>(false, false, false, !global1.x), !(!(!vec4<bool>(arg_3.x, false, true, true))), !arg_3.x | !arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.b - arg_2.b), _wgslsmith_f_op_f32(sign(-1000f))))))), _wgslsmith_f_op_f32(round(arg_2.b)));
    var var_1 = u_input.c.yx;
    let var_2 = func_2(vec4<bool>(true, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2064f)) < _wgslsmith_f_op_f32(ceil(-1802f)), !any(vec3<bool>(true, arg_3.x, global1.x))), 1388f, -1066f);
    return var_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = u_input.c.zy;
    var var_1 = func_5(firstLeadingBit(firstLeadingBit(u_input.c)), vec4<u32>(~19688u ^ func_4(func_2(vec4<bool>(true, global1.x, global1.x, true), -1325f, 1251f), func_2(vec4<bool>(false, true, true, arg_0.x), 364f, 210f), _wgslsmith_f_op_f32(select(-197f, 478f, arg_1)), Struct_1(1u, -1887f, u_input.e.yww)), _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(firstLeadingBit(arg_2), arg_2)), firstTrailingBit(firstLeadingBit(1u)), ~(~func_3(Struct_1(4294967295u, -472f, u_input.e.wzx), vec3<u32>(u_input.e.x, arg_2, 1u), 267f, u_input.e.zyz).x)), Struct_1(~26373u, func_2(!select(vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, false, arg_0.x, true), vec4<bool>(true, arg_1, false, arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -518f)))), func_2(vec4<bool>(false, true, false, false), -1000f, _wgslsmith_f_op_f32(2172f - -1070f)).b).b, ~(~u_input.e.wyz)), select(!(!select(vec2<bool>(arg_1, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.x)), arg_0.xx, select(global1.yz, select(select(vec2<bool>(global1.x, arg_1), global1.zx, global1.xx), global1.xz, select(arg_0.yx, arg_0.xy, false)), true)));
    var_0 = vec2<i32>(u_input.c.x, var_0.x);
    var var_2 = ~(vec3<i32>(u_input.a, reverseBits(~(-15701i)), ~_wgslsmith_mod_i32(var_0.x, var_0.x)) ^ u_input.c);
    global1 = !(!select(vec3<bool>(any(arg_0), true, false), arg_0, select(arg_0, vec3<bool>(false, false, arg_0.x), arg_1)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -623f;
    let var_1 = global1.xy;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1233f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-443f, 826f)), -216f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1662f, 935f)) * -383f)));
    var var_2 = _wgslsmith_div_u32(~67018u, u_input.e.x);
    var var_3 = _wgslsmith_sub_i32(max(-48057i, countOneBits(1i)), u_input.d);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, -682f, 224f)) * vec3<f32>(_wgslsmith_div_f32(1353f, 924f), _wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(ceil(-2301f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-521f, 1000f)), -1001f, _wgslsmith_f_op_f32(func_1(vec3<bool>(true, var_1.x, var_1.x), false, 0u, u_input.a))))));
    var var_5 = countOneBits(vec2<i32>(firstTrailingBit(u_input.a) | ~u_input.d, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c.x, -57994i), _wgslsmith_div_i32(-3400i, -21868i), _wgslsmith_div_i32(u_input.c.x, u_input.b))) ^ u_input.c.yy);
    var var_6 = Struct_1(firstTrailingBit(min(u_input.e.x, _wgslsmith_mult_u32(9081u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - 716f)) * -461f)), func_5(-_wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(3091u, 5u)] >> (vec3<u32>(u_input.e.x, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -14643i, var_5.x), vec3<i32>(u_input.a, u_input.a, var_5.x))), vec4<u32>(~(~u_input.e.x), u_input.e.x, u_input.e.x, ~u_input.e.x), Struct_1(~u_input.e.x, var_4.x, abs(u_input.e.xyw)), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true), !vec2<bool>(false, var_1.x)), global1.zy, all(global1.xz))).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b);
}

