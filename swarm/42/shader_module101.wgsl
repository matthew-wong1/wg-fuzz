struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), vec3<f32>(1000f, -1221f, 302f));

var<private> global2: i32 = 15242i;

var<private> global3: vec2<i32> = vec2<i32>(0i, 0i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    return u_input.a.yz << (vec2<u32>(u_input.a.x, ~(u_input.a.x >> ((u_input.a.x >> (59428u % 32u)) % 32u))) % vec2<u32>(32u));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(func_3(), vec2<i32>(-(~global3.x), abs(1i)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(global3.x), global3.x), global3.x), countOneBits(~countOneBits(global3.x)), i32(-1i) * -1i));
    var var_1 = ~vec2<u32>(~(~0u), ~(~u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * -423f);
    var_0 = Struct_2(var_0.a, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global3.x, 6315i), var_0.c), select(vec3<i32>(var_0.c.x, global3.x, 0i), vec3<i32>(-29004i, global3.x, global3.x), false)), firstTrailingBit(var_0.b.x)), abs(var_0.b)), var_0.c << (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, var_1.x, u_input.a.x), u_input.a, true), vec3<u32>(u_input.a.x, 4294967295u, var_1.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_0.a.x, var_1.x)), 30892u, _wgslsmith_mult_u32(var_1.x, var_1.x)), u_input.a) % vec3<u32>(32u)));
    return Struct_3(1i > _wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(~var_0.c.x, select(2147483647i, -1i, true), min(-36877i, global3.x))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = func_2();
    global2 = global3.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, global1.c.x, -1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.www))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(global1.c.x - arg_0.x), _wgslsmith_f_op_f32(-global1.c.x)))));
    var var_2 = _wgslsmith_dot_vec3_i32(~(vec3<i32>(~45144i, firstLeadingBit(-5070i), 2815i) | abs(vec3<i32>(-2147483647i, -1i, global3.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(max(_wgslsmith_mult_i32(0i, global3.x), global3.x), ~abs(global3.x), firstLeadingBit(global3.x >> (0u % 32u))), abs(firstLeadingBit(vec3<i32>(-1i, global3.x, global3.x)))));
    let var_3 = firstTrailingBit(26713i);
    return global1.c.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), ~(~u_input.a.x)), u_input.a.x), ~vec2<i32>(_wgslsmith_mult_i32(-19651i, -1i), 2147483647i), vec3<i32>(-1i) * -vec3<i32>(1i, abs(global3.x), arg_0.x));
    var_0 = Struct_2(min(select(u_input.a.yy, ~_wgslsmith_clamp_vec2_u32(var_0.a, var_0.a, vec2<u32>(846u, u_input.a.x)), global1.b.zx), vec2<u32>(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(97192u, u_input.a.x, u_input.a.x, 105023u), vec4<u32>(u_input.a.x, var_0.a.x, 7228u, var_0.a.x)), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)))), vec2<i32>(-2147483647i, global3.x) & (vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(global3.x, arg_0.x, global3.x)), -34133i) ^ _wgslsmith_sub_vec2_i32(~var_0.b, vec2<i32>(arg_0.x, 1i) & vec2<i32>(arg_0.x, arg_0.x))), var_0.c);
    global1 = Struct_1(!vec3<bool>(!(!global1.b.x), all(!global1.b.wyy), !global1.b.x), !(!vec4<bool>(false, true, global1.b.x, false)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(1535f, _wgslsmith_f_op_f32(max(global1.c.x, global1.c.x)))), 1000f));
    global0 = array<Struct_1, 1>();
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, u_input.a.x), var_0.a) << (u_input.a.x % 32u)) << (~(~abs(u_input.a.x)) % 32u)), 1u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.c.x)), global1.c.x)) - _wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(ceil(global1.c.x)))) - -1948f) + 583f);
    let var_1 = func_4(vec2<i32>(~global3.x >> (1u % 32u), -27985i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(var_0, 237f, -949f, -1296f))), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(max(var_0, var_0))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-134f, 1173f, var_0), vec3<f32>(var_0, global1.c.x, 223f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -607f, global1.c.x))))));
    global3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~1i << (u_input.a.x % 32u), global3.x), vec2<i32>(global3.x, global3.x), vec2<i32>(_wgslsmith_sub_i32(min(-2147483647i, global3.x), _wgslsmith_mod_i32(global3.x, ~0i)), -1i));
    global0 = array<Struct_1, 1>();
    let var_2 = 758f;
    var var_3 = func_2();
    global1 = global0[_wgslsmith_index_u32(~(~(~firstLeadingBit(u_input.a.x | 67721u))), 1u)];
    let var_4 = _wgslsmith_div_f32(global1.c.x, -291f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1105f, global1.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c.x * -1632f), 1181f)), global1.c.x), true)), ~_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-26902i, global3.x, global3.x, global3.x) | vec4<i32>(1i, global3.x, global3.x, 39489i), vec4<i32>(global3.x, global3.x, global3.x, -1i))));
}

