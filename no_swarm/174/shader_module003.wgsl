struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, 1i, 0i, 1037i, i32(-2147483648));

var<private> global1: u32;

var<private> global2: array<bool, 22>;

var<private> global3: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<i32, 8>();
    var var_0 = max(firstTrailingBit(select(countOneBits(vec2<u32>(0u, 4080u)), vec2<u32>(1u, 1u), vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(61862u, 22u)])) ^ max(vec2<u32>(1u, 1u), vec2<u32>(50613u, 45275u))), vec2<u32>(~58130u, 52511u));
    var var_1 = -1602f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c + 1000f)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e)) * _wgslsmith_div_f32(809f, _wgslsmith_f_op_f32(-arg_0.c))));
    return arg_0;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global2 = array<bool, 22>();
    let var_0 = arg_1;
    global1 = _wgslsmith_add_u32(~99829u, 7492u);
    global3 = vec4<f32>(arg_1.c, global3.x, arg_2.e, 179f);
    let var_1 = firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u));
    return Struct_1(!(!arg_1.a), vec2<i32>(~arg_2.d >> (~var_1.x % 32u), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e)), -13568i, _wgslsmith_f_op_f32(-var_0.e));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    global1 = 6442u;
    var var_0 = func_2(!select(!(!vec3<bool>(false, arg_2.a, false)), vec3<bool>(func_2(vec3<bool>(true, true, arg_1.a), Struct_1(arg_1.a, u_input.c.xy, arg_1.e, -1i, -875f), arg_1, vec3<bool>(arg_1.a, false, true)).a, any(vec4<bool>(false, true, true, true)), false), vec3<bool>(arg_0.x != -21087i, arg_2.a, true)), Struct_1(true, select(arg_2.b, vec2<i32>(u_input.b, -1i) & vec2<i32>(global0[_wgslsmith_index_u32(arg_3, 8u)], u_input.b), select(vec2<bool>(arg_1.a, true), vec2<bool>(false, true), true)) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_3), vec2<u32>(0u, 0u), vec2<u32>(arg_3, 1u)) % vec2<u32>(32u)), arg_1.e, func_1(arg_1).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.e))) - -1868f)), Struct_1(any(select(vec3<bool>(true, false, true), select(vec3<bool>(arg_1.a, true, true), vec3<bool>(arg_1.a, global2[_wgslsmith_index_u32(arg_3, 22u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_3, 22u)], true)), !vec3<bool>(false, false, arg_1.a))), -vec2<i32>(-1i, _wgslsmith_add_i32(2147483647i, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-361f))), global0[_wgslsmith_index_u32(arg_3, 8u)], func_2(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_3, 22u)]), Struct_1(55144u == arg_3, vec2<i32>(arg_0.x, 6366i) | u_input.c.yy, _wgslsmith_f_op_f32(f32(-1f) * -1283f), -3800i, _wgslsmith_f_op_f32(step(-455f, 748f))), arg_2, vec3<bool>(arg_1.a, arg_3 < arg_3, true)).c), select(select(vec3<bool>(!arg_1.a, global2[_wgslsmith_index_u32(max(42633u, arg_3), 22u)], global2[_wgslsmith_index_u32(arg_3, 22u)] || global2[_wgslsmith_index_u32(102799u, 22u)]), !(!vec3<bool>(arg_2.a, global2[_wgslsmith_index_u32(arg_3, 22u)], global2[_wgslsmith_index_u32(arg_3, 22u)])), !(!vec3<bool>(true, false, arg_2.a))), select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 22u)], arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, global2[_wgslsmith_index_u32(14679u, 22u)]), vec3<bool>(arg_2.a, false, arg_2.a), vec3<bool>(arg_2.a, false, arg_1.a)), !vec3<bool>(false, false, arg_1.a)), !vec3<bool>(arg_1.a, false, global2[_wgslsmith_index_u32(arg_3, 22u)]), true), any(!select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, false), false))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, -249f, arg_2.c, global3.x)) - vec4<f32>(-739f, var_0.c, -716f, var_0.c)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(193f, arg_2.e, 117f, -151f) + vec4<f32>(var_0.e, 582f, global3.x, 126f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, 696f, -302f, 1052f))))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(227f, -1000f, var_0.e, _wgslsmith_f_op_f32(-var_0.e)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(794f, global3.x, _wgslsmith_f_op_f32(-arg_1.e), -361f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1925f, 341f, -1243f, arg_1.c), vec4<f32>(116f, -197f, global3.x, global3.x))), arg_2.a))));
    global0 = array<i32, 8>();
    return 1220f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> StorageBuffer {
    let var_0 = any(select(!select(!vec3<bool>(true, arg_0.a, false), vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 22u)]), select(vec3<bool>(true, arg_0.a, true), vec3<bool>(true, global2[_wgslsmith_index_u32(65989u, 22u)], false), vec3<bool>(arg_1.x, false, arg_0.a))), vec3<bool>(arg_1.x, true, arg_0.a), true));
    return StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, firstLeadingBit(2147u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 1u), firstTrailingBit(vec3<u32>(26548u, 57387u, 100149u))) | min(vec3<u32>(1u, 0u, 24895u), vec3<u32>(60419u, 42240u, 0u))), global0[_wgslsmith_index_u32(0u, 8u)], abs(select(~vec3<u32>(0u, 1u, 5976u), ~vec3<u32>(20086u, 3939u, 77312u), 275f <= arg_0.c)) | countOneBits(firstLeadingBit(vec3<u32>(1u, 1u, 1u))), _wgslsmith_clamp_i32(firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, global0[_wgslsmith_index_u32(1u, 8u)], 1i), u_input.c)), -21523i, -7937i), _wgslsmith_clamp_vec4_u32(vec4<u32>(43026u, 1u, 4294967295u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(85512u, 1u), abs(23589u), ~19448u, abs(24880u)), ~vec4<u32>(1u, 1u, 1u, 1u), abs(abs(vec4<u32>(117526u, 1u, 31500u, 7179u)))), ~(~vec4<u32>(4294967295u, 45308u, 57133u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~firstTrailingBit(17559u), 1417u), 22u)], vec2<i32>(1i, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_f32(trunc(-494f))), reverseBits(firstTrailingBit(-12460i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global3.x)))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1591f, 232f)), _wgslsmith_f_op_f32(-global3.x))))), -520f);
    let x = u_input.a;
    s_output = func_4(func_1(func_1(var_0)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(func_1(Struct_1(var_0.a, u_input.c.zz, 1000f, var_0.b.x, var_1.x))).c - _wgslsmith_f_op_f32(func_3(~vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, var_0.d), func_2(vec3<bool>(true, true, global2[_wgslsmith_index_u32(79039u, 22u)]), var_0, var_0, vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], var_0.a, var_0.a)), var_0, select(1u, 1u, true))))));
}

