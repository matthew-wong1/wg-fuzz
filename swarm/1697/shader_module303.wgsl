struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u);

var<private> global1: i32;

var<private> global2: array<bool, 28> = array<bool, 28>(true, false, true, true, false, true, false, true, true, true, true, false, false, true, false, true, true, false, false, true, false, true, false, false, true, false, false, false);

var<private> global3: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global1 = -2147483647i;
    global3 = vec3<f32>(-816f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2044f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3.x)))))) * _wgslsmith_f_op_f32(global3.x + global3.x)));
    global0 = Struct_2(~(~_wgslsmith_add_u32(135148u << (1u % 32u), global0.a >> (global0.a % 32u))));
    var var_0 = vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 1u), 1u), _wgslsmith_add_u32(min(global0.a, _wgslsmith_sub_u32(~22038u, 19043u)), abs(4294967295u)));
    let var_1 = true;
    return firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.zzy, vec3<i32>(0i, u_input.b.x, u_input.b.x)), vec3<i32>(1i, 1i, -9587i)), countOneBits(vec3<i32>(u_input.b.x, -42485i, -21574i)) ^ vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))) & u_input.c.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = -vec4<i32>(func_3(), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.c.yzw, vec3<i32>(u_input.c.x, 57162i, -29329i)), vec3<i32>(firstTrailingBit(u_input.c.x), -2147483647i, select(52492i, u_input.c.x, global2[_wgslsmith_index_u32(u_input.a, 28u)]))), u_input.b.x & (~u_input.b.x | u_input.c.x), 52906i);
    global2 = array<bool, 28>();
    let var_2 = firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, global0.a, ~16573u), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, u_input.a, 40101u), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(global0.a, 16351u, 0u))));
    var var_3 = Struct_1(u_input.b.wxz & reverseBits(-vec3<i32>(var_1.x, -14814i, 7317i)));
    return Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_1.x, -1i), ~reverseBits(15382i), var_1.x), max(var_1.yyy, -var_1.zzz), var_3.a));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = !(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)] || false);
    let var_1 = _wgslsmith_mult_i32(arg_0.a.x, u_input.b.x);
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(712f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(abs(550f)), global2[_wgslsmith_index_u32(global0.a, 28u)] && true)))));
    global1 = _wgslsmith_dot_vec3_i32(min(min(_wgslsmith_mult_vec3_i32(arg_0.a >> (vec3<u32>(u_input.a, 15087u, global0.a) % vec3<u32>(32u)), arg_0.a), u_input.c.yxz), vec3<i32>(arg_0.a.x, i32(-1i) * -2147483647i, ~arg_0.a.x)), vec3<i32>(-reverseBits(4949i) | select(1i, ~var_2.a.x, any(vec3<bool>(var_0, true, var_0))), 52688i, 1i));
    global1 = _wgslsmith_mod_i32(var_2.a.x, 0i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f - -307f) + global3.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_2.x, 1046f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + -1927f), -404f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 948f) + -535f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_div_f32(-528f, 510f), _wgslsmith_f_op_f32(sign(arg_1.x))))));
    global3 = arg_1.zwx;
    let var_1 = Struct_4(Struct_3((-12946i >> (~global0.a % 32u)) == 71415i, true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, arg_2.x))))), u_input.a);
    var var_2 = abs(~(-1i));
    var_0 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-var_0.x), -781f);
    return Struct_2(_wgslsmith_add_u32(_wgslsmith_clamp_u32(117821u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), vec2<u32>(var_1.b, var_1.b)), 15549u), _wgslsmith_clamp_u32(~global0.a, _wgslsmith_div_u32(global0.a, global0.a), u_input.a)) & _wgslsmith_dot_vec2_u32(vec2<u32>(~13817u, _wgslsmith_add_u32(u_input.a, var_1.b)), vec2<u32>(u_input.a, var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(4294967295u | (reverseBits(u_input.a & u_input.a) | 16845u));
    global0 = func_4(u_input.c.wxz, vec4<f32>(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, global3.x)))), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -381f)), vec2<f32>(1348f, _wgslsmith_f_op_f32(func_1(Struct_1(min(vec3<i32>(-9931i, 0i, u_input.c.x), u_input.b.xzy))))));
    global3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(-303f, _wgslsmith_f_op_f32(abs(2827f)))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(2318f * -730f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -244f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-129f)), 1000f, global3.x)))));
    var var_1 = global3.yx;
    var_1 = global3.xz;
    global0 = func_4(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_1.x, 925f, -469f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, -746f, var_1.x))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1456f * global3.x), 1f)), global3.zx, vec2<bool>(global2[_wgslsmith_index_u32(~(~920u), 28u)], all(select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.a, 28u)], global2[_wgslsmith_index_u32(global0.a, 28u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 28u)]), true))))));
    var var_2 = Struct_1(u_input.c.wyz);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1030f))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)), var_1.x) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-193f, -1068f, -1381f) + vec3<f32>(846f, 2375f, -385f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global3.x, 858f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1607f), -1000f, -191f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(var_0.a, var_0.a, var_0.a), ~vec3<u32>(var_0.a, 1u, 1u)), max(vec3<u32>(58370u, var_0.a, u_input.a), ~vec3<u32>(global0.a, 49850u, var_0.a))), _wgslsmith_sub_u32(global0.a, 1u)), ~min(vec4<i32>(-1i) * -vec4<i32>(var_2.a.x, 228i, -1i, -2147483647i), _wgslsmith_mod_vec4_i32(~vec4<i32>(30837i, 2147483647i, var_2.a.x, -12087i), abs(u_input.b))), u_input.b);
}

