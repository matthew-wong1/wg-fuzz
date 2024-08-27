struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(21016i, 2147483647i, 32619i, -62138i);

var<private> global1: array<f32, 26>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<f32, 15> = array<f32, 15>(1978f, 677f, 830f, -504f, -611f, -774f, -1000f, 2087f, 222f, -131f, 590f, -1000f, -1000f, -346f, 1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(1219f, select(_wgslsmith_mod_vec2_u32(firstLeadingBit(min(u_input.b.wz, vec2<u32>(0u, 48341u))), min(vec2<u32>(4294967295u, 44421u), u_input.b.zy)), ~vec2<u32>(select(u_input.a, 1u, true), select(1u, 26420u, false)), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), vec4<i32>(u_input.c, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, reverseBits(u_input.c)), reverseBits(1i), 1i), -global0.x, 1i | (_wgslsmith_mod_i32(global0.x, -51508i) ^ (4240i << (u_input.b.x % 32u)))), -vec4<i32>(~2147483647i, 16585i, 17164i, firstTrailingBit(18601i)), true & any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(min(~firstLeadingBit(61185u) << ((countOneBits(0u) << (u_input.a % 32u)) % 32u), var_0.b.x), 27u)], vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 15u)] + -2082f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x & u_input.b.x, 26u)]) - _wgslsmith_f_op_f32(241f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(64313u, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~var_0.b.x, 15u)]))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~u_input.b.x | _wgslsmith_div_u32(0u, var_0.b.x))), 27u)]);
    let var_2 = !(!select(select(!vec2<bool>(true, var_1.c.e), vec2<bool>(var_0.e, false), vec2<bool>(var_0.e, var_1.c.e)), select(!vec2<bool>(var_1.a.e, true), vec2<bool>(false, true), select(vec2<bool>(var_0.e, var_1.c.e), vec2<bool>(true, false), vec2<bool>(var_1.a.e, true))), true));
    var var_3 = _wgslsmith_mod_i32(~0i, global0.x);
    var_1 = Struct_2(Struct_1(-223f, _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(var_1.a.b.x, 4294967295u)), ~firstLeadingBit(vec2<u32>(27120u, 25892u))), var_0.d, countOneBits(vec4<i32>(max(u_input.c, 0i), -var_1.c.c.x, countOneBits(global0.x), ~(-1i))), var_2.x), _wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(-757f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1850f * 748f), _wgslsmith_f_op_f32(f32(-1f) * -3256f))), -1435f, -273f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(0u), 26u)]) + 814f), ~(var_1.a.b << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), vec4<i32>(-global0.x, _wgslsmith_add_i32(-2147483647i, max(var_1.c.d.x, -1i)), -(~(-13707i)), 2147483647i), vec4<i32>(-2147483647i, 34667i, _wgslsmith_mod_i32(abs(var_1.a.c.x), -u_input.c), 0i), var_2.x));
    return 2147483647i;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = -max(vec4<i32>(_wgslsmith_mod_i32(abs(global0.x), u_input.c), 1i, global0.x, -global0.x & global0.x), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, -63165i, 0i), vec4<i32>(1i, global0.x, u_input.c, global0.x))), func_3(), (global0.x | 14937i) ^ global0.x, u_input.c));
    global2 = array<Struct_1, 27>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(abs(1u), 26u)])) + global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 15u)]), _wgslsmith_mod_vec2_u32(~reverseBits(u_input.b.yx) & firstTrailingBit(~u_input.b.xz), vec2<u32>(4294967295u ^ arg_1, _wgslsmith_mult_u32(abs(arg_1), 14212u))), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-54692i, 0i, var_0.x, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, 34431i, global0.x), vec4<i32>(-1i, u_input.c, global0.x, global0.x))), -vec4<i32>(abs(-2147483647i), -595i, global0.x, 27078i)), abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(-76695i, 2147483647i, 1i, 2147483647i) & firstTrailingBit(vec4<i32>(u_input.c, 1i, -37498i, var_0.x)), -vec4<i32>(33396i, -41942i, u_input.c, 2147483647i))), arg_0.x);
    let var_2 = var_1;
    var var_3 = ~countOneBits(~vec4<u32>(1u, _wgslsmith_div_u32(var_2.b.x, var_2.b.x), abs(u_input.b.x), 1u));
    return global2[_wgslsmith_index_u32(5578u, 27u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = arg_1.a.c ^ vec4<i32>(func_2(!(!vec3<bool>(false, arg_0.x, arg_0.x)), 60628u, select(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_1.a.e, true, false), true), vec3<bool>(false, true, true), arg_0.x)).d.x, arg_1.a.c.x, 25432i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.ww, -arg_1.a.c.yw), 1i));
    var var_1 = select(select(select(select(!vec3<bool>(true, arg_0.x, arg_1.a.e), select(vec3<bool>(true, true, false), vec3<bool>(arg_1.c.e, true, arg_1.c.e), vec3<bool>(true, true, arg_1.c.e)), select(vec3<bool>(arg_1.a.e, arg_1.a.e, arg_1.c.e), vec3<bool>(arg_1.c.e, arg_1.c.e, true), arg_0.x)), select(select(vec3<bool>(arg_1.c.e, arg_1.c.e, true), vec3<bool>(true, false, true), arg_0.x), !vec3<bool>(arg_0.x, true, false), arg_0.x), select(select(vec3<bool>(false, false, arg_1.a.e), vec3<bool>(false, arg_1.c.e, true), vec3<bool>(arg_1.a.e, false, true)), select(vec3<bool>(arg_0.x, arg_1.a.e, arg_1.a.e), vec3<bool>(true, arg_1.c.e, false), vec3<bool>(arg_1.a.e, arg_0.x, true)), vec3<bool>(false, arg_0.x, true))), !(!(!vec3<bool>(arg_1.c.e, arg_0.x, arg_1.c.e))), select(select(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, arg_1.c.e, arg_1.c.e), vec3<bool>(true, arg_0.x, false)), !vec3<bool>(arg_0.x, arg_1.c.e, arg_1.a.e), !vec3<bool>(arg_0.x, false, false)), vec3<bool>(arg_1.a.e, !arg_1.a.e, !arg_0.x), !(!vec3<bool>(false, arg_1.c.e, true)))), vec3<bool>(false, !any(select(vec3<bool>(arg_0.x, arg_1.a.e, true), vec3<bool>(true, false, arg_1.a.e), arg_1.c.e)), func_2(vec3<bool>(arg_0.x, !arg_0.x, true), ~arg_1.c.b.x, select(!vec3<bool>(arg_1.a.e, arg_0.x, arg_1.c.e), select(vec3<bool>(arg_1.a.e, false, true), vec3<bool>(arg_0.x, arg_0.x, arg_1.a.e), vec3<bool>(true, true, true)), !arg_1.c.e)).e), !vec3<bool>(arg_0.x, all(select(arg_0, vec2<bool>(arg_0.x, true), arg_1.a.e)), any(vec3<bool>(arg_0.x, true, true))));
    global2 = array<Struct_1, 27>();
    var var_2 = arg_1.c.d;
    var var_3 = ~(-abs(min(vec3<i32>(var_0.x, 0i, 8724i), vec3<i32>(1i, 2147483647i, -26376i)))) >> (reverseBits(firstLeadingBit(u_input.b.xwy)) % vec3<u32>(32u));
    return u_input.b.x;
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_clamp_vec3_u32(select(u_input.b.xww, vec3<u32>(u_input.a, 1u, arg_0), true), select(u_input.b.wwy, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0, u_input.b.x), vec3<u32>(91814u, 55995u, arg_0)), vec3<bool>(true, true, true)), vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.wx))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + global1[_wgslsmith_index_u32(0u, 26u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_2(vec3<bool>(true, false, true), var_0.x, vec3<bool>(true, true, true)).a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 26u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(118u, 15u)] - global1[_wgslsmith_index_u32(0u, 26u)]) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(50747u, 15u)] - global3[_wgslsmith_index_u32(16045u, 15u)])), 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 15u)], 691f, -426f, -1882f) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], 283f, -1000f, global3[_wgslsmith_index_u32(0u, 15u)])))))));
    let var_2 = vec4<f32>(1817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1393f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(arg_0, 15u)], global1[_wgslsmith_index_u32(1u, 26u)], false)), _wgslsmith_f_op_f32(max(-779f, global3[_wgslsmith_index_u32(0u, 15u)])))))), 1000f, func_2(!vec3<bool>(any(vec2<bool>(false, false)), true, true), 6075u, vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, _wgslsmith_dot_vec3_u32(u_input.b.yyy, u_input.b.yww) <= _wgslsmith_mod_u32(u_input.a, 0u))).a);
    let var_3 = global2[_wgslsmith_index_u32(~(u_input.a ^ arg_0), 27u)];
    let var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(76495u) << (_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(~1u, 6221u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~4123u, reverseBits(var_0.x)), ~1u)) % 32u), 15u)];
    return global2[_wgslsmith_index_u32(~(~var_0.x) | _wgslsmith_mult_u32(1u, var_3.b.x & _wgslsmith_div_u32(~var_3.b.x, ~arg_0)), 27u)];
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(func_5(func_4(!select(vec2<bool>(false, false), vec2<bool>(arg_0.e, true), true), Struct_2(func_2(vec3<bool>(arg_0.e, true, arg_0.e), 4294967295u, vec3<bool>(arg_0.e, arg_0.e, arg_0.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(arg_0.b.x, 26u)], -2341f)), global2[_wgslsmith_index_u32(0u, 27u)]), arg_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(427f - global3[_wgslsmith_index_u32(u_input.b.x, 15u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(7739u, 15u)] - global3[_wgslsmith_index_u32(50246u, 15u)]), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.a, 1444f, global1[_wgslsmith_index_u32(4294967295u, 26u)]) - vec4<f32>(-2594f, global1[_wgslsmith_index_u32(87754u, 26u)], 1225f, arg_0.a))))))), arg_0);
    return vec3<bool>(false || (global3[_wgslsmith_index_u32(110303u, 15u)] == 1248f), var_0.a.e, !(!any(!vec2<bool>(var_0.c.e, var_0.c.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(21428i | max(global0.x, global0.x), min(_wgslsmith_div_i32(global0.x, 1i), 0i)) | global0.zy, ~(~_wgslsmith_mult_vec2_i32(~global0.ww, vec2<i32>(-27188i, global0.x) ^ vec2<i32>(0i, u_input.c))));
    let var_1 = vec3<bool>(!select(select(false, all(vec2<bool>(false, true)), true), !all(vec2<bool>(true, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), any(select(func_1(global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec3<bool>(true, true, true), false)), true);
    let var_2 = Struct_2(func_5(~(_wgslsmith_add_u32(21556u, 24112u) << (u_input.b.x % 32u))), vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(func_5(u_input.b.x).b, ~u_input.b.zx), ~min(u_input.b.yz, vec2<u32>(u_input.b.x, 115708u))), 26u)], global3[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.b.x << (u_input.a % 32u), u_input.a), ~u_input.b.x), 15u)], global3[_wgslsmith_index_u32(abs(u_input.a), 15u)], -388f), func_5(4294967295u));
    var var_3 = ~4294967295u;
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(1479f - _wgslsmith_f_op_f32(f32(-1f) * -1237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a))), global1[_wgslsmith_index_u32(var_2.c.b.x, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(-678f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 26u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(22005u, 26u)], min(-1i, 15644i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1342f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(1273f - -920f))) - _wgslsmith_f_op_vec3_f32(var_4.wyx - vec3<f32>(-239f, 1f, -741f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(var_2.c.b.x, 15u)])), _wgslsmith_f_op_f32(var_2.c.a * 1f)) + 281f), 1u);
}

