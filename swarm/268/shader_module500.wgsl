struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 29> = array<u32, 29>(4294967295u, 18540u, 40723u, 1u, 36919u, 1u, 4294967295u, 75913u, 0u, 30033u, 6750u, 4294967295u, 37587u, 86855u, 0u, 4294967295u, 22980u, 0u, 28507u, 15799u, 0u, 56397u, 0u, 4294967295u, 23565u, 1u, 9174u, 4294967295u, 16520u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global1 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.x, -726f, arg_0.a.x))), arg_0.b, true, global1.d ^ ~_wgslsmith_sub_u32(~arg_0.d, _wgslsmith_clamp_u32(27052u, 41778u, 4294967295u)));
    let var_0 = all(!vec4<bool>(true, all(vec2<bool>(global1.b.x, true)), global1.c, true));
    global0 = array<Struct_1, 22>();
    var var_1 = arg_0;
    return select(!(!(!arg_0.b.wz)), !select(!vec2<bool>(global1.c, var_1.b.x), arg_0.b.yy, any(select(vec3<bool>(false, var_1.b.x, global1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, false), vec3<bool>(false, var_0, true)))), select(vec2<bool>(arg_1.c, arg_0.b.x), !vec2<bool>(true, arg_0.a.x <= 137f), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(global1.a, global1.a)), vec4<bool>(true, arg_0.x, global1.c, !arg_0.x | select(global1.b.x, global2[_wgslsmith_index_u32(4294967295u, 29u)] <= global2[_wgslsmith_index_u32(global1.d, 29u)], global1.c)), all(select(global1.b.yxy, global1.b.xww, any(func_3(global0[_wgslsmith_index_u32(33375u, 22u)], global0[_wgslsmith_index_u32(global1.d, 22u)])))), global2[_wgslsmith_index_u32(global1.d, 29u)]);
    global0 = array<Struct_1, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) * vec3<f32>(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x), -1068f)))), vec4<bool>(!(!(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)] >= global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1126f, global1.a.x)) * _wgslsmith_f_op_f32(-global1.a.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(round(global1.a.x)) >= global1.a.x, !arg_0.x), global1.c, global1.d);
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -216f), 514f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1294f, -237f)), _wgslsmith_f_op_f32(sign(var_0.a.x))), 634f), vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1099f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(trunc(-169f))))), select(vec4<bool>(true, !var_0.c, any(vec2<bool>(var_0.b.x, global1.c)) | true, false), vec4<bool>(global1.c, !(!var_0.c), (arg_1.x > u_input.a) || (arg_1.x >= u_input.a), var_0.b.x), var_0.b), !all(global1.b.zz), ~global1.d);
    let var_2 = arg_1.x;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1426f - 1136f), -2004f))), vec4<bool>(any(!vec4<bool>(true, arg_0.x, arg_0.x, var_0.b.x)), var_1.b.x, all(var_0.b), true), var_0.b.x, ~select(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.d, 29u)], 29u)]), firstTrailingBit(var_1.d), var_0.c && var_1.b.x) ^ select(~(17676u << (var_1.d % 32u)), _wgslsmith_clamp_u32(~61484u, 0u, 36613u), false));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    let var_0 = ~(-_wgslsmith_mult_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(11235i, arg_2, arg_0, -2147483647i), vec4<i32>(1i, arg_2, 0i, -1i), vec4<i32>(arg_0, u_input.a, arg_0, 63197i)), firstTrailingBit(vec4<i32>(9928i, arg_2, arg_0, 2147483647i))), firstLeadingBit(vec4<i32>(19727i, 32017i, -1i, -5330i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(global1.a.x, 179f, -1199f)) * arg_1.a))))), global1.b, global1.c, global1.d);
    global0 = array<Struct_1, 22>();
    let var_2 = arg_1.b.zz;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1372f, var_1.a.x, -202f, var_1.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1593f, 367f, 1511f, global1.a.x), vec4<f32>(arg_1.a.x, 2010f, arg_1.a.x, -1000f))))))));
    return !(!var_1.b);
}

fn func_5(arg_0: vec4<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(reverseBits(countOneBits(firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(44810u, 29u)]))))), ~vec2<u32>(_wgslsmith_mult_u32(global1.d, 5113u), ~33413u)), 22u)];
    var var_1 = -(~(~(-vec3<i32>(u_input.a, u_input.a, u_input.a)) & (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, 1i)) << (vec3<u32>(global2[_wgslsmith_index_u32(global1.d, 29u)], var_0.d, 35794u) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, global2[_wgslsmith_index_u32(var_0.d, 29u)]), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d, var_0.d), vec2<u32>(0u, global1.d), vec2<u32>(global1.d, var_0.d)), vec2<u32>(global2[_wgslsmith_index_u32(var_0.d, 29u)], var_0.d))), max(vec2<u32>(min(~1u, var_0.d), _wgslsmith_div_u32(0u, 79830u)), vec2<u32>(_wgslsmith_div_u32(29390u, var_0.d), reverseBits(1u))));
    let var_3 = func_2(global1.b.zw, abs(firstTrailingBit(reverseBits(min(vec3<i32>(39155i, u_input.a, 1i), vec3<i32>(var_1.x, 1i, 20422i))))));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global1.d), ~func_5(func_4(-2147483647i ^ u_input.a, func_2(arg_0.b.ww, vec3<i32>(0i, -2147483647i, u_input.a)), 27065i))), 22u)];
    let var_1 = 0u;
    var var_2 = vec3<f32>(arg_0.a.x, 336f, arg_1.a.x);
    let var_3 = select(vec2<i32>(_wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(40489i, u_input.a, 0i)), ~vec3<i32>(u_input.a, u_input.a, -2147483647i), select(vec3<bool>(var_0.b.x, true, true), vec3<bool>(false, true, arg_2.b.x), false)), vec3<i32>(~6857i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 26165i)), _wgslsmith_sub_i32(u_input.a, u_input.a))), u_input.a), ~vec2<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(58013i, u_input.a)), _wgslsmith_div_i32(-2147483647i, 0i & u_input.a)), var_0.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.a)))) - vec3<f32>(640f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1.a.x)))))), -281f));
    return arg_2;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-509f, global1.a.x) + _wgslsmith_f_op_f32(arg_1.a.x - -540f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), 1098f, global1.a.x)));
    global1 = Struct_1(global1.a, !func_1(global0[_wgslsmith_index_u32((arg_1.d | 37328u) | 53947u, 22u)], func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.d, 68290u, 19375u), 22u)], func_1(Struct_1(vec3<f32>(-123f, arg_1.a.x, -367f), vec4<bool>(global1.b.x, global1.b.x, true, true), arg_1.c, global2[_wgslsmith_index_u32(31747u, 29u)]), global0[_wgslsmith_index_u32(69768u, 22u)], arg_1), func_1(Struct_1(vec3<f32>(var_0.x, global1.a.x, -135f), arg_1.b, false, 34963u), Struct_1(var_0, arg_1.b, true, 1u), Struct_1(var_0, arg_1.b, false, 1u))), Struct_1(vec3<f32>(var_0.x, arg_1.a.x, arg_1.a.x), arg_1.b, any(arg_1.b), _wgslsmith_add_u32(arg_1.d, 1u))).b, false, func_2(vec2<bool>(func_1(Struct_1(global1.a, global1.b, false, arg_1.d), arg_1, func_2(vec2<bool>(arg_1.c, false), vec3<i32>(u_input.a, 2424i, arg_0))).b.x, !(u_input.a == arg_0)), vec3<i32>(-1i, 6651i, arg_0)).d);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2363f, _wgslsmith_f_op_f32(var_0.x - arg_1.a.x), _wgslsmith_f_op_f32(var_0.x + arg_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x + 751f), -854f, _wgslsmith_f_op_f32(-arg_1.a.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, global1.a.x)) + _wgslsmith_f_op_vec3_f32(-global1.a))), global1.b, all(vec4<bool>(true, 53819u > _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.d, 29u)], 10513u, 28806u, 33333u), vec4<u32>(13774u, global1.d, 1u, 12097u)), true, !func_2(arg_1.b.ww, vec3<i32>(0i, arg_0, arg_0)).b.x)), arg_1.d);
    var var_1 = select(vec3<bool>(func_4(u_input.a, Struct_1(vec3<f32>(-1103f, -374f, arg_1.a.x), vec4<bool>(global1.b.x, arg_1.b.x, false, arg_1.b.x), true, global1.d), u_input.a).x | false, false, arg_1.b.x), func_2(!func_3(func_2(arg_1.b.xy, vec3<i32>(-24093i, arg_0, arg_0)), func_2(arg_1.b.yz, vec3<i32>(u_input.a, 2669i, arg_0))), _wgslsmith_mult_vec3_i32(-firstTrailingBit(vec3<i32>(arg_0, -24754i, 1i)), max(-vec3<i32>(2147483647i, u_input.a, 72504i), ~vec3<i32>(0i, 0i, 2147483647i)))).b.www, true);
    var var_2 = select(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -(~arg_0)), ~max(vec2<i32>(2654i, u_input.a), vec2<i32>(u_input.a, arg_0)) >> (vec2<u32>(0u | arg_1.d, countOneBits(0u)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(abs(-(vec2<i32>(arg_0, arg_0) & vec2<i32>(u_input.a, -2147483647i))), -vec2<i32>(0i, -50284i)), vec2<bool>(all(!arg_1.b.yyy), !(true | var_1.x)));
    return 204f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(0u, 22u)];
    global0 = array<Struct_1, 22>();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a))), vec3<f32>(var_0.a.x, -1000f, _wgslsmith_f_op_f32(func_6(i32(-1i) * -5903i, func_1(global0[_wgslsmith_index_u32(5785u, 22u)], Struct_1(global1.a, var_0.b, false, 33645u), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2745u, 29u)], 29u)], 22u)])))), vec3<bool>(global1.b.x, all(func_1(global0[_wgslsmith_index_u32(var_0.d, 22u)], Struct_1(vec3<f32>(var_0.a.x, -581f, -436f), var_0.b, global1.c, 27512u), Struct_1(vec3<f32>(1527f, 1457f, -1629f), vec4<bool>(false, true, true, global1.c), true, var_0.d)).b), !(!var_0.b.x)))), global1.b, false & ((reverseBits(2147483647i) | u_input.a) <= 1i), global1.d);
    let var_1 = func_2(!global1.b.zy, -_wgslsmith_div_vec3_i32(vec3<i32>(26857i, -2147483647i, u_input.a), ~vec3<i32>(u_input.a, -1i, 1i))).a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1399f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)), global1.a.x));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)))), _wgslsmith_f_op_f32(1182f + _wgslsmith_f_op_f32(f32(-1f) * -706f))), select(vec4<bool>(!var_1, false, var_1, !var_0.b.x), !select(vec4<bool>(var_1, var_1, global1.b.x, true), global1.b, !var_0.b.x), any(vec2<bool>(any(vec4<bool>(var_0.b.x, true, true, true)), !var_1))), global1.b.x, 4294967295u);
    var_2 = func_1(Struct_1(var_2.a, func_2(vec2<bool>(var_0.b.x, var_1), min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 34969i), vec3<i32>(-19066i, u_input.a, u_input.a)), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)))).b, false, ~1u | global1.d), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_2.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -235f, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(159f, -1000f)), var_0.a.x)), var_2.b, true, 0u), func_2(select(var_0.b.wz, select(vec2<bool>(false, var_2.b.x), func_4(5222i, global0[_wgslsmith_index_u32(33708u, 22u)], 1i).xy, true), var_2.c), vec3<i32>(u_input.a, -1i, -abs(u_input.a))));
    global1 = global0[_wgslsmith_index_u32(0u, 22u)];
    var_2 = Struct_1(vec3<f32>(-105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(sign(var_2.a.x))) - _wgslsmith_div_f32(-1962f, _wgslsmith_f_op_f32(min(-138f, var_0.a.x)))), 439f), var_0.b, all(vec2<bool>(func_1(Struct_1(var_0.a, vec4<bool>(var_0.c, var_2.b.x, var_1, false), var_0.c, global1.d), global0[_wgslsmith_index_u32(func_2(global1.b.wy, vec3<i32>(2147483647i, u_input.a, 0i)).d, 22u)], global0[_wgslsmith_index_u32(var_2.d, 22u)]).c, true)), ~func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), !vec4<bool>(false, global1.c, false, var_1), true, func_5(var_2.b)), func_1(func_1(Struct_1(vec3<f32>(var_0.a.x, var_2.a.x, var_0.a.x), var_2.b, true, global2[_wgslsmith_index_u32(global1.d, 29u)]), Struct_1(vec3<f32>(-265f, var_0.a.x, var_2.a.x), global1.b, var_0.c, 0u), global0[_wgslsmith_index_u32(44112u, 22u)]), func_2(vec2<bool>(var_2.c, var_2.b.x), vec3<i32>(29448i, u_input.a, 1499i)), Struct_1(vec3<f32>(1780f, global1.a.x, -975f), var_0.b, var_1, 51029u)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.d << (var_2.d % 32u), var_2.d), 29u)], 22u)]).d);
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(-u_input.a))), vec2<u32>(global2[_wgslsmith_index_u32(~(~80292u & (var_0.d & 4294967295u)), 29u)], 0u), _wgslsmith_f_op_f32(ceil(var_0.a.x)), vec2<f32>(-281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)))));
}

