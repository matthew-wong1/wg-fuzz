struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: array<f32, 19>;

var<private> global2: vec4<u32> = vec4<u32>(5823u, 4294967295u, 0u, 1u);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(564f, 384f, -288f), vec2<u32>(12466u, 1u), 0u, vec3<u32>(6224u, 26866u, 43229u)), Struct_1(vec3<f32>(1000f, 137f, -1423f), vec2<u32>(9788u, 31566u), 33363u, vec3<u32>(0u, 652u, 4294967295u)), Struct_1(vec3<f32>(1271f, 1000f, -323f), vec2<u32>(1u, 0u), 8014u, vec3<u32>(90970u, 83625u, 13336u)), Struct_1(vec3<f32>(-950f, 2283f, 207f), vec2<u32>(0u, 0u), 4431u, vec3<u32>(4294967295u, 25652u, 48379u)), Struct_1(vec3<f32>(-535f, 715f, 358f), vec2<u32>(65250u, 0u), 1u, vec3<u32>(0u, 62999u, 100254u)), Struct_1(vec3<f32>(893f, 750f, -636f), vec2<u32>(5310u, 47249u), 21507u, vec3<u32>(0u, 4294967295u, 41049u)), Struct_1(vec3<f32>(-596f, 394f, -2137f), vec2<u32>(13023u, 0u), 2823u, vec3<u32>(4262u, 1u, 12367u)), Struct_1(vec3<f32>(491f, -1159f, 933f), vec2<u32>(1u, 4294967295u), 0u, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<f32>(451f, -701f, -1093f), vec2<u32>(43799u, 1u), 51742u, vec3<u32>(0u, 1u, 7067u)), Struct_1(vec3<f32>(-1478f, 655f, -3329f), vec2<u32>(1u, 44374u), 33866u, vec3<u32>(8046u, 0u, 1u)), Struct_1(vec3<f32>(-125f, -1000f, -1098f), vec2<u32>(1u, 1u), 20642u, vec3<u32>(15267u, 1u, 4294967295u)), Struct_1(vec3<f32>(388f, -808f, -514f), vec2<u32>(48265u, 20748u), 1u, vec3<u32>(1u, 4294967295u, 14856u)), Struct_1(vec3<f32>(-1316f, 1173f, 343f), vec2<u32>(0u, 1u), 0u, vec3<u32>(4294967295u, 5252u, 74800u)), Struct_1(vec3<f32>(-360f, -2099f, -1000f), vec2<u32>(1u, 0u), 42048u, vec3<u32>(0u, 9901u, 8616u)), Struct_1(vec3<f32>(1681f, 796f, 1133f), vec2<u32>(16092u, 4212u), 1659u, vec3<u32>(5149u, 17665u, 0u)), Struct_1(vec3<f32>(338f, 392f, 2489f), vec2<u32>(0u, 9461u), 4294967295u, vec3<u32>(84828u, 0u, 0u)), Struct_1(vec3<f32>(-405f, 483f, -621f), vec2<u32>(30523u, 4294967295u), 9867u, vec3<u32>(1u, 4294967295u, 25239u)), Struct_1(vec3<f32>(627f, 1223f, 1262f), vec2<u32>(14119u, 13761u), 4294967295u, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<f32>(-1943f, 978f, -152f), vec2<u32>(12882u, 0u), 1u, vec3<u32>(10693u, 0u, 1u)), Struct_1(vec3<f32>(1042f, -1187f, -353f), vec2<u32>(0u, 34302u), 1u, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<f32>(1630f, 261f, 227f), vec2<u32>(4294967295u, 63518u), 0u, vec3<u32>(4294967295u, 18519u, 1u)), Struct_1(vec3<f32>(-1838f, 1000f, 1980f), vec2<u32>(0u, 4294967295u), 4294967295u, vec3<u32>(58246u, 4294967295u, 20438u)), Struct_1(vec3<f32>(-699f, -703f, -854f), vec2<u32>(41100u, 1u), 30271u, vec3<u32>(33047u, 60338u, 13106u)), Struct_1(vec3<f32>(1013f, -1526f, -586f), vec2<u32>(1u, 17570u), 1u, vec3<u32>(16011u, 45799u, 1u)), Struct_1(vec3<f32>(-710f, -793f, -1000f), vec2<u32>(4294967295u, 1u), 1u, vec3<u32>(4294967295u, 2581u, 39959u)), Struct_1(vec3<f32>(-1000f, -536f, 419f), vec2<u32>(46825u, 4294967295u), 56771u, vec3<u32>(124899u, 6430u, 1903u)), Struct_1(vec3<f32>(278f, -273f, 856f), vec2<u32>(4294967295u, 0u), 0u, vec3<u32>(1u, 41286u, 24708u)), Struct_1(vec3<f32>(882f, -888f, 387f), vec2<u32>(31518u, 1u), 2508u, vec3<u32>(16852u, 66735u, 21455u)), Struct_1(vec3<f32>(2253f, -191f, -1000f), vec2<u32>(37126u, 50712u), 1u, vec3<u32>(3131u, 17318u, 1u)), Struct_1(vec3<f32>(-860f, 1298f, 1328f), vec2<u32>(25748u, 79341u), 1u, vec3<u32>(1u, 82470u, 0u)), Struct_1(vec3<f32>(-721f, -1541f, 1000f), vec2<u32>(4294967295u, 21091u), 33963u, vec3<u32>(0u, 0u, 4294967295u)));

var<private> global4: array<vec4<i32>, 22>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1297f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 19u)])))) * -2266f));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(28851u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], 1578f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(569f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(92295u, 19u)])), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)))) * vec3<f32>(global1[_wgslsmith_index_u32(select(0u, 44482u, any(vec2<bool>(true, true))), 19u)], global1[_wgslsmith_index_u32(firstLeadingBit(~10719u), 19u)], 1139f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, global1[_wgslsmith_index_u32(global2.x, 19u)], -2142f)));
    var var_2 = vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i);
    var var_3 = min(~1i, -25688i);
    var var_4 = -2147483647i;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1141f, 219f, global1[_wgslsmith_index_u32(48067u, 19u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 19u)], 1064f, 419f))), vec3<f32>(-872f, -678f, global1[_wgslsmith_index_u32(u_input.b, 19u)]))), _wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x)), vec3<bool>(true, true, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), vec2<u32>(54975u, global2.x), 7711u, (max(abs(vec3<u32>(global2.x, 4294967295u, 40190u)), global0[_wgslsmith_index_u32(0u, 10u)] ^ vec3<u32>(global2.x, 28792u, 106804u)) << (~global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 10u)] % vec3<u32>(32u))) | ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 0u, 17704u), global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec3<u32>(1u, 1u, 1u)));
    let var_1 = _wgslsmith_div_f32(-204f, _wgslsmith_f_op_vec3_f32(func_3()).x) > var_0.a.x;
    global1 = array<f32, 19>();
    return Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1155f * 572f))))), u_input.a, ~(~75319u), var_0.d);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), -2038f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1908u, 19u)])), _wgslsmith_f_op_f32(f32(-1f) * -453f), global1[_wgslsmith_index_u32(reverseBits(var_0.d.x), 19u)]))));
    let var_2 = select(-1i, ~abs(-(~u_input.c.x)), !all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))));
    let var_3 = func_2();
    global3 = array<Struct_1, 31>();
    return Struct_1(var_3.a, vec2<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c, u_input.d.x, 1u), vec3<u32>(var_0.d.x, 4294967295u, 1u))), var_0.c), ~(firstLeadingBit(countOneBits(u_input.b)) ^ _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_div_u32(40134u, 50791u), ~4294967295u)), vec3<u32>(min(countOneBits(var_3.c << (2376u % 32u)), 18362u), 4294967295u, ~4294967295u ^ global2.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    global4 = array<vec4<i32>, 22>();
    global1 = array<f32, 19>();
    let var_0 = all(vec2<bool>(true, true));
    let var_1 = arg_2;
    global2 = ~(~(~abs(vec4<u32>(arg_3.d.x, arg_3.c, arg_3.b.x, arg_3.d.x))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(23111u, 19u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(11423u, 19u)] + arg_3.a.x), _wgslsmith_f_op_f32(floor(-520f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 19u)], 246f, global1[_wgslsmith_index_u32(arg_0.x, 19u)])))))), arg_3.a, !vec3<bool>(var_0, any(vec3<bool>(true, arg_1, true)), all(vec3<bool>(true, var_0, arg_1))))) + arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, 0u, 27196u, global2.x)), 19u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 19u)])) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(82022u, 19u)], global1[_wgslsmith_index_u32(global2.x, 19u)], 760f)) * _wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], true, u_input.c.x, func_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], -347f, global1[_wgslsmith_index_u32(global2.x, 19u)]), vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 19u)], -1235f), global4[_wgslsmith_index_u32(40542u, 22u)]))))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global2.x), vec2<u32>(~global2.x, select(1u, 0u, true))), ~(~vec2<u32>(global2.x, global2.x))), global2.x, ~(~vec3<u32>(u_input.d.x, 1u, u_input.d.x)));
    var var_1 = global3[_wgslsmith_index_u32(1u, 31u)];
    global1 = array<f32, 19>();
    let var_2 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-max(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), reverseBits(u_input.c.xx)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, ~vec4<u32>(121222u, 7692u, 1u, 4294967295u)) << ((_wgslsmith_sub_vec4_u32(u_input.d, u_input.d) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.d), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~var_0.c, func_2().b.x) | abs(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(var_1.c, 62105u), u_input.d.xw), _wgslsmith_clamp_vec2_u32(global2.yz, var_0.d.xx, ~vec2<u32>(var_0.d.x, var_1.c))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_0.d.x, 10u)], global0[_wgslsmith_index_u32(62502u, 10u)]), u_input.a.x << (global2.x % 32u)) << (u_input.a.x % 32u)), reverseBits(1i), ~(u_input.d.zz >> (var_1.d.yy % vec2<u32>(32u))));
}

