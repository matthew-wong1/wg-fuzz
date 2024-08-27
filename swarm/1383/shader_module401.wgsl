struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(33225i, 15034i), 638f, vec2<i32>(2147483647i, 1i), vec3<bool>(false, false, true), vec4<bool>(true, false, false, true));

var<private> global1: vec4<f32> = vec4<f32>(990f, 566f, 479f, -803f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.b - -991f);
    var var_1 = arg_0;
    var var_2 = abs(max(u_input.a.x, ~(2147483647i << (_wgslsmith_clamp_u32(arg_1, u_input.b.x, u_input.b.x) % 32u))));
    var_1 = Struct_1(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.xx, ~vec2<i32>(-1i, 1i), -u_input.a.xy), vec2<i32>(global0.c.x << (u_input.b.x % 32u), ~arg_0.a.x), countOneBits(arg_0.a | global0.c)), -1024f, -u_input.a.yz, global0.e.ywx, vec4<bool>(true, var_1.d.x, _wgslsmith_f_op_f32(-global1.x) != global0.b, true));
    let var_3 = Struct_1(vec2<i32>(var_1.a.x, ~0i), _wgslsmith_f_op_f32(-1030f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-452f, arg_0.b)))) * _wgslsmith_f_op_f32(-arg_0.b))), vec2<i32>(~(-1i), -arg_0.a.x), select(vec3<bool>(any(global0.e), arg_0.e.x, 4294967295u >= reverseBits(arg_1)), !global0.e.yxw, any(vec3<bool>(all(vec2<bool>(arg_0.d.x, true)), 25672u > arg_1, true))), global0.e);
    return 444i | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(-1i, -24409i, arg_0.c.x, 0i)), -vec4<i32>(-46963i, u_input.a.x, 15664i, 1i) << (~vec4<u32>(1u, 29625u, arg_1, u_input.b.x) % vec4<u32>(32u))), abs(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 0i)), vec4<i32>(0i, u_input.a.x, -36677i, 0i))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = all(select(select(arg_0.wy, select(vec2<bool>(arg_0.x, global0.e.x), vec2<bool>(arg_0.x, global0.d.x), global0.d.x), any(!arg_0.zy)), select(arg_0.yz, arg_0.zz, arg_0.zx), !any(!global0.e.xz)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(799f)))) - _wgslsmith_f_op_f32(max(151f, global0.b))), -1242f);
    let var_2 = _wgslsmith_f_op_f32(464f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1017f), 726f)))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1440f, global1.x, global1.x, var_2)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1099f, -1348f, -257f, global0.b) - vec4<f32>(1918f, var_2, var_2, global0.b)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b, 766f, 610f, global0.b))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1844f, global1.x, global0.b, 1266f), vec4<f32>(var_2, 315f, -304f, -1558f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, 436f)), -2079f, 1082f, _wgslsmith_f_op_f32(floor(-167f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1645f, var_2, 103f, var_2) - vec4<f32>(-221f, 838f, global0.b, global0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 929f, var_2, -330f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1792f, 2104f, var_2, global0.b), vec4<f32>(global1.x, 338f, 211f, global0.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, var_2, var_2) - vec4<f32>(-1187f, 1440f, 863f, -1229f))))));
    var var_3 = Struct_1(~vec2<i32>(-1i, -1i), var_2, abs(-(~vec2<i32>(global0.c.x, u_input.a.x) >> (abs(u_input.b.xw) % vec2<u32>(32u)))), global0.d, select(vec4<bool>(!arg_0.x, true, !any(vec2<bool>(global0.e.x, false)), any(!arg_0.xwz)), global0.e, select(all(vec3<bool>(false, false, var_0)), false, all(select(global0.e, vec4<bool>(true, global0.d.x, false, global0.e.x), var_0)))));
    return 1048f;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(countOneBits(arg_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(arg_0.e, vec3<i32>(func_3(Struct_1(arg_0.c, global0.b, vec2<i32>(u_input.a.x, arg_0.c.x), vec3<bool>(global0.d.x, global0.e.x, true), vec4<bool>(false, false, false, arg_0.e.x)), u_input.b.x), max(global0.a.x, global0.c.x), _wgslsmith_sub_i32(global0.c.x, 0i)), u_input.b.x, select(0u, u_input.b.x, global0.e.x) << (abs(u_input.b.x) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f * _wgslsmith_f_op_f32(min(-1231f, global0.b)))))), ~vec2<i32>(-1i, global0.a.x), !vec3<bool>(u_input.b.x > 411u, all(global0.e.yzx), true), !(!(!global0.e)));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(global0.e, abs(u_input.a), u_input.b.x ^ 1u, 1u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.b)))), global0.b, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = Struct_1(~vec2<i32>(-2147483647i, ~u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -640f), u_input.a.yy, select(!vec3<bool>(all(global0.e.xwx), any(vec2<bool>(global0.e.x, false)), true), vec3<bool>(!arg_0.d.x, countOneBits(u_input.b.x) <= _wgslsmith_dot_vec3_u32(u_input.b.zwz, vec3<u32>(u_input.b.x, u_input.b.x, 23872u)), false), all(select(arg_0.e, !var_1.e, any(vec4<bool>(true, var_1.d.x, false, false))))), vec4<bool>(any(!arg_0.e), true, abs(-13780i) <= reverseBits(arg_0.c.x), !any(vec4<bool>(global0.d.x, arg_0.d.x, true, false)) != global0.d.x));
    let var_3 = vec2<i32>(901i, _wgslsmith_sub_i32(-41515i, ~(~(arg_0.a.x | 30815i))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + -828f))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -617f, global1.x, global1.x) - vec4<f32>(-433f, arg_0.b, global0.b, arg_0.b))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b), arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a.yx, 906f, u_input.a.zx, global0.d, arg_0.e))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(103f * global0.b), _wgslsmith_div_f32(1290f, 953f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -1300f, -1155f, 813f))))), !select(select(select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x), global0.e, global0.d.x), global0.e, true), !arg_0.e, true)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-650f, global0.b, arg_0.b, 921f) + vec4<f32>(global1.x, 321f, -362f, -568f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(564f, global0.b, arg_0.b, arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, arg_0.b, 138f, 1009f))))));
    global0 = Struct_1(vec2<i32>(abs(u_input.a.x), global0.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1893f)), arg_0.b)))), countOneBits(~vec2<i32>(global0.a.x, arg_0.a.x)), !(!(!select(arg_0.e.zxx, global0.e.ywx, false))), !arg_0.e);
    var var_0 = max(select(u_input.b, ~max(vec4<u32>(u_input.b.x, 16764u, 6850u, 8775u), u_input.b >> (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<bool>(arg_0.e.x && (true == arg_0.e.x), true, arg_0.d.x, true)), vec4<u32>(~(~u_input.b.x | 1u), u_input.b.x, u_input.b.x, 0u));
    var var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 0i, global0.a.x) | vec3<i32>(global0.a.x, -25457i, 58523i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.a.x, 11078i), u_input.a))), u_input.a);
    return var_0.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = ~((-min(vec3<i32>(1i, 0i, 0i), vec3<i32>(42325i, -1i, -1i)) | (vec3<i32>(-1i, 2147483647i, global0.c.x) ^ u_input.a)) >> (abs(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.yyz, vec3<u32>(u_input.b.x, u_input.b.x, 20640u)), 78677u)) % vec3<u32>(32u)));
    var var_2 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(select(func_1(Struct_1(vec2<i32>(1718i, var_1.x), -554f, global0.a, global0.d, global0.e)), ~u_input.b.zz, true), ~(~u_input.b.wz), ~(u_input.b.wy ^ vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, countOneBits(4294967295u)), ~vec2<u32>(u_input.b.x, 34294u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, 1u));
}

