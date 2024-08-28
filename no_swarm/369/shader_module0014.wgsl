struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_4 = Struct_4(vec2<f32>(-377f, 735f), Struct_3(vec4<i32>(2147483647i, -29784i, -1i, -39133i), 2258f, Struct_2(vec4<i32>(1i, 2147483647i, 0i, 1i), 5452i, vec4<bool>(false, true, false, true), Struct_1(vec2<i32>(-17347i, 0i)), Struct_1(vec2<i32>(0i, -1i)))), Struct_2(vec4<i32>(0i, -42378i, 0i, -37814i), -56127i, vec4<bool>(true, false, true, false), Struct_1(vec2<i32>(-4394i, 11970i)), Struct_1(vec2<i32>(2147483647i, 2147483647i))));

var<private> global3: Struct_3 = Struct_3(vec4<i32>(97930i, 30111i, 0i, 36896i), -1069f, Struct_2(vec4<i32>(50299i, 21904i, 0i, -1i), i32(-2147483648), vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(-51173i, -32925i)), Struct_1(vec2<i32>(10491i, -1i))));

var<private> global4: array<vec2<i32>, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global2.a - vec2<f32>(-1748f, -695f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(-2069f, global3.b))))), Struct_3(vec4<i32>(1i, -global3.c.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, arg_2.x, -23675i) ^ arg_2, vec4<i32>(arg_2.x, 8453i, arg_2.x, 0i)), _wgslsmith_sub_i32(-16408i, -34282i)), _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(select(965f, _wgslsmith_f_op_f32(min(arg_0, -284f)), !global3.c.c.x))), Struct_2(arg_2 | arg_2, arg_2.x, !(!global2.c.c), Struct_1(-vec2<i32>(global2.b.a.x, -43565i)), global0[_wgslsmith_index_u32(~(~1u), 14u)])), Struct_2(abs(firstLeadingBit(~vec4<i32>(global3.a.x, global3.a.x, arg_2.x, global2.c.d.a.x))), arg_2.x, select(!select(vec4<bool>(true, arg_1.x, arg_1.x, global3.c.c.x), vec4<bool>(true, false, arg_1.x, true), vec4<bool>(global3.c.c.x, arg_1.x, global2.b.c.c.x, global2.b.c.c.x)), global2.c.c, true), global2.b.c.e, Struct_1(firstTrailingBit(-arg_2.xx))));
    global3 = global2.b;
    return 1120f;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1307f, _wgslsmith_div_f32(global3.b, global2.b.b), true)), -1322f);
    global3 = Struct_3(reverseBits(global3.a >> (firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 3268u, u_input.b.x, 70330u), vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 10446u))) % vec4<u32>(32u))), var_0, global2.c);
    global4 = array<vec2<i32>, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(1800f)), global2.b.c.c.zy, min(global2.b.c.a, vec4<i32>(0i, -2147483647i, -52119i, global3.a.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) * arg_0.x)) + -1407f);
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>((2147483647i << (u_input.b.x % 32u)) >> (~u_input.b.x % 32u), -4525i), ~arg_1.a));
    return global3.c.c.x && ((4294967295u << (_wgslsmith_mod_u32(1u, 0u << (u_input.a.x % 32u)) % 32u)) < _wgslsmith_mult_u32(u_input.b.x, u_input.b.x));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 14>();
    var var_0 = !func_2(vec3<f32>(-313f, global2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -1278f)))), global2.b.c.e);
    let var_1 = select(global2.b.c.d.a.x, -abs(countOneBits(2147483647i)), false);
    global0 = array<Struct_1, 14>();
    var var_2 = -(~abs(global2.b.c.d.a << (u_input.a % vec2<u32>(32u))));
    return global3.c.d;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = 0u;
    return global3.c;
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    global3 = global2.b;
    var var_0 = arg_0.c;
    global4 = array<vec2<i32>, 17>();
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.b.b)), 1928f), _wgslsmith_div_f32(arg_0.a.x, global2.a.x));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(132f, _wgslsmith_f_op_f32(var_1.x + -1240f))), global2.b.b) + _wgslsmith_f_op_vec2_f32(round(arg_0.a)));
    return Struct_2(vec4<i32>(-3668i, -(_wgslsmith_dot_vec4_i32(global3.a, global3.a) >> (u_input.b.x % 32u)), countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.b, -1i), countOneBits(global2.c.e.a))), ~arg_0.b.c.e.a.x), func_4(func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1213f), var_0.a).e, _wgslsmith_f_op_f32(1020f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.x)))), vec4<i32>(~_wgslsmith_div_i32(arg_0.c.a.x, -1i), ~min(global3.c.e.a.x, 1910i), global2.b.a.x, 258i)).b, vec4<bool>(var_0.c.x, (1i <= abs(arg_0.b.a.x)) | var_0.c.x, global3.c.c.x, (_wgslsmith_f_op_f32(min(arg_0.b.b, global3.b)) == -510f) & any(select(var_0.c, global3.c.c, global3.c.c.x))), func_4(arg_0.c.d, global2.b.b, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, global3.a.x, 1i), arg_0.b.a.zxz) & (global3.a.x >> (1u % 32u)), func_1().a.x, reverseBits(~global2.b.a.x), ~_wgslsmith_mult_i32(0i, var_0.b))).d, Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -40003i), -vec2<i32>(global3.c.b, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 15814u;
    let var_1 = func_5(Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), global3.b))), Struct_3(-(~global3.c.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.b * 407f))), global3.c), func_4(func_1(), _wgslsmith_div_f32(global2.a.x, 1f), _wgslsmith_add_vec4_i32(global3.a & vec4<i32>(55432i, global2.c.a.x, 28456i, -1i), global2.b.a))));
    let var_2 = _wgslsmith_div_i32(-4863i & func_5(Struct_4(_wgslsmith_f_op_vec2_f32(-global2.a), global2.b, global3.c)).d.a.x, global3.a.x);
    global3 = Struct_3(vec4<i32>(var_1.d.a.x, -var_2, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_2 | var_2, -1i, _wgslsmith_add_i32(var_1.d.a.x, var_1.d.a.x)), var_1.a.x), 2147483647i), global2.b.b, func_4(global3.c.e, _wgslsmith_f_op_f32(1298f - global2.a.x), select(global2.c.a, -vec4<i32>(32529i, var_1.e.a.x, global2.b.a.x, var_1.b), any(func_5(Struct_4(vec2<f32>(-1000f, 2317f), global2.b, global3.c)).c.zy))));
    var var_3 = global2.b.c.b ^ global3.a.x;
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.xz);
}

