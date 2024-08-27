struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-9347i, vec3<i32>(1i, -58314i, i32(-2147483648)), vec2<i32>(0i, -1i), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec4<f32>(388f, -1331f, -1611f, 504f), Struct_1(2147483647i, vec4<u32>(67066u, 16053u, 29697u, 51251u), vec2<bool>(true, false), vec3<u32>(4294967295u, 26233u, 4294967295u))), -1i);

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), -6402i), vec2<i32>(0i, -43523i), vec2<i32>(-26803i, 2147483647i), vec2<i32>(-3306i, 829i), vec2<i32>(-21250i, 1i), vec2<i32>(i32(-2147483648), 43297i), vec2<i32>(-47929i, i32(-2147483648)), vec2<i32>(85478i, -9671i), vec2<i32>(i32(-2147483648), -6660i), vec2<i32>(1i, -6032i), vec2<i32>(1i, 0i), vec2<i32>(-24356i, -22437i), vec2<i32>(26984i, 33461i), vec2<i32>(-36039i, 2147483647i), vec2<i32>(-1i, 23522i));

var<private> global2: vec2<i32> = vec2<i32>(-23784i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    global0 = arg_0;
    global1 = array<vec2<i32>, 15>();
    let var_0 = -(~arg_2.xxy);
    let var_1 = global0.d.d.d.x;
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1249f + -1930f) + -626f);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: f32) -> vec3<i32> {
    var var_0 = !(!select(global0.d.d.c, vec2<bool>(true, all(global0.d.b.yx)), !select(global0.d.a.yx, global0.d.d.c, global0.d.a.x)));
    let var_1 = Struct_3(max(_wgslsmith_add_i32(-17110i ^ u_input.c.x, ~4100i) >> (~_wgslsmith_clamp_u32(54697u, 79441u, 60455u) % 32u), -20456i), u_input.c, countOneBits(reverseBits(~_wgslsmith_add_vec2_i32(vec2<i32>(global2.x, 2147483647i), vec2<i32>(-1i, global2.x)))), Struct_2(select(vec3<bool>(select(var_0.x, true, var_0.x), true, any(global0.d.a)), select(select(vec3<bool>(false, false, global0.d.d.c.x), vec3<bool>(global0.d.a.x, var_0.x, true), true), vec3<bool>(var_0.x, global0.d.b.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, global0.d.b.x)), global0.d.b.x), !global0.d.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d.c.x, arg_2)) * -658f), -436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 247f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(559f - 388f), -345f))), Struct_1(_wgslsmith_sub_i32(5901i, global0.d.d.a) ^ (u_input.c.x ^ -1i), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.d.d.x, 4294967295u, 97278u, u_input.b.x), vec4<u32>(u_input.a, arg_1, 0u, arg_1), global0.d.d.b), select(select(global0.d.a.zy, global0.d.d.c, global0.d.b.x), !global0.d.a.xy, select(var_0.x, var_0.x, false)), abs(global0.d.d.b.xyw))), _wgslsmith_clamp_i32(-2147483647i, global2.x, -1i));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(select(_wgslsmith_div_i32(-2147483647i, global2.x), 19618i, var_1.d.b.x), -34289i, u_input.c.x), ~vec4<u32>(~firstTrailingBit(global0.d.d.d.x), 0u, 4294967295u, ~1u), !vec2<bool>(false, (global0.a & 5415i) < -1i), vec3<u32>(min(global0.d.d.d.x, ~7934u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.d.d.d.xz, var_1.d.d.d.zy), var_1.d.d.d.zy), reverseBits(firstLeadingBit(109153u >> (var_1.d.d.b.x % 32u)))));
    var var_3 = global0.d.d;
    var_0 = select(select(vec2<bool>(false, var_3.c.x), vec2<bool>(true, var_0.x), var_3.c), vec2<bool>(true, var_3.c.x == var_1.d.a.x), _wgslsmith_f_op_f32(global0.d.c.x * global0.d.c.x) != 1107f);
    return -vec3<i32>(0i, u_input.c.x, _wgslsmith_sub_i32(global2.x, _wgslsmith_sub_i32(~global2.x, 7670i)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = global0.d.c.x;
    var var_2 = ~(~_wgslsmith_div_u32(~global0.d.d.b.x, countOneBits(39976u)));
    var var_3 = Struct_3(global2.x, select(vec3<i32>(~countOneBits(0i), 1i, var_0), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.d.c.x)), -271f)), ~global0.d.d.d.x, _wgslsmith_f_op_f32(func_3(Struct_3(50871i, global0.b, vec2<i32>(u_input.c.x, 52768i), Struct_2(global0.d.b, vec3<bool>(global0.d.b.x, global0.d.a.x, true), vec4<f32>(global0.d.c.x, -442f, -400f, global0.d.c.x), global0.d.d), -1i), true, vec4<i32>(u_input.c.x, 2147483647i, -775i, u_input.c.x)))), select(vec3<bool>(true, global0.d.a.x, true), !(!vec3<bool>(true, global0.d.a.x, global0.d.d.c.x)), !(global0.d.c.x >= global0.d.c.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-1i, 5632i)), _wgslsmith_div_vec2_i32(u_input.c.zy, firstLeadingBit(vec2<i32>(global0.d.d.a, global2.x)))), global0.b.xy), Struct_2(!vec3<bool>(true, true, global0.d.a.x), !vec3<bool>(true, global0.d.a.x, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(global0.d.c, global0.d.c)), vec4<f32>(419f, global0.d.c.x, 490f, global0.d.c.x))), vec4<f32>(-455f, global0.d.c.x, global0.d.c.x, _wgslsmith_f_op_f32(min(-1000f, 114f)))), Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-27465i, 0i, 1i), select(-1i, global2.x, global0.d.a.x)), global0.d.d.b, vec2<bool>(select(true, true, global0.d.d.c.x), global0.d.a.x), select(global0.d.d.d, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), true) >> (firstTrailingBit(vec3<u32>(global0.d.d.d.x, global0.d.d.b.x, 1u)) % vec3<u32>(32u)))), _wgslsmith_add_i32(-1i, ~(-global0.b.x)));
    var var_4 = Struct_3(firstLeadingBit(-17249i), select(reverseBits(vec3<i32>(global0.e, -1i, ~0i)), max(global0.b, select(vec3<i32>(global0.a, -49231i, 68686i), u_input.c, true)) ^ (var_3.b << (firstTrailingBit(global0.d.d.d) % vec3<u32>(32u))), _wgslsmith_mod_i32(-37529i, ~10868i) >= var_0), vec2<i32>(u_input.c.x, ~1i), Struct_2(vec3<bool>(global0.d.a.x & !var_3.d.a.x, global0.d.a.x, all(vec3<bool>(var_3.d.d.c.x, global0.d.a.x, false)) | (global0.d.d.c.x && global0.d.a.x)), select(vec3<bool>(false, var_3.d.b.x, true), !vec3<bool>(var_3.d.b.x, true, var_3.d.a.x), all(!vec2<bool>(true, global0.d.b.x))), var_3.d.c, global0.d.d), global0.c.x);
    return Struct_1(firstTrailingBit(2147483647i), var_4.d.d.b, var_4.d.b.yx, var_4.d.d.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec4<bool> {
    var var_0 = vec4<i32>(abs(1i), 0i, global0.d.d.a, ~43339i);
    var var_1 = abs(24771i);
    let var_2 = -29216i | _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, global0.d.d.a, 2147483647i, global2.x), vec4<i32>(-779i, -12143i, 27813i, -2147483647i)), vec4<i32>(arg_0.a, u_input.c.x, global0.a, 0i)), 41103i);
    var var_3 = Struct_2(global0.d.a, vec3<bool>(!all(vec2<bool>(true, true)), arg_0.c.x, false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(arg_1.c)))))), func_2());
    let var_4 = Struct_2(select(arg_1.a, !vec3<bool>(true, false, arg_1.b.x), vec3<bool>(true, any(vec2<bool>(false, var_3.a.x)), !(false && global0.d.d.c.x))), select(select(vec3<bool>(var_3.d.c.x != arg_0.c.x, var_3.d.c.x, false), global0.d.b, !(!global0.d.a)), !select(vec3<bool>(true, true, false), arg_1.b, all(arg_0.c)), arg_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.d.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1713f)) + _wgslsmith_div_f32(-2466f, arg_1.c.x))) - vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(992f, 744f)) - _wgslsmith_f_op_f32(arg_1.c.x * 128f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-548f)))))), Struct_1(~_wgslsmith_add_i32(var_2, ~var_2), max(_wgslsmith_add_vec4_u32(var_3.d.b, global0.d.d.b), _wgslsmith_div_vec4_u32(global0.d.d.b, arg_1.d.b) ^ vec4<u32>(global0.d.d.d.x, 1u, 11402u, arg_2)), select(vec2<bool>(true, var_3.c.x >= var_3.c.x), vec2<bool>(arg_1.d.c.x == true, arg_1.d.c.x), select(vec2<bool>(global0.d.a.x, true), select(vec2<bool>(true, arg_1.b.x), vec2<bool>(false, false), arg_0.c), select(global0.d.a.yx, arg_1.d.c, arg_1.d.c.x))), vec3<u32>(~1u, 1u, ~(~8137u))));
    return !(!vec4<bool>(true, true, true, !(!arg_1.a.x)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_u32(abs(global0.d.d.d), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 5346u, u_input.a), ~global0.d.d.d)));
    let var_1 = !select(vec4<bool>(true, !global0.d.b.x, false, -1839f < arg_0.x), !vec4<bool>(global0.d.b.x, global0.d.b.x, true, true), select(func_5(func_2(), Struct_2(global0.d.a, global0.d.b, global0.d.c, Struct_1(8796i, global0.d.d.b, vec2<bool>(global0.d.d.c.x, true), vec3<u32>(var_0.x, u_input.a, 0u))), _wgslsmith_clamp_u32(0u, 21750u, global0.d.d.b.x)), vec4<bool>(!global0.d.d.c.x, select(false, global0.d.d.c.x, global0.d.b.x), true, true), select(vec4<bool>(global0.d.d.c.x, global0.d.b.x, global0.d.d.c.x, true), !vec4<bool>(global0.d.b.x, global0.d.b.x, false, global0.d.b.x), true)));
    global0 = Struct_3(global2.x, vec3<i32>(min(_wgslsmith_dot_vec3_i32(-global0.b, global0.b), -1i), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(-12464i, global2.x), i32(-1i) * -29656i), global0.e), ~(-(~(-global0.b.xx))), Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) <= global0.d.c.x, var_1.x, var_1.x), global0.d.a, global0.d.c, func_2()), _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-6227i, 39356i)), -global0.b.zx), vec2<i32>(-_wgslsmith_div_i32(u_input.c.x, u_input.c.x), func_4(_wgslsmith_f_op_f32(trunc(arg_0.x)), countOneBits(global0.d.d.d.x), 867f).x)));
    global2 = -(max(u_input.c.yy, vec2<i32>(u_input.c.x, u_input.c.x)) ^ -global1[_wgslsmith_index_u32(u_input.a, 15u)]);
    global0 = Struct_3(select(global0.e, ~global0.b.x, any(var_1)), global0.b, ~select(~vec2<i32>(global2.x, 7454i), vec2<i32>(-1i) * -global0.c, false), Struct_2(vec3<bool>(global0.d.a.x, _wgslsmith_f_op_f32(func_3(Struct_3(7067i, global0.b, global0.c, Struct_2(var_1.xww, var_1.zzz, global0.d.c, global0.d.d), -28704i), true, vec4<i32>(1i, global0.e, 1i, global2.x))) > global0.d.c.x, all(!vec3<bool>(true, var_1.x, false))), global0.d.b, global0.d.c, Struct_1(global0.b.x, ~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1112u)), !vec2<bool>(global0.d.b.x, true), select(firstLeadingBit(global0.d.d.d), vec3<u32>(13414u, global0.d.d.d.x, 0u), true))), _wgslsmith_div_i32(global0.b.x, 0i));
    return Struct_3(_wgslsmith_div_i32(-u_input.c.x, -39499i), select(global0.b, min(countOneBits(firstLeadingBit(global0.b)), ~(u_input.c | global0.b)), vec3<bool>(_wgslsmith_div_f32(global0.d.c.x, global0.d.c.x) > _wgslsmith_f_op_f32(step(1000f, global0.d.c.x)), var_1.x, select(global0.d.b.x, true, true))), _wgslsmith_div_vec2_i32(global0.c, vec2<i32>(1i, 1i)), global0.d, _wgslsmith_dot_vec2_i32(global0.c, vec2<i32>(global2.x, -(~(-21750i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec2_f32(sign(global0.d.c.ww)));
    let var_0 = Struct_3(0i, vec3<i32>(~2147483647i, global0.d.d.a, -1i), ~abs(max(max(vec2<i32>(-2147483647i, 1i), global0.b.xy), abs(vec2<i32>(global2.x, global2.x)))), Struct_2(!global0.d.a, !select(!global0.d.a, vec3<bool>(false, global0.d.d.c.x, global0.d.d.c.x), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d.c) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.c.x, global0.d.c.x, global0.d.c.x, -146f) + global0.d.c) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d.c.x, -1331f, 1000f, 431f), global0.d.c)))), global0.d.d), 63049i);
    global2 = global1[_wgslsmith_index_u32(global0.d.d.b.x, 15u)];
    global1 = array<vec2<i32>, 15>();
    var var_1 = max(~vec4<i32>(func_1(var_0.d.c.wx).a, global2.x, select(abs(2147483647i), 60937i, var_0.e < 2147483647i), 2147483647i), _wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, u_input.c.x, -1i, -3918i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-66882i, u_input.c.x, global2.x, global0.a), vec4<i32>(u_input.c.x, global0.d.d.a, 44739i, 0i)))), abs(~vec4<i32>(-2147483647i, -17225i, global2.x, -58296i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.d.c.x), 347f, firstTrailingBit(vec2<u32>(20980u, global0.d.d.b.x)));
}

