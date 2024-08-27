struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(86030u), Struct_1(23201u));

var<private> global3: array<bool, 23> = array<bool, 23>(true, false, false, false, false, true, true, false, false, true, true, true, true, true, false, true, true, true, false, false, true, true, false);

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<f32>) -> u32 {
    global2 = array<Struct_1, 2>();
    var var_0 = ~vec4<u32>(arg_1.a, 1u, ~_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 16145u), _wgslsmith_mult_u32(u_input.b, 81870u)), 0u);
    global1 = global3[_wgslsmith_index_u32(64613u, 23u)];
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_mod_vec3_u32(~(~var_0.wzw), arg_2)));
    var var_2 = -_wgslsmith_mult_i32(29355i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), ~(-vec2<i32>(11528i, 0i))));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    global4 = -20544i;
    var var_0 = ~(~(~vec4<u32>(func_3(arg_1, global2[_wgslsmith_index_u32(global0.a, 2u)], vec3<u32>(0u, 0u, global0.a), vec4<f32>(1117f, -388f, 145f, -677f)), u_input.b, u_input.b << (arg_2.a % 32u), ~57063u)));
    let var_1 = global3[_wgslsmith_index_u32(46148u, 23u)] & false;
    global2 = array<Struct_1, 2>();
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(var_0.yx, ~(~(var_0.zx ^ vec2<u32>(global0.a, global0.a)))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-855f)))) + _wgslsmith_f_op_f32(f32(-1f) * -182f)), -411f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1208f)), _wgslsmith_f_op_f32(f32(-1f) * -242f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1687f, 1320f) - vec2<f32>(-1612f, -694f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-290f, -392f))) * vec2<f32>(1000f, 446f)) * vec2<f32>(_wgslsmith_f_op_f32(select(935f, -2549f, false)), _wgslsmith_f_op_f32(trunc(244f)))), !(global0.a >= 1u))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(global0.a);
    global1 = arg_0 <= ~52903u;
    let var_0 = global2[_wgslsmith_index_u32(abs(38756u << (_wgslsmith_sub_u32(~_wgslsmith_mod_u32(58649u, global0.a), 1u) % 32u)), 2u)];
    let var_1 = global2[_wgslsmith_index_u32(var_0.a ^ (4294967295u >> (u_input.b % 32u)), 2u)];
    var var_2 = global2[_wgslsmith_index_u32(abs(var_1.a) | reverseBits(var_0.a), 2u)];
    return global2[_wgslsmith_index_u32(select(~_wgslsmith_add_u32(1u, ~arg_0), arg_0, true), 2u)];
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_1, 2>();
    global4 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.a, -1i) << (_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(arg_1.a, u_input.b)) % vec2<u32>(32u))), vec2<i32>(-1i) * -abs(select(vec2<i32>(u_input.a, arg_2), vec2<i32>(-33913i, arg_2), global3[_wgslsmith_index_u32(100456u, 23u)])));
    let var_0 = select(-((vec2<i32>(14090i, -22896i) >> (firstTrailingBit(vec2<u32>(0u, u_input.b)) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(u_input.a, 1i))), -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 46804i), vec2<i32>(u_input.a, 26236i), vec2<i32>(arg_2, u_input.a)), vec2<i32>(arg_2, 0i), vec2<bool>(global3[_wgslsmith_index_u32(0u, 23u)], true)) & vec2<i32>(_wgslsmith_add_i32(arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -35543i, -1i, 24292i), vec4<i32>(-36704i, u_input.a, u_input.a, arg_2))), (arg_2 ^ -2147483647i) << (~1u % 32u)), true);
    global0 = func_4(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(min(arg_3.x, arg_0))) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global0.a), arg_2, arg_1)).x, _wgslsmith_f_op_f32(600f - arg_3.x), -955f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.x, arg_0, 566f))))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(arg_3.zyw)))))))));
    var var_1 = u_input.b;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    global0 = func_5(_wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0, arg_2)), _wgslsmith_f_op_f32(382f - arg_2))))), func_4(~_wgslsmith_mult_u32(global0.a, u_input.b) & abs(_wgslsmith_div_u32(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global2[_wgslsmith_index_u32(9177u, 2u)], 1i, Struct_1(global0.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1421f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_2, 277f, arg_2)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2101f, 657f, arg_2) * vec3<f32>(1462f, 1573f, arg_0))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, -305f, 299f)))))))), ~u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 672f, arg_0))))));
    let var_0 = !(!select(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_1, true), select(vec3<bool>(global3[_wgslsmith_index_u32(7412u, 23u)], true, global3[_wgslsmith_index_u32(u_input.b, 23u)]), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_1, true))), !vec3<bool>(arg_1, arg_1, true), false));
    var var_1 = Struct_1(60063u);
    global3 = array<bool, 23>();
    var var_2 = vec3<bool>(global3[_wgslsmith_index_u32(0u, 23u)] && true, true, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2, 387f))) - arg_2);
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: f32) -> StorageBuffer {
    var var_0 = select(!vec4<bool>(!arg_0 & !arg_1, arg_0, !arg_0, all(!vec2<bool>(arg_0, false))), vec4<bool>(all(!(!vec4<bool>(arg_0, true, true, true))), true, select(!(!arg_0), 210f < _wgslsmith_f_op_f32(-arg_2), true), global3[_wgslsmith_index_u32(1u, 23u)]), !vec4<bool>(true && global3[_wgslsmith_index_u32(0u, 23u)], !all(vec3<bool>(arg_0, false, arg_0)), arg_0, arg_0));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(-1364f - arg_2), _wgslsmith_f_op_f32(-1679f - arg_2))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f), arg_2), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))), arg_2)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 + 723f))) + 287f), arg_2, _wgslsmith_f_op_f32(-arg_2)));
    var var_2 = _wgslsmith_clamp_u32(global0.a, u_input.b, u_input.b);
    var var_3 = select(select(!(!select(vec3<bool>(arg_1, true, global3[_wgslsmith_index_u32(u_input.b, 23u)]), var_0.xzx, var_0.yxx)), !var_0.zzx, var_0.zxw), var_0.wyx, arg_1);
    var var_4 = !vec2<bool>(true, arg_1);
    return StorageBuffer(~reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(9590i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    global4 = ~1i;
    var var_0 = ~(~(-2147483647i) & u_input.a);
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 2u)];
    let var_2 = Struct_1(u_input.b);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = func_6(global3[_wgslsmith_index_u32(var_2.a, 23u)] | (_wgslsmith_f_op_f32(sign(610f)) > _wgslsmith_f_op_f32(879f - _wgslsmith_f_op_f32(sign(-1018f)))), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-865f)), _wgslsmith_f_op_f32(abs(213f)), global3[_wgslsmith_index_u32(var_1.a | 0u, 23u)])), true, -1091f)), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(func_5(-523f, var_3, u_input.a, vec4<f32>(401f, -198f, -579f, -1282f)), 72456i, var_2)).x, _wgslsmith_f_op_f32(max(-611f, -315f))), select(global3[_wgslsmith_index_u32(var_2.a, 23u)], 0u <= _wgslsmith_div_u32(33904u, u_input.b), true))));
}

