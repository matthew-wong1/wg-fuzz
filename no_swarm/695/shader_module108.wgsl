struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_1(reverseBits(vec4<u32>(~_wgslsmith_div_u32(u_input.d.x, u_input.c), 44930u, select(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(34642u, u_input.a, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.d.x, u_input.d.x)), 20663u > u_input.d.x), ~u_input.c)));
    let var_1 = select(-select(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.e, u_input.e, u_input.e), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.e))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(2147483647i, u_input.e, u_input.e, u_input.b.x), vec4<i32>(u_input.b.x, 19688i, u_input.b.x, 15011i)), vec4<i32>(u_input.e, -2147483647i, u_input.b.x, -1i)), vec4<bool>(global0[_wgslsmith_index_u32(25998u, 27u)] != false, global0[_wgslsmith_index_u32(~var_0.a.x, 27u)], false, true)), -_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -31995i, 28597i, 50227i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, 1i))), vec4<i32>(u_input.e | 0i, u_input.e, -1i, -6979i), abs(vec4<i32>(u_input.e, u_input.b.x, -1i, -19077i))), any(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 27u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 27u)])) || global0[_wgslsmith_index_u32(460u, 27u)])));
    var var_2 = min(56709u, min(_wgslsmith_sub_u32(~select(u_input.d.x, 64857u, arg_0), var_0.a.x), ~max(var_0.a.x >> (u_input.c % 32u), 4294967295u)));
    let var_3 = Struct_1(vec4<u32>(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 1u, u_input.a), ~u_input.d)), _wgslsmith_mult_u32(abs(abs(var_0.a.x)), ~53603u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(8684u, var_0.a.x, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.c)) ^ var_0.a.x), countOneBits(11422u)));
    var_2 = u_input.d.x;
    return reverseBits(-u_input.b.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, !global0[_wgslsmith_index_u32(~arg_0.x, 27u)] && global0[_wgslsmith_index_u32(~arg_2.a.x ^ 24303u, 27u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(abs(0u), 27u)], reverseBits(_wgslsmith_mod_i32(arg_3.x, arg_1.x)) < func_3(global0[_wgslsmith_index_u32(1u, 27u)] && global0[_wgslsmith_index_u32(16490u, 27u)], vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.a.x, 27u)]))), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 27u)] && all(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 27u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 27u)], false, false), global0[_wgslsmith_index_u32(u_input.a, 27u)])), false, true));
    var var_1 = any(var_0.xy);
    var_1 = true;
    global0 = array<bool, 27>();
    let var_2 = var_0;
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    global0 = array<bool, 27>();
    var var_0 = func_2(arg_2.a, u_input.b, Struct_1(arg_2.a), _wgslsmith_add_vec3_i32(-(vec3<i32>(u_input.e, -1i, -1i) & vec3<i32>(5965i, 3728i, 5732i)) >> (select(vec3<u32>(arg_3, 49315u, arg_2.a.x) << (vec3<u32>(arg_3, 75914u, arg_3) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 22642u, arg_2.a.x), !vec3<bool>(global0[_wgslsmith_index_u32(5259u, 27u)], false, global0[_wgslsmith_index_u32(25667u, 27u)])) % vec3<u32>(32u)), vec3<i32>(-u_input.e, _wgslsmith_mult_i32(11289i, 1i), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -2147483647i)))));
    var var_1 = func_2(vec4<u32>(reverseBits(~var_0.a.x << (0u % 32u)), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, arg_2.a.x)), var_0.a.yz), min(select(46871u, 1u, true) >> (~33020u % 32u), var_0.a.x), 39242u), vec3<i32>(~0i, ~(~u_input.e) & (~u_input.e ^ (u_input.e << (40284u % 32u))), firstTrailingBit(_wgslsmith_dot_vec2_i32(max(u_input.b.zy, vec2<i32>(u_input.b.x, u_input.e)), u_input.b.zz))), arg_2, min(vec3<i32>(u_input.e & 50163i, _wgslsmith_mult_i32(abs(-14609i), select(u_input.e, 0i, false)), u_input.e), u_input.b));
    let var_2 = ~_wgslsmith_div_u32(var_0.a.x | _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a.x, 40271u), var_0.a.x), select(~(~u_input.c), 44097u, true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-872f))))));
    return vec2<bool>(all(vec4<bool>(select(any(vec2<bool>(arg_0, true)), !global0[_wgslsmith_index_u32(23329u, 27u)], any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 27u)], false, true))), false, true, false)), any(arg_1));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = select(select(select(select(select(vec4<bool>(arg_1.x, false, global0[_wgslsmith_index_u32(arg_3.x, 27u)], false), vec4<bool>(global0[_wgslsmith_index_u32(39372u, 27u)], false, true, false), arg_1.x), select(vec4<bool>(true, arg_1.x, true, global0[_wgslsmith_index_u32(arg_0, 27u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 27u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 27u)], global0[_wgslsmith_index_u32(8764u, 27u)], false, false)), vec4<bool>(true, arg_1.x, arg_1.x, false)), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 27u)], true), any(vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(arg_3.x, 27u)], false))), select(vec4<bool>(all(vec4<bool>(arg_1.x, arg_1.x, false, true)), true, all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 27u)], true)), !arg_1.x), !vec4<bool>(arg_1.x, true, true, true), select(true, select(global0[_wgslsmith_index_u32(arg_3.x, 27u)], arg_1.x, false), arg_1.x)), vec4<bool>(true, func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, arg_3.x), 27u)], !vec2<bool>(global0[_wgslsmith_index_u32(arg_3.x, 27u)], false), Struct_1(vec4<u32>(11534u, 3180u, 67218u, 35999u)), ~76663u).x, global0[_wgslsmith_index_u32(arg_0, 27u)], all(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(true, arg_1.x, true), false)))), !(!vec4<bool>(true, arg_1.x != global0[_wgslsmith_index_u32(40175u, 27u)], any(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 27u)], true, true, true)), true | global0[_wgslsmith_index_u32(arg_0, 27u)])), all(!select(vec2<bool>(false, true), func_4(true, arg_1, Struct_1(vec4<u32>(arg_0, arg_0, 4294967295u, u_input.a)), u_input.c), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 27u)]))));
    var var_1 = _wgslsmith_mod_i32(u_input.b.x ^ _wgslsmith_div_i32(u_input.e ^ u_input.e, countOneBits(-2147483647i)), -(~(-1i))) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_3.yy, vec2<u32>(arg_0, 1u)), arg_0) << (_wgslsmith_div_u32(~u_input.d.x, arg_3.x) % 32u), ~(arg_0 << (14804u % 32u)) | _wgslsmith_mult_u32(u_input.a, ~arg_0)) % 32u);
    var var_2 = func_2(select(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_0, 14448u, 36031u, 0u)) << (vec4<u32>(u_input.c, 27844u, arg_3.x, 36119u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, arg_3.x, arg_0, u_input.d.x) >> (firstLeadingBit(vec4<u32>(1u, 89986u, 1u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_0, 4294967295u, u_input.a, u_input.a)), abs(max(vec4<u32>(arg_3.x, 36724u, 0u, 0u), vec4<u32>(arg_3.x, 31069u, u_input.d.x, arg_0)))), vec4<bool>(true, var_0.x, _wgslsmith_f_op_f32(select(arg_2, 931f, false)) != _wgslsmith_f_op_f32(arg_2 - -1276f), true)), vec3<i32>(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(-227i, 18607i, u_input.e, 36539i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.e, -2147483647i, -1i), vec4<i32>(-38312i, u_input.b.x, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, u_input.b.x, -15547i)) >> (firstLeadingBit(vec4<u32>(4294967295u, arg_3.x, 50473u, arg_3.x)) % vec4<u32>(32u))), u_input.b.x, 1i), func_2(_wgslsmith_div_vec4_u32(min(vec4<u32>(arg_3.x, 12108u, u_input.a, 1u), vec4<u32>(u_input.d.x, 1161u, u_input.c, arg_3.x)), vec4<u32>(0u, arg_3.x, arg_0, u_input.d.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_3.x, arg_0, u_input.a), vec4<u32>(u_input.a, u_input.d.x, arg_0, 88300u)) % vec4<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(select(-2147483647i, u_input.b.x, false), u_input.e, -2147483647i & u_input.e)), Struct_1(vec4<u32>(0u, ~arg_3.x, func_2(vec4<u32>(u_input.d.x, 0u, 0u, 19472u), u_input.b, Struct_1(vec4<u32>(u_input.a, 1u, 78747u, arg_3.x)), u_input.b).a.x, 1u)), max(vec3<i32>(~u_input.b.x, u_input.e, min(43117i, u_input.e)), firstTrailingBit(vec3<i32>(u_input.e, 84654i, 12537i)))), abs(_wgslsmith_div_vec3_i32(u_input.b, u_input.b)));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * vec2<f32>(arg_2, arg_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, arg_2)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, arg_2))), arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(arg_2))) + vec2<f32>(925f, arg_2)), true)));
    return Struct_1(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(countOneBits(u_input.c), ~0u), min(max(var_2.a.x, ~u_input.c), 1u), 1u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_0 = arg_0;
    return func_5(arg_0.a.x, !(!func_4(true, !vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true), func_2(vec4<u32>(arg_0.a.x, 33525u, arg_0.a.x, 4294967295u), vec3<i32>(15013i, 1i, u_input.e), Struct_1(var_0.a), u_input.b), ~4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(452f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1345f, -707f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) * _wgslsmith_f_op_f32(-409f + -1214f)))), vec3<u32>(var_0.a.x, u_input.d.x, arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = func_1(Struct_1(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 99880u), vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.a)) & ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 30712u))));
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(firstTrailingBit(u_input.e) ^ (42872i << (var_0.a.x % 32u)), 53589i, u_input.b.x & ~51472i), select(-u_input.b, vec3<i32>(-1i) * -vec3<i32>(1i, u_input.e, u_input.b.x), _wgslsmith_f_op_f32(select(-550f, -440f, true)) != -648f)));
}

