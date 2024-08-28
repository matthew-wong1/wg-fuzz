struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-1898f, 0u, vec3<u32>(2976u, 36457u, 31300u)), Struct_1(-1024f, 1u, vec3<u32>(1u, 0u, 0u)), Struct_1(294f, 1u, vec3<u32>(1u, 1u, 10166u)), Struct_1(-183f, 51616u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(-1251f, 4294967295u, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(-548f, 4294967295u, vec3<u32>(4294967295u, 10902u, 4294967295u)), Struct_1(1000f, 40971u, vec3<u32>(6859u, 1u, 0u)), Struct_1(-997f, 0u, vec3<u32>(13167u, 60661u, 24636u)), Struct_1(127f, 25411u, vec3<u32>(1u, 0u, 5719u)), Struct_1(902f, 1u, vec3<u32>(1u, 4294967295u, 1805u)), Struct_1(-1932f, 28184u, vec3<u32>(66008u, 7583u, 0u)), Struct_1(1556f, 4294967295u, vec3<u32>(4294967295u, 16620u, 4294967295u)), Struct_1(-786f, 31861u, vec3<u32>(1u, 42111u, 4294967295u)), Struct_1(885f, 1u, vec3<u32>(1u, 1u, 5579u)), Struct_1(496f, 4294967295u, vec3<u32>(1337u, 29390u, 70544u)), Struct_1(942f, 1u, vec3<u32>(4294967295u, 18112u, 0u)), Struct_1(-429f, 87375u, vec3<u32>(27534u, 1u, 4294967295u)));

var<private> global2: array<vec4<u32>, 11>;

var<private> global3: bool = true;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<vec4<u32>, 11>();
    var var_0 = global1[_wgslsmith_index_u32(global4.c.x, 17u)];
    global0 = global1[_wgslsmith_index_u32(~u_input.b, 17u)];
    global4 = Struct_3(101508u, global4.b, reverseBits(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global4.b.c.b, 88426u), vec2<u32>(82967u, 0u)))));
    let var_1 = !global4.b.b.x;
    return global4.c.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(arg_1.c.x, arg_1.b, select(~u_input.a, global0.c.xx, select(vec2<bool>(true, true), !arg_2, global4.b.b.x)));
    global3 = all(global4.b.b.zx);
    let var_1 = _wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.c, -u_input.c, _wgslsmith_div_i32(u_input.c, u_input.c), 1i)), _wgslsmith_mod_vec4_i32(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, u_input.c, 31057i, u_input.c))), ~(-countOneBits(vec4<i32>(1i, u_input.c, u_input.c, -12550i)))));
    var var_2 = _wgslsmith_mod_i32(var_1.x | 2147483647i, 6008i);
    var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(max(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 3610i), _wgslsmith_add_i32(u_input.c, 11422i)), u_input.c), u_input.c), _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, -20553i, u_input.c, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, -8738i, 2147483647i), vec4<i32>(var_1.x, -1i, u_input.c, u_input.c))), _wgslsmith_div_vec4_i32(vec4<i32>(37908i, u_input.c, u_input.c, u_input.c), var_1)), _wgslsmith_dot_vec3_i32(firstTrailingBit(-var_1.wwy), vec3<i32>(var_1.x, var_1.x, var_1.x) << (~vec3<u32>(arg_1.c.x, var_0.c.x, 1u) % vec3<u32>(32u)))));
    return ~18541u;
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global3 = false;
    global3 = any(vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.c.a) + _wgslsmith_f_op_f32(trunc(488f))) == global4.b.a, true, true != global4.b.b.x));
    var var_0 = vec4<u32>(~(~0u), _wgslsmith_clamp_u32(90323u, global0.c.x << (~_wgslsmith_clamp_u32(u_input.b, 91921u, 21512u) % 32u), global4.a), func_4(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.c, arg_0.b.c.c.yy), firstTrailingBit(vec2<u32>(4294967295u, 100077u) | vec2<u32>(u_input.a.x, 40671u)), vec2<u32>(_wgslsmith_mult_u32(global0.c.x, 0u), func_3(1980f))), arg_0, arg_0.b.b.yx), ~62402u);
    let var_1 = Struct_1(global4.b.a, arg_0.a, global4.b.c.c);
    let var_2 = ~(~(~(~(vec3<u32>(47117u, var_0.x, var_1.c.x) << (vec3<u32>(global0.b, u_input.a.x, u_input.b) % vec3<u32>(32u))))));
    return vec4<u32>(1u, u_input.b, countOneBits(global4.b.c.b), 0u);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_3 {
    global3 = arg_0.b.x;
    global2 = array<vec4<u32>, 11>();
    let var_0 = global0.a;
    let var_1 = ~63586u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 593f, -142f, 219f) - vec4<f32>(arg_0.c.a, -104f, -877f, global4.b.a)) * vec4<f32>(arg_0.c.a, global0.a, arg_0.c.a, -1303f)))));
    return Struct_3(~arg_0.c.b, Struct_2(-663f, !(!select(arg_0.b, arg_1.wxw, arg_0.b.x)), Struct_1(-1000f, reverseBits(min(arg_2.x, 2525u)), min(~vec3<u32>(var_1, 1u, 49412u), global4.b.c.c))), ~abs(global0.c.yz));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> StorageBuffer {
    let var_0 = vec2<bool>(arg_2.b.x, false);
    var var_1 = func_5(global4.b, select(vec4<bool>(arg_2.b.x, any(vec3<bool>(arg_2.b.x, false, true)), arg_0.b.b.x, true), select(select(vec4<bool>(false, false, arg_2.b.x, true), !vec4<bool>(true, true, var_0.x, false), select(vec4<bool>(var_0.x, false, var_0.x, arg_0.b.b.x), vec4<bool>(false, false, global4.b.b.x, arg_0.b.b.x), true)), !(!vec4<bool>(true, arg_0.b.b.x, var_0.x, false)), any(select(vec4<bool>(true, arg_0.b.b.x, true, false), vec4<bool>(arg_0.b.b.x, var_0.x, false, false), var_0.x))), !select(vec4<bool>(global4.b.b.x, true, arg_2.b.x, true), select(vec4<bool>(true, true, true, arg_0.b.b.x), vec4<bool>(global4.b.b.x, var_0.x, true, false), true), true)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(20645u, arg_3), abs(arg_1.b), ~global4.c.x, global0.b), vec4<u32>(u_input.b, abs(arg_1.b), global4.c.x, max(1u, arg_0.a))))).b.c.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, 446f, _wgslsmith_f_op_f32(f32(-1f) * -695f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-843f, -405f, global4.b.a) - vec3<f32>(arg_2.c.a, global0.a, arg_1.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-255f, global0.a, 881f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, 615f, 1614f)));
    return StorageBuffer(abs(vec3<u32>(_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.c.x, global4.a, 26509u), vec3<u32>(arg_1.b, 38575u, u_input.b)), ~18555u), global0.b, _wgslsmith_mod_u32(~16199u, ~0u))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1538f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1216f, 324f, arg_1.a, 1030f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a, global0.a, -1020f, 162f), vec4<f32>(1000f, 436f, -693f, 633f), var_0.x))))))), firstLeadingBit(vec2<i32>(i32(-1i) * -20046i, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.a - 1136f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -471f);
    var var_1 = global1[_wgslsmith_index_u32(select((0u << (u_input.b % 32u)) << (4294967295u % 32u), ~4294967295u, global4.b.b.x), 17u)];
    let var_2 = !global4.b.b;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -824f);
    let var_4 = !((~var_1.b >= (26408u & u_input.b)) && true);
    return func_6(func_5(global4.b, vec4<bool>(all(vec3<bool>(global4.b.b.x, arg_1.x, var_4)), true, !arg_1.x, false), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_2(Struct_3(1u, Struct_2(global0.a, global4.b.b, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<u32>(4294967295u, global4.c.x))), vec4<u32>(14599u, global0.b, 4294967295u, 4294967295u)), vec4<u32>(abs(1u), 1u, var_1.c.x, 1u))), func_5(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b.c.a * var_0), global0.a), var_2, Struct_1(975f, 100683u, ~global4.b.c.c)), !select(select(vec4<bool>(var_4, arg_1.x, true, true), vec4<bool>(false, true, true, true), vec4<bool>(arg_1.x, global4.b.b.x, false, var_4)), !vec4<bool>(false, global4.b.b.x, var_4, var_2.x), false), _wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(func_4(global0.c.yy, Struct_3(var_1.c.x, global4.b, var_1.c.zz), vec2<bool>(false, true)), 11u)] << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, 40576u, u_input.b), global2[_wgslsmith_index_u32(var_1.b, 11u)], vec4<u32>(4294967295u, u_input.a.x, 39280u, var_1.c.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(u_input.b, global4.b.c.c.x), 4294967295u, global0.c.x, u_input.a.x))).b.c, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_0) + 361f), global0.a), var_2, global4.b.c), ~(~func_4(vec2<u32>(0u, 0u), func_5(global4.b, vec4<bool>(arg_1.x, arg_1.x, false, global4.b.b.x), vec4<u32>(15088u, 1u, 0u, 4294967295u)), vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global4.c.x);
    var var_1 = abs(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -71571i, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(u_input.c, 9278i, -2147483647i))) << (global0.c % vec3<u32>(32u))));
    let var_2 = ~(vec3<u32>(~(u_input.a.x & global0.c.x), u_input.b, ~(~4294967295u)) | (vec3<u32>(~66001u, reverseBits(global4.c.x), abs(global4.b.c.c.x)) << (abs(abs(vec3<u32>(1u, 0u, global4.c.x))) % vec3<u32>(32u))));
    var_0 = 44665u;
    let var_3 = global4.b.c.c.zy;
    let x = u_input.a;
    s_output = func_1(var_1.x, global4.b.b.zy);
}

