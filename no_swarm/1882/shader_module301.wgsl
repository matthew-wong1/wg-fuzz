struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 29649u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(27090u, 0u), vec2<u32>(26936u, 46038u), vec2<u32>(38808u, 2053u), vec2<u32>(4294967295u, 1u), vec2<u32>(36567u, 16756u), vec2<u32>(85278u, 2894u), vec2<u32>(1u, 4294967295u));

var<private> global1: Struct_2 = Struct_2(-1467f, 1u, Struct_1(0u, vec2<i32>(0i, 0i), vec2<i32>(-1i, -9174i)), -37731i, Struct_1(72402u, vec2<i32>(-2378i, i32(-2147483648)), vec2<i32>(-17762i, -6189i)));

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(1186f, -273f, 1122f, 309f), vec4<f32>(-1151f, 1253f, -1000f, -314f), vec4<f32>(1212f, 272f, -1815f, -2170f), vec4<f32>(-607f, 462f, -451f, 1060f), vec4<f32>(928f, 1886f, 1000f, 324f), vec4<f32>(1375f, 376f, -110f, 417f), vec4<f32>(-874f, -311f, 1822f, 1211f), vec4<f32>(-1391f, 528f, -1000f, 286f), vec4<f32>(922f, -1274f, -2003f, -462f), vec4<f32>(463f, 1000f, 1253f, 646f), vec4<f32>(869f, 280f, 1090f, -351f), vec4<f32>(-394f, 1000f, 1083f, -197f), vec4<f32>(-613f, -1922f, 224f, -1803f));

var<private> global3: vec2<bool>;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(15586u, 11u)], vec2<u32>(global1.b, 0u), vec2<u32>(global1.b, global1.b)), ~global0[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_mod_u32(4294967295u, abs(reverseBits(_wgslsmith_clamp_u32(arg_0.a, arg_0.a, 47548u)))));
    let var_1 = ~(-10737i);
    var var_2 = _wgslsmith_f_op_f32(-global1.a);
    global3 = select(vec2<bool>(global3.x, !(!global3.x)), vec2<bool>(any(vec2<bool>(true, true)), global3.x), !(true && global3.x));
    var_0 = 36239u;
    return (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) - 1076f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, -2364f)) * 514f)) || global3.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = arg_2.c.a;
    let var_1 = global1.e;
    var var_2 = select(vec4<bool>(func_3(Struct_1(~4294967295u, abs(u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_2.c.b.x), vec2<i32>(arg_2.d, u_input.a.x)))), 0u < _wgslsmith_add_u32(_wgslsmith_div_u32(21086u, arg_0.a), _wgslsmith_div_u32(var_0, 74739u)), any(!vec4<bool>(arg_1, true, true, arg_1)), global3.x), select(!select(!vec4<bool>(arg_1, false, true, global3.x), select(vec4<bool>(false, global3.x, true, false), vec4<bool>(arg_1, global3.x, true, global3.x), vec4<bool>(false, true, false, global3.x)), any(vec3<bool>(true, global3.x, false))), !(!(!vec4<bool>(true, arg_1, true, arg_1))), arg_1), vec4<bool>(true, true, 0u > _wgslsmith_div_u32(select(var_0, 0u, arg_1), _wgslsmith_mult_u32(17135u, var_0)), !global3.x));
    var var_3 = ~1u;
    var var_4 = select(!vec4<bool>(arg_1, (var_0 >= arg_2.c.a) || (320f >= arg_2.a), firstTrailingBit(global1.e.b.x) >= ~(-1i), true), !select(!vec4<bool>(var_2.x, arg_1, global3.x, global3.x), select(select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, false, true, true), vec4<bool>(arg_1, true, arg_1, false)), vec4<bool>(global3.x, arg_1, true, true), select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(false, true, false, true), var_2.x)), (u_input.a.x >= -35702i) || arg_1), !select(select(select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(var_2.x, global3.x, false, arg_1), vec4<bool>(global3.x, true, false, global3.x)), select(vec4<bool>(true, false, arg_1, true), vec4<bool>(var_2.x, arg_1, false, false), vec4<bool>(false, true, var_2.x, false)), select(vec4<bool>(global3.x, false, false, var_2.x), vec4<bool>(false, true, false, var_2.x), arg_1)), !(!vec4<bool>(arg_1, arg_1, global3.x, false)), !(!var_2.x)));
    return global0[_wgslsmith_index_u32(29487u, 11u)];
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = global1.e;
    let var_1 = Struct_2(arg_0.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(func_2(Struct_1(34308u, arg_0.c.b, vec2<i32>(0i, u_input.a.x)), false, Struct_2(global1.a, 22564u, global1.e, -20925i, Struct_1(4294967295u, var_0.b, global1.c.c))), ~vec2<u32>(global1.b, arg_0.e.a)), ~global0[_wgslsmith_index_u32(min(~123857u, _wgslsmith_clamp_u32(1u, 4294967295u, arg_0.e.a)), 11u)]), Struct_1(38056u, reverseBits(vec2<i32>(_wgslsmith_mod_i32(-24996i, 2147483647i), 0i)), -firstTrailingBit(vec2<i32>(-3642i, var_0.c.x) >> (global0[_wgslsmith_index_u32(var_0.a, 11u)] % vec2<u32>(32u)))), _wgslsmith_div_i32(select(~(-16319i), arg_0.e.b.x, true), -1i) << (1u % 32u), Struct_1(2931u, -(~(-vec2<i32>(var_0.c.x, -2147483647i))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_0.c.x), -vec2<i32>(var_0.b.x, 2147483647i)))));
    let var_2 = Struct_2(-918f, (var_1.c.a ^ var_0.a) >> (0u % 32u), Struct_1(122052u, ~vec2<i32>(arg_0.c.c.x << (1540u % 32u), ~(-10242i)), reverseBits(vec2<i32>(0i, var_0.b.x) << (global0[_wgslsmith_index_u32(66375u, 11u)] % vec2<u32>(32u))) | firstLeadingBit(reverseBits(global1.c.c))), _wgslsmith_dot_vec3_i32(reverseBits(abs(min(vec3<i32>(-2147483647i, 1i, 49760i), vec3<i32>(arg_0.d, arg_0.c.c.x, -12732i)))), ~min(_wgslsmith_sub_vec3_i32(vec3<i32>(-490i, 38739i, var_1.d), vec3<i32>(arg_0.e.c.x, 22091i, global1.c.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.b.x, u_input.a.x, 0i), vec3<i32>(arg_0.d, var_0.b.x, 0i)))), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(27242u, 72026u, var_1.e.a, 0u)), ~(~vec4<u32>(var_0.a, var_0.a, 1u, var_0.a))), var_0.c, global1.e.b));
    var var_3 = ~(17538u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42215u, arg_0.e.a), select(vec3<u32>(51755u, 74533u, 22072u), vec3<u32>(var_0.a, 31610u, var_2.b), false)));
    global0 = array<vec2<u32>, 11>();
    return _wgslsmith_sub_vec3_i32(countOneBits(select(vec3<i32>(-arg_0.c.b.x, -var_1.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, -4311i, -5014i), vec3<i32>(global1.e.b.x, -8464i, -26761i))), vec3<i32>(select(var_2.d, var_0.b.x, true), u_input.a.x >> (1u % 32u), 0i), select(select(vec3<bool>(false, global3.x, true), vec3<bool>(true, false, false), vec3<bool>(global3.x, global3.x, false)), vec3<bool>(global3.x, global3.x, true), select(vec3<bool>(global3.x, true, true), vec3<bool>(global3.x, global3.x, global3.x), global3.x)))), abs(_wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(var_2.c.c.x, 1i, var_0.c.x)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(78922i, var_2.c.c.x, var_0.b.x), vec3<i32>(var_1.e.c.x, -1i, -2147483647i)), vec3<i32>(u_input.a.x, -87654i, arg_0.c.c.x) | vec3<i32>(15918i, u_input.a.x, -7103i)), max(countOneBits(vec3<i32>(-2147483647i, -2147483647i, var_2.c.c.x)), firstTrailingBit(vec3<i32>(2147483647i, var_2.e.c.x, var_0.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(global3.x, global3.x);
    var var_0 = global1.a;
    var var_1 = true;
    global4 = !all(select(select(select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(false, global3.x, global3.x), global3.x), select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false), global3.x), select(vec3<bool>(false, global3.x, true), vec3<bool>(false, false, true), vec3<bool>(true, true, global3.x))), select(vec3<bool>(global3.x, true, true), vec3<bool>(global3.x, false, false), global1.a > -188f), select(all(vec3<bool>(false, true, global3.x)), false, true)));
    var var_2 = ~global1.b;
    global4 = true | !(!(global1.c.a <= 1181u) && any(vec2<bool>(global3.x, true)));
    var var_3 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, func_1(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f - global1.a) * global1.a), ~1u, global1.c, _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(var_3.b.x, global1.d)), Struct_1(global1.b, global1.c.c, u_input.a << (global0[_wgslsmith_index_u32(global1.e.a, 11u)] % vec2<u32>(32u))))), -min(~(u_input.a.x << (global1.e.a % 32u)), 2147483647i), ~(-2147483647i));
}

