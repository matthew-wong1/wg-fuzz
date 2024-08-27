struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-31426i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 6499i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(5093i, 1i), vec2<i32>(-11926i, -15543i), vec2<i32>(23267i, -40073i), vec2<i32>(33282i, -10446i), vec2<i32>(-3392i, -29418i), vec2<i32>(29086i, 83270i), vec2<i32>(-595i, -23600i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, -44680i), vec2<i32>(-20688i, -20881i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -33276i));

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, false, true, false, false, true, true, true, false, true, false, true, true, true, false, false, false, false, false, false, false, false, true, true, true, false, false);

var<private> global3: array<i32, 21>;

var<private> global4: f32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 16u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1549f, global0[_wgslsmith_index_u32(arg_0, 16u)], true)) * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0, 16u)])))))), Struct_3(Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(39558u, 4294967295u, 58734u), vec3<u32>(16734u, 4294967295u, 1u)), arg_0 >= min(arg_0, arg_0), -461f), Struct_1(global0[_wgslsmith_index_u32(~(arg_0 | arg_0), 16u)], !(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_0, 32u)])))), Struct_2(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0, 90880u), vec3<u32>(24429u, arg_0, arg_0), vec3<u32>(arg_0, 39989u, 0u)) >> (~vec3<u32>(arg_0, arg_0, 35451u) % vec3<u32>(32u))), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_0, ~arg_0), 1u), 16u)]), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(487f, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<f32>(-1202f, -1340f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, global0[_wgslsmith_index_u32(71121u, 16u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-139f, 2614f), vec2<f32>(1473f, -1000f), true))), !global2[_wgslsmith_index_u32(85802u, 32u)])), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-152f, 150f)) - -182f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 16u)]))))));
    let var_1 = ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_0, 21u)] ^ u_input.a, ~(-1i)), global1[_wgslsmith_index_u32(0u, 16u)], -vec2<i32>(56036i, 1i)));
    let var_2 = vec2<i32>(global3[_wgslsmith_index_u32(19045u, 21u)] & 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(1u, 21u)], var_1.x), reverseBits(u_input.a), var_1.x, -10563i)), _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(15115i, global3[_wgslsmith_index_u32(var_0.c.a.x, 21u)], global3[_wgslsmith_index_u32(arg_0, 21u)], 19481i), vec4<i32>(11201i, -1i, 41521i, 2147483647i))), vec4<i32>(-27397i, ~(-2147483647i), min(-19024i, global3[_wgslsmith_index_u32(1u, 21u)]), -u_input.a))));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(329f * -141f)))), 770f)), select(select(vec3<bool>(true, true, false), var_0.b.b.b, select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), var_0.b.b.b, var_0.b.b.b), var_0.b.b.b, var_0.b.b.b)), vec3<bool>(!any(vec4<bool>(var_0.b.a.b, var_0.c.b, false, global2[_wgslsmith_index_u32(0u, 32u)])), any(var_0.b.b.b.yx), 0u <= (70375u | arg_0)), !vec3<bool>(var_0.c.b, true, true)), ~(~select(_wgslsmith_div_vec3_u32(var_0.c.a, var_0.b.a.a), vec3<u32>(25235u, var_0.c.a.x, var_0.b.a.a.x) & vec3<u32>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), false)), reverseBits(vec3<i32>(-1i) * -(~vec3<i32>(-1i, -43624i, global3[_wgslsmith_index_u32(var_0.c.a.x, 21u)]))));
    var var_4 = select(all(var_3.b) != !var_0.c.b, var_0.b.b.b.x, true) & !var_0.c.b;
    return _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u & arg_0, _wgslsmith_sub_u32(4294967295u, 4294967295u >> (var_3.c.x % 32u)))), vec2<u32>(_wgslsmith_mult_u32(~(17066u << (arg_0 % 32u)), ~(~0u)), var_0.c.a.x));
}

fn func_2(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -524f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 16u)]) - _wgslsmith_f_op_f32(1321f - global0[_wgslsmith_index_u32(4294967295u, 16u)]))))), Struct_3(Struct_2(~vec3<u32>(47615u, 0u, 0u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, 4294967295u), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(67884u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec3<bool>(!global2[_wgslsmith_index_u32(781u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], true))), Struct_2(vec3<u32>(~4294967295u, func_3(1u), 1u) ^ vec3<u32>(abs(42300u), 1u, 95666u), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(-1120f))))))));
    let var_1 = firstLeadingBit(var_0.c.a.x);
    var var_2 = min(-_wgslsmith_add_vec4_i32(~max(vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 2147483647i, u_input.a, -27850i)), ~(-vec4<i32>(-5030i, global3[_wgslsmith_index_u32(var_0.b.a.a.x, 21u)], 749i, 33287i))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 21u)], u_input.a, -44812i, global3[_wgslsmith_index_u32(1u, 21u)]), -vec4<i32>(65992i, -1i, global3[_wgslsmith_index_u32(34971u, 21u)], -7219i)), vec4<i32>(-2147483647i, firstLeadingBit(-16949i), u_input.a, i32(-1i) * -2147483647i)));
    var var_3 = Struct_3(var_0.b.a, var_0.b.b);
    var var_4 = var_3.b.b;
    return ~min(var_0.b.a.a.xz | var_0.b.a.a.zx, var_3.a.a.yy);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = any(vec3<bool>(arg_1.x, all(select(select(vec2<bool>(true, true), arg_1.xz, vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], arg_1.x)), arg_1.yx, arg_1.zz)), select(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_div_f32(145f, arg_0), arg_1.x, all(arg_1.yx))));
    global0 = array<f32, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f - arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global0[_wgslsmith_index_u32(0u, 16u)]))), 469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21404u, 16u)])), _wgslsmith_f_op_f32(ceil(1150f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, 552f, arg_0, global0[_wgslsmith_index_u32(29029u, 16u)]))))))), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~1u), 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], !arg_1.x, abs(u_input.a) <= (u_input.a & _wgslsmith_mod_i32(1i, global3[_wgslsmith_index_u32(12911u, 21u)])))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 16u)]), _wgslsmith_div_f32(513f, global0[_wgslsmith_index_u32(~2765u, 16u)])))));
    var var_2 = Struct_2(~min(vec3<u32>(0u, reverseBits(2566u), ~0u), vec3<u32>(1u, abs(4294967295u), ~26540u)), global2[_wgslsmith_index_u32(1u, 32u)] && all(vec4<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 32u)], true, true & arg_1.x, true)), 764f);
    return Struct_3(Struct_2(_wgslsmith_mult_vec3_u32(~(~var_2.a), ~vec3<u32>(var_2.a.x, 4294967295u, 129u) << (vec3<u32>(var_2.a.x, var_2.a.x, 4294967295u) % vec3<u32>(32u))), false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.x, 630f)), -197f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2793u, 16u)]) * var_2.c)))), Struct_1(_wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(exp2(var_2.c))), select(arg_1, arg_1, any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(true, arg_1.x), var_2.b)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = func_4(_wgslsmith_f_op_f32(arg_0.b.a - global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(func_2(vec2<f32>(311f, 1990f)), ~arg_0.a.a.yx), 16u)]), !arg_0.b.b);
    let var_1 = abs(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a.a.x, 0u), 21u)], 1i, abs(-global3[_wgslsmith_index_u32(0u, 21u)] ^ ~(-9554i))));
    global3 = array<i32, 21>();
    global2 = array<bool, 32>();
    global2 = array<bool, 32>();
    return Struct_5(var_0.a.c, !select(func_4(_wgslsmith_f_op_f32(102f - arg_0.a.c), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.a.x, 32u)], global2[_wgslsmith_index_u32(83474u, 32u)], false)).b.b, var_0.b.b, vec3<bool>(arg_0.a.b, all(vec4<bool>(false, var_0.a.b, arg_2.x, global2[_wgslsmith_index_u32(arg_0.a.a.x, 32u)])), true)), ~arg_0.a.a, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(max(vec2<u32>(1930u, 0u), vec2<u32>(57318u, 1u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    global1 = array<vec2<i32>, 16>();
    let var_1 = func_1(Struct_3(Struct_2(vec3<u32>(~10136u, countOneBits(78442u), 11452u ^ var_0.x), !global2[_wgslsmith_index_u32(20195u, 32u)], -277f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 16u)], vec3<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], false, false)), any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], false, global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), 16u)] * -800f) + _wgslsmith_f_op_f32(round(1185f)))), !select(vec2<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 32u)], !global2[_wgslsmith_index_u32(0u, 32u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(12282u, 32u)], global2[_wgslsmith_index_u32(1246u, 32u)]), !vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)])), vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(13184u, 32u)], false, true)), select(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))));
    let var_2 = global2[_wgslsmith_index_u32(50872u, 32u)];
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4545u, 17462u, func_1(Struct_3(Struct_2(var_1.c, true, 1212f), Struct_1(-1561f, vec3<bool>(global2[_wgslsmith_index_u32(21167u, 32u)], false, false))), -929f, select(var_1.b.xz, vec2<bool>(false, false), var_1.b.xz)).c.x, 13032u), vec4<u32>(var_1.c.x, 1u, var_1.c.x, _wgslsmith_div_u32(var_0.x, var_0.x))), ~func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1175f, 364f) * vec2<f32>(859f, -948f))).x), 16u)];
    global0 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), 368f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(9710u, 16u)], -1473f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-208f, var_1.a, 774f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1113f, global0[_wgslsmith_index_u32(4294967295u, 16u)]) + vec3<f32>(220f, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)])), var_1.b.x)), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_1.c.x, 16u)], -424f, -763f)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1817f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(35999u, 16u)] * global0[_wgslsmith_index_u32(var_1.c.x, 16u)]), -631f))), _wgslsmith_div_vec2_i32(vec2<i32>(-24483i, u_input.a), vec2<i32>(_wgslsmith_div_i32(~1i, min(33676i, var_1.d.x)), -48267i)));
}

