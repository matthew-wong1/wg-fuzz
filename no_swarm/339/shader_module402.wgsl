struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, false, false, false, false, false, false, true, false, false, true, true, false, true, false, false);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 15>;

var<private> global4: vec2<f32> = vec2<f32>(893f, -715f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec3_i32(~(-min(vec3<i32>(global1.b.x, 0i, 6442i), -global2.b)), arg_1);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1209f, -1982f)))))), ~(-global1.b), any(select(select(!vec2<bool>(global1.c, true), select(vec2<bool>(global2.d, true), vec2<bool>(false, global0[_wgslsmith_index_u32(22968u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true)), select(vec2<bool>(global1.c, true), vec2<bool>(false, global1.d), false)), !vec2<bool>(global1.d, false), global2.c)), global1.d);
    global3 = array<vec4<bool>, 15>();
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, global2.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.x, 677f)))), true))), ~(~(vec3<i32>(global1.b.x, -1i, global1.b.x) & vec3<i32>(0i, global2.b.x, -24789i)) | abs(global1.b)), global1.c, any(vec3<bool>(true, true, true)));
    let var_2 = global2.a.x;
    return -vec3<i32>(_wgslsmith_dot_vec3_i32(select(global1.b, vec3<i32>(0i, 0i, arg_0), global1.d), global2.b) << (~(~1167u) % 32u), 0i, arg_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = -29387i;
    global1 = Struct_1(global1.a, global1.b, global0[_wgslsmith_index_u32(4294967295u, 18u)], false);
    var var_1 = 1u;
    global3 = array<vec4<bool>, 15>();
    var var_2 = ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, _wgslsmith_mod_u32(0u, 122116u), ~0u)), vec3<u32>(min(~35228u, min(0u, 0u)), 13999u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(65681u, 4294967295u), vec2<u32>(1u, 1u)), 1u));
    return ~vec2<u32>(reverseBits(24721u >> (_wgslsmith_dot_vec2_u32(var_2.xx, var_2.xy) % 32u)), 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> vec4<bool> {
    let var_0 = max(vec2<u32>(firstLeadingBit(0u), firstLeadingBit(_wgslsmith_clamp_u32(1u, ~4294967295u, arg_3))), func_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a.x, -370f)))), func_3(34242i, vec3<i32>(1i, global1.b.x, global1.b.x)), global0[_wgslsmith_index_u32(33764u, 18u)], !arg_0.x), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, global4.x), global2.a), global1.a, select(vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 18u)], arg_1), arg_0, arg_0))), vec3<i32>(_wgslsmith_add_i32(1i, arg_2.x), _wgslsmith_div_i32(arg_2.x, global2.b.x), -36083i), select(all(vec2<bool>(global1.c, true)), global2.b.x > -27388i, false), !(arg_1 || arg_1))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, 1701f), vec2<f32>(global2.a.x, global4.x)), vec2<f32>(global2.a.x, -1080f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(303f, 1000f), vec2<f32>(-1229f, global1.a.x), arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-137f, 456f))))), -(~vec3<i32>(global2.b.x ^ u_input.a, global2.b.x, u_input.a)), true, true);
    let var_2 = vec3<bool>(true, ~(~var_0.x << ((var_0.x ^ arg_3) % 32u)) != ~var_0.x, any(!(!(!vec3<bool>(false, var_1.c, global0[_wgslsmith_index_u32(4294967295u, 18u)])))));
    global2 = Struct_1(var_1.a, _wgslsmith_mult_vec3_i32(-(~var_1.b >> (vec3<u32>(0u, arg_3, arg_3) % vec3<u32>(32u))), vec3<i32>(-1i) * -(vec3<i32>(2147483647i, 1662i, arg_2.x) | vec3<i32>(0i, 1i, global2.b.x))), true, any(vec4<bool>(all(vec3<bool>(arg_0.x, true, arg_1)), any(!arg_0), arg_1, all(!var_2.xz))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-435f, _wgslsmith_f_op_f32(f32(-1f) * -1311f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.x - -401f), _wgslsmith_f_op_f32(ceil(global2.a.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global4.x)))), _wgslsmith_sub_vec3_i32(~(-_wgslsmith_div_vec3_i32(vec3<i32>(15873i, 32597i, global1.b.x), vec3<i32>(-1i, u_input.a, -2147483647i))), vec3<i32>(~var_1.b.x, -1i, select(arg_2.x, i32(-1i) * -38584i, false))), !(!arg_0.x) & (all(select(global3[_wgslsmith_index_u32(arg_3, 15u)], global3[_wgslsmith_index_u32(2621u, 15u)], true)) || global1.c), true);
    return !select(global3[_wgslsmith_index_u32(~(~arg_3), 15u)], !select(vec4<bool>(false, false, var_2.x, true), vec4<bool>(true, true, var_1.d, global1.d), arg_1 || global1.d), false);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> f32 {
    let var_0 = func_2(vec2<bool>(arg_0.x, arg_0.x), any(!vec3<bool>(global1.c, !arg_0.x, arg_0.x)), vec2<i32>(-2147483647i, ~1i), reverseBits(1u)).zw;
    let var_1 = max(~(vec4<i32>(global1.b.x & 66286i, -7333i, global1.b.x, _wgslsmith_mod_i32(u_input.a, -5954i)) ^ ~(vec4<i32>(1i, global2.b.x, u_input.a, 3932i) << (vec4<u32>(0u, 2747u, 4294967295u, 126815u) % vec4<u32>(32u)))), reverseBits((_wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.x, -11301i, 2147483647i, global1.b.x), vec4<i32>(1i, global2.b.x, global1.b.x, 0i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ -vec4<i32>(-53816i, 0i, 0i, global2.b.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.a))), var_1.ywx, global0[_wgslsmith_index_u32(~1u, 18u)], false);
    let var_3 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-7486i, -37339i, var_1.x), ~_wgslsmith_clamp_i32(2147483647i, global2.b.x, -var_1.x)), _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(-33932i >> (0u % 32u), -var_1.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, 11451i), vec2<i32>(-1i, -2147483647i))), var_1.x, 25546i);
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_2.a.x * arg_1), _wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(451f + 488f), _wgslsmith_f_op_f32(round(1731f))))))), max(select(_wgslsmith_mult_vec3_i32(~var_1.zwy, vec3<i32>(16911i, var_2.b.x, 1656i)), var_1.xxz, vec3<bool>(true, !global1.c, false)), ~(~var_1.zyz)), all(vec4<bool>(true, false, !(!global1.d), all(vec2<bool>(global2.c, arg_0.x)) & global1.c)), true);
    return _wgslsmith_f_op_f32(trunc(-1282f));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a.x - 587f), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(sign(var_0.a.x)))) - vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(func_5(!func_2(vec2<bool>(true, true), false, vec2<i32>(global1.b.x, global1.b.x), 1u), global2.a.x))));
    var var_1 = true && !(!arg_0.d);
    var var_2 = 19534u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(ceil(-1192f))), _wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.a))), select(select(vec2<bool>(global2.c, false), vec2<bool>(true, false), vec2<bool>(global2.d, arg_0.c)), vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global2.c)))))), _wgslsmith_mod_vec3_i32(global2.b, vec3<i32>(global2.b.x, 0i, -1i | u_input.a) & vec3<i32>(abs(u_input.a), _wgslsmith_mult_i32(-1i, u_input.a), global2.b.x)), any(!select(vec2<bool>(true, var_0.d), func_2(vec2<bool>(true, true), true, var_0.b.yx, 4294967295u).xw, !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(f32(-1f) * -408f)))) > _wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-arg_0.a.x)));
    return vec2<u32>(select(select(~54570u, _wgslsmith_dot_vec2_u32(vec2<u32>(88643u, 47157u), vec2<u32>(0u, 4294967295u)), false), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 68526u, 0u), abs(37680u)), any(vec2<bool>(true, true))), min(1u, 1u)) >> (min(vec2<u32>(4973u, 59998u), min(~abs(vec2<u32>(21703u, 1u)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(34286u, 0u)), vec2<u32>(1u, 1u)))) % vec2<u32>(32u));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = 107059u;
    global3 = array<vec4<bool>, 15>();
    var var_1 = vec2<f32>(443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(851f)) * 1041f));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-898f, -645f, 1346f, -1466f))))))));
    global1 = arg_0;
    return func_2(func_2(!(!vec2<bool>(true, arg_0.c)), global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_0.b.xx, 4294967295u).wx, any(!(!(!vec3<bool>(global1.c, false, arg_0.d)))), -(-_wgslsmith_add_vec2_i32(arg_0.b.yx, vec2<i32>(42562i, 33034i)) ^ global2.b.zx), reverseBits((~12562u >> (countOneBits(0u) % 32u)) >> ((abs(arg_3.x) & arg_1) % 32u))).yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) - vec2<f32>(global2.a.x, 730f)), _wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(global1.a - vec2<f32>(517f, global4.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(835f * global2.a.x)))), -countOneBits(_wgslsmith_add_vec3_i32(global2.b, global1.b) << (firstTrailingBit(vec3<u32>(39130u, 31556u, 0u)) % vec3<u32>(32u))), all(select(!vec3<bool>(true, global1.c, true), vec3<bool>(true, global2.d, any(global3[_wgslsmith_index_u32(53096u, 15u)])), vec3<bool>(!global0[_wgslsmith_index_u32(24435u, 18u)], true, global1.d))), global1.d);
    var var_1 = vec3<bool>(false, true, false);
    var var_2 = max(abs(abs(abs(vec4<u32>(34025u, 1893u, 15384u, 0u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<u32>(~(~0u), 8345u, ~1u, select(7151u, _wgslsmith_sub_u32(4294967295u, 1u), true)) >> (select(vec4<u32>(~0u, _wgslsmith_mult_u32(12937u, 42333u), _wgslsmith_mod_u32(47152u, 1u), ~30124u), ~vec4<u32>(4294967295u, 6887u, 1u, 38111u), true) % vec4<u32>(32u)));
    let var_3 = select(func_6(var_0, ~_wgslsmith_mod_u32(4294967295u, var_2.x), vec2<i32>(_wgslsmith_add_i32(1i, global1.b.x), -1i), func_1(var_0)), func_6(var_0, ~(~(113935u & var_2.x)), _wgslsmith_sub_vec2_i32(global2.b.zx, global2.b.xz), var_2.yz), func_6(Struct_1(_wgslsmith_f_op_vec2_f32(global2.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global4.x) * vec2<f32>(var_0.a.x, var_0.a.x))), (vec3<i32>(31351i, -1i, -51338i) << (var_2.yzz % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -46707i, global1.b.x), vec3<i32>(var_0.b.x, global2.b.x, global2.b.x)), any(global3[_wgslsmith_index_u32(1u, 15u)]), var_0.c || (-817f <= global2.a.x)), 31560u, global2.b.xz, var_2.ww).x);
    var_1 = !vec3<bool>(var_0.c, false, any(var_1.xx));
    var var_4 = countOneBits(~(-select(var_0.b & vec3<i32>(2147483647i, -16326i, -45230i), global2.b, !var_0.c)));
    var var_5 = vec4<i32>(51590i, var_4.x, var_4.x, ~0i);
    let var_6 = _wgslsmith_add_vec3_u32(vec3<u32>(~7691u, func_1(var_0).x, 1u), ~var_2.wxy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(var_5.yx, vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(694i, 26581i)), func_3(_wgslsmith_clamp_i32(2147483647i, var_4.x, global1.b.x), -vec3<i32>(u_input.a, 1i, 3462i)).x)), _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(max(783f, global1.a.x)), var_0.a.x, global4.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 647f, global2.a.x, global4.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global1.a.x, -599f, -1027f)))))), var_0.a, vec2<f32>(441f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1941f, global1.a.x, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1160f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1674f, global1.a.x) + var_0.a.x))));
}

