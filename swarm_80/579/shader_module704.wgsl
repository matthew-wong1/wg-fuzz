struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(358f, vec3<f32>(-1747f, 185f, -912f), vec2<bool>(true, false), vec3<f32>(171f, -1005f, -507f)), Struct_3(-817f, vec3<f32>(750f, 389f, 570f), vec2<bool>(true, true), vec3<f32>(334f, 860f, -1592f)), Struct_3(1409f, vec3<f32>(1872f, 2202f, -1497f), vec2<bool>(false, false), vec3<f32>(459f, -211f, -153f)), Struct_3(-105f, vec3<f32>(-2367f, -225f, -255f), vec2<bool>(false, true), vec3<f32>(-161f, -1036f, 221f)), Struct_3(2522f, vec3<f32>(-1924f, -1248f, 775f), vec2<bool>(false, true), vec3<f32>(-1111f, 1000f, 520f)), Struct_3(1390f, vec3<f32>(-1772f, -699f, -2279f), vec2<bool>(true, true), vec3<f32>(840f, 352f, -214f)), Struct_3(-107f, vec3<f32>(258f, 1288f, -315f), vec2<bool>(true, false), vec3<f32>(177f, -413f, -143f)), Struct_3(-404f, vec3<f32>(1192f, 285f, 465f), vec2<bool>(false, true), vec3<f32>(947f, -1000f, -875f)), Struct_3(205f, vec3<f32>(233f, -714f, 321f), vec2<bool>(true, true), vec3<f32>(-1825f, -112f, -1773f)), Struct_3(-950f, vec3<f32>(-1904f, -1492f, -938f), vec2<bool>(true, false), vec3<f32>(1310f, 1046f, 308f)), Struct_3(-502f, vec3<f32>(735f, 666f, -653f), vec2<bool>(false, true), vec3<f32>(-995f, 1293f, -1000f)), Struct_3(188f, vec3<f32>(1404f, -1806f, 375f), vec2<bool>(true, false), vec3<f32>(1110f, 393f, 2043f)), Struct_3(-606f, vec3<f32>(-1152f, -763f, -1150f), vec2<bool>(false, true), vec3<f32>(-706f, 495f, -121f)), Struct_3(-229f, vec3<f32>(1013f, -1064f, -1000f), vec2<bool>(false, false), vec3<f32>(-453f, 720f, 1848f)), Struct_3(-1546f, vec3<f32>(851f, -155f, -731f), vec2<bool>(true, true), vec3<f32>(-888f, 285f, 1470f)));

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2;
    let var_1 = true;
    global2 = array<Struct_3, 15>();
    var_0 = Struct_2(Struct_1(~vec4<u32>(0u, 5085u, 4294967295u, 37502u), _wgslsmith_div_vec2_f32(vec2<f32>(-170f, -1087f), vec2<f32>(-507f, _wgslsmith_f_op_f32(min(355f, -249f)))), 1109f));
    let var_2 = _wgslsmith_div_f32(-465f, 937f);
    return _wgslsmith_dot_vec4_u32(~(~var_0.a.a), vec4<u32>(~(~(~arg_2.a.a.x)), 13092u, ~_wgslsmith_dot_vec4_u32(select(var_0.a.a, vec4<u32>(1u, var_0.a.a.x, 4638u, 25662u), vec4<bool>(var_1, true, var_1, var_1)), max(vec4<u32>(4294967295u, u_input.a.x, var_0.a.a.x, u_input.a.x), vec4<u32>(1u, var_0.a.a.x, 4294967295u, arg_2.a.a.x))), _wgslsmith_mod_u32(reverseBits(~arg_2.a.a.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.a.a.x, var_0.a.a.x, u_input.a.x, 4294967295u)), ~arg_2.a.a))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = 26210u;
    var var_1 = _wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 44980u), ~u_input.a)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 87095u), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b))) ^ countOneBits(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 595f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 2199f, 633f)), Struct_2(Struct_1(vec4<u32>(31570u, u_input.b, 6268u, u_input.b), vec2<f32>(2404f, -1000f), global0.x)))));
    global3 = array<Struct_1, 2>();
    global2 = array<Struct_3, 15>();
    var var_2 = ~vec3<i32>(-57080i, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -16366i, 2147483647i), vec3<i32>(2147483647i, 6972i, -28828i)), u_input.e);
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1399f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 1524f, 1552f), vec3<f32>(-1903f, global0.x, -2590f))))))))), vec2<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), -288f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, 425f), global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f) - arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -158f)), arg_0.d, vec2<bool>(!arg_0.c.x, arg_0.c.x | (arg_2.a.x == ~u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c, arg_1.x, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d))) + arg_0.b));
    let var_1 = arg_2.a.x;
    let var_2 = arg_0;
    global3 = array<Struct_1, 2>();
    var_0 = global2[_wgslsmith_index_u32(func_3(_wgslsmith_div_vec3_f32(var_2.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, global0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, var_2.a, 1959f))))), _wgslsmith_f_op_vec3_f32(-var_2.d), Struct_2(arg_2)), 15u)];
    return global1[_wgslsmith_index_u32(10834u, 3u)];
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = false;
    var var_1 = !select(vec3<bool>(_wgslsmith_f_op_f32(max(-1000f, global0.x)) > 289f, !(global0.x < -785f), arg_1.c.x), vec3<bool>(all(vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), func_4(Struct_3(959f, arg_1.b, vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.b), _wgslsmith_f_op_vec2_f32(arg_1.d.yy * vec2<f32>(1292f, -773f)), global3[_wgslsmith_index_u32(1u, 2u)], -u_input.c.x).c.x, false), select(!(arg_0 >= -853f), _wgslsmith_f_op_f32(global0.x * 151f) > _wgslsmith_f_op_f32(-global0.x), func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 36478u), 15u)], vec2<f32>(arg_0, arg_0), Struct_1(vec4<u32>(u_input.b, 66803u, u_input.a.x, u_input.b), vec2<f32>(global0.x, arg_0), arg_1.b.x), firstTrailingBit(u_input.d)).c.x));
    global2 = array<Struct_3, 15>();
    global3 = array<Struct_1, 2>();
    var var_2 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1626f, -1378f)) * 1824f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3269f + -1467f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.x, global0.x)), global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1.d + arg_1.d)))))), Struct_2(global3[_wgslsmith_index_u32(func_3(_wgslsmith_div_vec3_f32(arg_1.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_0, 531f) + arg_1.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1426f, arg_1.d.x, arg_0))), Struct_2(global3[_wgslsmith_index_u32(u_input.b, 2u)])), 2u)]));
    return Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 2u)]);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> vec3<f32> {
    var var_0 = u_input.b;
    let var_1 = true;
    var var_2 = func_5(1380f, func_4(func_2(30256i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -296f)))))), global3[_wgslsmith_index_u32(0u, 2u)], u_input.c.x));
    var var_3 = func_5(global0.x, func_4(Struct_3(_wgslsmith_f_op_f32(-989f + _wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1586f, 760f, -1321f), vec3<f32>(-510f, 730f, -450f)))), vec2<bool>(!var_1, !arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1243f, -1505f), vec3<f32>(-1000f, -670f, global0.x)))), var_2.a.b, var_2.a, ~(-_wgslsmith_div_i32(18656i, -9818i)))).a;
    let var_4 = -1139f;
    return vec3<f32>(_wgslsmith_f_op_f32(-var_3.c), var_2.a.c, _wgslsmith_f_op_f32(-global0.x));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = arg_2.c;
    var var_1 = ~(-3595i);
    var_1 = u_input.c.x ^ -22832i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0.x + 227f), _wgslsmith_f_op_f32(floor(arg_0.x)), arg_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1846f)) - -181f) - global0.x), 1710f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-732f, global0.x, _wgslsmith_f_op_f32(floor(global0.x)))) - _wgslsmith_f_op_vec3_f32(func_1(u_input.d, select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), global2[_wgslsmith_index_u32(u_input.a.x, 15u)]));
    var var_1 = func_5(var_0.x, func_4(func_2(7635i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xz, vec2<f32>(2222f, 507f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1528f), var_0.zx, false))))), func_5(var_0.x, func_2(-u_input.c.x)).a, _wgslsmith_dot_vec2_i32(reverseBits(u_input.c), select(vec2<i32>(-1i, u_input.c.x), u_input.c, vec2<bool>(false, false)) & u_input.c)));
    var var_2 = Struct_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 15u)]).a);
    let var_3 = ~(~(~(~var_2.a.a.xyz)));
    var var_4 = Struct_2(Struct_1(firstLeadingBit(min(vec4<u32>(u_input.a.x, 1u, 41788u, 86221u) ^ var_2.a.a, var_1.a.a)), var_2.a.b, _wgslsmith_f_op_f32(631f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - -1003f))))));
    var_1 = Struct_2(global3[_wgslsmith_index_u32(var_1.a.a.x, 2u)]);
    global1 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, u_input.e, 2147483647i, u_input.d), vec4<i32>(u_input.e, u_input.e, 23019i, u_input.c.x)), min(vec4<i32>(u_input.d, u_input.e, u_input.c.x, u_input.c.x), vec4<i32>(0i, u_input.e, -1i, u_input.d)) & (vec4<i32>(-8248i, u_input.e, u_input.d, 56107i) << (var_1.a.a % vec4<u32>(32u)))), vec4<i32>(max(-2147483647i, u_input.d) >> (~4294967295u % 32u), ~(-740i), _wgslsmith_mod_i32(u_input.e, u_input.e), u_input.c.x)), select(vec3<u32>(var_2.a.a.x, 65576u, var_1.a.a.x) | var_1.a.a.zzx, func_5(_wgslsmith_div_f32(-1000f, -490f), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_4.a.a.x, var_3.x, 0u), 3u)]).a.a.ywx, _wgslsmith_dot_vec2_u32(var_2.a.a.xw, var_3.xx) == 23369u) ^ firstLeadingBit(_wgslsmith_mult_vec3_u32(var_3 & var_3, var_3)), ~u_input.a.x, var_4.a.a.xxx);
}

