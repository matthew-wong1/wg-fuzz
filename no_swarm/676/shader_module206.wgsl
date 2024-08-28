struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 13> = array<f32, 13>(-670f, 364f, -948f, 1074f, -566f, -484f, -342f, -1029f, -1467f, -1146f, -1478f, 278f, 765f);

var<private> global3: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> u32 {
    var var_0 = vec2<i32>(u_input.e.x, arg_0.a);
    global1 = -countOneBits(_wgslsmith_mod_vec2_i32(u_input.e.zz, u_input.e.xw));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.b.d.zz), arg_0.e)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b, 13u)])), -1589f)), global2[_wgslsmith_index_u32(arg_0.b.b.x, 13u)]) + _wgslsmith_f_op_vec2_f32(trunc(arg_0.e))));
    var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, 33023i), u_input.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.d.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_div_f32(-613f, var_1.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.b.b.x, _wgslsmith_mod_u32(4294967295u, u_input.b)), 13u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(252f)) * arg_0.b.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -903f)));
    return min(31298u, 48738u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, ~u_input.b, 1u), u_input.b, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(24303u, u_input.b, u_input.b)), vec3<u32>(19714u, 1u, 0u)), firstTrailingBit(_wgslsmith_mod_u32(65241u, 31008u))), vec4<u32>(reverseBits(u_input.b), abs(u_input.b), 1u, func_3(Struct_5(-43790i, Struct_1(true, vec3<u32>(1u, 1u, 95263u), arg_0.zw, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], 614f, -1684f, -848f)), arg_0.x, 0u, vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(47825u, 13u)])), false)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(78271u, u_input.b, u_input.b, 69483u)) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], 949f), vec3<f32>(1000f, -718f, 204f))))), Struct_1(any(select(arg_0, vec4<bool>(true, true, arg_0.x, true), arg_0.x)), vec3<u32>(1u, ~u_input.b, u_input.b), !vec2<bool>(true, arg_0.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1484f, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], -1003f))))), u_input.b, select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !arg_0, arg_0.x), arg_0, all(vec3<bool>(false, true, arg_0.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(27262u, 13u)], -795f, -1421f))) - vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 13u)] * global2[_wgslsmith_index_u32(7668u, 13u)]), 1f, _wgslsmith_f_op_f32(sign(-413f)))), Struct_1(select(true, false, false) | true, vec3<u32>(~48538u, 5042u, 8958u), vec2<bool>(all(arg_0.xw), false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(637f, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(43036u, 13u)])))))), select(func_3(Struct_5(-2147483647i, Struct_1(arg_0.x, vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<bool>(arg_0.x, arg_0.x), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], -1000f, -241f, global2[_wgslsmith_index_u32(1u, 13u)])), false, u_input.b, vec2<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.b, 13u)])), arg_0.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, 0u, 4294967295u, 4294967295u), vec4<u32>(41469u, u_input.b, 0u, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 77797u, u_input.b))), any(arg_0.xy)), !select(!arg_0, vec4<bool>(arg_0.x, true, false, true), vec4<bool>(true, true, true, true))), true);
    var var_1 = Struct_1(var_0.b.d.x, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_0.c.c, 36586u), var_0.b.b.b), var_0.b.b.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(u_input.b), 13u)] + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.c.b.b, vec3<u32>(5315u, u_input.b, var_0.c.c)), 13u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1143f), -567f)));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.c.b.b.zx, _wgslsmith_sub_vec2_u32(select(select(vec2<u32>(var_0.c.c, u_input.b), var_1.b.yy, arg_0.wz), max(var_1.b.xy, var_1.b.yy), select(var_0.b.b.c, arg_0.ww, true)), ~var_0.c.b.b.zx) >> (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(6629u, u_input.b), var_0.c.b.b.zx, countOneBits(vec2<u32>(u_input.b, 17672u))), var_0.c.b.b.yx ^ vec2<u32>(var_1.b.x, var_0.b.b.b.x)) % vec2<u32>(32u))), 13u)];
    var var_2 = var_0.d;
    var var_3 = var_0.b;
    return Struct_1(!(!var_3.b.c.x), ~_wgslsmith_sub_vec3_u32(~(var_1.b << (var_3.b.b % vec3<u32>(32u))), var_1.b << ((vec3<u32>(var_3.b.b.x, 5976u, var_1.b.x) | var_0.c.b.b) % vec3<u32>(32u))), !select(var_0.c.d.yw, var_3.d.yw, true), var_1.d);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global2 = array<f32, 13>();
    global3 = -835f;
    global3 = global2[_wgslsmith_index_u32(func_3(Struct_5(-2147483647i & ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), arg_0.b.b, !any(select(vec4<bool>(false, arg_0.a.c.x, false, true), vec4<bool>(true, false, true, arg_0.a.c.x), arg_0.b.d)), u_input.b, vec2<f32>(arg_0.b.b.d.x, 234f)), all(!arg_0.b.d)), 13u)];
    var var_0 = Struct_2(arg_0.b.a, arg_0.b.b, arg_0.b.c, vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(false, arg_0.b.d.x, false)), true, true));
    var var_1 = Struct_5(global1.x, arg_0.c.b, var_0.d.x, ~(~arg_0.c.b.b.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2150f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.a.x)))))));
    return Struct_1(func_2(select(select(arg_0.c.d, select(vec4<bool>(false, false, false, false), vec4<bool>(true, var_1.b.c.x, true, false), var_0.b.a), !vec4<bool>(var_1.b.c.x, false, arg_0.a.a, true)), arg_0.b.d, !(!arg_0.c.d)), vec2<i32>(_wgslsmith_mult_i32(global1.x, ~(-2147483647i)), firstLeadingBit(_wgslsmith_add_i32(global1.x, var_1.a)))).a, var_1.b.b, var_0.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, -1000f, arg_0.c.b.d.x, -358f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -982f, -619f, -107f))), _wgslsmith_f_op_vec4_f32(-var_1.b.d))), var_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(524f, global2[_wgslsmith_index_u32(u_input.b, 13u)], 1294f, -158f) * var_0.b.d)))));
}

fn func_1() -> i32 {
    let var_0 = vec3<bool>(select(true, any(vec2<bool>(true, true)), true | any(vec2<bool>(false, false))) != true, global2[_wgslsmith_index_u32(0u, 13u)] != -1385f, !any(vec2<bool>(true, true)));
    var var_1 = var_0.x;
    let var_2 = -2147483647i;
    var var_3 = func_4(Struct_3(func_2(!(!vec4<bool>(false, var_0.x, false, var_0.x)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(29686i, u_input.a.x)), -u_input.e.yw)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2[_wgslsmith_index_u32(reverseBits(56522u), 13u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(33591u, 13u)] - -1348f)), Struct_1(true, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)), var_0.zz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2102f, global2[_wgslsmith_index_u32(1u, 13u)], 677f, -632f))), _wgslsmith_mod_u32(29912u, u_input.b), !select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, var_0.x, true))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], 597f, 557f))), Struct_1(true, ~vec3<u32>(u_input.b, u_input.b, 1u), var_0.yx, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(29226u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]) + vec4<f32>(global2[_wgslsmith_index_u32(1u, 13u)], -1106f, 2765f, global2[_wgslsmith_index_u32(4294967295u, 13u)]))), u_input.b, vec4<bool>(var_0.x && false, var_0.x, var_0.x, true))));
    let var_4 = Struct_1(!var_3.c.x, firstLeadingBit(var_3.b), !var_0.xz, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_3.d.x, 1000f)))), 1030f, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(0u, var_3.b.x)), 13u)], var_3.d.x))));
    return global1.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_4 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1214f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -327f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_4(Struct_3(Struct_1(true, vec3<u32>(1u, u_input.b, 48144u), arg_2.d.xy, arg_2.b.d), arg_2, Struct_2(vec3<f32>(635f, -1010f, arg_2.b.d.x), arg_2.b, u_input.b, arg_2.d))).d.x))));
    global0 = array<vec4<i32>, 10>();
    global2 = array<f32, 13>();
    global0 = array<vec4<i32>, 10>();
    var var_0 = any(arg_2.d.xz);
    return Struct_4(~_wgslsmith_div_u32(func_4(Struct_3(arg_2.b, arg_2, Struct_2(vec3<f32>(arg_1.x, -1124f, 1000f), Struct_1(true, arg_2.b.b, vec2<bool>(true, false), vec4<f32>(arg_2.b.d.x, global2[_wgslsmith_index_u32(62441u, 13u)], arg_1.x, -246f)), 24909u, arg_2.d))).b.x, ~0u), Struct_2(arg_1, func_4(Struct_3(Struct_1(false, vec3<u32>(87692u, 1668u, arg_2.b.b.x), arg_2.d.wz, vec4<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(43292u, 13u)], arg_1.x)), Struct_2(arg_1, arg_2.b, u_input.b, arg_2.d), arg_2)), ~(~arg_2.c) << (61824u % 32u), vec4<bool>(false, all(arg_2.d.yxw), arg_2.d.x && (arg_2.b.c.x || true), func_2(select(vec4<bool>(arg_2.b.a, true, arg_2.b.c.x, arg_2.b.c.x), arg_2.d, false), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), arg_3)).c.x)), arg_2, !(42247u >= _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.b.b, arg_2.b.b), arg_2.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = vec2<i32>(global1.x, -u_input.e.x);
    let var_1 = func_5(vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(func_1() << (_wgslsmith_div_u32(1u, u_input.b) % 32u), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 1i), u_input.e.zx)), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(9278i, global1.x, -1i, global1.x)) | _wgslsmith_div_i32(global1.x, u_input.a.x)), -727i, select(abs(38659i | u_input.d), -(i32(-1i) * -8023i), !any(vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(38978u, 13u)], -648f, -312f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(20040u, 13u)], 1324f, global2[_wgslsmith_index_u32(41219u, 13u)]) * vec3<f32>(949f, 827f, global2[_wgslsmith_index_u32(u_input.b, 13u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1500f, -1357f, -426f)), vec3<f32>(global2[_wgslsmith_index_u32(26406u, 13u)], 260f, 900f), var_0)))), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-102f, _wgslsmith_f_op_f32(select(1236f, -785f, var_0)), 1101f), func_4(Struct_3(Struct_1(var_0, vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<bool>(var_0, true), vec4<f32>(2350f, 572f, global2[_wgslsmith_index_u32(u_input.b, 13u)], 1053f)), Struct_2(vec3<f32>(358f, global2[_wgslsmith_index_u32(38784u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]), Struct_1(true, vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<bool>(var_0, var_0), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)])), u_input.b, vec4<bool>(var_0, var_0, var_0, false)), Struct_2(vec3<f32>(1245f, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]), Struct_1(false, vec3<u32>(32670u, 4294967295u, u_input.b), vec2<bool>(false, var_0), vec4<f32>(-340f, -114f, global2[_wgslsmith_index_u32(u_input.b, 13u)], 443f)), u_input.b, vec4<bool>(true, var_0, false, true)))).d.zzw, all(vec4<bool>(true, var_0, var_0, true)) != (var_0 || true))), Struct_1(any(vec4<bool>(true, false, var_0, true)) && true, ~vec3<u32>(67578u, 73936u, u_input.b), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)] < -764f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(74839u, 13u)], -992f, 918f, 2087f) + vec4<f32>(1354f, 412f, 587f, 476f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(439f, global2[_wgslsmith_index_u32(1u, 13u)], -844f, global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<f32>(1479f, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(11850u, 13u)], -119f), vec4<bool>(var_0, var_0, true, true))))), 1u, !select(!vec4<bool>(false, var_0, var_0, true), !vec4<bool>(var_0, var_0, false, false), true)), abs(firstLeadingBit(firstTrailingBit(-vec2<i32>(0i, global1.x)))));
    var var_2 = Struct_3(var_1.c.b, Struct_2(var_1.c.a, func_4(Struct_3(func_5(global0[_wgslsmith_index_u32(20713u, 10u)], var_1.b.a, Struct_2(vec3<f32>(-1936f, 1201f, -1000f), Struct_1(false, vec3<u32>(u_input.b, 4294967295u, var_1.b.b.b.x), vec2<bool>(var_1.c.d.x, false), vec4<f32>(-916f, -1214f, global2[_wgslsmith_index_u32(var_1.c.c, 13u)], global2[_wgslsmith_index_u32(var_1.a, 13u)])), var_1.a, var_1.b.d), vec2<i32>(25291i, global1.x)).c.b, Struct_2(var_1.c.a, Struct_1(var_1.d, var_1.b.b.b, vec2<bool>(true, true), var_1.c.b.d), var_1.b.c, vec4<bool>(false, var_1.b.d.x, false, true)), Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(var_1.a, 13u)], -647f), Struct_1(var_0, vec3<u32>(var_1.b.c, 20669u, var_1.b.b.b.x), var_1.b.d.xx, var_1.c.b.d), u_input.b, vec4<bool>(true, var_0, false, var_1.c.d.x)))), _wgslsmith_sub_u32(19485u >> (u_input.b % 32u), 57241u) | 1u, vec4<bool>(any(var_1.b.d), all(select(vec4<bool>(var_0, var_0, var_1.b.d.x, false), var_1.b.d, vec4<bool>(var_1.d, var_1.b.b.c.x, var_0, var_1.c.b.a))), !var_0, u_input.a.x < ~2147483647i)), var_1.c);
    global3 = -665f;
    var var_3 = var_1.b.b.b.zx & vec2<u32>(1u, _wgslsmith_sub_u32(var_2.b.b.b.x | var_1.b.b.b.x, _wgslsmith_dot_vec2_u32(var_2.b.b.b.xy, var_1.c.b.b.xz)));
    var var_4 = Struct_3(var_2.c.b, func_5(~u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.d.yyw) * _wgslsmith_f_op_vec3_f32(select(var_2.c.a, var_2.c.a, false)))), var_2.b, vec2<i32>(global1.x, global1.x)).c, var_1.b);
    var var_5 = func_5(firstTrailingBit(vec4<i32>(firstTrailingBit(-1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.e.x, u_input.d, global1.x), -u_input.e.x, ~(-17738i)), -2147483647i, ~global1.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 841f, var_4.c.a.x)))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1302f, 704f, 315f) + vec3<f32>(global2[_wgslsmith_index_u32(3184u, 13u)], 1000f, var_2.b.a.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, var_2.b.b.d.x, var_4.b.b.d.x)) * _wgslsmith_f_op_vec3_f32(var_4.b.b.d.xyz + var_2.b.b.d.xwx))), var_2.b.b, var_3.x, select(!(!var_1.b.d), func_5(u_input.e, vec3<f32>(global2[_wgslsmith_index_u32(55810u, 13u)], 404f, var_2.c.b.d.x), var_1.c, vec2<i32>(8463i, 2147483647i)).c.d, !var_4.b.d.x)), vec2<i32>(firstTrailingBit(~global1.x), global1.x)).b.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.b.d.x, var_5.x, var_5.x, global2[_wgslsmith_index_u32(var_2.c.b.b.x, 13u)]))) + var_4.a.d))), vec3<i32>(global1.x, abs(select(~u_input.a.x, global1.x, u_input.a.x < 2147483647i)), firstTrailingBit(u_input.c)), var_4.a.b.yx);
}

