struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
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

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, true, false, false, false, false, false, true, false, true, true, true, false, true, false, false, false, true, false, false, false, true, true, false, true, true, false, true, false, false, true);

var<private> global2: array<i32, 30> = array<i32, 30>(i32(-2147483648), 36734i, -1i, 1898i, 55297i, 2147483647i, 2147483647i, 58780i, 0i, -1i, -32533i, 1i, 0i, -9286i, -16095i, -13922i, -36087i, 1i, 1i, -18962i, -2216i, 0i, i32(-2147483648), -8093i, -27007i, -29600i, -1i, 79256i, 3005i, 23334i);

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<i32>(56909i, -19233i), 0i, Struct_2(vec2<bool>(false, false))), Struct_3(vec2<i32>(-31374i, -8490i), 1i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(-10196i, -33513i), 25944i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(2147483647i, 31670i), i32(-2147483648), Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(0i, 41094i), 20932i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(1i, -11569i), 0i, Struct_2(vec2<bool>(true, false))), Struct_3(vec2<i32>(29154i, 1i), 3657i, Struct_2(vec2<bool>(true, false))), Struct_3(vec2<i32>(1i, 26461i), 0i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(-1i, -24988i), 1i, Struct_2(vec2<bool>(true, false))), Struct_3(vec2<i32>(1i, 1i), 0i, Struct_2(vec2<bool>(true, false))), Struct_3(vec2<i32>(-41403i, 2147483647i), -47624i, Struct_2(vec2<bool>(true, true))), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), 1i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(28623i, 4057i), -43735i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(0i, 12417i), -645i, Struct_2(vec2<bool>(false, false))), Struct_3(vec2<i32>(647i, i32(-2147483648)), -40452i, Struct_2(vec2<bool>(false, false))), Struct_3(vec2<i32>(2147483647i, 12261i), 1i, Struct_2(vec2<bool>(true, true))), Struct_3(vec2<i32>(1i, 0i), 2147483647i, Struct_2(vec2<bool>(false, true))), Struct_3(vec2<i32>(49972i, -1i), 2147483647i, Struct_2(vec2<bool>(false, false))), Struct_3(vec2<i32>(-11432i, i32(-2147483648)), -18451i, Struct_2(vec2<bool>(true, true))), Struct_3(vec2<i32>(2147483647i, -10688i), 0i, Struct_2(vec2<bool>(true, false))));

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> f32 {
    let var_0 = max(vec3<i32>(global2[_wgslsmith_index_u32(~arg_0, 30u)], -2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(arg_1.x, 1u), arg_2.x), arg_1), 30u)]), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.b, 31594i)) | vec3<i32>(2147483647i, u_input.b, u_input.b), _wgslsmith_div_vec3_i32(max(vec3<i32>(0i, u_input.b, 1i), vec3<i32>(-33697i, global2[_wgslsmith_index_u32(arg_1.x, 30u)], -63242i)), ~vec3<i32>(909i, 20641i, -10204i)))) >> (u_input.d % vec3<u32>(32u));
    var var_1 = Struct_3(vec2<i32>(u_input.b ^ -1970i, min(select(max(38342i, global2[_wgslsmith_index_u32(13337u, 30u)]), u_input.b, any(global4.xxy)), -10178i)), var_0.x, Struct_2(select(select(vec2<bool>(false, global4.x), vec2<bool>(true, true), !arg_2.zy), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(arg_2.x, false)), !(!vec2<bool>(arg_2.x, global4.x)))));
    global2 = array<i32, 30>();
    var_1 = Struct_3(var_0.xx, u_input.b, Struct_2(select(!vec2<bool>(var_1.c.a.x, false), select(!arg_2.yx, !vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 32u)], var_1.c.a.x), select(vec2<bool>(var_1.c.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 32u)]), arg_2.yx, vec2<bool>(global4.x, false))), var_1.c.a.x)));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_3.x << (_wgslsmith_mult_u32(arg_0 >> (0u % 32u), firstTrailingBit(arg_3.x)) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 24294u, u_input.c.x), vec4<u32>(4294967295u, 8007u, 1u, 43977u))), 29u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.c, -459f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(sign(var_2.c))))) + var_2.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c, var_2.c)) * 375f) - 1796f));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = max(0u, _wgslsmith_div_u32(1u, 32852u));
    var var_1 = arg_1.d.zz;
    global2 = array<i32, 30>();
    var_1 = !(!arg_1.d.zz);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1919f + -160f) * -1403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u, u_input.c, global4.zxw, vec4<u32>(53992u, arg_1.a, 38947u, u_input.a))) + 414f), 170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1198f + arg_1.c))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2038f))), 400f, -1831f, _wgslsmith_f_op_f32(trunc(-532f)))));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = vec2<bool>(false, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 435f, -1078f, 809f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, 344f, 828f, 263f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(863f, -621f, 804f), global0[_wgslsmith_index_u32(u_input.d.x, 29u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-886f, -114f, 895f, -1015f))))), select(0i == _wgslsmith_clamp_i32(10203i, -1i, 0i), any(global4.yzz), false) & select(-30194i != _wgslsmith_add_i32(arg_1, 1i), any(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.d.x, 32u)], global4.x, true)), false)));
    global3 = array<Struct_3, 20>();
    global0 = array<Struct_1, 29>();
    global1 = array<bool, 32>();
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, abs(~(~100816u))), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(select(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(53135u, 32u)], true, global4.x, global4.x)), true), global4.zy, all(!global4.zxx))), 12457i);
    let var_1 = var_0;
    var var_2 = var_0.c.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-639f, _wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(631f, 1000f, 1240f), Struct_1(u_input.d.x, global2[_wgslsmith_index_u32(106035u, 30u)], 1037f, vec4<bool>(var_0.c.a.x, true, var_0.c.a.x, var_1.c.a.x)))).x)), _wgslsmith_f_op_f32(abs(-455f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-222f, -571f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-266f, -105f, false)) * -933f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f), 632f));
    global4 = !(!vec4<bool>(true, any(global4.zz), false, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(205f, 153f)), _wgslsmith_f_op_f32(func_3(u_input.d.x, vec2<u32>(1u, u_input.d.x), global4.ywx, vec4<u32>(u_input.c.x, 57250u, u_input.c.x, 65445u))))))), _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(f32(-1f) * -2143f)))));
}

