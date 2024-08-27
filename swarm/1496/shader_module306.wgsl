struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(0i, -2633i), 1u, 71021u);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.d.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.b.x)), arg_2.d.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1134f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.b))))));
    let var_1 = ~arg_2.c.c & _wgslsmith_clamp_u32(countOneBits(u_input.b), u_input.d.x, ~select(27288u, 53172u, false));
    var_0 = vec2<f32>(1000f, 536f);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(510f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) - arg_2.b.x) + _wgslsmith_f_op_f32(select(-563f, arg_2.b.x, any(vec2<bool>(true, arg_2.d.b.x)))))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f + var_0.x)))));
    global0 = arg_2.c;
    return arg_2.d.b;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: f32) -> vec2<u32> {
    global1 = func_3(33433i, arg_0.d.b.x, arg_0);
    let var_0 = ~vec4<u32>(u_input.b, ~abs(u_input.e.x), 0u, reverseBits(countOneBits(0u))) & u_input.d;
    let var_1 = 156f;
    let var_2 = select(vec3<bool>(all(arg_0.d.b) && false, true, arg_1 < -1i), select(select(!select(vec3<bool>(true, arg_0.d.b.x, arg_0.d.b.x), vec3<bool>(global1.x, global1.x, false), global1.x), !vec3<bool>(false, arg_0.d.b.x, true), true), select(select(select(vec3<bool>(arg_0.d.b.x, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x)), !vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), select(vec3<bool>(global1.x, true, global1.x), !vec3<bool>(global1.x, global1.x, arg_0.d.b.x), !vec3<bool>(false, false, arg_0.d.b.x)), arg_0.d.b.x), arg_0.d.b.x), false);
    var var_3 = var_0.x;
    return vec2<u32>(1u, ~max(~186u, min(u_input.e.x, 0u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> vec2<f32> {
    let var_0 = Struct_3(u_input.b, -1409f, 266f, 91480u, arg_1.c);
    let var_1 = var_0.e;
    global0 = Struct_2(-abs(_wgslsmith_mult_vec2_i32(var_1.a << (vec2<u32>(5775u, arg_1.c.c) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_0.e.a, var_0.e.a))), _wgslsmith_mult_u32(var_1.c, _wgslsmith_add_u32(~(~arg_0.x), ~(8200u & arg_0.x))), _wgslsmith_mod_u32(global0.c, _wgslsmith_div_u32(var_0.e.c, var_1.c ^ var_0.e.c)));
    let var_2 = Struct_3(u_input.d.x, _wgslsmith_f_op_f32(-340f * arg_1.b.x), 359f, abs(max(u_input.b, 4294967295u)), Struct_2(_wgslsmith_mult_vec2_i32(var_0.e.a >> (select(vec2<u32>(0u, var_0.e.c), u_input.e, arg_1.d.b) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(-48727i, -1i), vec2<i32>(u_input.a, var_1.a.x))), var_0.a, arg_0.x));
    let var_3 = Struct_2(abs(vec2<i32>(-1i) * -vec2<i32>(1i, 1i)), ~1u, var_2.e.c);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-412f, -459f))))));
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(~(~func_2(Struct_4(arg_0.a.x, vec2<f32>(-1528f, 1677f), Struct_2(vec2<i32>(arg_0.a.x, arg_0.a.x), global0.c, 0u), Struct_1(vec4<f32>(-446f, -397f, -538f, 346f), vec2<bool>(true, global1.x), vec3<i32>(29119i, global0.a.x, arg_0.a.x))), u_input.c, 2527f)), Struct_4(-(~global0.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(778f, 263f)), vec2<f32>(-892f, -431f), true)), arg_0, Struct_1(vec4<f32>(-1063f, 757f, -1038f, -1453f), !vec2<bool>(global1.x, global1.x), vec3<i32>(1i, arg_0.a.x, u_input.c) >> (u_input.d.wwz % vec3<u32>(32u)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-720f, 1181f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1680f)) - _wgslsmith_f_op_f32(f32(-1f) * -1246f)), _wgslsmith_f_op_f32(f32(-1f) * -1860f))));
    var var_1 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(abs(arg_0.a), vec2<i32>(global0.a.x, global0.a.x)), select(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_0.a.x), arg_0.a)), global0.a, select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), false))), ((global0.a >> (u_input.d.xw % vec2<u32>(32u))) | vec2<i32>(-1i, global0.a.x)) >> ((~vec2<u32>(arg_0.c, 9305u) >> (~u_input.d.wy % vec2<u32>(32u))) % vec2<u32>(32u))) | arg_0.a;
    global1 = vec2<bool>(all(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x && global1.x, arg_0.b < u_input.b), select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, true), vec2<bool>(true, true), global1.x), true))), all(select(vec4<bool>(global1.x, true, arg_0.a.x > var_1.x, func_3(var_1.x, global1.x, Struct_4(u_input.c, var_0, Struct_2(global0.a, arg_0.b, 104u), Struct_1(vec4<f32>(var_0.x, 537f, var_0.x, var_0.x), vec2<bool>(global1.x, global1.x), vec3<i32>(u_input.c, -1i, arg_0.a.x)))).x), vec4<bool>(false, u_input.d.x >= 15800u, all(vec4<bool>(true, true, true, true)), false), false)));
    let var_2 = !select(select(select(!vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(global1.x, true, global1.x), global0.b == 27143u), vec3<bool>(global1.x, global1.x, true), !global1.x), vec3<bool>(all(!vec4<bool>(true, false, false, global1.x)), !global1.x, true), func_3(-17004i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, global0.b, 60250u), u_input.d.zwy) % 32u), all(!vec4<bool>(global1.x, global1.x, false, global1.x)), Struct_4(arg_0.a.x, _wgslsmith_f_op_vec2_f32(func_4(vec2<u32>(arg_0.c, global0.c), Struct_4(u_input.a, vec2<f32>(var_0.x, -686f), Struct_2(arg_0.a, global0.c, 4294967295u), Struct_1(vec4<f32>(727f, var_0.x, -1000f, var_0.x), vec2<bool>(true, false), vec3<i32>(var_1.x, 50094i, -1i))))), Struct_2(arg_0.a, 13127u, arg_0.b), Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<bool>(false, true), vec3<i32>(u_input.a, -2147483647i, -33182i)))).x);
    var var_3 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(6721u, global0.b), arg_0.c, 0u & select(global0.c, 1019u, global1.x)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 41073u, arg_0.b), vec3<u32>(arg_0.c, 1u, arg_0.b)), ~vec3<u32>(7888u, u_input.e.x, u_input.e.x), vec3<u32>(global0.b, 4294967295u, u_input.b)), vec3<u32>(25832u << (global0.b % 32u), 4294967295u, ~1u))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, 173f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(648f, _wgslsmith_f_op_f32(f32(-1f) * -512f), false))), max(~81478u, ~global0.c) >> (6403u % 32u), Struct_2(_wgslsmith_clamp_vec2_i32(-arg_0.a, vec2<i32>(2147483647i, -32319i) ^ global0.a, arg_0.a), arg_0.c, 1u));
    return Struct_4(((global0.a.x ^ arg_0.a.x) << (51772u % 32u)) ^ ~arg_0.a.x, var_0, Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-37545i, 23333i), -vec2<i32>(var_1.x, 23144i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 1i), vec2<i32>(36652i, global0.a.x))), 27961u, arg_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.c, -209f, _wgslsmith_f_op_f32(var_3.c - 337f), var_3.c))), !vec2<bool>(all(var_2), any(vec4<bool>(global1.x, var_2.x, global1.x, false))), select(max(vec3<i32>(2147483647i, var_1.x, var_1.x), vec3<i32>(-2147483647i, -51876i, var_1.x) & vec3<i32>(2147483647i, arg_0.a.x, var_3.e.a.x)), select(countOneBits(vec3<i32>(2147483647i, 13068i, u_input.c)), firstTrailingBit(vec3<i32>(1i, var_1.x, 0i)), true), var_2.x)));
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_4(global0.a.x, arg_0.d.a.ww, Struct_2(_wgslsmith_mult_vec2_i32(~global0.a, global0.a), (min(1u, global0.b) | u_input.d.x) | _wgslsmith_dot_vec3_u32(u_input.d.zwy, ~u_input.d.zyy), 19871u), func_1(arg_0.c).d);
    var var_1 = ~_wgslsmith_div_i32(-73430i, u_input.a);
    let var_2 = true;
    global0 = func_1(func_1(func_1(arg_0.c).c).c).c;
    var var_3 = ~(func_1(Struct_2(-global0.a, ~global0.b, _wgslsmith_div_u32(u_input.e.x, arg_0.c.c))).c.c << (min(~(~4294967295u), var_0.c.c) % 32u));
    return func_1(var_0.c).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~(-global0.a >> ((firstTrailingBit(u_input.e) >> (~u_input.e % vec2<u32>(32u))) % vec2<u32>(32u))), ~u_input.e.x, global0.b);
    var var_0 = func_5(func_1(Struct_2(global0.a, 93913u, ~(~3073u))), u_input.a);
    var_0 = func_5(func_1(func_5(func_1(Struct_2(var_0.a, 4294967295u, 21212u)), var_0.a.x)), var_0.a.x);
    let var_1 = -func_5(func_1(Struct_2(max(vec2<i32>(u_input.c, var_0.a.x), var_0.a), 15747u, 0u)), i32(-1i) * -31805i).a.x;
    var_0 = func_1(Struct_2(global0.a, 0u, countOneBits(~60240u) ^ u_input.d.x)).c;
    var var_2 = 804f;
    var_0 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(global0.a.x, var_0.a.x, -60822i), _wgslsmith_mod_i32(_wgslsmith_div_i32(593i, 2147483647i), var_0.a.x & global0.a.x), -1i), u_input.a), ~20043u, 66013u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1000f)) + _wgslsmith_f_op_f32(sign(1190f)))))), ~(-28370i), ~u_input.a);
}

