struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = 0i;

var<private> global2: array<vec4<f32>, 4>;

var<private> global3: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = 32892i;
    var var_1 = Struct_3(true, vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(11564i, u_input.c.x, -2147483647i), u_input.d), -2147483647i, 16110i) >> (select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 65948u, u_input.b.x, u_input.b.x), vec4<u32>(8362u, u_input.b.x, 15249u, u_input.b.x)), vec4<u32>(u_input.b.x, 36916u, u_input.b.x, u_input.b.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(276u, 28874u, u_input.b.x, 1u)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, 14005u), 28u)]) % vec4<u32>(32u)));
    var var_2 = Struct_4(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1199f)) + -201f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))), Struct_3(var_1.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~var_1.b, u_input.c), u_input.c ^ abs(vec4<i32>(49217i, -49900i, -1i, u_input.a)))), countOneBits(countOneBits(u_input.c)), true);
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = ~u_input.b;
    return vec4<i32>(~(-_wgslsmith_sub_i32(415i, min(1i, 1i))), -2583i, var_2.c.b.x, 2147483647i);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_3((-1000f != _wgslsmith_f_op_f32(-arg_0)) != true, countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -u_input.c, _wgslsmith_add_vec4_i32(u_input.c, func_3()))));
    var var_1 = -u_input.d.x;
    let var_2 = Struct_1(any(vec2<bool>(false, arg_1)) == !all(!vec3<bool>(true, arg_1, arg_1)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(select(var_0.b, vec4<i32>(var_0.b.x, var_0.b.x, 11554i, 2147483647i), arg_1), select(vec4<i32>(u_input.a, 2147483647i, var_0.b.x, 1i), vec4<i32>(1i, u_input.a, u_input.a, -2147483647i), false)), _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(1i), 8910i & var_0.b.x, u_input.d.x, -var_0.b.x), u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, -2116f)), 2283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -415f) * -1180f), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -530f)));
    var var_3 = Struct_4(true, var_2.d, Struct_3(var_0.a, u_input.c), abs(u_input.c), true);
    global1 = var_0.b.x;
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = !select(!select(!vec3<bool>(true, arg_2.a, arg_2.a), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_2.a, false), vec3<bool>(arg_2.a, true, true)), select(vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, true, true), vec3<bool>(arg_2.a, false, arg_2.a))), !(!(!vec3<bool>(arg_2.a, true, arg_2.a))), arg_2.a);
    var var_1 = -1i;
    global2 = array<vec4<f32>, 4>();
    global2 = array<vec4<f32>, 4>();
    global2 = array<vec4<f32>, 4>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 430f) - -2484f), -824f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstLeadingBit(~(-49572i)), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1123f, 326f), vec2<f32>(500f, 1000f))), func_2(-191f, true), vec3<i32>(arg_0.x ^ arg_0.x, ~arg_2, 34877i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(round(var_0)), var_0), vec3<f32>(-1055f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_0))))));
    global0 = 4294967295u;
    global2 = array<vec4<f32>, 4>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(func_2(778f, false).c.x, _wgslsmith_f_op_f32(select(-309f, 703f, true))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return Struct_3(!(634f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), u_input.c);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)), func_1(vec2<i32>(_wgslsmith_mod_i32(select(arg_2.b.x, -20866i, arg_2.a), -18788i), arg_1.b.x), vec4<i32>(2147483647i, -u_input.a, _wgslsmith_clamp_i32(~u_input.d.x, u_input.a, ~(-1i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, arg_2.b.x), countOneBits(u_input.d.x))), arg_2.b.x), arg_1.b, false);
    global3 = array<vec4<bool>, 28>();
    var var_1 = u_input.c.xww;
    var var_2 = _wgslsmith_div_i32(2147483647i & var_1.x, 43273i);
    global3 = array<vec4<bool>, 28>();
    return Struct_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1538f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~abs(u_input.b.x << (0u % 32u)), func_1(vec2<i32>(-2147483647i, u_input.d.x), u_input.c, u_input.d.x), func_1(~max(abs(u_input.d.yx), -u_input.c.zw), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, 36802i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, -6083i, u_input.d.x), vec4<i32>(u_input.c.x, 9848i, u_input.d.x, u_input.c.x))), func_1(vec2<i32>(u_input.c.x, 17775i) >> (u_input.b % vec2<u32>(32u)), countOneBits(vec4<i32>(u_input.a, 23583i, u_input.c.x, -16011i)), u_input.a).b, _wgslsmith_mod_vec4_i32(func_1(u_input.c.zz, vec4<i32>(0i, 4714i, u_input.c.x, u_input.c.x), u_input.c.x).b, u_input.c)), select(19840i, -abs(-14454i), true)));
    var var_1 = 1u;
    let var_2 = _wgslsmith_clamp_u32(4294967295u, reverseBits(max(u_input.b.x & 25941u, u_input.b.x) | abs(u_input.b.x)), abs(max(_wgslsmith_div_u32(0u, ~1u), ~u_input.b.x & ~u_input.b.x)));
    let var_3 = -vec3<i32>(_wgslsmith_add_i32(~abs(-13195i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, -1i), u_input.c.zy, vec2<bool>(true, true)), ~vec2<i32>(-18509i, u_input.d.x))), _wgslsmith_sub_i32(u_input.a, 5713i), i32(-1i) * -23723i);
    var var_4 = func_2(var_0.a.x, false).a;
    global2 = array<vec4<f32>, 4>();
    let var_5 = -409f;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, (_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, u_input.a, u_input.c.x), vec4<i32>(0i, var_3.x, u_input.d.x, -2147483647i)) ^ vec4<i32>(-1i, max(20427i, u_input.a), -5941i, u_input.a)) | _wgslsmith_sub_vec4_i32(abs(~vec4<i32>(49606i, -40798i, -2147483647i, u_input.c.x)), u_input.c), _wgslsmith_f_op_f32(min(-136f, _wgslsmith_f_op_f32(-var_5))), vec2<i32>(var_3.x, func_2(var_5, true).b.x ^ _wgslsmith_add_i32(-2147483647i, 47078i)), max(var_3.yy, -u_input.c.xx));
}

