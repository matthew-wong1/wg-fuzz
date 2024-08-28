struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(17348i, 51402i), vec3<i32>(16795i, -40039i, 18769i), vec4<i32>(-55189i, 59129i, 0i, 11954i));

var<private> global1: Struct_4;

var<private> global2: array<i32, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: bool) -> vec3<i32> {
    var var_0 = vec4<i32>(-select(-20757i, _wgslsmith_mult_i32(min(-23705i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), -24379i), any(vec3<bool>(false, true, arg_2))), global1.a.a.x, global0.a.x, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_1.b.x, 8u)], 1i, arg_1.c.b.x), global0.c.xwz)));
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(arg_1.b.x ^ ~(0u ^ u_input.a.x), 4294967295u));
    var var_2 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global1.b.x, ~(14676u & arg_1.b.x)), ~countOneBits(~u_input.a)));
    var_1 = 1u;
    let var_3 = arg_1.c;
    return -(global0.c.yzz & global0.c.wwz);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> Struct_4 {
    global1 = Struct_4(Struct_3(vec2<i32>(arg_2.x, 1i), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2670f, 708f) * vec2<f32>(-1000f, arg_3)) - vec2<f32>(634f, global1.c.a)), Struct_4(Struct_3(vec2<i32>(-2147483647i, global1.c.b.x), global1.a.c.zwz, global0.c), countOneBits(vec2<u32>(arg_1, 7998u)), Struct_1(113f, arg_2.xy, arg_2.zwx, vec3<i32>(global0.a.x, 2147483647i, -21085i)), arg_0.x), true), vec4<i32>(~abs(7269i), arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.x, 1i, 1i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], -1i, arg_2.x, 0i)), global0.b.x)), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(~global1.b >> (min(vec2<u32>(global1.b.x, u_input.a.x), u_input.a.xy) % vec2<u32>(32u)), ~global1.b & ~global1.b)), Struct_1(_wgslsmith_f_op_f32(arg_3 + 1f), arg_2.yy, vec3<i32>(firstLeadingBit(-global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), ~(-10885i), ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 8u)], -6507i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(global1.a.b), arg_2.xyx, select(~vec3<i32>(global1.c.c.x, -1011i, arg_2.x), -vec3<i32>(-8838i, arg_2.x, global0.a.x), global1.d))), any(select(select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), false), !arg_0, false)) != (((arg_2.x ^ global0.c.x) & 1i) <= _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, global0.c.x), vec2<i32>(global1.c.b.x, 2147483647i)))));
    let var_0 = Struct_2(arg_1);
    var var_1 = _wgslsmith_div_i32(max(global1.a.b.x, -2147483647i), 1i);
    let var_2 = var_0;
    global0 = global1.a;
    return Struct_4(global1.a, global1.b, Struct_1(-948f, countOneBits(arg_2.yw), countOneBits(vec3<i32>(-614i, ~global0.a.x, global2[_wgslsmith_index_u32(~36005u, 8u)])), vec3<i32>(-1i, 1i, -_wgslsmith_dot_vec4_i32(arg_2, arg_2))), global1.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = !select(vec4<bool>(global1.d, _wgslsmith_f_op_f32(arg_0.c.a + 412f) != _wgslsmith_f_op_f32(ceil(919f)), any(select(vec2<bool>(true, false), vec2<bool>(global1.d, true), vec2<bool>(false, arg_2))), arg_0.d), vec4<bool>(true, !any(vec4<bool>(arg_2, true, arg_2, false)), !arg_0.d & !arg_0.d, all(!vec2<bool>(arg_0.d, true))), select(!select(vec4<bool>(false, global1.d, global1.d, arg_2), vec4<bool>(global1.d, false, arg_2, false), true), !select(vec4<bool>(false, false, arg_0.d, true), vec4<bool>(true, true, arg_2, arg_0.d), arg_2), vec4<bool>(arg_0.b.x == u_input.a.x, true, true, any(vec3<bool>(false, false, true)))));
    var var_1 = func_2(!vec2<bool>(all(vec4<bool>(true, var_0.x, arg_2, true)) & !global1.d, any(var_0.ww)), arg_0.b.x, ~(abs(vec4<i32>(-1i, global1.c.c.x, global2[_wgslsmith_index_u32(5106u, 8u)], global1.a.a.x)) << (arg_1 % vec4<u32>(32u))), -1931f);
    global1 = Struct_4(var_1.a, vec2<u32>(max(arg_1.x, 0u), ~0u), func_2(select(vec2<bool>(false, false), vec2<bool>(arg_0.d, all(var_0.zx)), vec2<bool>(!global1.d, !var_0.x)), 77936u, var_1.a.c, -1465f).c, !arg_2);
    var var_2 = !(!select(vec4<bool>(false, any(var_0.wyy), true, global1.d), vec4<bool>(false || global1.d, false || arg_2, var_1.c.a > -426f, !var_1.d), !(!vec4<bool>(true, arg_0.d, var_1.d, global1.d))));
    global1 = Struct_4(var_1.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(countOneBits(48718u), abs(1u)), var_1.b), func_2(var_0.wx, ~arg_0.b.x, vec4<i32>(abs(5483i), 2147483647i, abs(var_1.c.b.x >> (arg_1.x % 32u)), arg_0.c.b.x), arg_0.c.a).c, true);
    return -1i ^ (firstLeadingBit(arg_0.a.a.x >> ((61745u ^ var_1.b.x) % 32u)) ^ ~func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.a, -1076f), vec2<f32>(var_1.c.a, -128f), arg_0.d)), arg_0, true && var_0.x).x);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = func_2(!select(!(!vec2<bool>(global1.d, global1.d)), !vec2<bool>(global1.d, global1.d), vec2<bool>(all(vec4<bool>(global1.d, true, global1.d, false)), true)), global1.b.x, global0.c, 481f).c;
    var var_1 = select(!(!select(!vec3<bool>(global1.d, true, global1.d), select(vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(true, global1.d, global1.d), vec3<bool>(false, global1.d, false)), global1.d)), vec3<bool>(all(!vec2<bool>(global1.d, true)), global1.d, any(select(vec3<bool>(true, false, false), !vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(global1.d, global1.d, global1.d)))), !(!((var_0.a < var_0.a) | (true | global1.d))));
    var var_2 = -1i ^ _wgslsmith_clamp_i32(global0.a.x, _wgslsmith_sub_i32(1i, ~global1.a.a.x), 0i);
    global2 = array<i32, 8>();
    let var_3 = Struct_2(func_2(select(select(var_1.yx, var_1.zy, arg_1.x >= 1339f), var_1.yz, true), u_input.a.x, abs(~vec4<i32>(var_0.c.x, arg_0, 40423i, 5139i)), arg_1.x).b.x);
    return reverseBits(abs(~(~select(vec4<u32>(var_3.a, 68554u, 0u, 2412u), vec4<u32>(var_3.a, 4294967295u, 1u, 1u), vec4<bool>(true, false, false, global1.d)))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_4 {
    var var_0 = func_5(-func_4(func_2(vec2<bool>(global1.d, global1.d), 26781u, vec4<i32>(global0.a.x, -46816i, 39207i, 10728i), -779f), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, arg_0.a, arg_0.a), vec4<u32>(4294967295u, arg_0.a, 0u, global1.b.x)), select(global1.d, true, false), ~24590u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a) - _wgslsmith_f_op_f32(sign(986f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.c.a, -1000f)))))) & vec4<u32>(~36430u, ~1u, 4568u, max(func_5(global1.c.b.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-635f, -446f)))).x, 56415u));
    var var_1 = vec2<bool>(all(vec4<bool>(global1.d, true, true, true)), any(vec3<bool>(!(!global1.d), true | !global1.d, (global0.c.x & global2[_wgslsmith_index_u32(var_0.x, 8u)]) <= select(1i, global2[_wgslsmith_index_u32(10326u, 8u)], global1.d))));
    var var_2 = -10777i;
    var var_3 = func_2(select(!vec2<bool>(!var_1.x, func_2(vec2<bool>(false, var_1.x), u_input.a.x, vec4<i32>(-1i, 12405i, global0.a.x, global0.a.x), 792f).d), !vec2<bool>(func_2(vec2<bool>(false, true), 63106u, global0.c, 428f).d, false), true), ~(global1.b.x | ~4294967295u), vec4<i32>(-32502i, firstLeadingBit(0i), -50322i, 1i), -183f);
    var var_4 = func_2(vec2<bool>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.a.a.x, global1.a.c.x), ~var_3.c.d.xx) < var_3.a.c.x, false), var_3.b.x, vec4<i32>(max(-(global2[_wgslsmith_index_u32(var_0.x, 8u)] | 1i), _wgslsmith_mod_i32(global1.c.b.x, i32(-1i) * -2147483647i)), func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1873f, var_3.c.a), vec2<f32>(global1.c.a, var_3.c.a), vec2<bool>(false, true))))), Struct_4(var_3.a, vec2<u32>(arg_0.a, arg_0.a), Struct_1(var_3.c.a, vec2<i32>(var_3.c.b.x, global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<i32>(-3602i, 2147483647i, -9576i), var_3.c.d), false), any(select(vec2<bool>(false, var_3.d), vec2<bool>(false, false), vec2<bool>(true, false)))).x, ~firstTrailingBit(-global2[_wgslsmith_index_u32(global1.b.x, 8u)]), -global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~u_input.a.x), 8u)]), _wgslsmith_f_op_f32(step(-451f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_f_op_f32(-var_3.c.a)))))));
    return func_2(select(vec2<bool>(global1.d, (var_3.d && global1.d) != all(vec2<bool>(var_4.d, false))), vec2<bool>(!(!var_4.d), false), all(vec2<bool>(true, global1.d))), var_0.x, min(_wgslsmith_clamp_vec4_i32(var_4.a.c, -_wgslsmith_add_vec4_i32(vec4<i32>(-3816i, global2[_wgslsmith_index_u32(29203u, 8u)], -2147483647i, -3702i), vec4<i32>(global1.c.b.x, var_4.c.b.x, -2147483647i, 4346i)), _wgslsmith_add_vec4_i32(-global0.c, -vec4<i32>(global1.a.b.x, -2976i, 2147483647i, -37488i))), ~(-vec4<i32>(93315i, var_3.a.c.x, var_3.c.b.x, var_4.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + 202f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~abs(_wgslsmith_div_vec2_i32(vec2<i32>(32594i, 0i), vec2<i32>(-1i, -2147483647i)))) >> (global1.b % vec2<u32>(32u));
    let var_1 = abs(-vec2<i32>(i32(-1i) * -30802i, global2[_wgslsmith_index_u32(~1u, 8u)]));
    global2 = array<i32, 8>();
    var var_2 = global1.a;
    let var_3 = reverseBits(_wgslsmith_add_i32(~(~(-17403i)), select(~1i, _wgslsmith_add_i32(-1i, -1i), true)) | global0.b.x);
    let var_4 = -1032f == _wgslsmith_f_op_f32(-global1.c.a);
    global1 = func_1(Struct_2(global1.b.x), 56935u);
    var_0 = var_2.c.xw;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_0.x), _wgslsmith_clamp_vec2_u32(u_input.a.zy, _wgslsmith_div_vec2_u32(func_1(Struct_2(u_input.a.x), global1.b.x).b, max(vec2<u32>(u_input.a.x, global1.b.x), u_input.a.zz)), ~func_5(33118i, vec2<f32>(global1.c.a, -258f)).xx) & vec2<u32>(u_input.a.x, ~min(4294967295u, global1.b.x)));
}

