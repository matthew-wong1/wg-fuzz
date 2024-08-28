struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~global1.b.x, 25u)], abs(vec4<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, u_input.d.x), vec2<i32>(u_input.d.x, u_input.b.x), false), u_input.b | u_input.b), -2147483647i, -u_input.d.x, _wgslsmith_add_i32(min(-99055i, -33883i), countOneBits(-7666i)))), Struct_1(true, ~vec2<u32>(~u_input.e.x, 4294967295u)), all(!select(select(vec2<bool>(true, false), arg_0.wy, vec2<bool>(arg_0.x, global1.a)), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(global1.a, true), true), vec2<bool>(false, false))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.c.b.x, abs(~_wgslsmith_clamp_u32(75380u, ~var_0.a.b.x, 4294967295u))), 25u)];
    global1 = var_0.c;
    return ~37035u;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> bool {
    global0 = array<Struct_1, 25>();
    global1 = Struct_1(!(!arg_1.x), min(u_input.e.ww, vec2<u32>(53805u, firstLeadingBit(func_2(vec4<bool>(global1.a, arg_1.x, false, global1.a))))));
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(global1.b.x, 25u)], vec4<i32>(u_input.d.x, arg_2, _wgslsmith_mult_i32(_wgslsmith_mod_i32(countOneBits(-1i), i32(-1i) * -3389i), firstLeadingBit(16221i)), abs(~_wgslsmith_mult_i32(2147483647i, -1i))), Struct_1(arg_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1731f, arg_0, false))), max(global1.b, _wgslsmith_div_vec2_u32(global1.b, u_input.e.xz >> (u_input.e.xw % vec2<u32>(32u))))), false);
    var var_1 = firstTrailingBit(u_input.e);
    let var_2 = -abs(vec2<i32>(firstLeadingBit(min(-2147483647i, -20178i)), u_input.a));
    return 1i >= ~(-u_input.a);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2367f) + 1298f)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(select(firstTrailingBit(vec3<u32>(1u, global1.b.x, u_input.c)), _wgslsmith_add_vec3_u32(u_input.e.xyw, vec3<u32>(4294967295u, 1u, global1.b.x)) ^ ~u_input.e.wxw, true)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.e.zyy, vec3<u32>(0u, global1.b.x, 4294967295u)), max(u_input.c, 36230u), min(u_input.c, global1.b.x)) | ~u_input.e.yyw), 25u)];
    global0 = array<Struct_1, 25>();
    var var_2 = _wgslsmith_sub_vec4_u32(~max(u_input.e, ~u_input.e), vec4<u32>(_wgslsmith_mod_u32(~1u, global1.b.x), ~abs(u_input.c), _wgslsmith_mult_u32(4294967295u, global1.b.x), ~27262u)) ^ (~_wgslsmith_mod_vec4_u32(~u_input.e, u_input.e) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, var_1.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(41053u, 21870u, var_1.b.x, global1.b.x), vec4<u32>(4294967295u, u_input.c, 4294967295u, 31439u))) ^ u_input.e));
    global1 = global0[_wgslsmith_index_u32(global1.b.x, 25u)];
    return _wgslsmith_add_u32(11773u, 93744u);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    var var_0 = ~_wgslsmith_sub_u32(arg_0.c.b.x, arg_2.b.x);
    var var_1 = Struct_2(Struct_1(arg_2.a, u_input.e.xw), vec4<i32>(i32(-1i) * -firstTrailingBit(-2147483647i), -26005i, ~u_input.d.x, u_input.a), arg_0.c, arg_2.a);
    var_1 = Struct_2(Struct_1(!arg_2.a, firstTrailingBit(~abs(u_input.e.zz))), var_1.b, var_1.c, ~arg_0.a.b.x < ~(~(~49575u)));
    var_0 = ~u_input.c;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(global1.a, true, !global1.a);
    let var_1 = ~(~(~(~u_input.e.x)));
    global1 = global0[_wgslsmith_index_u32(~u_input.c, 25u)];
    var var_2 = Struct_2(func_4(Struct_2(global0[_wgslsmith_index_u32(global1.b.x | select(var_1, 4294967295u, true), 25u)], select(vec4<i32>(u_input.b.x, u_input.d.x, 20692i, u_input.a), -vec4<i32>(1i, -2147483647i, u_input.d.x, 1i), true), global0[_wgslsmith_index_u32(~var_1, 25u)], !any(vec4<bool>(false, global1.a, false, false))), any(vec4<bool>(func_1(-1000f, vec4<bool>(true, false, global1.a, true), 2147483647i), var_0.x, any(vec2<bool>(var_0.x, true)), global1.a)), global0[_wgslsmith_index_u32(func_3(select(select(vec4<bool>(false, global1.a, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), global1.a), vec4<bool>(true, var_0.x, false, false), !vec4<bool>(true, true, var_0.x, var_0.x))), 25u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, 326f, 956f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-254f, -1000f, 626f)))), -vec4<i32>((28841i & u_input.d.x) & _wgslsmith_mult_i32(29282i, u_input.d.x), -44633i, firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), u_input.d.x), func_4(Struct_2(func_4(Struct_2(global0[_wgslsmith_index_u32(var_1, 25u)], vec4<i32>(42512i, u_input.b.x, u_input.d.x, u_input.b.x), global0[_wgslsmith_index_u32(global1.b.x, 25u)], false), all(vec2<bool>(false, true)), Struct_1(global1.a, global1.b), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-188f, -1394f, -236f), vec3<f32>(1266f, 1520f, -313f)))), select(~vec4<i32>(u_input.b.x, 28159i, u_input.d.x, u_input.a), vec4<i32>(u_input.a, 40266i, u_input.d.x, u_input.d.x), var_0.x || global1.a), func_4(Struct_2(Struct_1(false, global1.b), vec4<i32>(-1i, -35400i, -2147483647i, u_input.d.x), Struct_1(global1.a, vec2<u32>(var_1, 0u)), false), false, func_4(Struct_2(Struct_1(global1.a, vec2<u32>(20782u, 4294967295u)), vec4<i32>(u_input.b.x, -1i, u_input.a, u_input.a), Struct_1(true, vec2<u32>(global1.b.x, 1u)), true), true, global0[_wgslsmith_index_u32(u_input.c, 25u)], vec3<f32>(408f, 174f, -922f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1594f, -1000f, 1707f)))), func_4(Struct_2(global0[_wgslsmith_index_u32(216u, 25u)], vec4<i32>(35534i, 39503i, u_input.b.x, 1i), global0[_wgslsmith_index_u32(var_1, 25u)], global1.a), u_input.b.x >= u_input.a, global0[_wgslsmith_index_u32(abs(u_input.e.x), 25u)], _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2138f, 360f, 1104f)))).a), var_0.x, func_4(Struct_2(func_4(Struct_2(global0[_wgslsmith_index_u32(0u, 25u)], vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(u_input.c, 25u)], true), true, global0[_wgslsmith_index_u32(var_1, 25u)], vec3<f32>(490f, 212f, 877f)), vec4<i32>(u_input.d.x, u_input.d.x, -45594i, u_input.d.x), global0[_wgslsmith_index_u32(var_1, 25u)], true), var_0.x, func_4(Struct_2(Struct_1(true, u_input.e.zw), vec4<i32>(2147483647i, u_input.d.x, 9018i, -2147483647i), Struct_1(global1.a, global1.b), var_0.x), !var_0.x, global0[_wgslsmith_index_u32(~global1.b.x, 25u)], vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(877f, 976f, 1795f)) + vec3<f32>(489f, -686f, 889f))), vec3<f32>(-585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1082f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1362f)) - _wgslsmith_f_op_f32(select(217f, -1679f, true))))), true);
    let var_3 = Struct_2(func_4(Struct_2(Struct_1(!var_0.x, global1.b), ~_wgslsmith_div_vec4_i32(vec4<i32>(-2711i, u_input.b.x, u_input.a, -4239i), var_2.b), Struct_1(!var_0.x, _wgslsmith_mult_vec2_u32(u_input.e.xx, u_input.e.xy)), false), true, Struct_1(var_2.a.a, _wgslsmith_mod_vec2_u32(global1.b, _wgslsmith_div_vec2_u32(var_2.c.b, vec2<u32>(global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1133f, _wgslsmith_f_op_f32(round(-525f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), firstLeadingBit(vec4<i32>(-_wgslsmith_sub_i32(2147483647i, 28921i), -41430i, 7425i, -(30035i | u_input.d.x))), var_2.a, !all(vec3<bool>(any(vec4<bool>(false, var_2.c.a, var_0.x, true)), all(vec2<bool>(false, false)), true)));
    var var_4 = global1.b.x;
    var var_5 = Struct_1(true, vec2<u32>(7746u, ~_wgslsmith_sub_u32(1u, var_2.a.b.x)));
    var var_6 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, -602f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 897f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1672f, 695f), vec2<f32>(901f, -1035f), var_0.yz)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(772f)), _wgslsmith_f_op_f32(f32(-1f) * -288f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1359f) + vec2<f32>(1000f, 400f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2518f, 191f), vec2<f32>(1745f, 566f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-657f, 2397f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(185f)), var_6.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.x, var_6.x) + vec2<f32>(var_6.x, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(157f, var_6.x) * vec2<f32>(var_6.x, -1000f))), var_3.d))));
}

