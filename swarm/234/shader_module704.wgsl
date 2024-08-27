struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<bool>(false, true), vec3<bool>(false, false, true), vec4<bool>(true, false, true, true));

var<private> global1: array<Struct_1, 26>;

var<private> global2: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    let var_0 = 1u;
    var var_1 = true;
    var var_2 = ~reverseBits(var_0);
    var var_3 = !(!(!select(global0.d, select(global0.d, global0.d, global0.b.x), u_input.a < u_input.a)));
    var var_4 = Struct_1(arg_0 == (_wgslsmith_dot_vec2_i32(vec2<i32>(2676i, arg_0), vec2<i32>(-2147483647i, arg_0) ^ vec2<i32>(u_input.b, arg_0)) | (~u_input.b & ~(-40853i))), vec2<bool>(any(global0.d) | false, all(var_3.wxw)), var_3.zzz, vec4<bool>(all(select(select(var_3.wzx, global0.c, var_3.x), !var_3.yzw, var_3.xzy)), !(global0.d.x || (var_3.x & global0.c.x)), false, all(vec2<bool>(false, !global0.a))));
    return 0i;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(min(func_3(_wgslsmith_mult_i32(arg_2.x, arg_2.x | arg_2.x), u_input.c.xy), firstTrailingBit(abs(u_input.b))), -1i);
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(0u), 26u)];
    var var_2 = firstTrailingBit(vec3<u32>(4294967295u, ~(~0u) ^ ~u_input.c.x, firstTrailingBit(u_input.a) << (0u % 32u)));
    let var_3 = arg_3;
    global2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), -2189f)), -586f, arg_1.x)));
    return global1[_wgslsmith_index_u32(~4294967295u, 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(select(arg_1, arg_1, false)));
    return global1[_wgslsmith_index_u32(7477u, 26u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.zz, global2.yx)), vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1553f * global2.x))), min(max(vec2<i32>(36414i, -64419i) & vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, 43934i)), vec2<i32>(72370i, u_input.b) ^ vec2<i32>(u_input.b, 0i))), arg_1), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(true, vec2<bool>(arg_0.b.x, arg_0.b.x), select(select(arg_0.d.wwx, !arg_1.c, u_input.b == 2463i), arg_1.c, arg_1.b.x), !vec4<bool>(global0.d.x, true, global0.d.x | arg_0.a, all(vec4<bool>(true, global0.b.x, true, arg_0.c.x)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.yyz, vec3<u32>(u_input.a, ~4294967295u, ~select(20490u, u_input.a, arg_1.a))), 26u)]);
    global1 = array<Struct_1, 26>();
    var var_1 = 0u << (~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 31040u, 4294967295u, u_input.c.x), u_input.c))) % 32u);
    global1 = array<Struct_1, 26>();
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global2.yx), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -470f) - vec2<f32>(global2.x, global2.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(global2.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) + _wgslsmith_f_op_f32(floor(-1000f))) * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1178f))) - 1f), _wgslsmith_div_f32(1289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-723f)))), _wgslsmith_f_op_f32(f32(-1f) * -321f)), -_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, -72787i)), vec2<i32>(u_input.b, -1i)), -_wgslsmith_add_vec2_i32(vec2<i32>(-9310i, 0i), vec2<i32>(10980i, -1i)), abs(vec2<i32>(u_input.b, -1i))), global1[_wgslsmith_index_u32(~(~21411u), 26u)]);
    return any(arg_1.d.zxz);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    let var_0 = Struct_1(true, !func_4(global1[_wgslsmith_index_u32(~u_input.a | u_input.a, 26u)], _wgslsmith_f_op_f32(-global2.x), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(868f, 601f), vec2<f32>(-664f, global2.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1121f, global2.x, global2.x))), ~vec2<i32>(arg_2, arg_2), func_4(Struct_1(false, vec2<bool>(false, global0.b.x), vec3<bool>(false, true, true), global0.d), global2.x, Struct_1(arg_1, arg_0.b, global0.c, vec4<bool>(true, false, false, true)), arg_0)), func_2(global2.xy, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(183f, 1565f, -567f, global2.x), vec4<f32>(global2.x, 2860f, global2.x, -2372f))), select(vec2<i32>(arg_2, arg_2), vec2<i32>(13550i, 1i), global0.a), Struct_1(global0.d.x, arg_0.c.xx, vec3<bool>(false, true, arg_1), arg_0.d))).d.wz, !arg_0.d.xxw, !vec4<bool>(global0.d.x, arg_1, !global0.d.x, !(u_input.c.x < 34033u)));
    global0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.xz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + global2.yz), _wgslsmith_f_op_vec2_f32(max(global2.yx, vec2<f32>(556f, global2.x))), var_0.d.yw)), true)) + _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(global2.yz)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -325f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(199f, global2.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2169f, _wgslsmith_f_op_f32(604f - -920f), _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-global2.x))))), -(~(abs(vec2<i32>(2147483647i, 1i)) >> (_wgslsmith_add_vec2_u32(u_input.c.yx, vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u)))), Struct_1(!global0.c.x, vec2<bool>(arg_0.d.x, all(!vec3<bool>(true, arg_0.b.x, true))), arg_0.d.xxw, global0.d));
    global0 = func_4(Struct_1(!(!(u_input.b >= 3921i)), vec2<bool>(false, global0.c.x), vec3<bool>(_wgslsmith_f_op_f32(global2.x * 1827f) > _wgslsmith_f_op_f32(1996f - global2.x), true, !arg_0.c.x), select(vec4<bool>(!arg_0.a, true, global0.b.x, var_0.a), var_0.d, true)), -2295f, Struct_1(any(!func_4(arg_0, global2.x, arg_0, arg_0).d), global0.b, !select(select(vec3<bool>(true, arg_1, true), vec3<bool>(true, global0.a, arg_0.d.x), vec3<bool>(global0.c.x, true, true)), !vec3<bool>(true, arg_0.a, arg_0.c.x), vec3<bool>(false, false, true)), vec4<bool>(false, -arg_2 > (arg_2 >> (39578u % 32u)), func_4(Struct_1(arg_1, vec2<bool>(true, global0.c.x), vec3<bool>(var_0.a, false, true), vec4<bool>(true, true, arg_0.d.x, true)), -142f, Struct_1(false, vec2<bool>(arg_1, false), arg_0.c, vec4<bool>(false, arg_1, true, false)), Struct_1(arg_0.c.x, arg_0.d.yz, global0.c, var_0.d)).c.x | true, arg_1)), func_4(arg_0, global2.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 1u), 26u)], var_0));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1191f, 216f, global2.x) * vec3<f32>(-489f, global2.x, global2.x)), vec3<f32>(global2.x, global2.x, -2422f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1555f, -477f, -1000f) - vec3<f32>(global2.x, 358f, global2.x)) - vec3<f32>(_wgslsmith_f_op_f32(-273f * -345f), _wgslsmith_f_op_f32(-global2.x), -2329f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1508f, global2.x))) - vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(global2.x * -249f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -532f, 584f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, 1531f, global2.x) + vec3<f32>(global2.x, -315f, global2.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -537f, 1341f))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(global0.d.x, !global0.b, select(!vec3<bool>(global0.a, false, global0.a), global0.d.xxw, all(vec2<bool>(global0.b.x, true))), global0.d), all(select(vec4<bool>(func_1(global1[_wgslsmith_index_u32(u_input.a, 26u)], Struct_1(true, vec2<bool>(true, false), global0.d.zxx, vec4<bool>(true, global0.b.x, global0.c.x, global0.a)), global0.d.x), true, global0.d.x, func_4(Struct_1(global0.b.x, vec2<bool>(false, global0.d.x), vec3<bool>(true, false, true), global0.d), global2.x, global1[_wgslsmith_index_u32(4577u, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)]).a), vec4<bool>(func_1(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global0.d.x), global0.a, false && global0.a, func_4(global1[_wgslsmith_index_u32(u_input.a, 26u)], 335f, Struct_1(global0.d.x, vec2<bool>(true, true), global0.c, vec4<bool>(global0.d.x, global0.a, true, true)), Struct_1(global0.d.x, global0.b, vec3<bool>(true, true, false), global0.d)).c.x), func_2(vec2<f32>(-138f, -821f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -736f) - vec4<f32>(global2.x, -692f, -1240f, -394f)), vec2<i32>(u_input.b, u_input.b) >> (u_input.c.xz % vec2<u32>(32u)), func_4(Struct_1(false, vec2<bool>(false, false), global0.c, vec4<bool>(global0.d.x, true, false, true)), global2.x, global1[_wgslsmith_index_u32(u_input.a, 26u)], Struct_1(global0.c.x, global0.b, global0.d.yzw, global0.d))).d)), ~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b)), vec4<i32>(2147483647i, ~u_input.b, ~0i, u_input.b)));
    let var_1 = !var_0.b.x;
    global0 = var_0;
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-1653f * global2.x)), global2.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, -974f, 352f))) - vec3<f32>(1f, _wgslsmith_f_op_f32(-1101f - global2.x), global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(round(296f)), global2.x))), vec3<bool>(true, !var_1, var_0.b.x)));
    let var_2 = select(vec2<bool>(min(firstTrailingBit(u_input.c.x), u_input.a) >= 13763u, any(func_5(var_0, global0.b.x, ~u_input.b).d.xw)), !func_4(func_4(global1[_wgslsmith_index_u32(~94305u, 26u)], -1370f, func_5(var_0, global0.d.x, u_input.b), func_2(vec2<f32>(global2.x, 1360f), vec4<f32>(global2.x, global2.x, 348f, global2.x), vec2<i32>(2147483647i, u_input.b), Struct_1(false, global0.c.yx, var_0.c, vec4<bool>(global0.d.x, false, global0.c.x, global0.d.x)))), -727f, Struct_1(var_0.b.x, select(global0.d.xw, global0.c.xy, var_0.c.x), !vec3<bool>(var_0.b.x, false, var_1), !global0.d), global1[_wgslsmith_index_u32(8820u, 26u)]).b, !func_5(Struct_1(true, select(global0.b, vec2<bool>(var_1, global0.a), var_0.a), var_0.c, func_4(Struct_1(var_0.c.x, vec2<bool>(true, var_1), var_0.d.yyz, global0.d), -246f, Struct_1(false, vec2<bool>(true, true), vec3<bool>(global0.d.x, true, var_0.b.x), vec4<bool>(true, var_1, var_0.c.x, var_0.a)), Struct_1(true, var_0.b, vec3<bool>(var_1, var_0.a, true), global0.d)).d), true, firstTrailingBit(-161i)).c.zy);
    global0 = global1[_wgslsmith_index_u32(1u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1884f), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-1028f - global2.x)))), ~1i);
}

