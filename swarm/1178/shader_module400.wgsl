struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(-652f, -127f);

var<private> global3: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_2;
    return _wgslsmith_f_op_f32(trunc(global2.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(reverseBits(select(vec4<i32>(arg_0.b, -11190i, 5046i, 21535i), vec4<i32>(arg_0.c, arg_0.c, 0i, arg_0.c) | vec4<i32>(1i, 1i, 0i, 19927i), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, arg_1.x, false, global0.x), vec4<bool>(arg_0.a, true, true, false)))), Struct_1(true || !global0.x, arg_0.b, ~arg_0.c), arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, reverseBits(arg_0.b), 1i), (vec3<i32>(arg_0.c, arg_0.b, arg_0.c) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) >> (~vec3<u32>(7637u, 4294967295u, u_input.a.x) % vec3<u32>(32u))))));
    let var_0 = arg_0;
    var var_1 = var_0;
    global3 = firstTrailingBit(var_0.c);
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(4294967295u, 1u, u_input.a.x, 40417u)), vec4<u32>(~u_input.a.x, 4294967295u, u_input.a.x, 6730u), abs(min(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 9071u), vec4<u32>(19665u, 21371u, 0u, 1u)))) >> (~vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, 28932u) % vec4<u32>(32u)), vec4<u32>(~39554u >> (u_input.a.x % 32u), 67618u, 37439u, _wgslsmith_mod_u32(~1u, ~firstLeadingBit(0u))), firstLeadingBit(select(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), abs(u_input.a.x), ~u_input.a.x), ~(vec4<u32>(u_input.a.x, 38101u, 62859u, 48501u) | vec4<u32>(u_input.a.x, 6235u, 4294967295u, 57744u)), all(vec4<bool>(false, var_0.a, true, false)))));
    return vec4<bool>(all(!vec3<bool>(all(vec4<bool>(true, var_1.a, true, false)), !var_0.a, all(vec3<bool>(var_0.a, var_1.a, var_0.a)))), !var_1.a || ((-50709i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.c, -1i), vec3<i32>(var_1.b, var_0.b, var_1.b))) < -66901i), true, select(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), true, !arg_1.x) || all(vec4<bool>(true || global0.x, !global0.x, false, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>) -> f32 {
    global1 = -276f;
    let var_0 = !func_2(Struct_1(!(arg_0.x != false), _wgslsmith_add_i32(-38201i, _wgslsmith_dot_vec2_i32(vec2<i32>(93242i, 2147483647i), vec2<i32>(15015i, -2147483647i))), 1294i), !global0.yzy).zwz;
    let var_1 = select(vec2<bool>(var_0.x, u_input.a.x < ~select(u_input.a.x, 0u, var_0.x)), global0.zx, arg_0.x);
    global1 = 1329f;
    var var_2 = 1000f;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, -1i, -1i, 1i) >> (vec4<u32>(76890u, 0u, 1u, u_input.a.x) % vec4<u32>(32u)), Struct_1(var_0.x, 0i, -2147483647i), Struct_1(true, -2147483647i, 34645i), min(vec3<i32>(-55292i, 0i, 0i), vec3<i32>(0i, 0i, -1432i)))) - _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1219f)) * -1995f))));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2103f, -1736f)) - arg_1)), global2.x));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + 375f) * _wgslsmith_f_op_f32(-arg_1)), -166f));
    global0 = !vec4<bool>(true, false, arg_3.a, global0.x);
    global1 = _wgslsmith_f_op_f32(exp2(global2.x));
    let var_0 = arg_3;
    return arg_3;
}

fn func_1() -> i32 {
    let var_0 = firstLeadingBit(vec2<i32>(reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 38424i), -32916i)), firstLeadingBit(1i >> (~u_input.a.x % 32u))));
    let var_1 = Struct_1(true, var_0.x, ~var_0.x);
    let var_2 = false;
    let var_3 = func_5(vec2<bool>(select(false, global0.x, false), !var_2), _wgslsmith_f_op_f32(func_4(!select(func_2(Struct_1(false, 0i, 2147483647i), global0.yzy), select(vec4<bool>(false, true, false, false), vec4<bool>(false, global0.x, global0.x, global0.x), true), false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) - global2.x), global2.x, -368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-931f, global2.x)))))), func_2(Struct_1(all(select(global0.wz, vec2<bool>(false, var_2), vec2<bool>(true, false))), -1i, firstTrailingBit(i32(-1i) * -51656i)), global0.zwx), Struct_1(global0.x, 1278i, var_0.x));
    var var_4 = 1u;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    global0 = !(!vec4<bool>(true, any(vec4<bool>(false, false, global0.x, global0.x)) & true, true, !(global0.x & false)));
    let var_1 = Struct_1(global0.x, func_1(), abs(17080i));
    var var_2 = select(func_2(func_5(select(vec2<bool>(global0.x, var_1.a), func_2(var_1, vec3<bool>(global0.x, false, var_1.a)).zz, var_1.c != var_1.b), _wgslsmith_f_op_f32(round(global2.x)), !select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(false, global0.x, var_1.a, global0.x), vec4<bool>(true, true, true, global0.x)), Struct_1(var_1.a & true, -var_1.b, firstLeadingBit(var_1.b))), vec3<bool>(func_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(sign(-431f)), func_2(var_1, global0.yzw), func_5(vec2<bool>(var_1.a, global0.x), global2.x, vec4<bool>(true, false, var_1.a, false), var_1)).a, true, false)), !vec4<bool>(all(global0.zyy), false, _wgslsmith_f_op_f32(239f + -1212f) == global2.x, func_2(var_1, select(global0.zyx, global0.yxx, var_1.a)).x), !any(global0.wz));
    let var_3 = false;
    global0 = vec4<bool>(any(vec4<bool>(false, true, select(any(var_2.ywx), var_3, true || global0.x), global0.x)), true, any(!select(select(var_2.zz, vec2<bool>(var_2.x, true), var_2.x), !vec2<bool>(var_3, var_2.x), true)), func_5(var_2.zw, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))))), !select(vec4<bool>(true, var_3, var_3, var_2.x), select(vec4<bool>(var_2.x, false, global0.x, global0.x), vec4<bool>(true, false, true, var_2.x), true), vec4<bool>(var_2.x, true, var_3, false)), var_1).a);
    var var_4 = select(!(!select(!vec3<bool>(global0.x, false, var_2.x), func_2(var_1, global0.wzz).ywz, var_2.xxw)), var_2.zxx, !select(!var_2.wwy, global0.zzx, global2.x > _wgslsmith_f_op_f32(global2.x * 1009f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, -618f, 923f), vec4<f32>(494f, -533f, global2.x, global2.x))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 709f, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -868f)), vec4<f32>(global2.x, -434f, -2055f, 1659f))), select(vec4<bool>(true, true, true, true), func_2(func_5(vec2<bool>(var_4.x, false), 394f, vec4<bool>(var_3, var_2.x, true, var_1.a), var_1), select(var_2.zwz, vec3<bool>(var_1.a, true, false), var_3)), !vec4<bool>(var_2.x, true, var_2.x, var_4.x)))), func_5(!select(vec2<bool>(var_4.x, false), var_4.yz, vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -469f) * _wgslsmith_f_op_f32(-711f - global2.x)), select(vec4<bool>(!var_1.a, true, false, !var_2.x), select(select(vec4<bool>(var_2.x, false, var_3, true), vec4<bool>(global0.x, true, var_3, var_2.x), var_1.a), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(var_4.x, false, false, true)), any(vec3<bool>(var_4.x, true, var_4.x))), true), var_1).c, ~4294967295u);
}

