struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<f32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<f32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<i32>) -> f32 {
    var var_0 = all(vec4<bool>(false, all(!(!vec3<bool>(false, global2.x, true))), !global2.x, _wgslsmith_f_op_f32(f32(-1f) * -921f) <= _wgslsmith_f_op_f32(-global1.x)));
    return -1062f;
}

fn func_2() -> vec4<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 2665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1267f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(368f, global1.x), _wgslsmith_f_op_f32(global1.x - global3[_wgslsmith_index_u32(1884u, 23u)]))) + _wgslsmith_f_op_f32(func_3(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 23u)], global3[_wgslsmith_index_u32(u_input.c, 23u)], -275f), Struct_3(Struct_2(Struct_1(global1.x, u_input.c, vec2<i32>(-1i, 51092i), vec2<i32>(-2147483647i, u_input.a), global1.x), 4294967295u, Struct_1(-298f, 5169u, vec2<i32>(u_input.a, 20712i), vec2<i32>(u_input.a, u_input.a), global3[_wgslsmith_index_u32(u_input.d.x, 23u)])), Struct_1(-949f, u_input.d.x, vec2<i32>(56417i, u_input.a), vec2<i32>(0i, u_input.a), -586f), u_input.c), vec3<i32>(u_input.a, -1i, 0i)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(sign(global1.xyw)), Struct_3(Struct_2(Struct_1(247f, 51814u, vec2<i32>(-2147483647i, 30455i), vec2<i32>(25893i, u_input.a), -152f), u_input.b, Struct_1(global3[_wgslsmith_index_u32(4578u, 23u)], u_input.c, vec2<i32>(54890i, u_input.a), vec2<i32>(-2147483647i, u_input.a), global1.x)), Struct_1(global1.x, 0u, vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -1i), -1235f), u_input.d.x), abs(vec3<i32>(-2147483647i, u_input.a, u_input.a)))))));
    var var_1 = min(vec3<i32>(~(~u_input.a), _wgslsmith_mod_i32(0i, -2147483647i), ~min(55009i, _wgslsmith_add_i32(u_input.a, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 28272i, 0i), vec3<i32>(u_input.a, u_input.a, 49691i)), (-vec3<i32>(31640i, 0i, u_input.a) << (_wgslsmith_add_vec3_u32(vec3<u32>(24340u, 4294967295u, 0u), vec3<u32>(32900u, 0u, u_input.d.x)) % vec3<u32>(32u))) >> (min(vec3<u32>(u_input.b, u_input.d.x, 95617u), ~vec3<u32>(u_input.d.x, u_input.c, u_input.d.x)) % vec3<u32>(32u))));
    let var_2 = !vec4<bool>(global2.x, false, true, any(vec3<bool>(true, u_input.a != u_input.a, any(vec3<bool>(true, global2.x, global2.x)))));
    var var_3 = select(global2.wy, vec2<bool>(all(vec3<bool>(false != var_2.x, var_2.x, false)), true), any(var_2));
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(17963u, 23u)])), _wgslsmith_f_op_f32(var_0.x * global1.x))), 55541u, ~firstLeadingBit(-vec2<i32>(18021i, var_1.x)), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a, -66755i), vec2<i32>(var_1.x, u_input.a)), select(vec2<i32>(1i, 1i), var_1.zx, global2.wy), var_1.xy) ^ ~(-var_1.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -2376f))), _wgslsmith_div_u32(select(u_input.d.x, u_input.d.x, true), u_input.b), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f) + _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.c, 23u)]))))), u_input.b, vec2<i32>(countOneBits(-33978i), firstTrailingBit(2147483647i)), -_wgslsmith_clamp_vec2_i32(var_1.yx, vec2<i32>(-1i, 2147483647i), abs(var_1.xz)), 1000f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(18806u, 23u)], global1.x, var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1717f, 1000f, 197f), Struct_3(Struct_2(Struct_1(2282f, var_4.a.b, vec2<i32>(var_1.x, -1i), vec2<i32>(var_4.c.c.x, 0i), var_4.c.a), u_input.c, Struct_1(global3[_wgslsmith_index_u32(0u, 23u)], var_4.b, vec2<i32>(13093i, var_1.x), vec2<i32>(var_4.a.c.x, 49102i), 727f)), Struct_1(1389f, var_4.b, var_4.c.d, vec2<i32>(-1i, -1i), -518f), var_4.b), vec3<i32>(-9174i, u_input.a, 2147483647i))), 1006f, _wgslsmith_f_op_f32(440f + 1125f), _wgslsmith_f_op_f32(sign(200f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = ~vec3<u32>(96614u, countOneBits(~u_input.c) & u_input.b, _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(u_input.d.x << (u_input.c % 32u), abs(5986u))));
    let var_1 = ~var_0;
    global3 = array<f32, 23>();
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f + _wgslsmith_f_op_f32(floor(-622f))));
    return Struct_1(_wgslsmith_f_op_f32(-1878f * 1230f), u_input.d.x, abs(-vec2<i32>(var_2, reverseBits(2147483647i))), -(-vec2<i32>(var_2, 1i) << (~var_1.zz % vec2<u32>(32u))), arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_1(global1.x, u_input.c, -(~((vec2<i32>(77503i, -10941i) ^ vec2<i32>(u_input.a, arg_0.d.x)) | vec2<i32>(arg_2.c.a.a.d.x, arg_1.x))), arg_0.d, -496f);
    var var_1 = ~(-1i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e + 1324f) + _wgslsmith_div_f32(arg_0.e, -132f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1485f, arg_0.e)), any(arg_2.b))), -391f));
    var var_3 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 403f, var_2, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, var_2, -2755f, -1577f)))), arg_2.c.b.x, select(!vec2<bool>(global2.x, false), vec2<bool>(arg_2.d, true), arg_2.b.wy)), ~_wgslsmith_sub_u32(u_input.d.x, ~(arg_3.x << (arg_3.x % 32u))), func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 367f, var_0.e, arg_2.c.a.c.e) - vec4<f32>(-1246f, var_0.e, arg_2.c.a.c.a, -944f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-743f, arg_2.c.a.a.e, var_2, global1.x), vec4<f32>(var_0.a, var_0.e, 183f, -1568f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 325f, 746f, var_2)))))), arg_2.b.x, vec2<bool>(all(select(vec4<bool>(true, true, true, global2.x), vec4<bool>(false, true, false, global2.x), false)), global2.x)));
    global2 = select(select(vec4<bool>(true, arg_2.d, (arg_0.b < var_3.b) || true, !(!global2.x)), select(!vec4<bool>(arg_2.c.b.x, arg_2.b.x, false, true), arg_2.b, any(!arg_2.b.wz)), vec4<bool>(arg_2.b.x, _wgslsmith_sub_u32(arg_2.a, u_input.d.x) <= var_0.b, false, !any(arg_2.b))), arg_2.b, _wgslsmith_f_op_f32(abs(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, var_0.a, var_2, -1457f)), arg_2.d, global2.yy).e)) != 1717f);
    return arg_2.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> bool {
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))), false, global2.yy), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2.wz << (countOneBits(u_input.d) % vec2<u32>(32u)), vec2<i32>(arg_2.x, u_input.a)), arg_1, _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_1, arg_1), vec3<i32>(arg_1, u_input.a, u_input.a))), reverseBits(arg_1))), Struct_5(_wgslsmith_add_u32(reverseBits(min(1677u, u_input.d.x)), firstLeadingBit(33183u >> (u_input.b % 32u))), vec4<bool>(reverseBits(-1i) == firstTrailingBit(u_input.a), false, arg_0.x, global2.x), Struct_4(Struct_2(func_4(vec4<f32>(676f, 195f, global1.x, 482f), true, vec2<bool>(true, true)), ~0u, Struct_1(global3[_wgslsmith_index_u32(0u, 23u)], u_input.d.x, arg_2.zz, vec2<i32>(u_input.a, u_input.a), global1.x)), vec3<bool>(!arg_0.x, global2.x, global2.x | arg_0.x), -_wgslsmith_sub_i32(arg_1, u_input.a)), !arg_0.x), ~(~(~select(vec3<u32>(u_input.c, 0u, 51823u), vec3<u32>(26328u, 0u, u_input.d.x), global2.wxx))));
    global3 = array<f32, 23>();
    let var_1 = ~_wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(u_input.d.x, 14394u, u_input.b))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(32859u, 4294967295u, 0u)) | (vec3<u32>(var_0.a.c.b, 21935u, 11659u) ^ vec3<u32>(u_input.d.x, 0u, 25152u)), vec3<u32>(u_input.c, 3644u, 32992u) << (~vec3<u32>(62249u, 13370u, var_0.a.a.b) % vec3<u32>(32u))));
    let var_2 = -arg_2.yx;
    let var_3 = func_5(var_0.a.c, arg_2.wyx, Struct_5(firstTrailingBit(1u), select(vec4<bool>(var_0.b.x, true, var_0.b.x, false), select(arg_0, vec4<bool>(arg_3, true, true, false), global2.x), arg_0), func_5(var_0.a.c, -vec3<i32>(37481i, 2147483647i, 11432i), Struct_5(5740u, arg_0, Struct_4(var_0.a, arg_0.yyw, arg_2.x), false), vec3<u32>(0u, var_1.x, 4294967295u)), arg_0.x | !arg_0.x), vec3<u32>(_wgslsmith_add_u32(0u, var_1.x), u_input.d.x, _wgslsmith_div_u32(max(u_input.c, 25639u), 0u))).c <= -(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -11413i), vec2<i32>(arg_2.x, -38910i)) >> (~42982u % 32u));
    return !arg_3;
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<f32>) -> vec4<bool> {
    return vec4<bool>(false, all(select(!global2.yyz, global2.xzw, !vec3<bool>(arg_1.x, arg_1.x, false))) | func_1(select(vec4<bool>(false, global2.x, arg_1.x, global2.x), vec4<bool>(false, arg_1.x, false, global2.x), !vec4<bool>(global2.x, arg_1.x, global2.x, false)), _wgslsmith_div_i32(func_4(arg_3, true, global2.wz).d.x, select(arg_0, arg_0, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-34277i, u_input.a, arg_0, -46011i), ~vec4<i32>(arg_0, arg_0, -2147483647i, u_input.a), vec4<i32>(2147483647i, 1i, arg_0, 34214i)), true), any(!(!vec4<bool>(false, false, true, arg_1.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(1u ^ (u_input.b ^ u_input.c), ~4294967295u, _wgslsmith_mod_u32(4294967295u, (u_input.b & u_input.d.x) | 23810u), 13535u >> (u_input.b % 32u)) << (min(vec4<u32>(0u, min(7031u, 1u), 34008u, 0u), vec4<u32>(~(~u_input.b), u_input.c, countOneBits(66831u), u_input.d.x << (u_input.d.x % 32u))) % vec4<u32>(32u));
    global2 = select(func_6(u_input.a, vec3<bool>(func_1(select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, false, global2.x)), u_input.a, vec4<i32>(u_input.a, 1i, 0i, -32494i), true), all(vec4<bool>(false, global2.x, true, global2.x)), select(-2147483647i, 28952i, global2.x) <= u_input.a), global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(72129u, 23u)], global1.x, global3[_wgslsmith_index_u32(4294967295u, 23u)], -2593f)) * vec4<f32>(131f, global3[_wgslsmith_index_u32(27377u, 23u)], 1773f, -949f)) * vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(72358u, 23u)] + global1.x), global1.x, _wgslsmith_f_op_f32(floor(1000f)), global3[_wgslsmith_index_u32(u_input.b, 23u)]))), !func_6(abs(u_input.a), vec3<bool>(true, !global2.x, global2.x), global3[_wgslsmith_index_u32(abs(u_input.c), 23u)], vec4<f32>(global3[_wgslsmith_index_u32(0u, 23u)], func_4(vec4<f32>(global1.x, global1.x, -2469f, global3[_wgslsmith_index_u32(var_0.x, 23u)]), global2.x, vec2<bool>(false, true)).e, -1077f, _wgslsmith_f_op_f32(912f + -1000f))), any(global2.xy));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(~(~var_0.x), 0u), ~(~(~vec2<u32>(u_input.b, var_0.x)) >> (var_0.yx % vec2<u32>(32u))));
    var var_2 = _wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(select(~vec4<i32>(-55518i, u_input.a, -35802i, u_input.a), vec4<i32>(-5623i, 38851i, u_input.a, -2147483647i), select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x)), abs(~vec4<i32>(50474i, u_input.a, u_input.a, u_input.a))), abs(vec4<i32>(_wgslsmith_div_i32(~u_input.a, 2147483647i), min(_wgslsmith_sub_i32(u_input.a, u_input.a), 2147483647i), firstTrailingBit(14193i) >> (func_5(Struct_1(global1.x, u_input.b, vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-2147483647i, u_input.a), global1.x), vec3<i32>(u_input.a, 32380i, -2147483647i), Struct_5(4294967295u, vec4<bool>(global2.x, false, false, global2.x), Struct_4(Struct_2(Struct_1(538f, var_0.x, vec2<i32>(7156i, u_input.a), vec2<i32>(1596i, -15282i), global1.x), var_0.x, Struct_1(-1057f, 21023u, vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, u_input.a), global3[_wgslsmith_index_u32(0u, 23u)])), global2.xzx, 52269i), false), vec3<u32>(2983u, 6500u, 10990u)).a.c.b % 32u), ~(~u_input.a))));
    global0 = _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.c, firstTrailingBit(29980u), _wgslsmith_div_u32(1u, 1u))), var_0.zyw);
    global0 = ~firstLeadingBit(5735u);
    var var_3 = countOneBits(_wgslsmith_mult_vec4_u32(abs(select(vec4<u32>(4294967295u, 0u, u_input.b, 529u), vec4<u32>(var_1.x, var_1.x, 16083u, 25965u), false)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(37087u, 18010u, 66545u, var_1.x), vec4<u32>(1u, 1u, var_1.x, 52307u), vec4<u32>(var_1.x, u_input.c, u_input.d.x, var_0.x)), vec4<u32>(4294967295u, var_1.x, 1u, 86196u) | vec4<u32>(var_1.x, u_input.b, 4294967295u, 4294967295u)))) | vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, 6241u, var_0.x, var_1.x), vec4<u32>(0u, 1u, u_input.d.x, 1u), global2.x), ~vec4<u32>(0u, u_input.b, 0u, var_1.x)) >> (_wgslsmith_add_u32(firstTrailingBit(0u), 1u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~22437u, var_1.x, u_input.b), vec4<u32>(_wgslsmith_sub_u32(var_0.x, u_input.c), _wgslsmith_div_u32(var_1.x, 1u), var_1.x, abs(u_input.b))), ~firstLeadingBit(var_1.x), countOneBits(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_i32(abs(u_input.a), func_5(Struct_1(1000f, 0u, var_2.xy, var_2.xx, -871f), var_2.wzz, Struct_5(var_1.x, vec4<bool>(global2.x, global2.x, false, global2.x), Struct_4(Struct_2(Struct_1(292f, var_0.x, vec2<i32>(var_2.x, -1i), var_2.wz, 1645f), var_0.x, Struct_1(global3[_wgslsmith_index_u32(34684u, 23u)], 28803u, var_2.zx, var_2.zw, global1.x)), vec3<bool>(global2.x, false, global2.x), -31226i), true), var_0.zzz).c) | -(1i & u_input.a)), reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, -1i, 0i), vec3<i32>(u_input.a, -2147483647i, var_2.x), vec3<i32>(1i, var_2.x, -2147483647i))) << (min(var_3.zyw, min(vec3<u32>(31913u, 4294967295u, 35651u), _wgslsmith_mod_vec3_u32(var_3.zyx, vec3<u32>(4294967295u, var_0.x, var_0.x)))) % vec3<u32>(32u)), var_0.wx, -600f);
}

