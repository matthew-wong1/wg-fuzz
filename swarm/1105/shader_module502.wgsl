struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -1i);

var<private> global2: array<u32, 2> = array<u32, 2>(40221u, 0u);

var<private> global3: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 13524u), vec2<u32>(53075u, 60808u), vec2<u32>(83745u, 1u), vec2<u32>(1u, 1u), vec2<u32>(10841u, 41465u), vec2<u32>(1760u, 6698u), vec2<u32>(6022u, 24054u), vec2<u32>(4294967295u, 40543u), vec2<u32>(4294967295u, 0u), vec2<u32>(29110u, 35901u), vec2<u32>(1u, 1u), vec2<u32>(59260u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 59495u), vec2<u32>(1093u, 88545u), vec2<u32>(1u, 13062u), vec2<u32>(13009u, 22539u));

var<private> global4: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = Struct_3(!vec4<bool>(arg_1.a.x, !all(vec4<bool>(false, arg_0.b, true, false)), false, true), global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], arg_1.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(624f, -1385f)))), 135319u, arg_0.b, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 32410u), arg_1.c.yyx), 4294967295u), _wgslsmith_dot_vec4_u32(~var_0.c, arg_1.c ^ vec4<u32>(1u, arg_1.c.x, 19012u, global2[_wgslsmith_index_u32(45219u, 2u)]))));
    var var_2 = vec4<bool>(true, var_1.c, any(!(!var_0.a)), false);
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.a), vec2<f32>(-1359f, var_1.a))) - vec2<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), var_1.a)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(-649f - 2240f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a, -1378f, false)), _wgslsmith_div_f32(var_1.a, 1425f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1430f, var_1.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 1000f)))))), all(arg_0.a.zyx)));
    return arg_0.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global0 = array<bool, 7>();
    let var_0 = Struct_2(max(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(47876u, 16134u), ~vec2<u32>(arg_0.d, 0u)), vec2<u32>(arg_0.d, 34590u)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.c.x, 2u)], 2u)]), abs(_wgslsmith_mult_u32(47778u, arg_0.b)))));
    let var_1 = ~(vec4<i32>(-1i) * -vec4<i32>(global1.x, select(2147483647i, global1.x, arg_0.c), -u_input.b, global1.x));
    global0 = array<bool, 7>();
    global2 = array<u32, 2>();
    return ~(-abs(global1.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    var var_0 = !(!(!select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(28623u, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], false)), !vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], false))));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-arg_0.x), 4294967295u, global0[_wgslsmith_index_u32(1u, 7u)], ~54693u), abs(vec4<u32>(~func_3(Struct_3(vec4<bool>(var_0.x, var_0.x, true, false), global0[_wgslsmith_index_u32(1u, 7u)], vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(30868u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41501u, 2u)], 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), Struct_3(vec4<bool>(true, false, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(73520u, 7u)], vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), global1.x), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(44786u, 2u)]), 2u)], ~global2[_wgslsmith_index_u32(min(4294967295u, u_input.c.x), 2u)], _wgslsmith_mod_u32(u_input.c.x, 31795u))));
    var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(43806u, global2[_wgslsmith_index_u32(29740u, 2u)]), 7u)], any(var_0.xy), any(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false, var_0.x), global0[_wgslsmith_index_u32(u_input.c.x, 7u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-360f + -1152f), -447f)));
    var var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>((4294967295u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)] % 32u)) & 1u, _wgslsmith_mod_u32(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)] << (4294967295u % 32u)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x << (33812u % 32u), 2u)], 2u)]), vec3<u32>(27130u, 28326u, ~_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], 2u)])));
    let var_3 = ~_wgslsmith_add_u32(select(abs(_wgslsmith_mod_u32(16922u, 1u)), ~func_3(Struct_3(vec4<bool>(var_0.x, false, false, global0[_wgslsmith_index_u32(1u, 7u)]), var_0.x, vec4<u32>(u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 55050u)), Struct_3(vec4<bool>(true, true, var_0.x, false), false, vec4<u32>(21974u, 46177u, var_2.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 2u)], 2u)])), -841i), !all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 7u)], var_0.x))), countOneBits(max(1u, _wgslsmith_clamp_u32(0u, 67571u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)]))));
    return Struct_3(!(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 2u)], 7u)], var_0.x, var_0.x, true)))), any(var_0.yy), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, (u_input.c.x & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]) | _wgslsmith_add_u32(var_3, 0u), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(9195u, 2u)], u_input.c.x & global2[_wgslsmith_index_u32(4294967295u, 2u)]), global2[_wgslsmith_index_u32(~var_3, 2u)]), vec4<u32>(1u, global2[_wgslsmith_index_u32(0u, 2u)], 10040u, 19747u >> (0u % 32u))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_4 {
    return Struct_4(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(60982u, 12856u, 36252u), arg_1.c.zxy), min(4294967295u, 90413u)), vec2<u32>(0u, 52433u) ^ (vec2<u32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]) ^ arg_1.c.zz))), u_input.a);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_2 {
    global2 = array<u32, 2>();
    global4 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(981f, 352f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 992f), arg_3.zy))))) - arg_3.zy), arg_2.b.x).a.x;
    global4 = global0[_wgslsmith_index_u32(1u, 7u)] | arg_0.c;
    var var_0 = arg_0;
    let var_1 = vec2<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(arg_0.d, arg_2.a.a.x), ~6821u), 7u)]);
    return func_5(arg_3, Struct_3(!vec4<bool>(global0[_wgslsmith_index_u32(~var_0.b, 7u)], false, !global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(func_5(arg_3, Struct_3(vec4<bool>(var_1.x, var_0.c, true, true), false, vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(32606u, 2u)], arg_1, 0u)), u_input.a, arg_0).a.a.x, 7u)]), false, max(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(arg_0.d, 2u)], u_input.c.x, 0u), vec4<u32>(31970u, arg_2.a.a.x, 4294967295u, arg_1) ^ vec4<u32>(0u, var_0.d, 6017u, arg_0.d)), ~vec4<u32>(0u, arg_0.b, u_input.c.x, 4294967295u))), firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(-u_input.a.x, global1.x, select(global1.x, u_input.a.x, false)), firstTrailingBit(-51776i))), arg_0).a;
}

fn func_7(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(select(select(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 7u)] || arg_0, false, all(vec3<bool>(true, false, true)), false), vec4<bool>(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(27254u, 2u)], 7u)], true, true, select(false, false, false)), !vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(4294967295u, 7u)], true)), !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, -718f)), 15916i).a, false), select(!(select(2147483647i, -59989i, true) == _wgslsmith_clamp_i32(0i, 4497i, 33160i)), global0[_wgslsmith_index_u32(47193u, 7u)] || false, any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)] >> (arg_1.a.x % 32u), 7u)]))), firstTrailingBit(vec4<u32>(64879u, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1221f, -2100f)), u_input.a.x).c.x, ~abs(global2[_wgslsmith_index_u32(4294967295u, 2u)]), ~(~arg_1.a.x))));
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f + 454f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-175f * 973f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326f - -1491f)))), Struct_3(vec4<bool>(u_input.b >= select(global1.x, u_input.a.x, global0[_wgslsmith_index_u32(var_0.c.x, 7u)]), all(func_2(vec2<f32>(781f, 116f), global1.x).a), arg_0, true), any(!select(vec2<bool>(arg_0, true), var_0.a.yy, vec2<bool>(false, var_0.a.x))), _wgslsmith_mod_vec4_u32(var_0.c, var_0.c)), vec2<i32>(reverseBits(-1i), 1i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f + -855f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f))), 4294967295u, false, max(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(42875u, u_input.c.x, 1u)), var_0.c.zxy), var_0.c.x)));
    var var_2 = Struct_1(_wgslsmith_div_f32(1132f, -801f), ~u_input.c.x, true, max(arg_1.a.x, func_6(Struct_1(_wgslsmith_f_op_f32(1069f + -1977f), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 2u)], arg_1.a.x), select(true, var_0.a.x, true), 35904u), ~arg_1.a.x, var_1, vec3<f32>(_wgslsmith_f_op_f32(sign(-290f)), _wgslsmith_f_op_f32(-169f + -318f), _wgslsmith_f_op_f32(round(1789f)))).a.x));
    global4 = all(vec2<bool>(all(var_0.a.xy), var_2.a < var_2.a));
    let var_3 = !(!any(vec3<bool>(select(global0[_wgslsmith_index_u32(29790u, 7u)], var_2.c, var_0.a.x), select(var_0.a.x, var_2.c, true), 1u < global2[_wgslsmith_index_u32(var_0.c.x, 2u)])));
    return func_6(Struct_1(var_2.a, 1u, var_3, var_0.c.x), u_input.c.x & u_input.c.x, var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1756f, -735f))), -816f, _wgslsmith_f_op_f32(var_2.a - _wgslsmith_div_f32(var_2.a, var_2.a)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = func_7(true, func_6(arg_0, ~61630u, func_5(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(2287f - arg_0.a), arg_0.a), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1618f, arg_0.a)), ~30958i), ~select(u_input.a, u_input.a, true), arg_0), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a * 851f), _wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(arg_0.a + -361f))))));
    global2 = array<u32, 2>();
    global4 = !(!all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]))) & !arg_0.c;
    global4 = any(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.c, true, false), !arg_0.c)), !(false | arg_0.c), !(global0[_wgslsmith_index_u32(var_0.a.x, 7u)] && arg_0.c), !all(select(vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, false), true))));
    let var_1 = global3[_wgslsmith_index_u32(1u, 17u)];
    return _wgslsmith_f_op_f32(-1104f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.a))))))));
}

fn func_8(arg_0: bool, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    global2 = array<u32, 2>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(835f, 1519f))) - _wgslsmith_f_op_f32(sign(-521f))))));
    let var_1 = ~countOneBits(vec3<i32>(_wgslsmith_clamp_i32(-17348i, -24922i, -42954i), global1.x, _wgslsmith_sub_i32(u_input.b, 7128i)) | ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 33908i, global1.x), vec3<i32>(-18265i, 7243i, global1.x), vec3<i32>(global1.x, 19537i, 13343i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, -443f, -137f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, 566f, 478f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-599f, -659f, 490f), vec3<f32>(1000f, -839f, -102f), false)), vec3<f32>(-543f, -521f, -1602f))), 1i <= global1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-2117f)), -1273f, _wgslsmith_f_op_f32(708f + 399f)))));
    var var_3 = Struct_4(Struct_2(u_input.c), ~vec2<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(-var_1.x, abs(-55699i))));
    return countOneBits(func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1463f), _wgslsmith_f_op_f32(252f * 721f), _wgslsmith_div_f32(1003f, -2065f)))), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -201f) + vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-963f, -1644f) * vec2<f32>(-1711f, var_2.x)))), _wgslsmith_div_i32(var_1.x, _wgslsmith_mult_i32(var_3.b.x, -27712i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(global1.x, u_input.b), ~u_input.b), _wgslsmith_mod_vec2_i32(var_3.b >> (u_input.c % vec2<u32>(32u)), var_3.b), -(~u_input.a)), Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(var_2.x, global2[_wgslsmith_index_u32(8863u, 2u)], false, u_input.c.x), firstLeadingBit(vec4<u32>(var_3.a.a.x, 45891u, 32489u, global2[_wgslsmith_index_u32(10394u, 2u)])), ~vec3<u32>(global2[_wgslsmith_index_u32(51705u, 2u)], 1u, 4294967295u), min(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 4294967295u, 13531u), vec4<u32>(21809u, var_3.a.a.x, global2[_wgslsmith_index_u32(var_3.a.a.x, 2u)], 4294967295u)))), 1u, !(!global0[_wgslsmith_index_u32(4294967295u, 7u)]), var_3.a.a.x)).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)], 2u)];
    var var_1 = _wgslsmith_sub_i32(func_8(_wgslsmith_f_op_f32(func_1(Struct_1(222f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], false, u_input.c.x), vec4<u32>(global2[_wgslsmith_index_u32(1u, 2u)], 71126u, 0u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], 45445u, 1u), vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], 70223u))) <= 1f, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-557f, -880f) * vec2<f32>(-1394f, 1306f)), -2147483647i).a, countOneBits(global1.x << (0u % 32u)), vec3<bool>(!global0[_wgslsmith_index_u32(32274u, 7u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49716u, 2u)], 2u)], 29166u), 2u)], 7u)], any(vec2<bool>(false, false)))), -_wgslsmith_div_i32(global1.x, 1i)) ^ _wgslsmith_add_i32(-_wgslsmith_mod_i32(global1.x ^ global1.x, u_input.b), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(func_5(vec3<f32>(-307f, -925f, 293f), Struct_3(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17334u, 2u)], 7u)]), false, vec4<u32>(u_input.c.x, u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 2u)], 4294967295u)), u_input.a, Struct_1(-990f, u_input.c.x, true, 6990u)).b, abs(vec2<i32>(global1.x, -44533i))), -global1.x));
    var var_2 = !(!select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 7u)], false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 22771u), 7u)]), vec2<bool>(true, false)));
    let var_3 = 4294967295u;
    var var_4 = func_7(var_2.x != global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x & 26183u, var_3), 2u)], 7u)], Struct_2(u_input.c << (vec2<u32>(32835u, ~1829u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 38570i);
}

