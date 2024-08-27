struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<bool>(true, false), vec2<bool>(false, false), vec3<bool>(false, true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(46373u >> (u_input.c.x % 32u), select(select(vec2<bool>(true, !arg_2.b.c.x), select(!arg_0.b.c, vec2<bool>(false, global0.c.x), all(vec2<bool>(global0.c.x, global0.d.x))), select(!arg_2.b.b, vec2<bool>(arg_2.b.b.x, global0.c.x), select(arg_2.b.c, vec2<bool>(false, arg_0.b.c.x), vec2<bool>(arg_2.b.b.x, true)))), arg_0.b.c, !(!arg_2.b.c)), select(arg_0.b.c, vec2<bool>(any(!vec4<bool>(global0.b.x, arg_0.a, global0.c.x, true)), true), !select(select(arg_2.b.c, vec2<bool>(false, true), global0.d.zy), select(vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, true), arg_2.b.c.x), true)), !select(arg_2.b.d, vec3<bool>(0u == arg_2.b.a, global0.d.x, true), vec3<bool>(any(vec4<bool>(arg_0.a, global0.c.x, arg_0.a, true)), false, global0.c.x || true)));
    var var_1 = u_input.a.x;
    var var_2 = 612f;
    global0 = var_0;
    var_1 = reverseBits(2147483647i);
    return arg_0.b.d;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(max(_wgslsmith_clamp_u32(4294967295u & u_input.d.x, global0.a >> (_wgslsmith_mod_u32(15070u, u_input.c.x) % 32u), 0u), 4294967295u), select(arg_0.b.d.xz, !(!select(vec2<bool>(arg_2.x, true), vec2<bool>(global0.d.x, false), vec2<bool>(global0.d.x, arg_0.a))), true), arg_0.b.c, !(!select(func_3(Struct_2(false, Struct_1(global0.a, arg_2.xz, vec2<bool>(true, false), arg_0.b.d), -839f), vec3<f32>(127f, -863f, arg_1), arg_0), global0.d, all(arg_2))));
    global0 = Struct_1(countOneBits(max(abs(u_input.d.x), firstLeadingBit(u_input.c.x >> (0u % 32u)))), vec2<bool>(select(global0.b.x, !(!arg_2.x), all(vec3<bool>(true, arg_2.x, global0.c.x))), !global0.d.x), global0.c, global0.d);
    var var_0 = ~vec3<u32>(~(~0u), _wgslsmith_div_u32(arg_0.b.a, _wgslsmith_div_u32(u_input.d.x, global0.a) ^ arg_0.b.a), ~103132u);
    return arg_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    global0 = arg_0;
    let var_0 = arg_0;
    let var_1 = !(!global0.b);
    global0 = func_2(Struct_2(var_0.a != _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(52052u, arg_0.a, arg_1.x, 72818u)), abs(u_input.c)), Struct_1(3994u, arg_0.b, select(select(vec2<bool>(true, true), global0.d.yy, false), vec2<bool>(true, var_0.d.x), var_0.b), func_3(Struct_2(false, Struct_1(20675u, arg_0.b, global0.b, vec3<bool>(var_1.x, true, arg_0.b.x)), -767f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1212f, 1115f, 1107f)), Struct_2(var_0.d.x, Struct_1(arg_0.a, vec2<bool>(true, true), global0.b, global0.d), -996f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1504f, 374f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(422f, -618f)), _wgslsmith_f_op_f32(f32(-1f) * -1589f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f)), select(select(!select(vec4<bool>(true, false, true, var_0.c.x), vec4<bool>(var_1.x, false, var_1.x, false), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.x, false, false, arg_0.d.x), vec4<bool>(false, false, true, true)), select(vec4<bool>(var_1.x, arg_0.c.x, arg_0.b.x, var_1.x), vec4<bool>(var_0.b.x, true, arg_0.c.x, false), vec4<bool>(global0.c.x, var_1.x, false, false)), !vec4<bool>(true, var_1.x, arg_0.c.x, true)), func_3(Struct_2(global0.b.x, Struct_1(0u, vec2<bool>(global0.c.x, arg_0.b.x), global0.c, var_0.d), -1000f), vec3<f32>(-429f, 289f, 847f), Struct_2(false, arg_0, 227f)).x || !var_0.d.x), !vec4<bool>(func_2(Struct_2(var_1.x, var_0, -262f), 1095f, vec4<bool>(true, false, true, false)).d.x, true, arg_0.b.x, true), vec4<bool>(!(!var_1.x), !func_2(Struct_2(var_0.d.x, Struct_1(arg_1.x, var_0.c, var_1, vec3<bool>(true, false, false)), -398f), -1290f, vec4<bool>(global0.c.x, true, false, global0.c.x)).b.x, global0.b.x, var_1.x)));
    let var_2 = -(abs(max(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, u_input.a.x))) ^ u_input.a) << (arg_1.yy % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253f * 1188f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1498f))))), _wgslsmith_f_op_f32(f32(-1f) * -741f)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-321f))), _wgslsmith_f_op_f32(f32(-1f) * -1438f), _wgslsmith_f_op_f32(func_4(func_2(Struct_2(false, Struct_1(u_input.c.x, vec2<bool>(true, global0.d.x), global0.b, global0.d), -664f), -603f, vec4<bool>(global0.c.x, global0.d.x, global0.d.x, true)), abs(u_input.c.xyw)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, 964f, 952f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    global0 = func_2(Struct_2(false, func_2(Struct_2(true, Struct_1(u_input.d.x, vec2<bool>(global0.d.x, global0.b.x), vec2<bool>(global0.c.x, false), vec3<bool>(global0.c.x, global0.d.x, true)), _wgslsmith_f_op_f32(select(var_0.x, 1000f, global0.c.x))), _wgslsmith_f_op_f32(-1000f * -667f), vec4<bool>(false, any(global0.d), global0.b.x | true, true)), _wgslsmith_f_op_f32(func_4(func_2(Struct_2(global0.c.x, Struct_1(u_input.c.x, vec2<bool>(global0.d.x, global0.c.x), vec2<bool>(true, global0.b.x), global0.d), var_0.x), _wgslsmith_f_op_f32(round(232f)), select(vec4<bool>(global0.b.x, global0.d.x, global0.b.x, false), vec4<bool>(true, global0.c.x, true, false), vec4<bool>(global0.d.x, false, true, global0.b.x))), u_input.c.yxy))), _wgslsmith_f_op_f32(round(var_0.x)), !select(vec4<bool>(global0.b.x, true, true, true), vec4<bool>(true, global0.b.x, all(global0.d), true), true));
    global0 = func_2(Struct_2(!(!(-1i < u_input.a.x)), func_2(Struct_2(true, Struct_1(0u, global0.c, vec2<bool>(global0.d.x, false), vec3<bool>(false, global0.d.x, global0.d.x)), _wgslsmith_f_op_f32(-1198f + var_0.x)), var_0.x, !(!vec4<bool>(true, true, global0.c.x, global0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-618f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), select(vec4<bool>(true, global0.c.x, func_3(Struct_2(global0.d.x, Struct_1(u_input.c.x, vec2<bool>(global0.d.x, global0.c.x), vec2<bool>(global0.d.x, global0.b.x), global0.d), var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 756f, var_0.x)), Struct_2(true, Struct_1(u_input.c.x, global0.c, vec2<bool>(global0.d.x, true), global0.d), var_0.x)).x, _wgslsmith_div_f32(586f, var_0.x) < 1f), vec4<bool>(!global0.d.x, all(!global0.d), !func_3(Struct_2(true, Struct_1(global0.a, global0.d.zz, global0.b, global0.d), var_0.x), var_0, Struct_2(true, Struct_1(global0.a, global0.d.zz, global0.d.zx, global0.d), -1000f)).x, global0.b.x), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, global0.d.x, global0.b.x), global0.c.x), select(select(vec4<bool>(true, true, false, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, false, global0.b.x), false), !vec4<bool>(false, global0.b.x, global0.b.x, false), false), global0.d.x)));
    global0 = func_2(Struct_2(!(15154i == ~u_input.a.x), Struct_1(_wgslsmith_mod_u32(u_input.d.x, global0.a), func_3(Struct_2(global0.c.x, Struct_1(global0.a, global0.b, vec2<bool>(global0.d.x, global0.d.x), vec3<bool>(global0.d.x, false, global0.d.x)), var_0.x), var_0, Struct_2(true, Struct_1(u_input.d.x, global0.d.xy, vec2<bool>(true, true), vec3<bool>(global0.c.x, false, global0.d.x)), -582f)).zy, vec2<bool>(u_input.c.x <= global0.a, any(global0.d)), !(!vec3<bool>(global0.d.x, false, false))), var_0.x), var_0.x, select(vec4<bool>(true, any(select(global0.c, vec2<bool>(global0.d.x, global0.c.x), global0.b.x)), false, true), vec4<bool>(func_2(Struct_2(global0.b.x, Struct_1(1u, vec2<bool>(global0.b.x, global0.b.x), global0.d.xx, global0.d), var_0.x), _wgslsmith_f_op_f32(abs(-1263f)), !vec4<bool>(true, global0.c.x, false, true)).b.x, false, (1i >> (0u % 32u)) <= select(-5813i, -13762i, true), !all(global0.d)), !(!(!vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(4294967295u, vec2<bool>(false, false), vec2<bool>(global0.d.x, global0.b.x), vec3<bool>(global0.c.x, false, true)), _wgslsmith_clamp_vec3_u32(u_input.d.ywz, vec3<u32>(u_input.c.x, 1u, global0.a), u_input.c.zxz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x))));
    return -687f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(reverseBits(u_input.c.x), select(select(vec2<bool>(true, true), global0.d.yy, false), vec2<bool>(false, global0.b.x), _wgslsmith_f_op_f32(func_1()) < 840f), vec2<bool>(!(any(global0.d) || all(vec4<bool>(global0.c.x, global0.d.x, false, false))), false), vec3<bool>(any(vec3<bool>(global0.d.x, global0.c.x, global0.d.x | false)), global0.d.x, true));
    var var_0 = Struct_2(true, func_2(Struct_2(global0.c.x, func_2(Struct_2(global0.c.x, Struct_1(global0.a, global0.c, global0.c, global0.d), 286f), -1139f, vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x)), -565f), _wgslsmith_f_op_f32(f32(-1f) * -175f), vec4<bool>(all(select(vec2<bool>(false, global0.c.x), vec2<bool>(global0.d.x, false), vec2<bool>(global0.d.x, global0.b.x))), false, global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1339f, 772f)))) - 1f));
    var var_1 = Struct_2(all(global0.b), Struct_1(u_input.d.x, func_3(Struct_2(true != var_0.a, Struct_1(26629u, vec2<bool>(var_0.b.b.x, global0.d.x), vec2<bool>(var_0.a, true), var_0.b.d), _wgslsmith_f_op_f32(select(-1213f, var_0.c, global0.d.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, var_0.c, 460f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -2482f, 486f)))), Struct_2(any(vec4<bool>(true, var_0.a, var_0.a, false)), Struct_1(0u, var_0.b.d.xy, vec2<bool>(global0.d.x, global0.c.x), global0.d), var_0.c)).xz, vec2<bool>(var_0.b.d.x, global0.d.x), vec3<bool>(true, var_0.a, any(var_0.b.c))), _wgslsmith_f_op_f32(ceil(var_0.c)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1124f, _wgslsmith_f_op_f32(func_1()))))));
    var_1 = Struct_2(var_0.a || false, Struct_1(var_0.b.a ^ 0u, global0.d.xz, !var_0.b.d.zy, vec3<bool>(u_input.b.x >= abs(u_input.a.x), !(!var_0.b.c.x), false)), var_2.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), var_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -730f)))), _wgslsmith_f_op_vec2_f32(step(var_2, var_2))));
    var var_4 = Struct_2(global0.d.x, var_1.b, 1131f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c, _wgslsmith_f_op_f32(-var_4.c), var_4.c)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_4.c, -1521f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x - var_2.x))))), ~(-(-vec3<i32>(u_input.b.x, u_input.a.x, -19915i) ^ firstTrailingBit(vec3<i32>(0i, u_input.b.x, u_input.b.x)))), _wgslsmith_sub_i32(max(i32(-1i) * -1i, u_input.b.x) & u_input.a.x, 94751i));
}

