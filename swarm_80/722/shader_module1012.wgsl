struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(38789u, 0u, 48141u, 57573u, 10455u, 0u, 5364u, 4294967295u, 4294967295u, 50416u, 40005u, 1u, 89479u, 1u, 29591u, 27665u, 55370u, 1u, 33156u, 4294967295u, 4294967295u, 6376u, 66574u, 10911u, 29954u, 1u, 64887u, 17037u, 2344u);

var<private> global1: i32 = 1212i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    global1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-(u_input.c.yzw >> (vec3<u32>(10752u, arg_0, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, 19339i), u_input.c.xyx) & vec3<i32>(u_input.c.x, 26239i, -2147483647i)), u_input.c.x | -18881i), 1i, _wgslsmith_dot_vec3_i32(abs(~countOneBits(vec3<i32>(-17472i, u_input.c.x, -2147483647i))), ~vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, 2147483647i), u_input.c.x, select(u_input.c.x, -19142i, false))));
    global1 = reverseBits(-51804i);
    global1 = ~(~(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x) >> (4294967295u % 32u)));
    var var_0 = 2202i;
    global0 = array<u32, 29>();
    return u_input.c.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    global1 = _wgslsmith_clamp_i32(arg_1.b | -6470i, arg_1.b & -2147483647i, abs(~4290i)) >> (_wgslsmith_mult_u32(24630u, arg_2) % 32u);
    var var_0 = Struct_1(u_input.c.yw, ~(-func_3(1u)), 1489f);
    var_0 = arg_1;
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 0i, -1i, 5987i), u_input.c), 0i), (arg_1.a.x << (firstTrailingBit(8896u) % 32u)) ^ u_input.c.x, 1313f);
    global1 = _wgslsmith_mod_i32(-2147483647i, 14528i);
    return select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(true, true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)) & any(vec4<bool>(false, true, true, true))), vec2<bool>(!all(vec4<bool>(true, true, false, true)), true)), vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_add_i32(abs(u_input.c.x), u_input.c.x)), -u_input.c.x));
    global0 = array<u32, 29>();
    let var_1 = 745f;
    global1 = _wgslsmith_sub_i32(reverseBits(u_input.c.x & _wgslsmith_add_i32(reverseBits(-1086i), -u_input.c.x)), -1i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(var_1, var_1)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1290f)))))));
    return Struct_1(vec2<i32>(~(~0i), ~_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), _wgslsmith_mod_i32(reverseBits(u_input.c.x), -(~u_input.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -813f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<f32>) -> i32 {
    global0 = array<u32, 29>();
    var var_0 = 0i;
    global0 = array<u32, 29>();
    var var_1 = u_input.c.x;
    var_0 = reverseBits(-_wgslsmith_add_i32(~abs(0i), -37808i));
    return -1i ^ -min((-17075i & arg_1.b) << (_wgslsmith_mod_u32(arg_2.x, 1u) % 32u), u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    global1 = -1i;
    global1 = func_5(Struct_1(u_input.c.xy, ~_wgslsmith_dot_vec2_i32(u_input.c.wy, vec2<i32>(-1i, arg_1.a.x)) ^ min(arg_0.b, 54358i << (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f - 464f)))), func_4(!(!any(vec4<bool>(true, true, true, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), func_2(~vec4<u32>(arg_2, arg_2, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 32931u), arg_0, _wgslsmith_mult_u32(arg_2, 4294967295u))), !select(func_2(vec4<u32>(global0[_wgslsmith_index_u32(arg_2, 29u)], arg_2, 0u, u_input.a.x), arg_1, u_input.b.x), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true)), vec4<u32>(~((49533u | global0[_wgslsmith_index_u32(0u, 29u)]) >> (0u % 32u)), ~u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_1.c, arg_1.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_1.c, arg_1.c))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, 348f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(188f, -289f, -748f)))))));
    let var_0 = Struct_1(u_input.c.yx, arg_0.b, _wgslsmith_f_op_f32(-arg_0.c));
    var var_1 = -countOneBits(abs(vec3<i32>(firstTrailingBit(arg_0.b), 1i, firstLeadingBit(1i))));
    global0 = array<u32, 29>();
    return _wgslsmith_f_op_f32(max(func_4(select(firstTrailingBit(arg_0.b) >= (-46957i >> (u_input.a.x % 32u)), false, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_2(~vec4<u32>(1u, 0u, u_input.b.x, 0u), Struct_1(vec2<i32>(var_1.x, var_0.b), -1i, -1474f), ~5727u), true), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, false)), true), vec2<bool>(false, true))).c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec2<i32>(1i, i32(-1i) * -1i), -2147483647i, _wgslsmith_f_op_f32(max(1773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(706f))))));
    let var_1 = 4527i;
    global1 = 47094i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 490f)), _wgslsmith_f_op_f32(ceil(var_0.c)))));
    global0 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_1(var_0, var_0, 0u)), _wgslsmith_f_op_f32(var_0.c + 145f), var_2.x, _wgslsmith_f_op_f32(-148f - -342f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, -1376f, var_0.c)), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * -1026f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1401f - _wgslsmith_f_op_f32(f32(-1f) * -739f)))), var_0.a.x);
}

