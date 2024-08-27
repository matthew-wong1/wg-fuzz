struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, true, false, false, false, true, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, true, false, false, true, true, true);

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 21>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 31464u) | vec3<u32>(u_input.b, 75360u, 0u), vec3<u32>(u_input.b, 1u, u_input.b)) >> (abs(abs(vec3<u32>(u_input.a, u_input.b, 19899u))) % vec3<u32>(32u))) & abs(vec3<u32>(firstLeadingBit(u_input.b), abs(u_input.b), 1u)), vec3<u32>(0u, firstLeadingBit(min(u_input.b, 1u)), u_input.b) ^ vec3<u32>(firstTrailingBit(~4294967295u), u_input.a, 16705u));
    var_0 = select(vec3<u32>(90742u, 11421u, countOneBits(_wgslsmith_add_u32(var_0.x, ~4128u))), vec3<u32>(60288u, 4294967295u, 10939u), arg_0);
    global2 = array<vec4<i32>, 21>();
    global4 = Struct_1(!any(arg_0), countOneBits(max(_wgslsmith_add_i32(999i, _wgslsmith_sub_i32(0i, global4.b)), min(59768i, 0i))));
    var var_1 = Struct_1(false, -arg_1.b);
    return _wgslsmith_dot_vec3_i32(max(reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, global1.b), vec2<i32>(26021i, global4.b)), firstLeadingBit(global4.b), global1.b)), vec3<i32>(global4.b, arg_1.b, 21977i)), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mult_i32(1i, global4.b) ^ _wgslsmith_clamp_i32(1i, var_1.b, var_1.b), global4.b), _wgslsmith_clamp_i32(57694i, global4.b, firstLeadingBit(-46946i))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_1(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.a, global1.a, global4.a, arg_2.a), vec4<bool>(true, false, arg_1.a, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, arg_0.a, true, true))), 2147483647i);
    let var_1 = 4294967295u;
    var var_2 = select(vec4<i32>(-arg_2.b, -1i, 1i, _wgslsmith_mod_i32(min(func_3(vec3<bool>(global4.a, global1.a, arg_0.a), global3[_wgslsmith_index_u32(75714u, 23u)]), abs(24203i)), firstTrailingBit(-40749i) >> (_wgslsmith_dot_vec2_u32(arg_3, arg_3) % 32u))), countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(min(0u, 33591u), 21u)], _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b, -19871i, -58337i, u_input.c), vec4<i32>(26160i, 0i, 26834i, global4.b))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, 46014u), 21u)])), select(select(vec4<bool>(false, arg_1.a, any(vec4<bool>(false, true, false, true)), global4.a), !select(vec4<bool>(global1.a, var_0.a, true, true), vec4<bool>(var_0.a, true, global4.a, global4.a), true), vec4<bool>(any(vec3<bool>(false, global4.a, global0[_wgslsmith_index_u32(arg_3.x, 30u)])), false, select(arg_0.a, false, false), var_0.a)), select(vec4<bool>(false, true, arg_2.a, all(vec4<bool>(global4.a, false, false, global0[_wgslsmith_index_u32(71114u, 30u)]))), vec4<bool>(arg_0.a, all(vec3<bool>(false, true, arg_0.a)), all(vec2<bool>(false, arg_2.a)), !arg_2.a), select(vec4<bool>(arg_1.a, global1.a, global0[_wgslsmith_index_u32(u_input.a, 30u)], var_0.a), select(vec4<bool>(global1.a, var_0.a, global4.a, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 30u)], true, global1.a), arg_2.a), vec4<bool>(true, true, true, false))), vec4<bool>(true, global4.a, any(select(vec4<bool>(false, true, arg_1.a, true), vec4<bool>(false, arg_1.a, false, global0[_wgslsmith_index_u32(arg_3.x, 30u)]), vec4<bool>(var_0.a, var_0.a, global4.a, arg_1.a))), true)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1028f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(298f, 825f) - vec2<f32>(-558f, 107f)), select(vec2<bool>(false, var_0.a), vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global1.a), vec2<bool>(false, global4.a))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-814f + -1129f))), _wgslsmith_f_op_f32(round(1f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1351f, 1421f))), vec2<f32>(-1955f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2175f, 565f) + vec2<f32>(-178f, 1000f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2698f, -1369f)))), true))));
    var var_4 = vec4<i32>(-_wgslsmith_div_i32(var_2.x, func_3(!vec3<bool>(true, false, arg_2.a), global3[_wgslsmith_index_u32(0u, 23u)])), -2147483647i >> (firstTrailingBit(arg_3.x) % 32u), func_3(vec3<bool>(all(vec4<bool>(arg_1.a, false, global4.a, arg_2.a)), any(vec3<bool>(arg_2.a, global1.a, arg_1.a)) || arg_2.a, false), var_0), ~_wgslsmith_clamp_i32(-1i, 0i, _wgslsmith_sub_i32(min(global1.b, -20100i), -var_2.x)));
    return global0[_wgslsmith_index_u32(~(1725u & ~_wgslsmith_add_u32(var_1, 0u)), 30u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global4 = global3[_wgslsmith_index_u32(u_input.b, 23u)];
    var var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(~(~(~(~u_input.a)))), 23u)];
    global0 = array<bool, 30>();
    var var_1 = global3[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_2 = Struct_1(!var_1.a, -(~(-69162i)));
    return Struct_1(!arg_1.x, 0i);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(true, arg_1.b);
    let var_1 = func_4(vec4<bool>(!(!(global1.b >= arg_1.b)), !all(vec2<bool>(global1.a, global1.a)), true, arg_1.a), vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + _wgslsmith_div_f32(arg_0, -285f)) < arg_0, true, all(vec2<bool>(true, false))), arg_2, select(_wgslsmith_mult_vec3_i32((vec3<i32>(global4.b, global1.b, global1.b) ^ vec3<i32>(arg_2.b, 2147483647i, 18509i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(u_input.a, 71529u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(global4.b, -30733i, 1i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, -1i, arg_1.b), vec3<i32>(-2147483647i, 0i, -48592i))), vec3<i32>(abs(arg_1.b) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_1.b, var_0.b), vec3<i32>(arg_2.b, var_0.b, 0i)), _wgslsmith_div_i32(arg_2.b, arg_1.b), _wgslsmith_mod_i32(arg_2.b, ~13058i)), select(select(select(vec3<bool>(var_0.a, true, true), vec3<bool>(arg_2.a, true, false), vec3<bool>(arg_1.a, true, var_0.a)), select(vec3<bool>(var_0.a, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, arg_1.a)), func_2(global3[_wgslsmith_index_u32(22984u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], arg_1, vec2<u32>(u_input.a, u_input.a))), !vec3<bool>(false, true, arg_2.a), arg_1.a)));
    var var_2 = false;
    let var_3 = func_4(!vec4<bool>(true, false, any(!vec4<bool>(true, global4.a, true, false)), true), !(!vec4<bool>(true, true, any(vec3<bool>(arg_1.a, true, false)), global1.a | arg_1.a)), Struct_1(var_0.a, u_input.d), -(vec3<i32>(1i, arg_2.b, global1.b) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))) << (~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 26616u, 1u), vec3<u32>(0u, u_input.a, 53490u)) << (abs(vec3<u32>(10275u, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_4 = arg_1.a;
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(~select(u_input.a, u_input.b, true), _wgslsmith_mod_u32(166868u, 29614u)) ^ 1u, 23482u, u_input.b);
    global2 = array<vec4<i32>, 21>();
    let var_1 = _wgslsmith_mod_u32(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(2551u, 5470u, u_input.a, u_input.b), vec4<u32>(1u, 0u, 3398u, 0u)) >> (~var_0.x % 32u))), ~(~_wgslsmith_mod_u32(var_0.x, 4294967295u)));
    let var_2 = func_4(vec4<bool>(!(var_1 > 1u), !(!all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 30u)], true))), true, func_2(Struct_1(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_3.b, global1.b), global2[_wgslsmith_index_u32(var_1, 21u)])), func_4(select(vec4<bool>(global1.a, global1.a, arg_3.a, true), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1, 30u)], arg_3.a, global1.a), vec4<bool>(global4.a, true, false, true)), vec4<bool>(global4.a, false, true, arg_3.a), Struct_1(false, u_input.c), select(vec3<i32>(global1.b, arg_3.b, -1i), vec3<i32>(17640i, global4.b, arg_3.b), vec3<bool>(global0[_wgslsmith_index_u32(var_1, 30u)], false, global4.a))), Struct_1(all(vec2<bool>(arg_3.a, false)), u_input.d), firstTrailingBit(_wgslsmith_mod_vec2_u32(var_0.yx, var_0.xy)))), !vec4<bool>(all(vec4<bool>(false, true, true, false)) | (arg_3.a | false), _wgslsmith_mod_u32(var_0.x, 33386u) > var_0.x, any(vec2<bool>(global4.a, true)) != all(vec3<bool>(arg_3.a, global4.a, false)), func_4(!vec4<bool>(false, false, global4.a, global1.a), select(vec4<bool>(false, global0[_wgslsmith_index_u32(33381u, 30u)], true, arg_3.a), vec4<bool>(true, false, false, global4.a), vec4<bool>(global4.a, true, true, true)), Struct_1(arg_3.a, 0i), abs(vec3<i32>(global4.b, arg_3.b, arg_2.x))).a), Struct_1(true, ~2147483647i), -select(vec3<i32>(global1.b, 2147483647i, u_input.c), -vec3<i32>(arg_3.b, global1.b, arg_2.x) & vec3<i32>(arg_2.x, u_input.c, 42358i), !all(vec2<bool>(global1.a, true))));
    var var_3 = global3[_wgslsmith_index_u32(var_0.x, 23u)];
    return ~reverseBits(~(-(vec3<i32>(1i, 2147483647i, 47162i) & vec3<i32>(-1i, arg_2.x, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 21>();
    var var_0 = func_5(-2256f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1581f, Struct_1(global1.a, global4.b), Struct_1(false, global1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) + -120f), _wgslsmith_f_op_f32(f32(-1f) * -1644f))), vec2<i32>(~(u_input.c ^ 35964i), abs(-2147483647i) >> (u_input.a % 32u)) | -abs(countOneBits(vec2<i32>(u_input.d, global4.b))), Struct_1(global4.a, -max(-2147483647i, select(global1.b, 2626i, global0[_wgslsmith_index_u32(u_input.b, 30u)]))));
    let var_1 = func_4(select(select(vec4<bool>(!global4.a, any(vec4<bool>(global4.a, global1.a, global4.a, global0[_wgslsmith_index_u32(0u, 30u)])), u_input.d <= -53749i, true), !select(vec4<bool>(global1.a, true, global1.a, true), vec4<bool>(global1.a, true, global0[_wgslsmith_index_u32(16585u, 30u)], global0[_wgslsmith_index_u32(11767u, 30u)]), false), !select(vec4<bool>(true, global4.a, false, global4.a), vec4<bool>(global1.a, global4.a, true, true), vec4<bool>(true, global4.a, global0[_wgslsmith_index_u32(u_input.a, 30u)], false))), !select(!vec4<bool>(false, global1.a, global1.a, true), vec4<bool>(false, true, true, global4.a), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(71465u, 30u)])), global1.a), !select(!select(vec4<bool>(false, global1.a, true, global1.a), vec4<bool>(true, global1.a, false, false), false), vec4<bool>(true, global4.a, false, true), true), Struct_1(!func_4(!vec4<bool>(global4.a, global0[_wgslsmith_index_u32(4294967295u, 30u)], true, global4.a), vec4<bool>(global1.a, global1.a, true, true), global3[_wgslsmith_index_u32(~u_input.a, 23u)], _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global4.b, global1.b), vec3<i32>(u_input.c, global4.b, -15564i))).a, i32(-1i) * -abs(u_input.d)), _wgslsmith_mult_vec3_i32(max(vec3<i32>(global4.b, -11946i, u_input.d) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(global1.b, 2147483647i, 0i), vec3<i32>(global4.b, -63557i, var_0.x) >> (vec3<u32>(47044u, u_input.a, u_input.b) % vec3<u32>(32u)))), vec3<i32>(-3892i, 1i, -2147483647i) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, 33461u), vec3<u32>(u_input.b, 27512u, 1u)), vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.b)) % vec3<u32>(32u))));
    global1 = func_4(select(!vec4<bool>(true, true, var_1.a & global4.a, true), select(!select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, false, false), global0[_wgslsmith_index_u32(10063u, 30u)]), !select(vec4<bool>(global4.a, true, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], true), global1.a), !(!var_1.a)), select(!select(vec4<bool>(false, var_1.a, global0[_wgslsmith_index_u32(u_input.a, 30u)], global1.a), vec4<bool>(true, false, global4.a, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, global1.a, !var_1.a, global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 30u)]), var_1.a || func_2(var_1, Struct_1(false, 36843i), var_1, vec2<u32>(0u, u_input.b)))), select(vec4<bool>(global4.a & true, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, true, !all(vec2<bool>(true, false))), select(select(vec4<bool>(false, var_1.a, true, global1.a), select(vec4<bool>(true, global1.a, global0[_wgslsmith_index_u32(u_input.b, 30u)], true), vec4<bool>(false, global1.a, false, global0[_wgslsmith_index_u32(40258u, 30u)]), global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(0u, 30u)]), !vec4<bool>(var_1.a, false, true, global1.a), true)), func_4(select(select(select(vec4<bool>(true, false, global4.a, global1.a), vec4<bool>(global0[_wgslsmith_index_u32(5959u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(57086u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global4.a, false)), !vec4<bool>(true, false, global4.a, true), false), vec4<bool>(global1.a, global0[_wgslsmith_index_u32(0u, 30u)], all(vec2<bool>(true, false)), all(vec4<bool>(false, var_1.a, false, false))), !var_1.a), vec4<bool>(false, !func_2(Struct_1(global1.a, var_0.x), global3[_wgslsmith_index_u32(63709u, 23u)], Struct_1(false, var_1.b), vec2<u32>(1u, 0u)), true, func_4(vec4<bool>(global0[_wgslsmith_index_u32(7906u, 30u)], false, global4.a, global4.a), select(vec4<bool>(false, global4.a, global4.a, var_1.a), vec4<bool>(global1.a, var_1.a, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 30u)], false, global1.a)), global3[_wgslsmith_index_u32(1u, 23u)], vec3<i32>(-2147483647i, 21147i, global1.b)).a), Struct_1(false, u_input.d), vec3<i32>(global1.b | -71046i, var_0.x, u_input.c)), vec3<i32>(firstTrailingBit(abs(1i)) ^ -11291i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b, var_0.x, global4.b), vec3<i32>(53202i, -40677i, 26062i), vec3<i32>(1i, global1.b, -1i)), firstLeadingBit(vec3<i32>(global1.b, 1i, global1.b))) | 22548i, -u_input.c));
    global3 = array<Struct_1, 23>();
    let var_2 = select(vec3<bool>(true, var_1.a, global4.a), !vec3<bool>(global4.a, true, true), vec3<bool>(all(vec3<bool>(global1.a && var_1.a, false, false)), true | func_2(func_4(vec4<bool>(false, global4.a, global4.a, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, true, global1.a), Struct_1(global4.a, global4.b), vec3<i32>(global1.b, global1.b, 23619i)), var_1, var_1, ~vec2<u32>(u_input.a, 9689u)), func_2(func_4(vec4<bool>(var_1.a, true, true, false), select(vec4<bool>(global4.a, true, false, global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<bool>(global1.a, false, false, global1.a), false), Struct_1(global4.a, global1.b), ~vec3<i32>(global1.b, 51856i, global1.b)), Struct_1(true, -2147483647i), Struct_1(true, _wgslsmith_sub_i32(0i, global4.b)), ~vec2<u32>(80260u, u_input.b))));
    global3 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yx);
}

