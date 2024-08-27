struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: Struct_5 = Struct_5(Struct_1(true, true, i32(-2147483648), vec2<f32>(104f, -785f), vec3<i32>(-15229i, 0i, 35481i)));

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = 4494u;
    var_1 = u_input.d.x;
    let var_2 = global1.a;
    let var_3 = u_input.b.x;
    return var_2.c;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    global1 = Struct_5(global1.a);
    var var_0 = abs(vec2<u32>(max(select(13008u, 0u, true), 4294967295u), 1u) << (~u_input.d % vec2<u32>(32u)));
    var var_1 = ~(1i ^ ~(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)));
    global1 = Struct_5(global1.a);
    let var_2 = arg_0;
    return _wgslsmith_clamp_i32(15005i, abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x | u_input.b.x, 392i), abs(~(-1i)))), global1.a.e.x | _wgslsmith_mult_i32(1151i, ~(-arg_1.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = 25437i < _wgslsmith_dot_vec3_i32(global1.a.e, vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global1.a.e.x, global1.a.e.x, -1i), -vec4<i32>(global1.a.c, 19164i, global1.a.c, 0i)), func_2(abs(u_input.b), _wgslsmith_dot_vec3_u32(u_input.c.zzy, vec3<u32>(u_input.c.x, 10616u, u_input.a.x))), func_3(Struct_3(global1.a.d.x), vec3<i32>(global1.a.c, -38919i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d.x * _wgslsmith_f_op_f32(abs(global1.a.d.x)))));
    var var_2 = !vec3<bool>(false, !any(!vec4<bool>(var_0, var_0, global1.a.b, true)), global1.a.a);
    let var_3 = u_input.b.x;
    let var_4 = select(!select(select(vec3<bool>(false, false, global1.a.b), vec3<bool>(true, var_2.x, var_0), global1.a.b), vec3<bool>(global1.a.b, any(vec4<bool>(false, var_0, global1.a.a, false)), any(vec4<bool>(true, false, false, var_2.x))), _wgslsmith_f_op_f32(floor(137f)) <= 438f), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(var_0, var_0, global1.a.a), vec3<bool>(var_2.x, true, global1.a.a)), vec3<bool>(false, var_0, true), global1.a.b | !var_0), vec3<bool>(select(2147483647i > var_3, true, false), false, var_0), true), true);
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.c.x), 53790u), 4u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1813f + 639f), arg_0.d.d.x, _wgslsmith_f_op_f32(global1.a.d.x * global1.a.d.x))));
    global1 = Struct_5(global1.a);
    return vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-31056i, -global1.a.c, _wgslsmith_sub_i32(u_input.b.x, -804i), -u_input.b.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -40931i, -29285i, -1i), vec4<i32>(1i, -2147483647i, 52776i, -25658i)), vec4<i32>(-1i, global1.a.c, u_input.b.x, -23527i)), vec4<i32>(2147483647i, _wgslsmith_mult_i32(12315i, -46581i), -3818i, global1.a.e.x));
}

fn func_5(arg_0: i32) -> Struct_3 {
    global1 = Struct_5(func_1().d);
    let var_0 = func_1().b;
    global2 = array<Struct_2, 4>();
    global0 = array<vec2<f32>, 6>();
    global2 = array<Struct_2, 4>();
    return Struct_3(global1.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 6>();
    var var_0 = Struct_4(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, global1.a.c, 2147483647i, global1.a.c), vec4<i32>(u_input.b.x, 1i, 0i, 2147483647i)) << (u_input.a % vec4<u32>(32u)), vec4<i32>(-1i, u_input.b.x, 0i, u_input.b.x) << (~u_input.a % vec4<u32>(32u)))), ~vec2<u32>(~(~21118u), u_input.d.x), func_5(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a.e.x, global1.a.e.x, -4392i, 21543i), func_4(func_1(), select(vec2<bool>(false, global1.a.b), vec2<bool>(false, true), vec2<bool>(global1.a.b, true)), ~vec2<u32>(u_input.a.x, 4294967295u), u_input.a))), func_1().d, Struct_3(682f));
    var var_1 = global1.a.b;
    let var_2 = Struct_2(_wgslsmith_sub_vec2_u32(func_1().a, countOneBits(~(u_input.d >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))))), vec4<u32>(var_0.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, var_0.b.x, var_0.b.x, 1u), u_input.c), vec4<u32>(var_0.b.x, 1323u, u_input.c.x, 5145u)), u_input.c.x, var_0.b.x) << ((~vec4<u32>(u_input.a.x, u_input.d.x, 906u, var_0.b.x) | countOneBits(vec4<u32>(var_0.b.x, 21907u, var_0.b.x, 13906u))) % vec4<u32>(32u)), global1.a.e.zz, func_1().d);
    var var_3 = global1.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x & var_2.b.x, vec3<f32>(_wgslsmith_f_op_f32(round(var_0.e.a)), -964f, -2235f), var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.d - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.a.d, vec2<f32>(global1.a.d.x, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(518f, var_2.d.d.x) - vec2<f32>(var_0.d.d.x, global1.a.d.x))))));
}

