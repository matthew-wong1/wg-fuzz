struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-885f, -916f), 1000f, vec2<u32>(70042u, 31891u), vec4<f32>(-672f, 130f, 966f, 366f), vec3<f32>(1000f, -942f, 420f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    var var_0 = u_input.a.wxx;
    let var_1 = !(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), ~u_input.b.x >= -u_input.b.x));
    let var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, -267f)), global1.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1618f, -711f, var_1.x)))) - global0.b), vec2<u32>(global0.c.x, ~global1.c.x & firstLeadingBit(global0.c.x)), global1.d, _wgslsmith_f_op_vec3_f32(step(global1.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-794f, -1766f, false)), _wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-global1.e.x))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global1.e.zz, _wgslsmith_f_op_vec2_f32(-var_3.a), 833f <= _wgslsmith_f_op_f32(select(-556f, global1.d.x, var_1.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.d.x)))), _wgslsmith_f_op_f32(-global1.b))))), _wgslsmith_div_vec2_u32(vec2<u32>(global0.c.x, 0u), var_2.yw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1080f, global0.d.x, -460f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), 843f, global0.e.x)));
    return 581f;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x * 470f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-612f)), _wgslsmith_f_op_f32(-1425f * _wgslsmith_f_op_f32(ceil(-921f))))), _wgslsmith_div_f32(-1334f, _wgslsmith_f_op_f32(abs(arg_0.x))), true)));
    global1 = Struct_1(vec2<f32>(arg_0.x, 1145f), _wgslsmith_f_op_f32(abs(arg_0.x)), ~_wgslsmith_mult_vec2_u32(~global1.c, ~u_input.a.yw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, arg_0.x, global1.d.x))) * _wgslsmith_f_op_vec4_f32(ceil(global1.d)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + global1.b))), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - _wgslsmith_f_op_f32(-arg_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1453f, -1913f), _wgslsmith_f_op_f32(arg_0.x - -481f)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, global0.e.x, true)))))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(global0.a.x - -1123f)), -507f) * arg_0.zy), 936f, u_input.a.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(811f - -251f), _wgslsmith_f_op_f32(floor(-501f)))), 1022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * var_0.x)), _wgslsmith_f_op_f32(-1340f * _wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(739f, global1.d.x, 891f)))) * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(global1.d.x, -1813f, false)), var_0.x))));
    var var_1 = global0.c.x >> (u_input.a.x % 32u);
    return !(!all(vec2<bool>(true, false)) | !(true || all(vec4<bool>(false, true, true, true))));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<bool>(true, false, !(!func_2(global0.e, ~global0.c.x)));
    var_0 = select(select(select(vec3<bool>(true, !var_0.x, true), select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, false), select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, false, var_0.x), true)), var_0.x), select(vec3<bool>(any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true, var_0.x), !vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, !var_0.x, select(true, var_0.x, var_0.x))), false), !select(vec3<bool>(var_0.x, true, any(vec2<bool>(false, var_0.x))), vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x, var_0.x), var_0.x || all(vec3<bool>(var_0.x, false, false))), true);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2095f, _wgslsmith_f_op_f32(step(global0.a.x, 571f))))), global0.d.x, vec2<u32>(global0.c.x, _wgslsmith_mod_u32(global0.c.x, ~0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, -2071f, 632f, global1.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d))) + global1.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.e)))));
    var var_1 = ~(~_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(-1i, 22172i, -2147483647i, -13534i)), abs(min(vec4<i32>(u_input.b.x, -2147483647i, 2508i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(443f, -2001f, true | var_0.x)), 1371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f * global1.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), ~u_input.a.xz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(global0.b - global1.a.x)), global0.a.x, -1493f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(209f - global1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec3_f32(select(global1.d.wxx, global0.e, vec3<bool>(!var_0.x, true, var_0.x))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, global0.a.x)) * _wgslsmith_f_op_vec2_f32(abs(global0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.e.xx)))), !any(!var_0.yy))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.e.x, 186f))), _wgslsmith_f_op_vec2_f32(step(global0.e.zx, vec2<f32>(-1304f, -1202f)))))) * vec2<f32>(1403f, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global1.a.x), _wgslsmith_f_op_f32(-1640f + -212f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) * _wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_div_f32(-473f, -1526f), _wgslsmith_div_vec2_u32(~(~u_input.a.yw), reverseBits(vec2<u32>(1u, ~global0.c.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, 1911f, -365f, global1.e.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1595f, global0.d.x, -507f, 424f), vec4<f32>(-1492f, global1.d.x, global1.e.x, global1.b)))))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, global0.e.x, global1.e.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.e.x, global1.d.x) - global1.d.zzw))))));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.d.x * -1576f), global0.d.x), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-1001f - global1.b)), ~(~(~global0.c << ((vec2<u32>(25406u, u_input.a.x) & vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(868f)), global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.x))))), global1.e);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d.zw)), 1300f, global1.c, vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(abs(-999f)), _wgslsmith_f_op_f32(-1184f - -523f), global1.d.x), _wgslsmith_f_op_vec3_f32(-global0.e));
    global0 = Struct_1(vec2<f32>(-418f, global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f - global0.e.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_1()).x))), _wgslsmith_sub_vec2_u32((u_input.a.wy & vec2<u32>(0u, 82190u)) & vec2<u32>(global0.c.x, _wgslsmith_div_u32(0u, 4294967295u)), global1.c | _wgslsmith_mult_vec2_u32(vec2<u32>(15175u, 1515u), _wgslsmith_mod_vec2_u32(vec2<u32>(21190u, 78136u), vec2<u32>(global0.c.x, global1.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.b, -877f)), _wgslsmith_div_f32(-616f, global0.d.x), global0.a.x, -809f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-508f, global1.d.x, 1000f, -459f))), vec4<f32>(global1.b, -1000f, 135f, -528f), 875f < global0.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.d.x)) * _wgslsmith_f_op_f32(-global1.b))), global1.a.x, _wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + -770f))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, -372f) - global0.d.xy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, global1.e.x)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false))))), global1.b, ~(~(~vec2<u32>(63585u, 0u) & ~vec2<u32>(0u, global1.c.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x + 1539f) + _wgslsmith_div_f32(-1676f, -133f)), _wgslsmith_f_op_f32(abs(-1375f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.e.x, 460f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_div_f32(global0.a.x, 1106f), 1u >= global0.c.x))), global1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, 573f, global1.e.x)));
    global1 = Struct_1(vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.e.x) * global0.e.x)), 1292f, ~_wgslsmith_div_vec2_u32((vec2<u32>(4294967295u, 1u) | u_input.a.yy) >> (vec2<u32>(29032u, u_input.a.x) % vec2<u32>(32u)), ~(~vec2<u32>(8156u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.d.x * 2169f), _wgslsmith_f_op_f32(max(1627f, 486f)), _wgslsmith_f_op_f32(func_3())))));
    let var_0 = ~global1.c.x;
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.d.x * global1.a.x), -1948f), _wgslsmith_f_op_f32(f32(-1f) * -1432f), abs(vec2<u32>(~_wgslsmith_mod_u32(4294967295u, global0.c.x), ~firstTrailingBit(3882u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d))), _wgslsmith_f_op_vec3_f32(-global0.d.zxw));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.d.xz), global0.d.x, vec2<u32>(~global0.c.x, ~select(_wgslsmith_mod_u32(u_input.a.x, global0.c.x), var_0, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.d))), global0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.e.x, global1.d.x)) - global0.e) * global1.d.zxz)));
    let x = u_input.a;
    s_output = StorageBuffer(-((u_input.b.x ^ 2147483647i) | countOneBits(1i >> (1u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), 266f)), global1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b)))));
}

