struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-681f, 981f, 1610f, -905f, -1950f, 352f, -387f, 1038f, 625f, 1000f, 687f, -629f, -1000f, -717f, -652f, 288f, 1485f, 565f, -436f, 1322f, 456f, 2289f, 348f, 634f, 1000f, 155f, 754f, -1278f, -794f);

var<private> global1: array<f32, 5>;

var<private> global2: bool;

var<private> global3: array<u32, 29> = array<u32, 29>(1u, 1u, 0u, 4294967295u, 1u, 33807u, 44184u, 0u, 0u, 0u, 33260u, 4294967295u, 0u, 1141u, 1u, 1u, 4294967295u, 0u, 50319u, 20839u, 1u, 17786u, 1u, 4294967295u, 8913u, 100545u, 0u, 0u, 1u);

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = min(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.a.yw, vec2<i32>(-2147483647i, 49351i), vec2<i32>(-52640i, global4.a.x)), ~_wgslsmith_mult_vec2_i32(u_input.a.zz, global4.c))), countOneBits(-_wgslsmith_mod_vec2_i32(u_input.a.ww, vec2<i32>(u_input.a.x, global4.c.x))) << (~(~vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(24465u, 29u)]) << (~vec2<u32>(29000u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)]) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.a, vec4<i32>(1i, 2147483647i, -33322i, 0i)), u_input.a), countOneBits(firstTrailingBit(global4.a)), ~u_input.a), true, u_input.a.zx);
    let var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58326u, 29u)], 29u)], 29u)], 29u)], 29u)], 4915u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 57335u), vec2<u32>(48545u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1025u, 29u)], 29u)]), vec2<u32>(0u, 0u)) % vec2<u32>(32u)), select(vec2<u32>(global3[_wgslsmith_index_u32(1u, 29u)], 42725u), _wgslsmith_add_vec2_u32(vec2<u32>(34168u, 45065u), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)])), !vec2<bool>(false, global4.b))) | (~(reverseBits(vec2<u32>(0u, global3[_wgslsmith_index_u32(19775u, 29u)])) >> (~vec2<u32>(14005u, 4294967295u) % vec2<u32>(32u))) ^ abs(vec2<u32>(~0u, firstTrailingBit(0u))));
    global3 = array<u32, 29>();
    global0 = array<f32, 29>();
    return ~countOneBits(var_2.x) & global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(22253u, 0u), 29u)];
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = any(vec3<bool>(0u >= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(28558u, 29u)]), ~vec2<u32>(global3[_wgslsmith_index_u32(40844u, 29u)], 0u)), arg_1.b, 0u >= func_3(vec2<f32>(global1[_wgslsmith_index_u32(0u, 5u)], -3823f))));
    let var_1 = Struct_1(arg_1.a, all(select(select(!vec4<bool>(var_0, var_0, true, arg_1.b), select(vec4<bool>(true, arg_2, global4.b, false), vec4<bool>(arg_1.b, arg_2, arg_1.b, false), vec4<bool>(false, global4.b, var_0, arg_1.b)), select(vec4<bool>(arg_2, arg_2, true, global4.b), vec4<bool>(arg_1.b, false, true, false), vec4<bool>(true, global4.b, false, global4.b))), vec4<bool>(true, arg_1.b, !arg_2, true), vec4<bool>(all(vec4<bool>(arg_1.b, arg_2, var_0, arg_2)), true, true, arg_1.b && false))), vec2<i32>(2147483647i, arg_0));
    global2 = all(!(!(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, false, var_1.b)))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    global0 = array<f32, 29>();
    return firstTrailingBit(_wgslsmith_sub_vec4_i32(var_1.a, ~u_input.a));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<f32>(328f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4069u, 62955u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15944u, 29u)], 29u)], 29u)], global3[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(5476u, global3[_wgslsmith_index_u32(4294967295u, 29u)])), vec2<u32>(1u, 1u))), 29u)] + -2087f));
    global4 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(abs(1u), 29u)];
    let var_2 = Struct_1(arg_0.a, false, vec2<i32>(select(countOneBits(-2147483647i), abs(u_input.a.x), ~38531i < (-2147483647i << (global3[_wgslsmith_index_u32(43393u, 29u)] % 32u))), countOneBits(reverseBits(u_input.a.x)) << (31624u % 32u)));
    var var_3 = Struct_1(reverseBits(~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.a.x, global4.c.x)), -arg_0.a)), any(vec3<bool>(arg_0.b, global4.b & !global4.b, false)), -vec2<i32>(-2147483647i, ~(~0i)));
    return Struct_1(select(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(global4.a, vec4<i32>(global4.c.x, 1i, arg_0.a.x, u_input.a.x), var_2.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.c.x, var_2.a.x, 10521i, -8397i), vec4<i32>(-1i, var_3.a.x, 2147483647i, global4.c.x))) >> ((~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(121735u, 29u)], 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73977u, 29u)], 29u)]) << (select(vec4<u32>(1u, global3[_wgslsmith_index_u32(67369u, 29u)], global3[_wgslsmith_index_u32(59653u, 29u)], global3[_wgslsmith_index_u32(36149u, 29u)]), vec4<u32>(global3[_wgslsmith_index_u32(0u, 29u)], 4294967295u, 27019u, 31657u), vec4<bool>(var_3.b, arg_0.b, false, arg_0.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.c.x, var_2.c.x, var_2.a.x, arg_0.c.x), -vec4<i32>(var_3.c.x, var_3.a.x, 2147483647i, global4.a.x)), select(vec4<bool>(false, false, !var_3.b, var_2.b), select(!vec4<bool>(true, global4.b, false, true), vec4<bool>(var_3.b, var_2.b, false, true), vec4<bool>(true, var_3.b, var_2.b, true)), select(!vec4<bool>(true, arg_0.b, true, true), vec4<bool>(true, false, false, var_3.b), var_3.b | true))), var_3.b, vec2<i32>(abs(-12427i), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(50201i, -63323i), u_input.a.zz))));
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f - _wgslsmith_f_op_f32(round(411f)))))) < _wgslsmith_f_op_f32(-arg_0);
    global4 = func_4(Struct_1(_wgslsmith_div_vec4_i32(func_2(u_input.a.x, Struct_1(vec4<i32>(global4.c.x, global4.c.x, u_input.a.x, global4.a.x), false, u_input.a.zz), any(vec3<bool>(global4.b, true, true))), global4.a & _wgslsmith_mult_vec4_i32(global4.a, global4.a)), !(all(vec2<bool>(true, false)) || true), u_input.a.yw), _wgslsmith_f_op_f32(1111f - -1439f));
    let var_1 = func_4(Struct_1(-u_input.a >> (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46231u, 29u)], 29u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8117u, 29u)], 29u)], 29u)], 29u)]), vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 29u)], global3[_wgslsmith_index_u32(58602u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)])), reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51812u, 29u)], 29u)], 29u)], 29u)], 52324u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27661u, 29u)], 29u)], 29u)], 1u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 59461u), 29u)], 5u)], _wgslsmith_f_op_f32(-201f - global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)], 5u)]), global4.b)) <= _wgslsmith_f_op_f32(floor(arg_0)), ~func_2(u_input.a.x, Struct_1(vec4<i32>(-28462i, -88391i, u_input.a.x, u_input.a.x), global4.b, vec2<i32>(2147483647i, 33301i)), false).zz), _wgslsmith_f_op_f32(max(-1646f, -607f)));
    return _wgslsmith_f_op_f32(507f - _wgslsmith_f_op_f32(288f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(44323u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), 29u)] * -476f), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(682f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63211u, 29u)], 29u)], 29u)], 29u)], 5u)], 422f)) + _wgslsmith_f_op_f32(floor(1143f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-304f, 413f))) + _wgslsmith_f_op_f32(func_1(261f))));
    let var_1 = 32190u;
    let var_2 = select(u_input.a.x, max(global4.a.x, 1i | _wgslsmith_add_i32(max(global4.c.x, u_input.a.x), 10946i)), global4.b);
    let var_3 = Struct_1(u_input.a, global4.b, _wgslsmith_mod_vec2_i32((vec2<i32>(global4.c.x, -13570i) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, global3[_wgslsmith_index_u32(27533u, 29u)]), vec2<u32>(6435u, global3[_wgslsmith_index_u32(38277u, 29u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 29u)], 29u)], 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 29u)], 29u)], 29u)])) % vec2<u32>(32u))) & global4.a.zw, vec2<i32>(var_2, abs(global4.c.x))));
    var var_4 = true;
    let var_5 = ~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(var_1, 13489u, 10507u) & vec3<u32>(1u, global3[_wgslsmith_index_u32(39542u, 29u)], 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(34198u, 4294967295u, var_1), vec3<u32>(global3[_wgslsmith_index_u32(23899u, 29u)], 0u, var_1)) << ((vec3<u32>(global3[_wgslsmith_index_u32(12749u, 29u)], 0u, 4294967295u) << (vec3<u32>(var_1, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16982u, 29u)], 29u)], 29u)], 29u)]) % vec3<u32>(32u))) % vec3<u32>(32u))) << ((reverseBits(_wgslsmith_div_vec3_u32(abs(vec3<u32>(global3[_wgslsmith_index_u32(var_1, 29u)], 0u, var_1)), vec3<u32>(44693u, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(55045u, 29u)]) & vec3<u32>(global3[_wgslsmith_index_u32(1u, 29u)], var_1, var_1))) & abs(countOneBits(~vec3<u32>(4294967295u, 0u, global3[_wgslsmith_index_u32(0u, 29u)])))) % vec3<u32>(32u));
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(646f, 559f, global1[_wgslsmith_index_u32(126880u, 5u)]))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(var_5.x, 5u)], 1000f, -1000f))))))), abs(reverseBits(~54704i)) & (reverseBits(var_3.a.x) << (var_5.x % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(21038u, 29u)]), 29u)])), _wgslsmith_f_op_f32(f32(-1f) * -508f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 5u)], -633f, false))))), u_input.a.x);
}

