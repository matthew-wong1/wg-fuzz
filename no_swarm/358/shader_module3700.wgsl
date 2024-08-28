struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: vec2<u32> = vec2<u32>(29968u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(abs(arg_2.a) | vec4<i32>(-17543i << (global2.x % 32u), ~arg_2.a.x, _wgslsmith_div_i32(1i, arg_2.a.x), max(arg_2.a.x, arg_2.a.x)), ~arg_2.a), true, any(select(arg_1, select(arg_1, !vec3<bool>(true, arg_0, false), !vec3<bool>(global1.x, arg_2.b, arg_0)), true)), !(!(!select(vec3<bool>(arg_0, arg_2.d.x, true), vec3<bool>(global1.x, global1.x, true), true))));
    global0 = -1114f;
    var var_1 = var_0;
    let var_2 = !select(!vec3<bool>(select(global1.x, true, arg_0), true, any(vec4<bool>(false, false, false, arg_1.x))), arg_1, !arg_2.d.x);
    global1 = select(!vec3<bool>(!global1.x, false | (arg_2.a.x < arg_2.a.x), select(!arg_2.b, true, true)), vec3<bool>(all(!(!vec2<bool>(arg_2.b, arg_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(371f, -1402f))) >= _wgslsmith_f_op_f32(trunc(-890f)), any(!(!vec4<bool>(true, false, arg_1.x, true)))), false);
    return max(-(0i & _wgslsmith_mod_i32(abs(-5830i), firstLeadingBit(var_0.a.x))), -2147483647i);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(35624i, 14377i, -3210i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-46749i, 2147483647i, _wgslsmith_div_i32(-1i, -2147483647i)), vec3<i32>(i32(-1i) * -22594i, func_3(true, arg_0, Struct_1(vec4<i32>(-2147483647i, -2147483647i, -1i, 1i), true, arg_0.x, arg_0)), 1i)), -49491i, _wgslsmith_clamp_i32(max(0i >> (global2.x % 32u), _wgslsmith_div_i32(1i, -4957i)), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-2147483647i, 21662i)), -1i)), false || arg_0.x, arg_0.x, select(select(!select(vec3<bool>(global1.x, true, true), arg_0, vec3<bool>(true, arg_0.x, false)), select(!vec3<bool>(arg_0.x, global1.x, true), vec3<bool>(true, arg_0.x, arg_0.x), false), ~u_input.a.x != (0u ^ u_input.a.x)), arg_0, true));
    global0 = 1f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -395f);
    var var_1 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(~var_0.a.x), countOneBits(~var_0.a.x)), abs(vec2<i32>(-1304i, ~var_0.a.x)), -(~vec2<i32>(var_0.a.x, var_0.a.x))));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32((var_0.a.wyw >> (u_input.a % vec3<u32>(32u))) >> (vec3<u32>(0u, u_input.a.x, 6994u) % vec3<u32>(32u)), var_0.a.zyz << (max(u_input.a, u_input.a) % vec3<u32>(32u))), ~(~0i), var_1.x, _wgslsmith_dot_vec2_i32(var_0.a.zy, vec2<i32>(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x), -2147483647i))), false, !all(vec4<bool>(arg_0.x, false, global1.x, true)), select(!arg_0, var_0.d, vec3<bool>(true, arg_0.x, global1.x)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, reverseBits(global2.x), 1u ^ _wgslsmith_mod_u32(firstTrailingBit(global2.x), ~global2.x)), firstTrailingBit(max(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)) | vec3<u32>(_wgslsmith_div_u32(global2.x, global2.x), _wgslsmith_add_u32(50602u, 97921u), ~global2.x)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global2 = _wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(~global2.x, 0u));
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-25767i, 1i), arg_2.zz, arg_2.wy), arg_2.wz);
    let var_1 = 1u;
    let var_2 = select(select(!vec4<bool>(all(vec4<bool>(false, true, global1.x, false)), false, true, all(vec4<bool>(false, global1.x, false, true))), vec4<bool>(all(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), false)), all(vec4<bool>(true, false, false, false)), true, all(global1.zy)), select(select(!vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(false, true, global1.x, false), false), select(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, global1.x, false, global1.x), global1.x), !vec4<bool>(global1.x, true, global1.x, true), global1.x), !vec4<bool>(global1.x, global1.x, false, false))), vec4<bool>(global1.x, any(vec2<bool>(false, true)), any(vec3<bool>(any(vec2<bool>(global1.x, true)), global1.x, true)), true), !(!vec4<bool>(global1.x, all(vec3<bool>(global1.x, true, false)), arg_1 > 10319u, false)));
    let var_3 = -168f;
    return Struct_1(-firstTrailingBit(arg_2), ~u_input.a.x >= arg_0, global1.x, vec3<bool>(true, global1.x, true));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.x, global2.x, 4294967295u, global2.x)), ~vec4<u32>(~43989u, abs(global2.x), reverseBits(23742u), global2.x & u_input.a.x)), 4294967295u, ~firstTrailingBit(74619u));
    global2 = abs(abs(vec2<u32>(u_input.a.x & 70841u, ~570u))) ^ vec2<u32>(u_input.a.x, 41125u);
    let var_1 = arg_1.a.x;
    var var_2 = arg_1.a.zxz;
    let var_3 = vec4<bool>(any(vec3<bool>(arg_1.c, true, !global1.x)), false, arg_1.b, arg_1.c);
    return -vec2<i32>(_wgslsmith_dot_vec3_i32(arg_1.a.xzy, select(abs(vec3<i32>(-19250i, -21629i, -1i)), arg_1.a.wwx, false)), ~arg_1.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(min(-_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(37315i, 2147483647i, -1i, -15673i), vec4<i32>(-9294i, 0i, 1i, 6866i)), ~vec4<i32>(-2147483647i, 2147483647i, 0i, 0i)), abs(~vec4<i32>(45637i, -20168i, 0i, -1i) >> (vec4<u32>(1u, u_input.a.x, arg_1.x, 7996u) % vec4<u32>(32u)))), !global1.x, all(!select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, true), false), !vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x))), vec3<bool>(all(!select(vec3<bool>(global1.x, true, false), vec3<bool>(true, true, true), false)), !global1.x, global1.x));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x & -countOneBits(-1i), 0i), func_5(1i, func_4(countOneBits(_wgslsmith_add_u32(19752u, u_input.a.x)), ~arg_1.x ^ func_2(vec3<bool>(var_0.b, false, true)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-3700i, var_0.a.x, var_0.a.x, -2147483647i), vec4<i32>(0i, -3298i, -2147483647i, var_0.a.x)))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), arg_0.x))));
    global2 = abs(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(1u, _wgslsmith_add_u32(4294967295u, global2.x)))) ^ arg_1.xz;
    var_0 = func_4(global2.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, ~vec2<u32>(min(1u, global2.x), ~0u)), -max(vec4<i32>(852i, 2147483647i, 2147483647i, 0i), var_0.a | var_0.a) ^ -vec4<i32>(-2147483647i, ~41826i, -var_1.x, 1i));
    return Struct_1(vec4<i32>(var_0.a.x, 8215i, 0i, 0i), var_0.b, false, vec3<bool>(!func_4(~19197u, arg_1.x, var_0.a & var_0.a).b, false, _wgslsmith_div_f32(184f, -720f) > var_2));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global2 = firstTrailingBit(abs(~vec2<u32>(global2.x, global2.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-433f, 1268f))) + _wgslsmith_f_op_f32(floor(437f))));
    global2 = ~vec2<u32>(1u, global2.x);
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~u_input.a), reverseBits(~u_input.a)), vec3<u32>(~countOneBits(0u), 8410u, global2.x)), global2.x);
    var var_1 = ~u_input.a.zy;
    return true;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(~1u, global2.x)), u_input.a.yx);
    let var_1 = _wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a) ^ -3272i;
    let var_2 = -1000f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0)))));
    var var_3 = max(1u, 1u);
    return Struct_1(arg_1.a, !any(!select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(arg_1.c, false, global1.x, true), vec4<bool>(false, global1.x, false, true))), all(!select(!vec3<bool>(true, false, global1.x), arg_1.d, func_1(vec2<f32>(var_2, -1000f), u_input.a).d.x)), vec3<bool>(1000f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f)))), true, 3011f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, arg_2)) - _wgslsmith_f_op_f32(floor(-1000f)))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = !(!select(!(!vec3<bool>(false, false, arg_2.d.x)), vec3<bool>(arg_1.d.x, false & global1.x, all(global1.zy)), func_7(_wgslsmith_f_op_f32(f32(-1f) * -1712f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -434f)).d));
    global1 = vec3<bool>(arg_1.d.x, var_0.x, func_4(~_wgslsmith_sub_u32(u_input.a.x, global2.x) >> (abs(12811u) % 32u), global2.x, arg_1.a).b);
    global2 = vec2<u32>(global2.x, u_input.a.x);
    let var_1 = select(~(select(~vec2<u32>(151931u, u_input.a.x), ~u_input.a.zy, arg_1.d.xy) >> (_wgslsmith_div_vec2_u32(~u_input.a.zz, u_input.a.zz) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(max(10937u ^ global2.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, global2.x, 4294967295u, 90679u), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)))), select(!func_7(912f, func_7(669f, arg_1, 573f), _wgslsmith_f_op_f32(-1383f - 276f)).b, true, arg_1.b));
    let var_2 = u_input.a;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x << (~abs(global2.x) % 32u);
    global1 = func_8(Struct_1(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), -2147483647i, 0i, _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), 0i)), all(vec3<bool>(any(vec2<bool>(global1.x, global1.x)), select(true, false, global1.x), global1.x)), false, vec3<bool>(true, true, false)), func_7(120f, Struct_1(-vec4<i32>(1i, 1i, 1i, 1i), func_6(vec4<i32>(1i, 1i, 1i, 1i), func_1(vec2<f32>(-1367f, -2019f), vec3<u32>(16697u, var_0, var_0))), false, select(func_1(vec2<f32>(-1000f, -1310f), vec3<u32>(u_input.a.x, 100186u, global2.x)).d, !vec3<bool>(global1.x, false, true), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1933f, 881f, global1.x | true))))), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1202f, -245f)))), vec2<f32>(1000f, -726f)), (u_input.a ^ min(u_input.a, vec3<u32>(global2.x, global2.x, 35910u))) ^ ~(~vec3<u32>(27994u, var_0, 0u))));
    global1 = select(!vec3<bool>(all(vec4<bool>(global1.x, true, false, global1.x)), true, true), vec3<bool>(true, global1.x, global1.x), global1.x);
    let var_1 = _wgslsmith_add_i32(min(select(countOneBits(0i), 81748i, !(0u > var_0)), 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(func_4(39003u, 4294967295u, vec4<i32>(1i, 1i, 51068i, 1659i)).a.x, 1i, -2147483647i << (var_0 % 32u), 1i), ~select(firstLeadingBit(vec4<i32>(42768i, -1i, 2147483647i, -1i)), -vec4<i32>(2147483647i, -14420i, 0i, 21887i), global1.x)));
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(reverseBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, -1i, var_1, var_1), vec4<i32>(-51164i, 1i, 39966i, 1i)), min(vec4<i32>(0i, 3618i, var_1, var_1), vec4<i32>(-21770i, 2147483647i, 0i, var_1)), global1.x & global1.x)), vec4<i32>(-1i) * -abs(vec4<i32>(var_1, var_1, -43193i, var_1))), true, true, vec3<bool>(!global1.x, (-var_1 >= var_1) & select(!global1.x, global1.x, !global1.x), _wgslsmith_mult_i32(1i & var_1, var_1) <= (_wgslsmith_sub_i32(var_1, var_1) >> (_wgslsmith_sub_u32(u_input.a.x, global2.x) % 32u))));
    let var_3 = var_2;
    global2 = vec2<u32>(34811u, u_input.a.x << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, var_0), vec2<i32>(abs(-20147i), 27840i));
}

