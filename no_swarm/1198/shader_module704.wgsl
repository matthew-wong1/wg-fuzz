struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -41146i;

var<private> global1: array<u32, 17>;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = !vec2<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), any(vec2<bool>(true, true)));
    let var_1 = Struct_1(~abs(_wgslsmith_add_vec2_u32(u_input.c, global3.a)), global3.b, global3.c);
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)), global3.b.x, 1f, _wgslsmith_f_op_f32(exp2(var_2.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1608f, var_2.b.x, var_1.b.x, global3.b.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, 1203f, var_2.b.x, var_2.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(974f, -628f))), -718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))))));
    global3 = var_1;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, var_3.x, global3.b.x, -840f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1522f, _wgslsmith_f_op_f32(-global3.b.x), -918f, _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-392f, 1910f, global3.b.x, 732f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(208f, -423f, -726f, 407f) * vec4<f32>(var_1.b.x, var_2.b.x, 1273f, 1000f))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    global1 = array<u32, 17>();
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(global3.b.x, global3.b.x, arg_0.x, 460f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.b.x, global3.b.x, global3.b.x, 137f), vec4<f32>(-1000f, global3.b.x, global3.b.x, global3.b.x))))), _wgslsmith_f_op_vec4_f32(func_3())))), Struct_2(Struct_1(vec2<u32>(countOneBits(35335u), global3.a.x << (u_input.c.x % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b * vec3<f32>(arg_0.x, -1836f, arg_0.x)) * _wgslsmith_f_op_vec3_f32(select(global3.b, vec3<f32>(1332f, global3.b.x, global3.b.x), vec3<bool>(arg_2, arg_2, true)))), global3.c), Struct_1(select(~global3.a, global3.a, select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_2, arg_1.x), vec2<bool>(true, false))), vec3<f32>(244f, _wgslsmith_f_op_f32(min(arg_0.x, 1518f)), _wgslsmith_f_op_f32(sign(379f))), global3.c), Struct_1(vec2<u32>(u_input.a, global3.a.x) | _wgslsmith_add_vec2_u32(vec2<u32>(global3.c.x, 4092u), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b * vec3<f32>(-1416f, -182f, arg_0.x))), max(vec4<u32>(global3.a.x, 87953u, 128920u, global3.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], 0u, 92108u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17738u, 17u)], 17u)]), global3.c))), arg_0.x), Struct_1(~abs(~vec2<u32>(global3.a.x, 1u)), vec3<f32>(_wgslsmith_f_op_f32(371f * _wgslsmith_f_op_f32(floor(110f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + 704f))), global3.b.x), ~(~vec4<u32>(0u, 0u, u_input.a, u_input.c.x)) | ~max(vec4<u32>(u_input.a, global3.c.x, u_input.a, 30146u), vec4<u32>(global1[_wgslsmith_index_u32(global3.c.x, 17u)], u_input.a, 79094u, 63218u))), 1u);
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.c.a, vec2<u32>(global3.c.x, var_0.d)), vec2<u32>(var_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.c.a.x, 4294967295u, global1[_wgslsmith_index_u32(26874u, 17u)]), vec4<u32>(global3.a.x, 68405u, var_0.d, 24181u)))) ^ max(~vec2<u32>(15844u, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<u32>(1358u, ~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), global3.b.x, arg_0.x))), max(abs(~(vec4<u32>(15661u, 53954u, 20626u, global1[_wgslsmith_index_u32(36434u, 17u)]) >> (global3.c % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(global3.c, vec4<u32>(16267u, ~global3.a.x, 40911u, abs(global3.a.x)))));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(7948u, ~0u), var_0.c.b, global3.c), Struct_1(global3.c.yx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.a.zyy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(871f, 1147f, 1191f)) - _wgslsmith_f_op_vec3_f32(-var_0.b.c.b)))), abs(global3.c)), Struct_1(vec2<u32>(1u, ~(~3921u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-140f * 718f), _wgslsmith_f_op_f32(sign(-1371f)), _wgslsmith_f_op_f32(trunc(var_0.c.b.x))))), _wgslsmith_mult_vec4_u32(var_0.b.c.c >> (vec4<u32>(12097u, 20540u, 1u, 0u) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(var_1.c.x, 0u, 12313u, 10196u)))), 1753f);
    global2 = arg_1.x;
    return var_0.b;
}

fn func_4(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3()).x;
    global1 = array<u32, 17>();
    var var_1 = -firstTrailingBit(~vec4<i32>(firstTrailingBit(u_input.b.x), u_input.b.x, 8280i, _wgslsmith_mod_i32(0i, arg_0.a.x)));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(arg_0.b.c.b.zx * arg_0.b.c.b.yz), select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))), vec4<bool>(true, true, true, true), true), any(vec3<bool>(arg_0.d.x <= firstLeadingBit(var_1.x), true, true))).b;
    var var_3 = firstLeadingBit(max(max(countOneBits(-vec4<i32>(0i, var_1.x, 38814i, 1i)), vec4<i32>(firstLeadingBit(var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, u_input.b.x), vec3<i32>(-29870i, u_input.b.x, u_input.b.x)), ~arg_0.a.x, max(var_1.x, arg_0.d.x))), arg_0.a << ((~vec4<u32>(u_input.a, 0u, 15073u, u_input.a) << (abs(var_2.c) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return ~(~func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.b.x, var_2.b.x))), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, true, true))).b.c);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4) -> vec2<u32> {
    global1 = array<u32, 17>();
    global2 = arg_2.a.x == u_input.b.x;
    var var_0 = ~vec2<i32>(-27646i, 32970i << (arg_1.c.x % 32u));
    let var_1 = 42402u;
    let var_2 = any(vec2<bool>(true, true));
    return ~select(arg_1.c.wy, max(~vec2<u32>(40531u, global3.c.x), global3.a), 1f >= arg_1.b.x);
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = -54390i;
    var var_0 = arg_3.wy;
    let var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~select(vec4<u32>(arg_2.x, global1[_wgslsmith_index_u32(34842u, 17u)], global3.a.x, 1u), global3.c, arg_1.x), vec4<u32>(~global3.a.x, ~1u, 30610u, _wgslsmith_mod_u32(70452u, 4294967295u))), vec4<u32>(global3.a.x >> (arg_2.x % 32u), ~arg_2.x, min(arg_2.x, u_input.c.x), select(global3.c.x, global1[_wgslsmith_index_u32(51976u, 17u)], arg_1.x)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2.x, arg_2.x, 4294967295u), vec4<u32>(1u, 44151u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 22951u)) % vec4<u32>(32u)));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global3.b.x - global3.b.x), _wgslsmith_f_op_f32(global3.b.x + global3.b.x))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1.x), select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false))), !vec4<bool>(false, arg_1.x, false, arg_1.x)), select(false, select(true, !arg_1.x, all(vec3<bool>(arg_1.x, false, true))), true)).b;
    global0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-36542i, var_0.x, abs(u_input.b.x), 1i), firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(arg_3, vec4<i32>(2147483647i, -1459i, u_input.b.x, -1i))) << (vec4<u32>(~4294967295u, var_1, var_1 >> (1u % 32u), ~0u) % vec4<u32>(32u))));
    return func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-538f)), -335f) * vec2<f32>(-331f, func_2(_wgslsmith_f_op_vec2_f32(-var_2.b.yx), !vec4<bool>(true, true, arg_1.x, false), !arg_1.x).a.b.x)), select(!select(vec4<bool>(arg_1.x, arg_1.x, true, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, arg_1.x, false), arg_1.x), arg_1.x), !(!(!vec4<bool>(false, false, arg_1.x, arg_1.x))), !(!vec4<bool>(false, arg_1.x, true, true))), !arg_1.x).b;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = func_6(u_input.b.x, vec3<bool>(all(vec2<bool>(any(vec2<bool>(arg_1, arg_1)), true)), !(!arg_1) == (arg_0.b.x <= -383f), all(!vec4<bool>(arg_1, true, arg_1, arg_1))), func_5(func_4(Struct_4(vec4<i32>(u_input.b.x, -2147483647i, 16757i, u_input.b.x), func_2(arg_0.b.yy, vec4<bool>(true, false, false, arg_1), arg_1), -1i, u_input.b.zx)), Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)] & 51345u, 4294967295u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.b)), vec3<f32>(106f, 510f, -351f)), _wgslsmith_add_vec4_u32(vec4<u32>(37927u, 1u, u_input.a, 0u), min(vec4<u32>(1u, 62906u, u_input.c.x, 18716u), vec4<u32>(18161u, u_input.c.x, 15488u, 0u)))), Struct_4(~(~u_input.b), func_2(global3.b.xx, vec4<bool>(arg_1, arg_1, arg_1, arg_1), any(vec3<bool>(true, false, arg_1))), max(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b.x), u_input.b.xx)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(20880i, 14351i), vec2<i32>(2147483647i, u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, 0i)), u_input.b | ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1312f, arg_0.b.x, -352f, arg_2)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, -536f, 781f, -1111f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, arg_2, arg_0.b.x, 413f) + vec4<f32>(arg_2, arg_0.b.x, var_0.b.x, arg_0.b.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(-1000f, arg_2, -775f, -136f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, 422f, var_0.b.x, var_0.b.x), vec4<f32>(-639f, -650f, arg_2, -1278f)))))))));
    let var_2 = select(!vec2<bool>(arg_1, any(!vec4<bool>(true, false, arg_1, arg_1))), select(vec2<bool>(any(vec2<bool>(arg_1, true)) || !arg_1, arg_1), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false))), all(vec2<bool>(true, true))), arg_1);
    var var_3 = 1u;
    let var_4 = any(vec4<bool>(false, false, true, !((arg_0.c.x << (arg_0.c.x % 32u)) < global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 17u)]), 17u)])));
    return var_0;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    global2 = true;
    let var_0 = func_6(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(~45662i, 1i))), !select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, u_input.b.x <= u_input.b.x, true)), ~arg_1.c.a >> (u_input.c % vec2<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x ^ ~u_input.b.x), _wgslsmith_add_i32(-_wgslsmith_sub_i32(u_input.b.x, -1i), -_wgslsmith_div_i32(2147483647i, 1i)), -u_input.b.x, -((u_input.b.x & 0i) & min(1i, 27694i)))).b.xy;
    global1 = array<u32, 17>();
    let var_1 = _wgslsmith_add_u32(~func_1(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(39224u, arg_1.c.c.x), global3.a), global3.b, global3.c), all(vec3<bool>(true, true, true)), 874f, _wgslsmith_f_op_f32(max(1f, var_0.x))).c.x, ~0u);
    global2 = true;
    return arg_1.a;
}

fn func_8(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<u32> {
    global2 = arg_1.x;
    global3 = func_1(func_6(_wgslsmith_add_i32(reverseBits(u_input.b.x), i32(-1i) * -8515i), vec3<bool>(arg_1.x, true, all(!arg_1)), func_6(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b & vec4<i32>(u_input.b.x, -2147483647i, 0i, 29501i)), vec3<bool>(arg_1.x, arg_1.x, true | arg_1.x), countOneBits(vec2<u32>(u_input.c.x, global3.a.x)) & countOneBits(arg_0.c.wy), ~u_input.b).a, -vec4<i32>(abs(-2147483647i), -9243i, u_input.b.x & u_input.b.x, -1i)), false, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1094f, arg_0.b.x)))))));
    var var_0 = true;
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-599f, 671f)), _wgslsmith_f_op_f32(max(arg_0.b.x, -1165f)))), 1818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-246f)))) * _wgslsmith_f_op_f32(abs(global3.b.x)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x))), arg_0.b.x), vec4<bool>(arg_1.x, (20799u << (1u % 32u)) >= firstLeadingBit(global3.c.x), false && all(vec4<bool>(false, arg_1.x, false, false)), (u_input.b.x | 7656i) == u_input.b.x), arg_1.x), Struct_1(~countOneBits(global3.c.yw), global3.b, global3.c), global3.a.x);
    let var_2 = u_input.c;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global3 = Struct_1(func_8(func_7(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 416f, global3.b.x, global3.b.x)))), Struct_2(func_1(Struct_1(vec2<u32>(64562u, global1[_wgslsmith_index_u32(global3.c.x, 17u)]), vec3<f32>(global3.b.x, -885f, global3.b.x), global3.c), false, 808f, global3.b.x), Struct_1(vec2<u32>(91642u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c.x, 17u)], 17u)]), global3.b, vec4<u32>(global3.a.x, 1u, u_input.c.x, global1[_wgslsmith_index_u32(global3.a.x, 17u)])), Struct_1(vec2<u32>(0u, global3.a.x), vec3<f32>(-1049f, global3.b.x, global3.b.x), vec4<u32>(90505u, u_input.a, 1u, 56082u)), func_6(-13224i, vec3<bool>(false, true, false), u_input.c, u_input.b).b.x)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true || (u_input.b.x != u_input.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(218f * _wgslsmith_f_op_f32(1504f * global3.b.x)), global3.b.x, global3.b.x) - vec3<f32>(global3.b.x, func_2(_wgslsmith_f_op_vec2_f32(global3.b.xz * global3.b.xz), vec4<bool>(true, true, true, true), true).b.b.x, _wgslsmith_f_op_f32(func_6(-2147483647i, vec3<bool>(true, true, true), u_input.c, vec4<i32>(15854i, -90650i, 1i, u_input.b.x)).b.x * -352f))), vec4<u32>(~func_4(Struct_4(u_input.b, Struct_2(Struct_1(u_input.c, global3.b, global3.c), Struct_1(u_input.c, global3.b, vec4<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(26610u, 17u)], global3.a.x)), Struct_1(vec2<u32>(u_input.a, 4294967295u), global3.b, global3.c), global3.b.x), u_input.b.x, u_input.b.zw)).x, func_1(func_6(~u_input.b.x, vec3<bool>(true, true, true), func_4(Struct_4(u_input.b, Struct_2(Struct_1(vec2<u32>(4294967295u, 4663u), vec3<f32>(global3.b.x, -282f, global3.b.x), global3.c), Struct_1(u_input.c, global3.b, vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 45810u, global3.a.x, u_input.a)), Struct_1(global3.a, vec3<f32>(549f, 789f, -238f), vec4<u32>(global3.c.x, u_input.a, u_input.a, global3.c.x)), 1640f), u_input.b.x, vec2<i32>(1i, -2147483647i))).xy, u_input.b), true, _wgslsmith_f_op_f32(abs(1566f)), _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(-global3.b.x))).c.x, 8486u, ~(~(~global1[_wgslsmith_index_u32(global3.c.x, 17u)]))));
    global2 = true;
    global0 = ~1i << (global3.c.x % 32u);
    let var_0 = u_input.b.yzx;
    global2 = select(false, all(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(any(vec3<bool>(true, false, false)), true), vec2<bool>(true, any(vec4<bool>(false, true, false, false))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-532f)) * global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))), ~var_0, _wgslsmith_f_op_f32(-func_6(-(0i & var_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), vec2<u32>(global3.a.x >> (22490u % 32u), ~39840u), select(-u_input.b, vec4<i32>(var_0.x, -7303i, -36794i, var_0.x), vec4<bool>(true, true, true, true))).b.x), -2147483647i, _wgslsmith_f_op_f32(floor(-1266f)));
}

