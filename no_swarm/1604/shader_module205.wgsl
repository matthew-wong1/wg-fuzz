struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 51969u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(30736u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 26426u), vec2<u32>(66311u, 24525u), vec2<u32>(12632u, 0u), vec2<u32>(25822u, 0u), vec2<u32>(19592u, 1885u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(45548u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 2694u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(34097u, 9959u), vec2<u32>(0u, 1u), vec2<u32>(31190u, 1u));

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = select(arg_0, vec3<bool>(true, (arg_1.a < -199f) || global3.x, true), arg_0);
    let var_1 = Struct_3(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, true), !(!all(arg_0.xx))), Struct_2(arg_1, Struct_1(-404f, _wgslsmith_clamp_vec3_u32(~arg_1.b, arg_1.b, vec3<u32>(arg_1.b.x, 3327u, 1u)), ~vec2<i32>(2147483647i, u_input.a), 149f), _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(arg_1.b, vec3<u32>(44224u, arg_1.b.x, arg_1.b.x)), abs(vec3<u32>(1u, 22192u, arg_1.b.x))), _wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(-global1.x)), arg_1));
    global2 = array<vec2<u32>, 22>();
    var var_2 = -21118i;
    var var_3 = Struct_2(arg_1, Struct_1(-1000f, vec3<u32>(var_1.b.b.b.x, ~max(0u, var_1.b.e.b.x), abs(arg_1.b.x)), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), select(_wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.b.x, 9112u), vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), var_1.b.b.b, any(var_0)), (vec3<u32>(var_1.b.e.b.x, arg_1.b.x, arg_1.b.x) ^ vec3<u32>(100547u, 5539u, 4294967295u)) << (abs(vec3<u32>(4294967295u, arg_1.b.x, 1u)) % vec3<u32>(32u))), (~vec3<u32>(var_1.b.b.b.x, var_1.b.a.b.x, var_1.b.c.x) & vec3<u32>(4294967295u, arg_1.b.x, arg_1.b.x)) & max(arg_1.b, ~vec3<u32>(var_1.b.e.b.x, 25863u, 0u)), !vec3<bool>(true, true, global3.x)), _wgslsmith_f_op_f32(var_1.b.b.a * global1.x), Struct_1(_wgslsmith_f_op_f32(max(-222f, _wgslsmith_f_op_f32(-1f))), firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.x, 1u, var_1.b.a.b.x), var_1.b.b.b)), firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(arg_1.c.x, arg_1.c.x), _wgslsmith_add_i32(u_input.a, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.a))));
    return vec3<u32>(abs(var_1.b.c.x), arg_1.b.x, var_1.b.a.b.x);
}

fn func_2() -> bool {
    var var_0 = Struct_1(global1.x, ~func_3(select(select(vec3<bool>(true, global3.x, true), vec3<bool>(true, global3.x, true), vec3<bool>(true, false, false)), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, global3.x, global3.x)), vec3<bool>(global3.x, false, global3.x)), Struct_1(global1.x, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 4703u), vec3<u32>(13600u, 4294967295u, 69334u)), vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(step(-639f, 347f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(countOneBits(u_input.a), 1i), u_input.a), firstTrailingBit(-vec2<i32>(0i, 42944i) >> (_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(29518u, 22u)], vec2<u32>(54493u, 9034u)) % vec2<u32>(32u)))), -1637f);
    var var_1 = global3.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, global1.x) + vec2<f32>(var_0.d, global1.x)))))));
    let var_2 = all(vec3<bool>(!(!global3.x), false, global3.x)) & any(select(select(vec2<bool>(global3.x, false), vec2<bool>(true, true), global3.x), vec2<bool>(global3.x && true, global3.x), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, global3.x), vec2<bool>(false, false)), var_0.b.x <= 4542u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-735f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1747f + _wgslsmith_f_op_f32(global1.x + var_0.d))))), vec3<u32>(9638u, var_0.b.x, _wgslsmith_sub_u32(67681u, 8926u >> (1u % 32u))) ^ countOneBits(vec3<u32>(~51037u, 0u, _wgslsmith_mod_u32(17754u, 4294967295u))), reverseBits(~_wgslsmith_mult_vec2_i32(reverseBits(var_0.c), _wgslsmith_clamp_vec2_i32(var_0.c, vec2<i32>(0i, 19918i), vec2<i32>(2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-577f, _wgslsmith_f_op_f32(var_0.a + global1.x)))))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>, arg_3: i32) -> vec2<bool> {
    let var_0 = arg_0.b;
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b.a, 634f)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(445f, 1615f, global3.x)))), -803f, global3.x)), global1.x), select(vec2<bool>(arg_2.x, all(!vec3<bool>(global3.x, true, global3.x))), arg_2.wy, any(arg_0.a.xz))));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.e.b.x, arg_0.b.e.b.x, arg_0.b.c.x, arg_1), vec4<u32>(74966u, 73492u, arg_0.b.a.b.x, 31541u), ~select(vec4<u32>(var_0.e.b.x, var_0.b.b.x, 44922u, 4294967295u), vec4<u32>(arg_0.b.c.x, var_0.a.b.x, 45111u, arg_1), true)) >> (_wgslsmith_clamp_vec4_u32(~abs(reverseBits(vec4<u32>(1u, arg_1, var_0.c.x, 21170u))), ~max(vec4<u32>(0u, 47640u, 63131u, arg_1), vec4<u32>(48449u, 38905u, arg_0.b.a.b.x, 126241u)) & ~abs(vec4<u32>(arg_1, arg_0.b.c.x, arg_1, 39049u)), abs(select(max(vec4<u32>(1u, 54102u, var_0.b.b.x, 1u), vec4<u32>(4294967295u, 75536u, arg_1, var_0.b.b.x)), vec4<u32>(1u, var_0.a.b.x, var_0.b.b.x, var_0.b.b.x) >> (vec4<u32>(arg_0.b.b.b.x, var_0.e.b.x, 49455u, 0u) % vec4<u32>(32u)), all(vec3<bool>(global3.x, arg_0.a.x, arg_0.a.x))))) % vec4<u32>(32u));
    global3 = arg_0.a.zy;
    let var_2 = reverseBits(var_1.x);
    return vec2<bool>(false, _wgslsmith_mod_i32(var_0.e.c.x, abs(var_0.a.c.x)) != var_0.e.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global3 = func_4(Struct_3(vec3<bool>(!all(vec2<bool>(global3.x, true)), !func_2(), (-2147483647i & arg_1.b.e.c.x) < -u_input.a), Struct_2(Struct_1(arg_0.a, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, arg_1.b.c.x, 4294967295u), arg_0.b), arg_1.b.e.c ^ arg_1.b.a.c, arg_1.b.a.d), arg_1.b.b, vec3<u32>(0u, arg_1.b.c.x, 11542u) ^ max(vec3<u32>(121356u, arg_0.b.x, arg_0.b.x), vec3<u32>(arg_1.b.c.x, 78108u, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.a.a, 1686f))), arg_1.b.a)), select(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u)), arg_0.b.x, select(any(vec4<bool>(true, false, false, global3.x)), all(arg_1.a), global3.x)), !vec4<bool>(-u_input.a < abs(arg_1.b.e.c.x), firstTrailingBit(2147483647i) <= 2147483647i, any(vec4<bool>(arg_1.a.x, global3.x, global3.x, true)), any(arg_1.a.zy)), ~(-1i));
    var var_0 = arg_1.b.b.d;
    var var_1 = Struct_2(arg_1.b.a, arg_0, _wgslsmith_add_vec3_u32(abs(~vec3<u32>(4294967295u, arg_1.b.a.b.x, 44300u)), ~firstLeadingBit(vec3<u32>(arg_1.b.c.x, arg_1.b.b.b.x, arg_0.b.x))), global1.x, arg_0);
    var var_2 = var_1.a.b.x;
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(u_input.a, ~u_input.a), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, var_1.b.c.x), ~(u_input.a ^ u_input.a)));
    return -396f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(4294967295u, ~0u, ~1u, 27616u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 298f, 1926f, global1.x), vec4<f32>(global1.x, -434f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 945f, global1.x, -2079f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(func_1(Struct_1(1122f, vec3<u32>(4294967295u, 0u, 77139u), vec2<i32>(0i, 26681i), global1.x), Struct_3(vec3<bool>(true, false, global3.x), Struct_2(Struct_1(657f, vec3<u32>(15720u, 0u, 17245u), vec2<i32>(u_input.a, 31458i), global1.x), Struct_1(821f, vec3<u32>(55236u, 0u, 0u), vec2<i32>(u_input.a, u_input.a), global1.x), vec3<u32>(0u, 37156u, 59513u), global1.x, Struct_1(global1.x, vec3<u32>(82010u, 507u, 40367u), vec2<i32>(u_input.a, 2147483647i), -253f))))), -415f, _wgslsmith_f_op_f32(min(992f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(124f + -472f) - -1856f), _wgslsmith_sub_vec2_i32((vec2<i32>(-1i, u_input.a) | firstLeadingBit(vec2<i32>(-31777i, u_input.a))) << (vec2<u32>(30558u, 68520u) % vec2<u32>(32u)), vec2<i32>(-u_input.a ^ -u_input.a, -14609i << (1u % 32u))));
}

