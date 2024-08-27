struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(668f, 739f, -1681f)), Struct_1(vec3<f32>(-426f, -559f, -134f)), Struct_1(vec3<f32>(852f, 594f, -912f)), Struct_1(vec3<f32>(105f, -166f, -360f)), Struct_1(vec3<f32>(-697f, -1211f, 755f)), Struct_1(vec3<f32>(2006f, 149f, -415f)), Struct_1(vec3<f32>(545f, -295f, -502f)), Struct_1(vec3<f32>(-663f, 1148f, 971f)), Struct_1(vec3<f32>(1809f, -932f, 1000f)), Struct_1(vec3<f32>(-1032f, 922f, -1096f)), Struct_1(vec3<f32>(329f, 2237f, 349f)), Struct_1(vec3<f32>(1170f, -813f, -610f)), Struct_1(vec3<f32>(692f, 2299f, -468f)), Struct_1(vec3<f32>(879f, -691f, -1000f)), Struct_1(vec3<f32>(207f, -1903f, 1000f)), Struct_1(vec3<f32>(-681f, 1239f, -730f)), Struct_1(vec3<f32>(582f, 1575f, 513f)), Struct_1(vec3<f32>(714f, 346f, -1686f)), Struct_1(vec3<f32>(131f, 2210f, -371f)), Struct_1(vec3<f32>(224f, -1967f, 178f)), Struct_1(vec3<f32>(837f, -1012f, -1139f)), Struct_1(vec3<f32>(-1006f, 1494f, 640f)), Struct_1(vec3<f32>(1000f, 1193f, 611f)), Struct_1(vec3<f32>(1000f, -497f, 571f)), Struct_1(vec3<f32>(2258f, 1894f, -1075f)));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1176f, 459f, 475f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_dot_vec2_i32(reverseBits(u_input.a), ~_wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_0, 38327i) ^ u_input.a, u_input.a), firstTrailingBit(vec2<i32>(arg_0, -66223i))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(u_input.c, u_input.d, u_input.c, 1u) << (vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.c) % vec4<u32>(32u))))), vec4<u32>(~0u << (~(~u_input.d) % 32u), ~(~abs(u_input.c)), 1u, u_input.d)), 25u)];
    let var_2 = select(vec4<bool>(all(vec3<bool>(true, true, true)), false, all(vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, false)), true), !vec4<bool>(all(vec2<bool>(true, false)) != true, all(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, true))), select(vec4<bool>(true | any(vec2<bool>(false, false)), true, false, false), vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), true, select(u_input.b == u_input.b, true, true), true), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)))));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(firstLeadingBit(61544u), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4838u), vec2<u32>(u_input.d, u_input.d)))) ^ select(min(~vec3<u32>(28924u, 734u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 23195u)), ~firstLeadingBit(vec3<u32>(u_input.d, u_input.c, u_input.c)), all(select(var_2, var_2, vec4<bool>(true, true, false, var_2.x)))), vec3<u32>(u_input.d, 0u | ~u_input.d, u_input.c)), 25u)];
    return var_2.x;
}

fn func_2() -> u32 {
    var var_0 = 134f;
    var var_1 = func_3(-u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(754f, global1.a.x, global1.a.x, -712f) + vec4<f32>(global1.a.x, global1.a.x, 767f, global1.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1879f, global1.a.x, global1.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, global1.a.x, 1181f, global1.a.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -579f)))))), Struct_1(global1.a));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -min(vec3<i32>(0i, -1i, u_input.e), vec3<i32>(-44178i, u_input.a.x, u_input.e)), -abs(~vec3<i32>(-6790i, -55201i, -2147483647i))), _wgslsmith_mod_i32(u_input.e | u_input.e, u_input.b), -_wgslsmith_sub_i32(-114727i, ~41266i), ~(-_wgslsmith_clamp_i32(firstTrailingBit(u_input.b), u_input.b, min(u_input.a.x, u_input.a.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -1251f, -511f))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x - -1131f), global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -496f), global1.a.x)));
    let var_4 = all(vec2<bool>(true, true));
    return ~1u;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = select(vec3<i32>(abs(u_input.a.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 0i, -39179i, arg_1), -vec4<i32>(-14627i, 2147483647i, 1i, 43792i)), 0i >> (1u % 32u)), (_wgslsmith_mult_vec3_i32(-vec3<i32>(27717i, u_input.e, -22103i), ~vec3<i32>(-1i, -20305i, -45629i)) >> (~(vec3<u32>(1u, 81780u, u_input.d) >> (vec3<u32>(1u, 44701u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))) << ((~reverseBits(vec3<u32>(0u, u_input.c, 18620u)) << (~vec3<u32>(1u, u_input.c, 6516u) % vec3<u32>(32u))) % vec3<u32>(32u)), true);
    global0 = array<Struct_1, 25>();
    var var_1 = vec4<u32>(countOneBits(~_wgslsmith_add_u32(u_input.d, 4294967295u)) | _wgslsmith_mod_u32(func_2(), 12142u), u_input.c, u_input.c, 49349u);
    var_0 = ~vec3<i32>(firstTrailingBit(-min(46249i, -2147483647i)), countOneBits(arg_1), _wgslsmith_mod_i32(6752i << (_wgslsmith_add_u32(u_input.d, u_input.d) % 32u), -29377i));
    let var_2 = reverseBits(-5552i);
    return var_1.zyz;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = max(firstLeadingBit(arg_1.x), u_input.c);
    var var_2 = vec4<i32>(43360i, -2147483647i, ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(19788i, 32385i, u_input.b, -11972i)), firstTrailingBit(vec4<i32>(0i, u_input.e, u_input.b, u_input.e)) << (arg_1 % vec4<u32>(32u))), u_input.e);
    var var_3 = reverseBits(~(~3020i));
    var_3 = -_wgslsmith_sub_i32(u_input.b << (_wgslsmith_div_u32(0u, ~53356u) % 32u), var_2.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-1872f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = u_input.c;
    var var_1 = u_input.c;
    let var_2 = 144767u;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.a.x)), -754f, global1.a.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-global1.a);
    var var_4 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(346f)), var_3.x)), _wgslsmith_f_op_f32(floor(global1.a.x)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, var_2, 0u)), func_1(126f, 27469i, Struct_1(global1.a))), ~(~(~0u)), min(~min(var_2, u_input.d), 1u), u_input.d), Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_3.x)))), _wgslsmith_f_op_f32(sign(var_3.x)))), ~_wgslsmith_mult_u32(0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.a.x)), var_3.x, !all(vec3<bool>(true, true, true)))), 2147483647i, vec3<i32>(countOneBits(min(u_input.a.x, _wgslsmith_sub_i32(u_input.e, 0i))), -u_input.b, -16349i));
}

