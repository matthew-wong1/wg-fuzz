struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(74285u, 0u), true, vec3<i32>(-1i, 0i, 12240i), 1i, vec2<f32>(319f, -561f)), Struct_1(vec2<u32>(0u, 4294967295u), false, vec3<i32>(-30968i, -23503i, -12976i), -95042i, vec2<f32>(-120f, 682f)), Struct_1(vec2<u32>(1u, 31675u), true, vec3<i32>(2147483647i, i32(-2147483648), 1i), -1i, vec2<f32>(-1339f, 581f)), Struct_1(vec2<u32>(44589u, 1u), false, vec3<i32>(-1i, -292i, i32(-2147483648)), -1i, vec2<f32>(2403f, -1619f)), Struct_1(vec2<u32>(0u, 0u), true, vec3<i32>(0i, 0i, 24714i), 0i, vec2<f32>(2107f, 170f)), Struct_1(vec2<u32>(83738u, 0u), true, vec3<i32>(1i, 2147483647i, 50712i), -12203i, vec2<f32>(182f, -128f)), Struct_1(vec2<u32>(19148u, 1u), false, vec3<i32>(i32(-2147483648), -63632i, -34980i), -1i, vec2<f32>(100f, -1156f)), Struct_1(vec2<u32>(4294967295u, 0u), true, vec3<i32>(-26447i, i32(-2147483648), 35326i), -33192i, vec2<f32>(-1303f, 1881f)), Struct_1(vec2<u32>(20415u, 21484u), false, vec3<i32>(2147483647i, 2147483647i, 31011i), -1i, vec2<f32>(1153f, 779f)), Struct_1(vec2<u32>(100415u, 7708u), true, vec3<i32>(i32(-2147483648), 0i, 2147483647i), -33992i, vec2<f32>(-723f, -1412f)), Struct_1(vec2<u32>(1u, 9282u), true, vec3<i32>(-1i, -56606i, -41232i), -31216i, vec2<f32>(774f, 1188f)));

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(i32(-2147483648)), Struct_3(-1332i), Struct_3(0i), Struct_3(i32(-2147483648)), Struct_3(2147483647i), Struct_3(21241i), Struct_3(15559i), Struct_3(-14498i), Struct_3(10339i), Struct_3(29589i), Struct_3(i32(-2147483648)), Struct_3(47820i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(-6385i), Struct_3(19057i), Struct_3(-1i), Struct_3(-38164i), Struct_3(-10394i), Struct_3(2147483647i), Struct_3(1i), Struct_3(-1i), Struct_3(0i), Struct_3(9546i), Struct_3(-13374i), Struct_3(-1i), Struct_3(1i), Struct_3(0i), Struct_3(-22015i), Struct_3(28661i));

var<private> global2: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(firstLeadingBit(56236i));
    global0 = array<Struct_1, 11>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.c, 11u)];
    let var_2 = select(!select(select(select(vec4<bool>(true, var_1.b, true, true), vec4<bool>(var_1.b, false, var_1.b, var_1.b), var_1.b), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, var_1.b, var_1.b, true)), !vec4<bool>(false, var_1.b, var_1.b, var_1.b)), vec4<bool>(true, var_1.b, var_1.b & var_1.b, true), true), select(vec4<bool>(true, _wgslsmith_f_op_f32(var_1.e.x + var_1.e.x) == 1f, false && any(vec2<bool>(true, var_1.b)), var_1.b), vec4<bool>(any(!vec3<bool>(true, false, var_1.b)), true, true, any(select(vec2<bool>(false, true), vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, var_1.b)))), var_1.b | !select(true, true, false)), false);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -367f);
    return 19308u;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = 1i;
    global1 = array<Struct_3, 30>();
    let var_1 = reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.c, u_input.c), 4294967295u, ~(~(u_input.a.x >> (0u % 32u)))));
    let var_2 = (vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, -46210i, -2147483647i, u_input.b.x), vec4<i32>(-23105i, u_input.b.x, 0i, 68125i), false), min(vec4<i32>(-2147483647i, -1i, 24262i, u_input.b.x), vec4<i32>(u_input.b.x, var_0, -15051i, u_input.b.x)))) << (vec4<u32>(_wgslsmith_add_u32(0u | func_3(), min(23991u >> (1u % 32u), u_input.a.x)), ~1u, 24590u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 25919u), u_input.a), 1u)) % vec4<u32>(32u));
    var var_3 = Struct_3(~(~countOneBits(-53269i)));
    return global0[_wgslsmith_index_u32(reverseBits(4011u), 11u)];
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = func_2(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1716f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_2.x)) + _wgslsmith_f_op_f32(floor(arg_2.x))), -519f);
    var var_1 = var_0.a;
    let var_2 = ~(~vec4<u32>(abs(var_0.a.x), var_1.x, 1u, 65739u));
    let var_3 = _wgslsmith_f_op_f32(floor(arg_2.x));
    let var_4 = func_2(min(1u, 58981u) != _wgslsmith_mult_u32(var_0.a.x << (44285u % 32u), var_1.x), -598f, -153f);
    return _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_4.c.x, var_0.d, 1i), ~(-vec4<i32>(arg_0.a, var_4.c.x, u_input.b.x, u_input.b.x)) << (abs(var_2) % vec4<u32>(32u))) << (~var_2 % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<i32>(arg_0.x, ~arg_0.x, -2147483647i);
    let var_1 = var_0.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2153f, -879f, 939f, -401f))), vec4<f32>(_wgslsmith_f_op_f32(min(128f, 2271f)), _wgslsmith_f_op_f32(1000f * -204f), -326f, _wgslsmith_f_op_f32(1510f * -112f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(244f, -1000f, 196f, 351f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1144f, 595f, 493f, 199f) - vec4<f32>(587f, -852f, -1101f, -580f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-860f, 1000f, 482f, -487f), vec4<f32>(2021f, 503f, 555f, -1000f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(770f, var_2.a.x, false)), 1767f, 510f, _wgslsmith_f_op_f32(f32(-1f) * -117f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.x, var_2.a.x, 293f, -1392f))))), var_2.a, false));
    let var_4 = !(-(~countOneBits(arg_0.x)) >= u_input.b.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(min(var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-227f, 1262f, var_3.x, var_3.x) * vec4<f32>(var_3.x, -549f, -493f, 1342f)))))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 11>();
    global1 = array<Struct_3, 30>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(global1[_wgslsmith_index_u32(1u, 30u)], vec2<bool>(all(vec4<bool>(false, true, false, false)), true), vec2<f32>(_wgslsmith_div_f32(-1133f, -1199f), 2164f))), true, select(vec4<u32>(countOneBits(0u) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 93177u, u_input.a.x) ^ vec3<u32>(1u, 74029u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 60157u, u_input.c), vec3<u32>(1u, u_input.a.x, 1u))), abs(~u_input.a.x), ~_wgslsmith_mult_u32(1u, u_input.a.x)), ~min(~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.c), ~vec4<u32>(u_input.c, 30223u, u_input.c, u_input.a.x)), select(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(any(vec3<bool>(true, true, false)), u_input.b.x >= 65198i, false, all(vec2<bool>(false, true))))), Struct_1(vec2<u32>((1u << (u_input.c % 32u)) ^ _wgslsmith_add_u32(38517u, 29655u), ~(~68960u)), any(vec4<bool>(true, select(false, false, true), u_input.b.x < -34851i, true)), reverseBits(reverseBits(vec3<i32>(-25261i, u_input.b.x, u_input.b.x))), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, func_2(false, -1153f, -141f).e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f * 277f) - 836f))));
    var var_1 = func_5(var_0, u_input.c >= (u_input.c ^ 1u), vec4<u32>(~62429u >> (u_input.a.x % 32u), ~9669u, u_input.c, 4519u >> (_wgslsmith_sub_u32(~49263u, u_input.c) % 32u)), Struct_1(~(~vec2<u32>(u_input.c, u_input.a.x)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.zz) % vec2<u32>(32u)), true, func_1(Struct_3(u_input.b.x), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, var_0.a.x))).zzy, u_input.b.x, _wgslsmith_f_op_vec2_f32(-var_0.a.zx)));
    global0 = array<Struct_1, 11>();
    let var_2 = func_2(false | select(true, false, true), _wgslsmith_f_op_f32(904f - _wgslsmith_f_op_f32(step(-1107f, var_1.a.x))), _wgslsmith_f_op_f32(-var_0.a.x));
    let var_3 = -2147483647i >> (firstTrailingBit(u_input.c) % 32u);
    global0 = array<Struct_1, 11>();
    global2 = false;
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~reverseBits(u_input.a.x), ~u_input.c) << (var_2.a.x % 32u), 30u)];
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(u_input.c, u_input.c), ~u_input.c, 34268u ^ ~var_2.a.x, 4294967295u), -2147483647i);
}

