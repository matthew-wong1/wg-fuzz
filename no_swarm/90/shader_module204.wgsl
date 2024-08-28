struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<f32>(-1518f, -857f), vec3<i32>(-1i, 52245i, -1i), vec3<f32>(-404f, 935f, -154f)), Struct_1(vec2<f32>(-173f, 1000f), vec3<i32>(2147483647i, 24417i, 1i), vec3<f32>(1774f, 1137f, 184f)), 19612i, false));

var<private> global2: array<vec3<f32>, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    global2 = array<vec3<f32>, 11>();
    var var_0 = _wgslsmith_f_op_f32(sign(global1.a.a.c.x));
    var_0 = global1.a.b.a.x;
    var var_1 = global1.a.b;
    global1 = Struct_4(global1.a);
    return _wgslsmith_div_f32(-553f, global1.a.a.c.x);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(global1.a.b.a, ~(global1.a.b.b & _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, u_input.a, u_input.a), global1.a.b.b >> (vec3<u32>(1u, 67704u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-350f, 1293f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), -683f))));
    var var_1 = Struct_5(~1u);
    let var_2 = Struct_5(var_1.a | _wgslsmith_mult_u32(_wgslsmith_mod_u32(~1u, var_1.a), abs(~57029u)));
    var var_3 = ~(~_wgslsmith_clamp_u32(0u, 50781u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a, var_2.a, var_2.a), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.a, var_1.a), vec3<u32>(var_2.a, var_2.a, var_2.a)))));
    let var_4 = !(!vec4<bool>(all(!vec2<bool>(global1.a.d, true)), !global1.a.d, all(select(vec3<bool>(false, global1.a.d, true), vec3<bool>(global1.a.d, false, global1.a.d), false)), !any(vec2<bool>(global1.a.d, global1.a.d))));
    return global1.a.a;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<vec2<i32>, 24>();
    global2 = array<vec3<f32>, 11>();
    var var_0 = Struct_5(abs(arg_1));
    var var_1 = ~(-vec4<i32>((u_input.a | 1i) >> (arg_1 % 32u), global1.a.c, 28860i, abs(arg_0.b.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1708f * 194f) * global1.a.b.c.x), 520f) * _wgslsmith_f_op_f32(f32(-1f) * -1105f)), _wgslsmith_f_op_f32(arg_0.c.x + global1.a.a.a.x), global1.a.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.a.x + _wgslsmith_f_op_f32(floor(global1.a.b.c.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1546f - _wgslsmith_f_op_f32(f32(-1f) * -1535f)) + _wgslsmith_f_op_f32(1167f * -1874f))));
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec3<f32>, 11>();
    var var_0 = arg_1.b.x;
    global2 = array<vec3<f32>, 11>();
    global0 = array<vec2<i32>, 24>();
    var var_1 = _wgslsmith_add_i32(20503i, -2147483647i);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_2(func_4(global1.a.a.a, func_3(func_1(), ~1u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(1532f, -1119f)), _wgslsmith_f_op_f32(floor(-1935f))), vec3<i32>(3065i, u_input.a, u_input.a) >> (select(vec3<u32>(21736u, 19305u, 0u), vec3<u32>(1u, 1u, 27856u), vec3<bool>(true, true, global1.a.d)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.c.x, global1.a.b.c.x, 929f)))), _wgslsmith_mod_i32(-(~u_input.a), 1i), global1.a.a.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1372f))));
    var var_0 = Struct_3(global1.a, func_1(), u_input.a);
    global1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.b.a.x, global1.a.b.a.x), vec2<f32>(global1.a.b.c.x, 287f)) - _wgslsmith_f_op_vec2_f32(-var_0.a.b.a)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(var_0.b.b, var_0.a.a.b, vec3<i32>(-2147483647i, var_0.b.b.x, 2147483647i))), _wgslsmith_f_op_vec3_f32(global1.a.b.c + var_0.a.b.c)), var_0.a.b, -u_input.a, true));
    global2 = array<vec3<f32>, 11>();
    let var_1 = firstLeadingBit(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.c, 17711i, -1i, -2147483647i), _wgslsmith_mult_vec4_i32(~vec4<i32>(global1.a.b.b.x, var_0.c, -15495i, -1i), vec4<i32>(var_0.b.b.x, -1i, u_input.a, var_0.a.b.b.x) << (vec4<u32>(4294967295u, 4294967295u, 0u, 57074u) % vec4<u32>(32u))))));
    global1 = Struct_4(var_0.a);
    var var_2 = vec3<i32>(-1i) * -((min(vec3<i32>(2147483647i, 2147483647i, var_1.x), var_0.a.b.b) << (min(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 1u, 22853u)) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_3 = min(firstTrailingBit(min(~abs(4294967295u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 2842u, 5826u)), select(vec3<u32>(4294967295u, 4958u, 25089u), vec3<u32>(16758u, 72993u, 44575u), global1.a.d)))), ~countOneBits(83666u));
    var_2 = vec3<i32>(var_2.x, ~firstTrailingBit(_wgslsmith_div_i32(0i, global1.a.b.b.x)), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(-13289i, 37454i), 1i & var_0.b.b.x)) >> (vec3<u32>(~(~_wgslsmith_mod_u32(0u, 6429u)), 1u, 1u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

