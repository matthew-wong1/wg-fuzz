struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 821f, -183f, -1932f);

var<private> global1: vec4<f32> = vec4<f32>(-1000f, -508f, -1605f, -532f);

var<private> global2: f32 = -422f;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = (arg_0.a.yz & arg_2.yx) & vec2<i32>(arg_2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, arg_0.a.x, -20545i, -2147483647i), vec4<i32>(u_input.a.x, arg_1.x, arg_0.a.x, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), arg_1));
    let var_1 = vec2<u32>(20617u, _wgslsmith_div_u32(~u_input.c.x, u_input.c.x));
    var var_2 = vec2<bool>(true, true | !arg_0.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, -357f))) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -1357f, global0.x), global1.wyy)) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -3607f))))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(847f, global0.x) + _wgslsmith_f_op_f32(545f * 1628f)), global1.x) * vec2<f32>(global1.x, -903f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 438f, var_3.x, var_3.x) - vec4<f32>(global0.x, global1.x, 140f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1081f, var_3.x, -1000f))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, 1000f, -247f, -232f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(225f, global1.x, -989f, 1993f) + vec4<f32>(-1771f, 597f, arg_0.x, 247f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1531f, global0.x, arg_0.x, 1428f) + vec4<f32>(186f, -1034f, 798f, global1.x))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2088f, global1.x, -798f, -292f), vec4<f32>(604f, global1.x, global0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1414f, arg_0.x, arg_0.x, global0.x) - vec4<f32>(arg_0.x, global0.x, 334f, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.x, global0.x, -649f) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<i32>(-16290i, global3.a.x, 446i), true), u_input.a, vec3<i32>(2147483647i, 41903i, u_input.b))))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1655f, 1970f, arg_0.x, -1934f), vec4<f32>(arg_0.x, global1.x, global0.x, -323f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global0.x)), -978f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + -945f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.x, -535f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1151f, global0.x) - _wgslsmith_f_op_f32(-global1.x)))));
    let var_0 = true;
    let var_1 = Struct_1(u_input.a.xzw, false);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1112f)))) * _wgslsmith_f_op_f32(510f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(ceil(340f)))), -308f))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(floor(global1.yx)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec3_f32(ceil(global1.xzz))).a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2297f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(359f, _wgslsmith_f_op_f32(floor(-1220f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -884f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - var_0.a.x) * 2428f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f - -1467f)), 191f, var_0.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(-1683f * -229f)))));
    var_1 = global1.zzz;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1825f))), _wgslsmith_f_op_f32(global0.x + -2389f)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1142f, _wgslsmith_f_op_f32(func_2(global0.zwx).a.x * _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1533f) + -2621f))), 1682f, arg_0.a.x);
    return Struct_1(_wgslsmith_sub_vec3_i32(-abs(select(vec3<i32>(26657i, arg_1.a.x, 1985i), global3.a, vec3<bool>(arg_1.b, true, false))), -min(~vec3<i32>(-2147483647i, -33131i, 3664i), -vec3<i32>(arg_1.a.x, -24379i, 0i))), any(vec2<bool>(~u_input.c.x >= ~1u, false)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(select(!(!vec3<bool>(arg_1.b, arg_1.b, true)), !vec3<bool>(true, u_input.a.x == arg_0, true), true), _wgslsmith_clamp_vec2_i32(~select(vec2<i32>(arg_2.x, -44360i), ~global3.a.xz, all(vec3<bool>(false, false, global3.b))), arg_1.a.yy >> (vec2<u32>(13889u, ~0u) % vec2<u32>(32u)), u_input.a.xx));
    global2 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    var var_1 = _wgslsmith_mult_u32(0u, ~u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, -1000f, 246f) * vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(-177f))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_2.x), -612f, _wgslsmith_f_op_f32(global1.x + -329f), 760f))) - vec4<f32>(global1.x, -124f, var_2.x, global0.x));
    return func_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)), global1.x)), func_4(Struct_3(_wgslsmith_f_op_vec4_f32(func_3(arg_1, u_input.a, arg_1.a)).yy), Struct_1(vec3<i32>(countOneBits(-12307i), -13750i, min(var_0.b.x, var_0.b.x)), false), _wgslsmith_mod_i32(~global3.a.x, func_4(Struct_3(global1.xy), Struct_1(vec3<i32>(global3.a.x, -22880i, -36136i), false), var_0.b.x).a.x) ^ _wgslsmith_sub_i32(arg_2.x, var_0.b.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(~2147483647i, global3.a.x), vec2<i32>(firstTrailingBit(0i), select(firstLeadingBit(2147483647i), min(42790i, 22967i), arg_1.b && false))));
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(ceil(479f)), -330f, global1.x) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -142f, global1.x) - vec4<f32>(970f, 576f, global0.x, global1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(global1.x * 453f)), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x))));
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    var var_2 = -152f;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1166f - _wgslsmith_f_op_f32(f32(-1f) * -1086f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f * -2022f) + global0.x)) * global0.x), func_2(var_0.xyx).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1938f - 872f)));
    let var_3 = ~(vec2<u32>(~(~0u), ~11085u) ^ u_input.c.yw);
    return Struct_2(select(vec3<bool>(any(select(vec4<bool>(true, true, global3.b, true), vec4<bool>(global3.b, arg_2.b, global3.b, true), vec4<bool>(arg_2.b, false, arg_2.b, arg_2.b))), func_5(min(32928i, 1i), arg_2, -global3.a).b, global3.b), !(!(!vec3<bool>(global3.b, arg_2.b, false))), !(firstLeadingBit(var_3.x) <= 0u)), -u_input.a.zx);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - 1010f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(718f - global0.x), _wgslsmith_div_f32(global1.x, 646f))))), _wgslsmith_f_op_f32(-global1.x), select(false, global3.b, all(!(!vec2<bool>(true, global3.b))))));
    var var_1 = func_6(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c))), u_input.c.x, func_5(-u_input.a.x, func_4(func_2(vec3<f32>(-909f, 1000f, var_0)), Struct_1(vec3<i32>(-32388i, u_input.a.x, global3.a.x), all(vec3<bool>(false, global3.b, global3.b))), u_input.b), -vec3<i32>(global3.a.x | -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, 80583i), u_input.a.xz), i32(-1i) * -2147483647i)));
    global1 = vec4<f32>(global0.x, global0.x, 1267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f + global0.x))));
    global2 = global1.x;
    let var_2 = Struct_3(global1.wz);
    return func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xw * _wgslsmith_f_op_vec2_f32(var_2.a * var_2.a)))), Struct_1(vec3<i32>(func_6(u_input.c.x, u_input.c.x, func_4(Struct_3(vec2<f32>(-1000f, var_2.a.x)), Struct_1(vec3<i32>(var_1.b.x, 31201i, 1i), false), 0i)).b.x, global3.a.x, -abs(global3.a.x)), var_1.a.x), -22683i);
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<i32>) -> vec2<i32> {
    var var_0 = global1.x;
    var var_1 = func_6(1u, ~31820u, func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(round(-190f)), _wgslsmith_f_op_f32(min(global1.x, global0.x)), _wgslsmith_f_op_f32(-arg_2.a.x))), Struct_1(abs(~global3.a), arg_1.b), 19493i));
    let var_2 = u_input.c.x;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, arg_2.a.x, _wgslsmith_f_op_f32(ceil(arg_2.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(global0.x + global1.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1553f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.a.x)), 1654f))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1030f, global1.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-460f, global1.x, true)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(-552f, -1092f)) * _wgslsmith_f_op_f32(350f * -253f)), global1.x)));
    return select(-(~(~arg_1.a.xy >> (~vec2<u32>(var_2, 3850u) % vec2<u32>(32u)))), -vec2<i32>(-(~u_input.b), ~abs(0i)), !arg_1.b);
}

fn func_8(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-450f * arg_0.x) * _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(555f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(min(-663f, global1.x)), global3.b)) - _wgslsmith_f_op_f32(abs(945f)))), vec4<f32>(-468f, arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(-global1.x))), global1.x)));
    var var_0 = max(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u) | u_input.c.xx, _wgslsmith_add_vec2_u32(u_input.c.xy, u_input.c.zy)), abs(4294967295u) | select(61514u, 71336u, true), u_input.c.x) & abs(~(vec4<u32>(u_input.c.x, u_input.c.x, 16703u, 60883u) | u_input.c)), reverseBits(vec4<u32>(select(36397u, 105681u, arg_1.b), ~0u, u_input.c.x, ~1u) | (_wgslsmith_div_vec4_u32(vec4<u32>(43475u, u_input.c.x, u_input.c.x, 3692u), u_input.c) | (vec4<u32>(75231u, 29181u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 76047u)))));
    global3 = arg_1;
    let var_1 = arg_0.x;
    let var_2 = arg_1.b || global3.b;
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(step(-1329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), 170f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = func_8(vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), Struct_1(u_input.a.yzz, all(select(vec4<bool>(true, global3.b, global3.b, global3.b), select(vec4<bool>(global3.b, global3.b, global3.b, global3.b), vec4<bool>(global3.b, false, true, global3.b), vec4<bool>(global3.b, true, false, true)), select(vec4<bool>(false, global3.b, global3.b, global3.b), vec4<bool>(true, true, false, false), true)))), func_7(_wgslsmith_f_op_f32(step(106f, _wgslsmith_f_op_f32(floor(global1.x)))), func_1(~(-u_input.a)), Struct_3(_wgslsmith_f_op_vec2_f32(select(global0.zx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, global0.x), global0.ww)), true))), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 11723i, 0i), firstLeadingBit(u_input.a.wyw))));
    let var_2 = global0.xz;
    let var_3 = (func_5(_wgslsmith_sub_i32(0i, abs(2370i)), func_5(-2147483647i, Struct_1(u_input.a.zwy, true), vec3<i32>(u_input.a.x, u_input.b, u_input.b)), -countOneBits(vec3<i32>(global3.a.x, -2147483647i, global3.a.x))).b != global3.b) || global3.b;
    let var_4 = vec3<i32>(_wgslsmith_sub_i32(countOneBits(-u_input.b), u_input.b), u_input.a.x, ~_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(global3.a.x, u_input.a.x)), 2147483647i));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(823f - func_8(var_1.a, Struct_1(u_input.a.wzw, global3.b), vec2<i32>(0i, u_input.b)).a.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), var_2.x, !global3.b)))), vec4<f32>(-1415f, -1000f, _wgslsmith_f_op_f32(197f + _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(var_1.a.x + var_2.x))), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

