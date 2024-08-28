struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(true, -150f, vec4<i32>(-1i, -1i, 31436i, -70832i)), Struct_2(true), vec3<f32>(-788f, -1000f, -452f), 75694i, Struct_2(false)), Struct_3(Struct_1(true, -147f, vec4<i32>(0i, 20928i, 0i, 16335i)), Struct_2(true), vec3<f32>(1791f, -470f, -317f), 0i, Struct_2(false)), Struct_3(Struct_1(false, 1430f, vec4<i32>(i32(-2147483648), 42212i, 2147483647i, -1i)), Struct_2(true), vec3<f32>(-604f, -254f, 809f), -1i, Struct_2(true)));

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(3307u, 56698u, 72743u, 52401u), vec4<u32>(4294967295u, 7951u, 6671u, 16754u), vec4<u32>(14875u, 103308u, 2341u, 0u), vec4<u32>(0u, 15118u, 55763u, 1652u), vec4<u32>(34215u, 46649u, 1u, 1u), vec4<u32>(1u, 1u, 0u, 2538u), vec4<u32>(4294967295u, 26241u, 66372u, 0u), vec4<u32>(23357u, 4294967295u, 17801u, 6822u), vec4<u32>(12008u, 0u, 112282u, 69277u), vec4<u32>(18807u, 86514u, 4294967295u, 10818u), vec4<u32>(2533u, 24147u, 30389u, 121965u), vec4<u32>(4294967295u, 1214u, 1u, 76997u));

var<private> global2: Struct_2 = Struct_2(true);

var<private> global3: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(526f, 616f, 986f)) - vec3<f32>(-455f, 1922f, 258f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), -635f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(589f, -1103f))))));
    var var_1 = ~u_input.c;
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(round(var_0.x)), ~(vec4<i32>(-1i) * -select(vec4<i32>(2147483647i, u_input.d, u_input.d, -1i), vec4<i32>(-3060i, 45722i, -33037i, 2147483647i), vec4<bool>(global2.a, global2.a, global2.a, true))));
    global3 = var_2.c.x;
    global2 = Struct_2(true);
    return ~u_input.c;
}

fn func_2() -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(func_3(), 3u)];
    var var_1 = 9570u;
    var_0 = global0[_wgslsmith_index_u32(countOneBits(u_input.c) ^ _wgslsmith_mod_u32(0u, u_input.c), 3u)];
    var var_2 = ~15256u;
    var var_3 = Struct_4(-abs(u_input.b), Struct_1(!any(select(vec4<bool>(var_0.b.a, false, false, var_0.a.a), vec4<bool>(var_0.a.a, var_0.e.a, var_0.e.a, true), vec4<bool>(false, var_0.b.a, false, false))), 482f, ~var_0.a.c));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_3.b.c.x, -14000i, -34817i, u_input.b.x), firstTrailingBit(var_3.b.c), _wgslsmith_div_vec4_i32(var_3.b.c, vec4<i32>(16022i, 2147483647i, u_input.a, 2147483647i))), ~vec4<i32>(-2147483647i, -1i, -39231i, var_0.a.c.x)), 2147483647i, u_input.b.x, 7281i) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.c, 4294967295u), max(6406u, u_input.c), ~1u, 19306u), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 63684u), vec2<u32>(4294967295u, u_input.c)), 12u)], vec4<u32>(4294967295u, u_input.c, 1u, u_input.c) >> (abs(global1[_wgslsmith_index_u32(u_input.c, 12u)]) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = ~(u_input.b & u_input.b);
    global2 = Struct_2(global2.a);
    let var_1 = ~4294967295u;
    let var_2 = 945f;
    let var_3 = abs(firstLeadingBit(vec2<u32>(u_input.c, 1u)));
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.x, 36447i, u_input.a, var_0.x)) | select(vec4<i32>(9545i, -33646i, -56494i, -2147483647i), func_2(), !global2.a), max(countOneBits(vec4<i32>(-5944i, -2147483647i, 24154i, -46247i) << (global1[_wgslsmith_index_u32(4294967295u, 12u)] % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -1i, var_0.x, min(u_input.a, -2147483647i), -2147483647i)), vec4<i32>(_wgslsmith_add_i32(~0i, -u_input.a), -13067i, ~_wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_sub_i32(min(var_0.x, -1i), 45892i))), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, var_0.x | -1i), reverseBits(-2147483647i), -2147483647i, -u_input.b.x), ~(-_wgslsmith_sub_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, var_0.x, 14739i), vec4<i32>(-2147483647i, u_input.a, var_0.x, var_0.x)), -vec4<i32>(13087i, 0i, var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 12>();
    let var_0 = Struct_3(Struct_1(any(!(!vec4<bool>(global2.a, false, true, global2.a))), 1f, (func_1(global2.a) ^ ~vec4<i32>(u_input.a, -51230i, u_input.d, -2147483647i)) >> (max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), global1[_wgslsmith_index_u32(u_input.c, 12u)]), global1[_wgslsmith_index_u32(abs(1u), 12u)]) % vec4<u32>(32u))), Struct_2(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-1000f, -191f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1081f))), _wgslsmith_f_op_f32(-2782f * _wgslsmith_f_op_f32(step(183f, -1210f)))))), 59241i, Struct_2(~_wgslsmith_mod_u32(u_input.c, u_input.c) != ~1u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, -435f) + _wgslsmith_f_op_f32(abs(var_0.a.b))) * _wgslsmith_f_op_f32(f32(-1f) * -458f)))));
    global2 = var_0.b;
    var var_2 = ~(0i | _wgslsmith_dot_vec2_i32(countOneBits(var_0.a.c.zy), firstTrailingBit(vec2<i32>(-1335i, 77379i))));
    let var_3 = _wgslsmith_f_op_f32(abs(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c)))), vec3<f32>(348f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.b, var_3), _wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-var_0.a.b), !var_0.e.a))))), _wgslsmith_clamp_vec3_i32(var_0.a.c.wwz, ~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.c.x, u_input.a, 1i), u_input.b)), u_input.b), max(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)]), global1[_wgslsmith_index_u32(3310u, 12u)]), vec4<u32>(abs(~u_input.c), u_input.c, firstLeadingBit(reverseBits(u_input.c)), 1u & u_input.c)));
}

