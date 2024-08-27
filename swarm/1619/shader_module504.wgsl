struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(21701u, 2147483647i, vec3<f32>(-321f, -1192f, 1480f), Struct_1(vec3<f32>(2231f, 203f, 1174f), 1u)), Struct_2(26961u, -34073i, vec3<f32>(102f, -1016f, -1003f), Struct_1(vec3<f32>(-499f, 1223f, -1421f), 39705u)), Struct_2(1u, 10564i, vec3<f32>(861f, 945f, -1156f), Struct_1(vec3<f32>(-1210f, 841f, 308f), 4294967295u)));

var<private> global3: f32 = 304f;

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(1440f, -1713f, -2584f), 0u), Struct_1(vec3<f32>(-1000f, -146f, 550f), 7667u), Struct_1(vec3<f32>(1000f, -1000f, 1946f), 27390u), Struct_1(vec3<f32>(1229f, -248f, -427f), 1678u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = 873f;
    global0 = array<vec3<i32>, 29>();
    global1 = arg_0;
    global2 = array<Struct_2, 3>();
    var var_1 = select(vec2<bool>(!arg_0.x, all(arg_0.yy)), global1.zx, vec2<bool>(false, all(vec3<bool>(true, any(arg_0.xx), any(arg_0.wwx)))));
    return global4[_wgslsmith_index_u32(~(~(~1u)), 4u)];
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = arg_2;
    global4 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(380f * 105f))), 1000f)))));
    global3 = var_0.a.x;
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = 0i;
    var_0 = global2[_wgslsmith_index_u32(func_3(global4[_wgslsmith_index_u32(arg_1.b, 4u)], _wgslsmith_div_f32(-1098f, _wgslsmith_f_op_f32(-var_0.c.x)), global1.zx, ~u_input.c.xy), 3u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -1000f, 118f)), u_input.b);
    var_1 = -(~u_input.a.x);
    return global1.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_u32(182u, _wgslsmith_sub_u32(58920u, u_input.c.x)), abs(~firstTrailingBit(i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 677f, 1000f)), _wgslsmith_div_vec3_f32(arg_2.a, vec3<f32>(1066f, -1000f, -156f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.a.x, 347f, 326f)))), ~select(firstLeadingBit(47932u), ~arg_2.b, true)));
    var var_1 = !global1.wyy;
    var var_2 = Struct_2(_wgslsmith_mult_u32(~(arg_1.d.b ^ 34916u) ^ 4294967295u, ~(~u_input.b & _wgslsmith_clamp_u32(arg_2.b, u_input.c.x, arg_1.a))), firstLeadingBit(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(-arg_0.yx, select(vec2<i32>(-1i, arg_1.b), u_input.a, var_1.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.a, vec3<f32>(arg_3.x, 650f, arg_3.x)))))), any(!select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, true, false, global1.x), global1.x)))), var_0.d);
    let var_3 = ~vec2<i32>(_wgslsmith_mult_i32(~arg_0.x, ~var_0.b), 0i) >> (u_input.c.yz % vec2<u32>(32u));
    let var_4 = vec3<bool>(true, any(vec3<bool>(select(all(vec4<bool>(global1.x, true, var_1.x, global1.x)), true, true), !global1.x, var_1.x)), global1.x);
    return Struct_2(firstTrailingBit(var_0.d.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0.x, -u_input.a.x), -vec2<i32>(var_3.x, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-370f, -1000f, 1000f) * vec3<f32>(-490f, -344f, var_2.c.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.d.a * vec3<f32>(1194f, var_0.c.x, 246f)), arg_1.d.a, select(global1.yzw, global1.yyy, false)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.a.x, arg_3.x)), _wgslsmith_div_f32(var_0.c.x, 1070f))), func_1(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, false, true)), vec3<i32>(-10238i, 24949i, 1i)).a.x, arg_3.x)), func_1(vec4<bool>(!var_1.x, any(select(vec2<bool>(global1.x, var_4.x), vec2<bool>(false, false), var_1.x)), any(!var_4), any(select(vec4<bool>(var_4.x, false, false, false), vec4<bool>(var_4.x, var_4.x, var_1.x, global1.x), vec4<bool>(false, var_1.x, true, false)))), -(~vec3<i32>(arg_0.x, -2147483647i, var_0.b) ^ -vec3<i32>(0i, -1i, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(56490u, _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.a.x, -56225i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -61177i, -2147483647i, 13713i), vec4<i32>(44489i, -1i, 2147483647i, -15468i)))), vec3<f32>(-499f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1384f + 1092f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-822f, -243f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1311f, -192f))))), global4[_wgslsmith_index_u32(u_input.c.x ^ _wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.b, u_input.b), min(u_input.c.x, 25760u)), 4u)]);
    global2 = array<Struct_2, 3>();
    let var_1 = func_4(~global0[_wgslsmith_index_u32(u_input.b, 29u)], Struct_2(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 0u), var_0.a)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(var_0.d.a.x, var_0.c.x, -1000f))), func_1(vec4<bool>(true, global1.x & global1.x, !global1.x, true), global0[_wgslsmith_index_u32(87474u, 29u)])), func_1(vec4<bool>(all(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(true, global1.x, true, true), global1.x)), func_2(Struct_2(0u, u_input.a.x, var_0.c, Struct_1(var_0.d.a, 9515u)), global4[_wgslsmith_index_u32(var_0.d.b, 4u)]) & false, (var_0.b & 0i) < ~2147483647i, all(global1.zx)), global0[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.d.a.x, var_0.c.x, 292f) - vec4<f32>(-1000f, var_0.d.a.x, -325f, var_0.d.a.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(sign(-536f)), -1087f, -256f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1577f, 161f, var_0.c.x, var_0.d.a.x))))))));
    let var_2 = global2[_wgslsmith_index_u32(~reverseBits(var_1.d.b), 3u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x + var_2.d.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.d.a.x)), _wgslsmith_f_op_f32(var_2.c.x + -1046f)))));
    var var_4 = firstLeadingBit(~(~(42370u >> (var_2.a % 32u))));
    global1 = vec4<bool>(!all(global1.wzy), any(select(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)), select(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, false), false), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), func_2(Struct_2(var_2.a, var_0.b, var_0.d.a, var_1.d), var_1.d)), select(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, false), global1.x), select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, true)), vec4<bool>(false, false, global1.x, global1.x)))), !global1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_4(vec3<i32>(var_0.b, -16633i, 1i) | global0[_wgslsmith_index_u32(45012u, 29u)], Struct_2(0u, ~u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, 1951f, var_3.x) - var_0.d.a), Struct_1(var_1.c, 1u)), func_1(vec4<bool>(false, false, global1.x, true), global0[_wgslsmith_index_u32(51335u, 29u)] | vec3<i32>(-21354i, var_1.b, u_input.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, -1000f, var_1.d.a.x, 1000f)))))).a, 52503u, var_0.d.b, 7969u), u_input.c, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-var_1.b, select(-95663i, 1i, global1.x)), var_0.b), var_1.b, ~(~(-2660i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, -186f, -658f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-885f, var_0.c.x, 187f), vec3<f32>(var_0.c.x, var_3.x, var_3.x)))))))));
}

