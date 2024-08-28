struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 1i, -18044i), vec3<u32>(19797u, 60275u, 0u), 18986i, vec3<u32>(45135u, 14891u, 68129u), 0u);

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<u32> {
    global0 = Struct_1(vec3<i32>(u_input.d, 27950i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.a.zy, firstLeadingBit(global0.a.xy)), 1i)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.c.b.x, 8579u), arg_2.c.d.zx) >> (~(~arg_1.a.e) % 32u), arg_2.d.d.x, ~4294967295u), global1.d.c, select(abs(~vec3<u32>(arg_3.x, 0u, arg_1.a.e)), _wgslsmith_sub_vec3_u32(arg_1.c.d, vec3<u32>(1u, global0.e, 1u)) | ~arg_1.a.b, select(any(vec2<bool>(false, false)), !(arg_2.b != arg_2.b), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))), ~(~(global1.a.b.x ^ u_input.a.x) ^ reverseBits(arg_3.x)));
    global1 = Struct_2(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), Struct_1(arg_2.d.a, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.a.d.x, 4294967295u, 4294967295u), global1.a.d), ~_wgslsmith_mod_vec3_u32(global0.d, vec3<u32>(arg_1.d.e, arg_1.a.e, arg_2.c.b.x))), u_input.b, abs(vec3<u32>(abs(9906u), 1u << (u_input.a.x % 32u), firstLeadingBit(global1.c.d.x))), 1u), Struct_1(global0.a, ~(~_wgslsmith_clamp_vec3_u32(arg_3.yxw, arg_1.a.d, vec3<u32>(global0.e, 40156u, 28698u))), firstTrailingBit(arg_1.a.c), select(_wgslsmith_add_vec3_u32(~global1.d.d, ~vec3<u32>(0u, global0.b.x, 18366u)), firstTrailingBit(_wgslsmith_div_vec3_u32(global1.d.b, arg_2.d.b)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), select(arg_1.d.b.x, global1.d.e, true)), arg_1.e);
    let var_0 = ~arg_3;
    var var_1 = _wgslsmith_dot_vec2_i32(~(-_wgslsmith_clamp_vec2_i32(max(vec2<i32>(-24768i, -23143i), global0.a.zy), -vec2<i32>(arg_2.d.c, arg_2.d.a.x), global1.d.a.xy)), ~vec2<i32>(u_input.d, 22107i));
    global1 = Struct_2(arg_2.c, -648f, Struct_1(firstLeadingBit(~global1.c.a >> (arg_2.a.d % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(arg_1.d.d, countOneBits(_wgslsmith_mult_vec3_u32(arg_1.d.d, global0.b))), _wgslsmith_dot_vec3_i32(firstTrailingBit(~arg_1.d.a), arg_2.d.a), ~abs(global1.d.d), (_wgslsmith_mod_u32(arg_3.x, arg_2.d.d.x) | 4294967295u) >> (select(_wgslsmith_add_u32(var_0.x, 4294967295u), 98962u, true) % 32u)), Struct_1(~(arg_2.d.a << (var_0.ywz % vec3<u32>(32u))), arg_1.a.d, arg_2.e.x, var_0.yyw, ~(~(~4294967295u))), countOneBits(vec2<i32>(global1.a.c, arg_1.e.x)));
    return _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(abs(~arg_1.a.e)), ~arg_3.x), select(~global0.d.zz, ~vec2<u32>(~1u, arg_2.a.d.x), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = -439f;
    global1 = Struct_2(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -556f), global1.d, Struct_1(-min(vec3<i32>(arg_1.x, global1.a.c, arg_2.a.x), abs(global0.a)), vec3<u32>(_wgslsmith_mod_u32(~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, u_input.a.x), arg_2.b)), ~(~1u), _wgslsmith_dot_vec2_u32(func_3(268f, Struct_2(Struct_1(vec3<i32>(-1i, -9474i, 2147483647i), arg_2.d, -4914i, vec3<u32>(43928u, 1u, arg_0), 41115u), global1.b, global1.d, Struct_1(vec3<i32>(-7852i, 0i, global0.c), vec3<u32>(60445u, global1.a.e, 28981u), arg_2.a.x, global0.d, 4294967295u), arg_1), Struct_2(Struct_1(global1.d.a, vec3<u32>(arg_0, 0u, arg_0), -5655i, vec3<u32>(global0.e, 21035u, 7649u), 17703u), 694f, Struct_1(vec3<i32>(arg_2.a.x, -1i, u_input.d), vec3<u32>(global1.d.b.x, 32506u, u_input.e), arg_1.x, global1.d.d, 37821u), arg_2, global0.a.zx), vec4<u32>(global0.d.x, 39655u, 1u, global1.c.e)), global1.c.b.zz >> (arg_2.d.yx % vec2<u32>(32u)))), min(_wgslsmith_add_i32(2147483647i, u_input.d) | (-55199i << (u_input.a.x % 32u)), -37982i), vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(14268u, arg_0), _wgslsmith_div_u32(1u, arg_0) & 47527u), 0u), _wgslsmith_clamp_vec2_i32(abs(-arg_1), ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.c, 1i), arg_2.a.zy) | -min(vec2<i32>(u_input.d, 0i), vec2<i32>(32090i, u_input.d)), reverseBits(firstLeadingBit(~arg_1))));
    var var_1 = global1.c.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(select(arg_3.x, -736f, true)), var_0, -477f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_div_f32(219f, 453f), _wgslsmith_f_op_f32(var_0 - global1.b), _wgslsmith_f_op_f32(step(var_0, 899f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1381f, -143f, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -788f, 1000f, var_0)))))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), false), true))));
    let var_3 = Struct_2(global1.a, _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_div_f32(1389f, _wgslsmith_f_op_f32(f32(-1f) * -867f)))), arg_2, Struct_1(-(~(global0.a >> (vec3<u32>(86147u, u_input.c.x, 65795u) % vec3<u32>(32u)))), ~global0.b, ~arg_1.x, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, global0.b.x) & global1.d.d, ~vec3<u32>(60538u, global0.b.x, global1.d.e)), global1.a.b), 4294967295u), _wgslsmith_mult_vec2_i32(-select(global0.a.yz << (global1.d.b.zy % vec2<u32>(32u)), vec2<i32>(arg_2.c, -36630i), true), -(_wgslsmith_add_vec2_i32(vec2<i32>(global0.c, u_input.d), vec2<i32>(-54753i, -1i)) & (global0.a.yz & vec2<i32>(arg_2.c, 7351i)))));
    return Struct_2(var_3.c, var_3.b, arg_2, Struct_1(~abs(-vec3<i32>(global0.c, 2147483647i, 1i)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.e, ~848u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 71338u, 6623u), vec4<u32>(u_input.e, u_input.e, var_3.c.b.x, var_3.d.d.x))), vec3<u32>(global0.e, ~arg_0, _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(global1.a.b.x, 1u, 1u)))), u_input.d, var_3.a.b, global1.c.b.x << (63386u % 32u)), var_3.a.a.zx);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec2<bool>(1u <= arg_0.x, all(select(vec4<bool>(all(vec2<bool>(true, false)), true, true, global1.a.a.x < 2147483647i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, select(true, false, false)))));
    global0 = global1.c;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.b);
    var var_2 = ~0i;
    var_2 = abs(_wgslsmith_div_i32(reverseBits(~min(-2147483647i, 13629i)), _wgslsmith_mod_i32(abs(global1.d.c ^ 1i), _wgslsmith_mult_i32(arg_1.d.a.x & -18766i, _wgslsmith_add_i32(-34790i, 13964i)))));
    return 80166u;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = !all(vec4<bool>(u_input.a.x > _wgslsmith_add_u32(0u, global0.b.x), false, false, var_0.x));
    let var_2 = Struct_1(vec3<i32>(global1.d.a.x ^ 1i, u_input.d, -2147483647i), vec3<u32>(_wgslsmith_sub_u32(func_4(_wgslsmith_div_vec3_u32(arg_2.d, arg_2.d), func_2(global0.e, arg_1.xx, Struct_1(global0.a, global0.b, -4762i, global0.d, arg_2.e), vec2<f32>(294f, -955f))), 0u), 0u, reverseBits(0u)), 1i, vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u), 6860u, ~min(min(51454u, 12375u), 0u)), ~arg_2.e);
    global0 = Struct_1(global1.c.a, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.c.b.x, 4294967295u, 0u), global1.d.b) & ~abs(vec3<u32>(global1.c.b.x, var_2.d.x, global0.b.x))), func_2(31337u, _wgslsmith_sub_vec2_i32(global1.c.a.yx << (vec2<u32>(1u, 40952u) % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(var_2.a.zx, arg_1.yz)), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, arg_0))))).d.c, vec3<u32>(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b * 980f))), func_2(_wgslsmith_sub_u32(var_2.e, 50035u), arg_1.zz, func_2(u_input.c.x, global1.c.a.xy, global1.a, vec2<f32>(global1.b, -180f)).c, vec2<f32>(1385f, global1.b)), func_2(~0u, global0.a.zy, Struct_1(var_2.a, vec3<u32>(169u, u_input.a.x, 1u), global1.e.x, vec3<u32>(global1.d.d.x, 27074u, 19808u), arg_2.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1000f) + vec2<f32>(327f, arg_0))), vec4<u32>(global1.d.e, 1u, var_2.d.x | 4294967295u, ~0u)).x, global1.d.d.x, ~4294967295u), arg_2.d.x);
    var var_3 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1114f, 287f, var_1)) + _wgslsmith_div_f32(global1.b, -1045f))))));
    return Struct_1((arg_2.a << (reverseBits(vec3<u32>(68635u, global1.d.b.x, var_2.e)) % vec3<u32>(32u))) | ~(-arg_2.a >> (global1.a.d % vec3<u32>(32u))), global0.d, reverseBits(3490i), vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.e, arg_2.d.x), 13539u, ~_wgslsmith_sub_u32(var_2.d.x, global0.b.x)), 4294967295u, u_input.e), 28460u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(global1.b, -global1.d.a, global1.d), 750f, global1.c, Struct_1(vec3<i32>(_wgslsmith_mult_i32(abs(u_input.d), _wgslsmith_mod_i32(u_input.d, -30764i)), ~global0.c, -1i), global1.a.b, -u_input.d, ~(~vec3<u32>(26381u, global1.a.e, 1u) & _wgslsmith_mod_vec3_u32(global0.b, global1.c.d)), 54334u), vec2<i32>(global1.e.x << ((global1.a.d.x >> (1u % 32u)) % 32u), ~u_input.d) | vec2<i32>(global0.a.x, global0.c));
    global0 = func_2(u_input.a.x, _wgslsmith_clamp_vec2_i32(global0.a.yz, ~((global1.a.a.yx >> (u_input.c % vec2<u32>(32u))) & _wgslsmith_sub_vec2_i32(vec2<i32>(-38059i, global0.c), vec2<i32>(15639i, -2147483647i))), _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, -3298i), global0.a.xz >> (vec2<u32>(15436u, 0u) % vec2<u32>(32u))) >> (vec2<u32>(func_2(u_input.a.x, global1.c.a.xz, Struct_1(global1.c.a, vec3<u32>(global1.a.e, global0.b.x, 4294967295u), global0.a.x, global1.a.b, 4835u), vec2<f32>(global1.b, global1.b)).d.b.x, ~global0.e) % vec2<u32>(32u))), Struct_1(~(~(~global0.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 62248u, _wgslsmith_div_u32(5074u, 1u)), abs(min(global0.b, global1.d.b))), -1i >> ((global1.a.d.x ^ select(1u, 69528u, false)) % 32u), ~max(min(global0.d, vec3<u32>(u_input.e, 0u, global0.d.x)), func_1(global1.b, vec3<i32>(global0.c, global0.a.x, 5983i), global1.a).d), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.e), vec3<u32>(global1.c.d.x, 0u, 45893u) | global0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1044f + global1.b), _wgslsmith_f_op_f32(sign(111f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-713f, global1.b), vec2<f32>(global1.b, -418f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 902f))))))).a;
    var var_0 = vec4<u32>(_wgslsmith_div_u32(~global1.c.b.x, func_1(-1316f, global0.a, global1.d).d.x), 69372u, global1.c.e, 4294967295u >> (_wgslsmith_div_u32(1u, u_input.e) % 32u)) << (vec4<u32>(func_4(~(~vec3<u32>(global0.e, 4294967295u, global0.e)), Struct_2(func_2(u_input.c.x, global1.d.a.xy, global1.a, vec2<f32>(-765f, -992f)).d, global1.b, Struct_1(global1.a.a, global0.d, global1.e.x, global0.d, global1.c.b.x), func_2(u_input.e, vec2<i32>(43115i, global1.c.a.x), Struct_1(global0.a, vec3<u32>(0u, 149674u, u_input.c.x), u_input.d, global0.d, global0.b.x), vec2<f32>(global1.b, 516f)).c, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.c, global0.a.x), vec2<i32>(-55203i, global0.a.x)))), (reverseBits(1u) << (~u_input.e % 32u)) ^ (countOneBits(4294967295u) & _wgslsmith_div_u32(global1.c.d.x, global1.c.d.x)), firstTrailingBit(~func_3(1363f, Struct_2(Struct_1(global1.a.a, global1.a.b, 35850i, global0.d, 1u), -1000f, global1.a, global1.c, vec2<i32>(u_input.b, 12770i)), Struct_2(Struct_1(vec3<i32>(-12891i, 0i, -2147483647i), vec3<u32>(global1.a.d.x, global0.d.x, 60135u), global0.a.x, global0.d, u_input.a.x), global1.b, global1.c, Struct_1(global0.a, global0.d, global0.c, vec3<u32>(global1.d.e, 101275u, global0.b.x), u_input.a.x), global0.a.zz), vec4<u32>(u_input.a.x, 1u, u_input.a.x, global1.d.b.x)).x), global0.b.x) % vec4<u32>(32u));
    var var_1 = vec2<u32>(1u, _wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(global0.b, vec3<u32>(4294967295u, global0.b.x, u_input.a.x)), global1.c.e), ~7480u));
    var var_2 = ~(countOneBits(0u) << (func_3(global1.b, func_2(98432u >> (var_0.x % 32u), vec2<i32>(global1.e.x, -15409i), global1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, global1.b))), func_2(~1123u, -global1.e, func_1(-1575f, global1.c.a, global1.a), vec2<f32>(-1344f, global1.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, global0.b.x, 42903u, 34503u), vec4<u32>(var_1.x, var_1.x, 4294967295u, global1.d.e))).x % 32u));
    var_2 = var_0.x ^ firstLeadingBit(global1.d.e);
    let var_3 = -(~(-u_input.d));
    var var_4 = Struct_1(-vec3<i32>(46937i, ~(-2147483647i), countOneBits(global1.a.c) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)), ~_wgslsmith_clamp_vec3_u32(global1.a.d, vec3<u32>(global1.d.b.x, 20801u, var_0.x), vec3<u32>(global1.a.d.x, global0.b.x, 20327u)) | var_0.xzx, ~global1.e.x, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.c.x, 1u, global1.c.b.x), vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<bool>(true, true, true)), vec3<u32>(var_0.x, var_1.x, 1u) >> (global0.b % vec3<u32>(32u))), abs(global1.d.b)) >> ((vec3<u32>(1u, ~u_input.c.x, var_1.x & var_1.x) | ~_wgslsmith_mult_vec3_u32(var_0.wxx, global0.d)) % vec3<u32>(32u)), abs(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(u_input.c.x, var_0.x), ~(0u ^ var_1.x), u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_div_i32(-1i & global0.c, ~global0.c)), vec4<i32>(2147483647i, -1i, ~global0.c, -(~(~var_4.c))));
}

