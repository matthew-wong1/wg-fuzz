struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: bool;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(false, vec3<bool>(false, false, true), -1065f, vec2<bool>(false, true), 1u), Struct_4(true, vec3<bool>(true, true, false), -2393f, vec2<bool>(false, false), 22408u), Struct_4(true, vec3<bool>(true, false, true), -189f, vec2<bool>(false, true), 4294967295u), Struct_4(true, vec3<bool>(false, false, false), 699f, vec2<bool>(true, false), 34623u), Struct_4(true, vec3<bool>(false, false, false), -500f, vec2<bool>(false, true), 159u), Struct_4(false, vec3<bool>(false, true, true), 1000f, vec2<bool>(true, true), 0u), Struct_4(true, vec3<bool>(false, true, true), 1031f, vec2<bool>(false, false), 1u), Struct_4(false, vec3<bool>(false, true, true), 1139f, vec2<bool>(true, false), 4294967295u), Struct_4(true, vec3<bool>(false, false, false), 1599f, vec2<bool>(false, false), 4294967295u));

var<private> global2: array<i32, 1> = array<i32, 1>(14800i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = (any(vec4<bool>(any(vec3<bool>(false, true, false)), true, any(vec2<bool>(false, true)), all(vec3<bool>(false, false, false)))) | (global2[_wgslsmith_index_u32(max(4294967295u, ~0u), 1u)] < global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(48801u), firstLeadingBit(133280u), 1u), 1u)])) & true;
    global0 = true;
    var var_0 = Struct_4(false, select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), u_input.a.x <= -19260i, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(414f, 158f))), _wgslsmith_f_op_f32(f32(-1f) * -736f)))), !(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), select(min(42727u, 0u), _wgslsmith_div_u32(0u, abs(1u) | select(0u, 49517u, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = u_input.a.x;
    global0 = true;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) - var_0.c)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    var var_0 = vec2<f32>(303f, 1000f);
    var var_1 = 1u;
    let var_2 = select(true && !arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-330f, -786f)), _wgslsmith_f_op_f32(func_3()), true)) < -1695f, any(!(!select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(false, false, arg_0.d.x, arg_0.b.x), arg_0.d.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2461f, arg_2.x, -1000f) * vec3<f32>(_wgslsmith_f_op_f32(max(arg_3, -620f)), -364f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2294f, _wgslsmith_f_op_f32(arg_0.c - 1331f)) - arg_0.c)));
    let var_4 = Struct_3(54541u);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(min(-vec4<i32>(global2[_wgslsmith_index_u32(8466u, 1u)], global2[_wgslsmith_index_u32(45807u, 1u)], 100361i, 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(~var_4.a, 1u)], ~15459i, u_input.a.x << (51043u % 32u), u_input.a.x ^ -48765i)), u_input.a << (select(vec4<u32>(arg_1, 32010u, var_4.a, 4294967295u) & vec4<u32>(0u, 1u, 24171u, 17981u), reverseBits(vec4<u32>(4294967295u, 1u, 4730u, arg_1)), select(vec4<bool>(arg_0.b.x, false, true, var_2), vec4<bool>(true, var_2, true, var_2), vec4<bool>(var_2, arg_0.a, false, var_2))) % vec4<u32>(32u))), u_input.a);
}

fn func_2() -> vec3<bool> {
    global2 = array<i32, 1>();
    let var_0 = Struct_2(Struct_1(u_input.a.wxz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(381f, 387f), -978f, _wgslsmith_f_op_f32(select(518f, 1131f, false)))), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), u_input.a), -(~(-61034i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(30142i, 2147483647i, 1i), vec3<i32>(u_input.a.x, 55305i, 1i)), vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], -33971i, global2[_wgslsmith_index_u32(4294967295u, 1u)]))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-139f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f))), max(-23075i, ~_wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 1u)]))), Struct_1(_wgslsmith_mult_vec3_i32(abs(u_input.a.zyz) | u_input.a.xzx, u_input.a.xwz << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, 1435f, -957f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, 682f, 128f) * vec3<f32>(-947f, 1143f, 1585f)))), max(countOneBits(_wgslsmith_sub_vec3_i32(u_input.a.yxx, u_input.a.xyx)), firstLeadingBit(vec3<i32>(25116i, -32514i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, 698f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(852f, 1335f) - vec2<f32>(993f, -646f)))))), func_4(global1[_wgslsmith_index_u32(~1u, 9u)], max(~1u, 10414u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(608f, 1000f, 912f), vec3<f32>(-101f, -2869f, 203f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(f32(-1f) * -1676f)))), Struct_1(vec3<i32>(firstTrailingBit(~12211i), firstLeadingBit(global2[_wgslsmith_index_u32(17343u, 1u)]), 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), u_input.a.ywz, vec2<f32>(-615f, _wgslsmith_div_f32(-143f, _wgslsmith_f_op_f32(floor(1064f)))), abs(75504i)), (false || select(true, true, true)) && any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
    var var_1 = Struct_4(any(vec4<bool>(!(!var_0.d), var_0.d, var_0.d, false)), vec3<bool>(all(select(vec3<bool>(false, var_0.d, var_0.d), select(vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(var_0.d, true, true), var_0.d), var_0.d & false)), var_0.d, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x))))), select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.d), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.d)), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, false), false), true), select(!vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, var_0.d))), any(select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(false, var_0.d, true), vec3<bool>(true, true, false)))), false), ~1u);
    global1 = array<Struct_4, 9>();
    global1 = array<Struct_4, 9>();
    return vec3<bool>(var_1.a, false == any(!var_1.b.yx), !var_0.d);
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<bool> {
    global2 = array<i32, 1>();
    let var_0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1764f, arg_2.c)), arg_1.x)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~54978u, ~arg_2.e, 65271u, 18618u), ~(~vec4<u32>(arg_2.e, arg_2.e, arg_2.e, arg_2.e))), firstLeadingBit(firstTrailingBit(13449u))), arg_2.e);
    let var_2 = arg_2;
    var var_3 = arg_2.e;
    return !vec4<bool>(abs(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(37161u, 1u)], -352i)) != u_input.a.x, true, arg_0, _wgslsmith_dot_vec2_i32(select(u_input.a.yy, u_input.a.zx, arg_0), select(u_input.a.zy, u_input.a.yx, false)) > ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 5515i, -18156i), u_input.a));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    global0 = false;
    global0 = true;
    let var_0 = vec4<i32>(-11551i, global2[_wgslsmith_index_u32(~1u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], -1i);
    let var_1 = select(select(arg_1, select(!arg_1, select(arg_1, !arg_1, arg_1), arg_1.x), true | arg_1.x), func_5(arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(693f, arg_0, 1972f, -1289f), vec4<f32>(-568f, arg_0, arg_0, -756f))))), Struct_4(false, func_2(), -570f, select(vec2<bool>(true, arg_1.x), func_2().xz, !arg_1.wz), _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 32921u, 677u), select(0u, 0u, arg_1.x)))), !(!select(arg_1, !arg_1, !arg_1.x)));
    let var_2 = Struct_1(vec3<i32>(-1i, func_4(Struct_4(true, !var_1.zwx, _wgslsmith_f_op_f32(arg_0 - arg_0), vec2<bool>(var_1.x, var_1.x), ~51863u), 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(854f, 892f, arg_0))), 570f), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a.x, global2[_wgslsmith_index_u32(~1u, 1u)]), ~(1i ^ global2[_wgslsmith_index_u32(9480u, 1u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1614f, -308f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(380f, arg_0, 1000f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-120f, 125f, -735f)))) * vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-28555i, u_input.a.x, u_input.a.x), vec3<i32>(min(global2[_wgslsmith_index_u32(0u, 1u)], 1i) ^ global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 1u)], max(7301i, _wgslsmith_sub_i32(u_input.a.x, global2[_wgslsmith_index_u32(0u, 1u)])))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-719f, arg_0)) + vec2<f32>(285f, arg_0)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-663f, 433f) - vec2<f32>(-1188f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-973f, arg_0)))))))), func_4(Struct_4(all(select(arg_1.xxy, arg_1.zxy, var_1.yzz)), !arg_1.zyw, arg_0, select(arg_1.xy, select(var_1.yx, var_1.ww, arg_1.yy), var_1.x), ~0u), 38571u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 423f, 506f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1008f, arg_0, -743f) + vec3<f32>(481f, arg_0, -1000f))))), arg_0));
    return ~4294967295u;
}

fn func_6(arg_0: u32, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(countOneBits(u_input.a.xyz), arg_1.yzz, abs(vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(61056u, 1u)], -2147483647i)) >> (abs(vec3<u32>(20357u, 1u, arg_0)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-arg_1.yw), -18454i), Struct_1(-vec3<i32>(firstLeadingBit(2147483647i), global2[_wgslsmith_index_u32(1u, 1u)] | global2[_wgslsmith_index_u32(arg_0, 1u)], 1i), arg_1.yxw, firstTrailingBit(firstTrailingBit(~u_input.a.yzw)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), arg_1.x), -1i), Struct_1(u_input.a.ywx, arg_1.yxw, vec3<i32>(abs(i32(-1i) * -43027i), global2[_wgslsmith_index_u32(25958u, 1u)], firstLeadingBit(i32(-1i) * -1i)), _wgslsmith_f_op_vec2_f32(arg_1.yw + _wgslsmith_f_op_vec2_f32(-arg_1.ww)), -global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(arg_0), 4294967295u), 1u)]), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))) == _wgslsmith_f_op_f32(arg_1.x * arg_1.x));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~33015u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(53996u, arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)))), 4294967295u), 9u)];
    global0 = all(!select(vec2<bool>(true, true), vec2<bool>(any(var_1.b.xz), any(vec3<bool>(true, false, var_1.d.x))), _wgslsmith_f_op_f32(var_0.a.d.x - var_1.c) >= var_0.c.b.x));
    var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(var_0.c.c, _wgslsmith_div_vec3_i32(min(var_0.c.c, vec3<i32>(2147483647i, u_input.a.x, -2147483647i)), reverseBits(var_0.b.c))), var_0.c.b, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -9769i, abs(var_0.b.a.x)), vec3<i32>(abs(u_input.a.x), -63793i, abs(var_0.c.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.c.b.zx))), countOneBits(_wgslsmith_dot_vec2_i32(var_0.b.a.xx, u_input.a.zw) << (countOneBits(4294967295u) % 32u))), var_0.b, Struct_1(_wgslsmith_div_vec3_i32(u_input.a.zzw, reverseBits(var_0.a.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.c.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -212f, 418f) - arg_1.xzy)), -(~(~u_input.a.wyx)), arg_1.zx, 0i), var_1.b.x);
    global2 = array<i32, 1>();
    return Struct_3(40798u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_6(func_1(654f, vec4<bool>(var_0, true, var_0, true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-327f, -2813f, -1749f, -788f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, 447f, -387f, 1274f)))))));
    global2 = array<i32, 1>();
    global1 = array<Struct_4, 9>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-149f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a.zw)), ~u_input.a.yx), _wgslsmith_clamp_vec2_i32(u_input.a.zy, _wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(-26834i, -2147483647i)), u_input.a.yx)));
}

