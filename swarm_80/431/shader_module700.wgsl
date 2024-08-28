struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<i32> = vec4<i32>(-35666i, 1i, 1i, 43296i);

var<private> global2: array<u32, 26> = array<u32, 26>(0u, 0u, 18215u, 90384u, 1u, 49296u, 1u, 1u, 1760u, 34066u, 101774u, 25423u, 4294967295u, 0u, 17843u, 491u, 43136u, 0u, 18426u, 0u, 55040u, 0u, 32846u, 4294967295u, 59860u, 1u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = Struct_1(vec2<i32>(reverseBits(_wgslsmith_sub_i32(-global1.x, 4459i)), firstLeadingBit(-global1.x)), countOneBits(u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-314f, -383f, true)), _wgslsmith_f_op_f32(-2369f - 1000f), 952f, _wgslsmith_f_op_f32(ceil(113f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1746f, 1210f, -407f) + vec4<f32>(-313f, 177f, 1646f, 1217f)))), vec4<f32>(1f, 1f, 1f, 1f)))), !(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)) == !all(vec2<bool>(true, true))));
    global1 = ~(_wgslsmith_add_vec4_i32(~vec4<i32>(35612i, arg_0, 0i, 1i), vec4<i32>(-4526i, arg_0 << (var_0.b % 32u), ~(-2147483647i), u_input.d.x)) & firstTrailingBit(vec4<i32>(arg_0, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-29324i, -2147483647i, global1.x, global1.x), vec4<i32>(var_0.a.x, -1i, var_0.a.x, u_input.a.x)), -31102i)));
    var var_1 = _wgslsmith_add_u32(1558u, 0u);
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    return _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<i32>(0i, 13236i), ~_wgslsmith_mod_u32(max(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)]), ~4294967295u), ~50735u), arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.c)) - vec4<f32>(-190f, -968f, arg_0.c.x, _wgslsmith_f_op_f32(func_3(countOneBits(-17409i), _wgslsmith_sub_u32(arg_0.b, global2[_wgslsmith_index_u32(u_input.c.x, 26u)]))))), any(select(select(!vec3<bool>(arg_0.e, arg_0.e, true), select(vec3<bool>(var_0.e, arg_0.e, false), vec3<bool>(false, var_0.e, arg_0.e), true), false), select(select(vec3<bool>(var_0.e, var_0.e, arg_0.e), vec3<bool>(true, true, arg_0.e), var_0.e), vec3<bool>(true, var_0.e, true), !arg_0.e), select(vec3<bool>(true, arg_0.e, true), vec3<bool>(arg_0.e, var_0.e, var_0.e), u_input.c.x < arg_0.b))));
    global2 = array<u32, 26>();
    global0 = true;
    let var_2 = min(global1.xzx, max(u_input.a, max(global1.wxw, countOneBits(-global1.wzy))));
    return vec3<i32>(-(~max(u_input.d.x, ~35032i)), -6861i, _wgslsmith_mult_i32(arg_0.a.x, 0i));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -1i, abs(select(global1.x, 4349i & global1.x, true)), -15217i), ~(~(~vec4<i32>(u_input.d.x, -53220i, u_input.d.x, -38924i)) & select(vec4<i32>(u_input.d.x, u_input.a.x, -19657i, 5981i), vec4<i32>(arg_1.a.x, arg_2.x, global1.x, u_input.d.x) ^ vec4<i32>(arg_2.x, 1797i, 34707i, arg_1.a.x), select(arg_1.e, arg_1.e, arg_1.e))), vec4<i32>(select((-1i >> (arg_1.b % 32u)) << (~global2[_wgslsmith_index_u32(arg_1.b, 26u)] % 32u), -countOneBits(9629i), true), i32(-1i) * -global1.x, ((6398i | u_input.a.x) | -arg_2.x) | 43374i, _wgslsmith_dot_vec3_i32(-select(arg_2, vec3<i32>(global1.x, -19198i, arg_2.x), vec3<bool>(true, arg_1.e, arg_1.e)), select(vec3<i32>(2147483647i, -33700i, 2147483647i), -global1.xyx, select(vec3<bool>(arg_1.e, true, arg_1.e), vec3<bool>(true, arg_1.e, false), arg_1.e)))));
    global0 = true;
    global2 = array<u32, 26>();
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: bool) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = func_4(arg_0.c.yxx, arg_0, func_2(Struct_1(firstLeadingBit(u_input.d), var_0.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(145f, var_0.c.x, -119f, -539f), arg_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1752f, 825f, -279f, 106f)), false)) << (firstTrailingBit(~_wgslsmith_div_vec3_u32(u_input.c.xxz, u_input.c.wyz)) % vec3<u32>(32u)));
    let var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0.b), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.b, 15721u), u_input.c.yz)), 39113u);
    let var_3 = !(!select(select(vec2<bool>(arg_3, true), select(vec2<bool>(true, var_1.e), vec2<bool>(true, arg_3), arg_1.x), arg_0.e), vec2<bool>(any(arg_1), false), !(!vec2<bool>(var_1.e, true))));
    let var_4 = Struct_1(~var_1.a, _wgslsmith_div_u32(~var_0.b, countOneBits(4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1919f, -3069f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d.x, func_4(arg_0.d.zwy, Struct_1(var_0.a, arg_0.b, vec4<f32>(var_0.d.x, var_0.d.x, 1348f, 337f), vec4<f32>(-165f, arg_0.c.x, 1658f, var_1.d.x), true), global1.wxz).d.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(exp2(var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + -192f)), var_1.d.x), vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * var_1.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -2520f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f - -1468f) + 130f)), 905f, var_1.d.x), var_0.e);
    return min(~max(~var_2, vec2<u32>(~var_0.b, ~4294967295u)), vec2<u32>(0u, var_1.b));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = vec4<i32>(arg_1.a.x, ~(~(-1i)), -func_4(arg_0.c.yyz, arg_0, vec3<i32>(0i, -98190i, -12532i)).a.x, -1i);
    var var_0 = !select(select(select(vec4<bool>(false, arg_0.e, arg_1.e, true), select(vec4<bool>(arg_0.e, false, arg_1.e, arg_0.e), vec4<bool>(arg_0.e, arg_1.e, arg_1.e, arg_1.e), vec4<bool>(arg_0.e, false, arg_0.e, arg_1.e)), !vec4<bool>(arg_1.e, false, false, false)), vec4<bool>(u_input.c.x <= global2[_wgslsmith_index_u32(arg_1.b, 26u)], !arg_1.e, !arg_1.e, true), true), select(select(!vec4<bool>(arg_0.e, true, arg_1.e, arg_0.e), vec4<bool>(arg_1.e, arg_0.e, arg_0.e, true), !vec4<bool>(true, arg_0.e, true, false)), vec4<bool>(any(vec2<bool>(false, arg_0.e)), all(vec2<bool>(arg_0.e, true)), all(vec3<bool>(arg_1.e, false, arg_0.e)), select(arg_1.e, true, arg_1.e)), vec4<bool>(true, true, true, true)), !all(!vec3<bool>(true, true, arg_0.e)));
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, arg_0.c.x)) * arg_1.c.wwx), vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(min(arg_0.d.x, arg_1.d.x)), arg_0.c.x)) + arg_0.d.wzw), Struct_1(vec2<i32>(-(~global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(19474i, 2147483647i, 0i), vec3<i32>(-9335i, u_input.d.x, global1.x)) >> ((global2[_wgslsmith_index_u32(u_input.c.x, 26u)] | 28491u) % 32u)), global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32(0u, 71017u) & arg_1.b, abs(~49247u)), 26u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c)))))), vec4<f32>(1332f, arg_0.c.x, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + -211f) * _wgslsmith_f_op_f32(sign(arg_0.c.x)))), (_wgslsmith_mult_u32(100128u, u_input.b) << (4294967295u % 32u)) <= _wgslsmith_clamp_u32(4294967295u, ~arg_1.b, arg_1.b)), vec3<i32>(1i, -19795i, arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1204f, -463f, -2209f, 100f) + vec4<f32>(-2134f, 1076f, -329f, 359f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, -691f, 1062f, 733f)))))));
    var var_1 = func_5(Struct_1(u_input.d << (func_1(Struct_1(u_input.a.yy, u_input.c.x, vec4<f32>(438f, var_0.x, -947f, -1599f), vec4<f32>(var_0.x, 1337f, -676f, var_0.x), false), vec2<bool>(true, true), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(u_input.a.x, global1.x, global1.x)), true) % vec2<u32>(32u)), ~(_wgslsmith_mult_u32(46169u, 17909u) >> ((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)] ^ 0u) % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1853f, var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1346f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -934f, -350f, var_0.x) - vec4<f32>(738f, -1615f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-676f, -1000f, 336f, var_0.x), vec4<f32>(var_0.x, -238f, -602f, var_0.x), vec4<bool>(false, true, true, true)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(2125f, 154f)), var_0.x, _wgslsmith_f_op_f32(var_0.x * 536f), -1371f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1513f, var_0.x, -1210f, -1245f)))), !((global1.x == global1.x) | true)), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, u_input.a.x), global1.xy, _wgslsmith_add_vec2_i32(global1.yw, global1.wx)), -vec2<i32>(0i, 1046i)), _wgslsmith_dot_vec2_u32(vec2<u32>(~99357u, ~u_input.b), select(_wgslsmith_add_vec2_u32(u_input.c.ww, vec2<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 52398u)), ~vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-659f, -165f, -1084f, var_0.x), vec4<f32>(-471f, -309f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-351f - -151f), -495f, _wgslsmith_f_op_f32(-1341f + -516f), _wgslsmith_f_op_f32(-1000f + 177f))), select((41739u > global2[_wgslsmith_index_u32(44723u, 26u)]) != all(vec4<bool>(true, true, false, true)), true, !any(vec3<bool>(true, true, false)))));
    global1 = vec4<i32>(global1.x, firstTrailingBit(u_input.d.x), u_input.d.x, var_1.a.x);
    let var_2 = func_4(func_5(Struct_1(~vec2<i32>(-4517i, global1.x), _wgslsmith_div_u32(_wgslsmith_div_u32(27237u, u_input.b), 2979u), var_1.c, vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), var_1.d.x, _wgslsmith_f_op_f32(var_0.x - var_1.d.x), 1226f), select(true, all(vec3<bool>(var_1.e, var_1.e, true)), true)), func_5(func_4(_wgslsmith_f_op_vec3_f32(-var_0.zwz), func_4(var_0.xxw, Struct_1(vec2<i32>(global1.x, global1.x), u_input.c.x, vec4<f32>(var_0.x, 1119f, 727f, -1290f), vec4<f32>(var_0.x, -949f, var_0.x, 1299f), var_1.e), vec3<i32>(-13134i, -17091i, -2596i)), -vec3<i32>(11442i, global1.x, -43358i)), Struct_1(vec2<i32>(global1.x, 0i), ~1u, _wgslsmith_f_op_vec4_f32(var_1.d + var_1.d), var_1.d, !var_1.e))).d.ywy, func_4(_wgslsmith_f_op_vec3_f32(exp2(func_5(Struct_1(vec2<i32>(var_1.a.x, -53128i), 0u, var_1.c, vec4<f32>(var_1.c.x, var_1.d.x, var_0.x, var_1.c.x), true), Struct_1(var_1.a, 6454u, var_1.d, var_1.d, var_1.e)).d.zwx)), Struct_1(vec2<i32>(_wgslsmith_mult_i32(var_1.a.x, u_input.a.x), u_input.a.x), countOneBits(max(0u, 0u)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, -372f, 459f) + var_0.zwz), Struct_1(global1.xx, global2[_wgslsmith_index_u32(84660u, 26u)], vec4<f32>(var_1.c.x, -1442f, var_0.x, 515f), vec4<f32>(-292f, -652f, 556f, 726f), false), u_input.a).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1086f, -1511f, var_0.x, var_1.c.x)))), var_1.e), -vec3<i32>(1i, 0i, 19379i)), max(vec3<i32>(~u_input.a.x, 62313i, ~u_input.a.x) & ~max(global1.xzz, vec3<i32>(44824i, u_input.d.x, 2147483647i)), ~(-global1.xzz)));
    var var_3 = _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(global1.yyz, vec3<i32>(u_input.d.x | global1.x, ~var_1.a.x, firstLeadingBit(1i))), ~(~(u_input.a << (u_input.c.zxw % vec3<u32>(32u))) ^ ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, u_input.a.x, 0i), vec3<i32>(var_1.a.x, 74560i, var_2.a.x), global1.xwy)));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_clamp_vec2_i32(u_input.d << (~(~vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)])) % vec2<u32>(32u)), vec2<i32>(0i, 2147483647i), vec2<i32>(15800i, -(~u_input.a.x))), var_3.x);
}

