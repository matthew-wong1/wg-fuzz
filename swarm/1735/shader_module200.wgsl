struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(0u, 0u, 4294967295u, 1u, 0u, 1u, 4294967295u, 5946u, 703u, 0u, 0u, 21341u, 4804u, 3931u, 4294967295u, 0u, 68066u, 0u, 14356u, 0u);

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), 1u, vec3<f32>(-303f, -1000f, -1127f), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(false, true, true), 12315u, vec3<f32>(-1843f, 159f, 1232f), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, true, true), 0u, vec3<f32>(-251f, 670f, -2784f), vec4<bool>(false, true, false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(vec2<i32>(-select(37437i, -1i, false), firstTrailingBit(abs(52245i)))) ^ select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(33980i, 1i, 2147483647i), vec3<i32>(-1i, 0i, 0i)) | (i32(-1i) * -2147483647i), ~2507i), abs(firstLeadingBit(-vec2<i32>(-1i, 44117i))), select(!(!global2.b.a.zz), global2.b.a.zz, select(select(global2.b.a.xy, vec2<bool>(global2.c.d.x, false), false), arg_0.d.wz, false)));
    global0 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), global2.a.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.c.c.x, arg_0.c.x, global2.a.a.x)) * _wgslsmith_f_op_f32(-global2.c.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a.c.x)), -1550f))))));
    var var_2 = global2.b.a.yx;
    var_2 = arg_0.d.xz;
    return var_0.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(vec4<i32>(func_3(Struct_1(vec3<bool>(false, true, true), ~5207u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.c.x, -1220f, 755f) - global2.c.c), global1[_wgslsmith_index_u32(130405u, 9u)])), ~(-70270i) | arg_0, min(~(-9491i), 1i), -4444i), select(global2.a.d, !global1[_wgslsmith_index_u32(1u >> ((9372u >> (global0[_wgslsmith_index_u32(16117u, 20u)] % 32u)) % 32u), 9u)], select(!(!vec4<bool>(global2.a.d.x, global2.a.a.x, false, global2.a.a.x)), global2.c.d, select(!vec4<bool>(false, true, global2.b.a.x, true), global1[_wgslsmith_index_u32(~1u, 9u)], vec4<bool>(global2.a.d.x, false, global2.c.d.x, false)))), global2.a, vec2<i32>(arg_0, 1194i), ~(~arg_0));
    var_0 = Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~19326i, ~2147483647i, reverseBits(2147483647i)), firstTrailingBit(vec3<i32>(arg_0, arg_0, arg_0))), arg_0, 1i, -1i), vec4<bool>(true, all(vec4<bool>(true, false, true, var_0.c.a.x)) | any(!global2.a.d), any(!select(vec4<bool>(global2.a.a.x, true, var_0.c.d.x, var_0.b.x), vec4<bool>(var_0.b.x, true, true, global2.c.a.x), global2.a.d)), global2.a.a.x || var_0.c.d.x), var_0.c, -vec2<i32>(-1i, var_0.a.x), min(_wgslsmith_mod_i32(-34167i, ~_wgslsmith_div_i32(1i, 34059i)), -var_0.a.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-139f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1563f)))))));
    var_1 = _wgslsmith_f_op_f32(global2.c.c.x * var_0.c.c.x);
    let var_2 = Struct_4(Struct_1(select(select(var_0.b.zxz, select(var_0.b.zwz, global2.c.a, false), !global2.c.a.x), global2.c.a, var_0.c.a), ~_wgslsmith_mult_u32(86019u, _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(global2.c.b, 20u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(245f, _wgslsmith_f_op_f32(-global2.c.c.x), _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.c - vec3<f32>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x))))), vec4<bool>(global2.b.a.x, select(global2.a.c.x < 199f, global2.a.a.x, global2.a.a.x), any(global2.a.a.yx), (arg_0 & var_0.a.x) != 79131i)));
    return global2.c;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> Struct_4 {
    let var_0 = vec2<i32>(~arg_2, arg_2);
    var var_1 = Struct_2(Struct_1(select(select(global2.b.a, vec3<bool>(global2.b.a.x, true, global2.a.d.x), global2.a.d.zzw), select(select(global2.a.a, vec3<bool>(global2.b.d.x, false, global2.a.d.x), global2.a.d.xwx), vec3<bool>(global2.a.d.x, false, global2.c.a.x), all(vec2<bool>(global2.a.a.x, global2.a.d.x))), select(vec3<bool>(false, false, false), !global2.a.a, true)), _wgslsmith_sub_u32(arg_3, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.c.x, _wgslsmith_f_op_f32(sign(global2.c.c.x)), _wgslsmith_f_op_f32(arg_0 * 1358f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.c.c, vec3<f32>(global2.c.c.x, arg_0, global2.b.c.x)) * global2.b.c)), !vec4<bool>(any(global2.b.a.zz), true, 4386u != arg_1.x, true)), Struct_1(global2.c.d.zxy, min(arg_1.x, abs(1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.c.x, global2.b.c.x, arg_0)))), !global1[_wgslsmith_index_u32(3681u, 9u)]), func_2(2147483647i));
    var var_2 = max(func_2(_wgslsmith_add_i32(0i, 1i)).b, arg_1.x);
    global0 = array<u32, 20>();
    global2 = Struct_2(global2.b, Struct_1(global2.a.a, _wgslsmith_mult_u32(firstLeadingBit(~7305u), ~countOneBits(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-492f, -573f, -425f), vec3<f32>(global2.c.c.x, -731f, 2445f)))), vec4<bool>(select(all(vec3<bool>(false, false, global2.b.d.x)), var_1.b.a.x, func_2(-29532i).d.x), _wgslsmith_f_op_f32(-arg_0) > -586f, all(vec4<bool>(var_1.b.a.x, var_1.a.a.x, var_1.a.a.x, false)), false)), var_1.b);
    return Struct_4(func_2(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -702f), u_input.a.yxy, firstTrailingBit(_wgslsmith_add_i32(-1i, 1i >> ((global2.c.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)] % 32u)) % 32u))), ~(~(~(u_input.a.x << (u_input.a.x % 32u)))));
    global1 = array<vec4<bool>, 9>();
    var var_1 = max(~4294967295u, var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, global2.b.c.x, var_0.a.c.x, global2.b.c.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, -548f, -170f, 242f) + vec4<f32>(2766f, global2.a.c.x, global2.b.c.x, -146f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(829f, 499f, -1198f, -1192f), vec4<f32>(-2191f, var_0.a.c.x, -1366f, var_0.a.c.x))), vec4<f32>(1309f, var_0.a.c.x, global2.c.c.x, 241f))), false)), 650f, vec3<u32>(abs(abs(select(u_input.a.x, 4294967295u, var_0.a.a.x))), ~14487u, ~62362u), u_input.a.yxw & firstTrailingBit(u_input.a.xxz));
}

