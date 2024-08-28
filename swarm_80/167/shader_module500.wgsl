struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-1373i, i32(-2147483648)), vec2<i32>(-1i, -50913i), vec2<i32>(-1i, 50490i));

var<private> global1: i32 = -7411i;

var<private> global2: array<f32, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global0 = array<vec2<i32>, 3>();
    var var_0 = Struct_2(Struct_1(max(countOneBits(vec4<u32>(17475u, u_input.a, u_input.a, 11009u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(64648u, u_input.a, 45691u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 6451u, u_input.a)), vec4<u32>(u_input.a, ~u_input.a, 1u, u_input.a)), vec3<i32>(-1i) * -(~u_input.c), arg_0.x), Struct_1(_wgslsmith_mod_vec4_u32(max(vec4<u32>(26970u, 4294967295u, 508u, 829u) << (vec4<u32>(22272u, 4294967295u, 4294967295u, u_input.a) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a, 0u, u_input.a)), vec4<u32>(1u, ~u_input.a, 15271u, 27371u)), _wgslsmith_sub_vec3_i32(u_input.c, abs(u_input.c >> (vec3<u32>(u_input.a, 27781u, u_input.a) % vec3<u32>(32u)))), true), ~firstTrailingBit(~0u), min(reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(2795u, u_input.a, 15147u, 42134u), vec4<u32>(u_input.a, 110699u, 51515u, 39580u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), ~max(vec4<u32>(1u, u_input.a, 36998u, u_input.a) ^ vec4<u32>(4562u, 30784u, u_input.a, u_input.a), vec4<u32>(u_input.a, 32257u, 1u, 4294967295u) & vec4<u32>(0u, 6174u, u_input.a, 1u))));
    global0 = array<vec2<i32>, 3>();
    var var_1 = !arg_0.x;
    let var_2 = abs(vec2<u32>(4294967295u, 75690u));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.c, true, false), vec3<bool>(true, arg_0.c, true), arg_0.c), func_3(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)))));
    let var_1 = 611f;
    global1 = -firstTrailingBit(-18046i & _wgslsmith_div_i32(arg_0.b.x >> (1u % 32u), arg_0.b.x));
    var var_2 = arg_1.x;
    var var_3 = Struct_2(arg_0, Struct_1(~vec4<u32>(~4294967295u, abs(u_input.a), _wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x), ~arg_0.a.x), -(-arg_0.b >> (vec3<u32>(arg_0.a.x, arg_0.a.x, 7377u) % vec3<u32>(32u))), var_0.x), arg_0.a.x, vec4<u32>(arg_0.a.x & arg_0.a.x, ~(~_wgslsmith_mult_u32(1u, 1u)), ~arg_0.a.x, u_input.a));
    return u_input.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(func_2(Struct_1(vec4<u32>(u_input.a, 4860u, u_input.a, 1u), u_input.c, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, 650f))), ~(~u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 23667u)) ^ 49532u, _wgslsmith_mod_u32(53397u, 41687u)), ~(~vec4<u32>(45732u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, 64963u, u_input.a))), abs(u_input.c), false);
    var var_1 = Struct_2(var_0, Struct_1(vec4<u32>(reverseBits(u_input.a), 76462u, 25269u, _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(0u, var_0.a.x), abs(u_input.a))), _wgslsmith_div_vec3_i32(var_0.b, ~(-var_0.b)), func_3(!(!vec3<bool>(var_0.c, false, true)))), ~_wgslsmith_dot_vec2_u32(var_0.a.wy, ~var_0.a.yy >> (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u))), vec4<u32>(var_0.a.x, ~select(2520u, 61085u >> (var_0.a.x % 32u), all(vec3<bool>(var_0.c, true, var_0.c))), countOneBits(13710u), abs(1u)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.x;
    var var_1 = func_1();
    let var_2 = all(vec3<bool>(~max(10855u, u_input.a) == 26618u, var_1.c == var_1.c, var_1.c));
    let var_3 = ~reverseBits(firstTrailingBit(vec4<i32>(var_1.b.x, var_1.b.x, 35209i, u_input.b.x) << (~var_1.a % vec4<u32>(32u))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1019f), Struct_2(func_1(), func_1(), u_input.a, var_1.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(68951u, var_1.a.x, u_input.a), 4294967295u, abs(var_1.a.x)), vec3<u32>(4294967295u, var_1.a.x, 0u) | var_1.a.wyz), vec3<u32>(u_input.a, 4294967295u, 0u)), Struct_2(func_1(), func_1(), ~(abs(u_input.a) >> (~var_1.a.x % 32u)), ~var_1.a), ~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(101354u, 16905u), 1u)));
    var var_5 = _wgslsmith_f_op_f32(-1431f * -1249f);
    let var_6 = var_4.b.a;
    global1 = _wgslsmith_dot_vec2_i32(var_6.b.xz, -vec2<i32>(abs(-7317i), _wgslsmith_mod_i32(i32(-1i) * -16584i, var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_div_vec2_u32(select(vec2<u32>(select(var_1.a.x, 0u, true), var_4.e), var_4.b.d.zx, !(!vec2<bool>(true, var_1.c))), vec2<u32>(~_wgslsmith_clamp_u32(var_1.a.x, 903u, u_input.a), var_1.a.x >> (countOneBits(var_4.d.a.a.x) % 32u))), ~var_1.b);
}

