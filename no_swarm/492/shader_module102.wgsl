struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1477f, -1703f, 1000f, 934f, 999f, 469f, -1475f, -1110f, 1068f, -131f, 818f, -117f, 810f, -225f, 1000f, -428f, 1312f, 1000f);

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> u32 {
    global1 = vec4<bool>(true, true, true, !all(global1.xz));
    var var_0 = _wgslsmith_mult_vec2_u32(abs(reverseBits(vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_1.a.a.x), firstLeadingBit(arg_1.d.x)))), ~firstLeadingBit(arg_1.c.a.zw));
    let var_1 = select(vec3<bool>(true & global1.x, arg_1.b | any(!vec2<bool>(arg_1.c.c, global1.x)), all(vec4<bool>(true, select(arg_1.a.c, true, global1.x), arg_1.c.c, u_input.b > 4294967295u))), vec3<bool>(global1.x, var_0.x <= select(_wgslsmith_sub_u32(6978u, 0u), reverseBits(arg_2.a), true), true), global1.ywy);
    global0 = array<f32, 18>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.e.e))), -1000f, global0[_wgslsmith_index_u32(44810u, 18u)], _wgslsmith_f_op_f32(887f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.e, global0[_wgslsmith_index_u32(~arg_2.a, 18u)])) * arg_1.e.e)));
    return _wgslsmith_mult_u32(0u, 0u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(arg_3.a.yx ^ _wgslsmith_mult_vec2_u32(~arg_0.d.xz, ~vec2<u32>(arg_1.a.x, arg_3.a.x)), arg_1.a.wy);
    var_0 = countOneBits(arg_0.c.a.yw);
    var var_1 = min(vec3<u32>(_wgslsmith_mult_u32(arg_3.a.x, func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.e.d, arg_0.c.b, arg_1.b), vec3<i32>(arg_1.d, 2147483647i, arg_1.b)), Struct_2(Struct_1(vec4<u32>(var_0.x, 0u, 4294967295u, 52614u), -1011i, false, 2147483647i, 1658f), arg_3.c, Struct_1(arg_3.a, arg_3.b, false, arg_3.d, -650f), arg_0.c.a.wzy, Struct_1(vec4<u32>(arg_0.d.x, 0u, 4294967295u, 94279u), 2147483647i, arg_1.c, -2147483647i, 265f)), Struct_3(4294967295u), vec2<i32>(arg_3.b, -8061i))), reverseBits(~(~arg_3.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.x, 1u), arg_3.a.yx | arg_0.c.a.yx)), vec3<u32>(min(_wgslsmith_mult_u32(var_0.x, arg_3.a.x), _wgslsmith_add_u32(~u_input.a, ~4465u)), reverseBits(_wgslsmith_div_u32(1u, u_input.a | 4294967295u)), ~81903u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(141f + arg_0.e.e), -1236f), arg_1.e), _wgslsmith_f_op_f32(f32(-1f) * -586f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f * arg_0.a.e)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3.a.x, 18u)])))));
    var var_3 = abs(48726u);
    return _wgslsmith_dot_vec3_u32(arg_3.a.wzx, arg_1.a.wzz);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 137311u, u_input.a), min(vec3<u32>(arg_3.a, 39095u, 0u), vec3<u32>(u_input.a, 68072u, arg_3.a)), countOneBits(vec3<u32>(25130u, arg_3.a, 65724u))) >> (_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(78259u, u_input.a, 30814u), vec3<u32>(5820u, u_input.a, 110439u)), vec3<u32>(abs(u_input.a), arg_3.a, min(0u, 49458u)), vec3<u32>(u_input.a, 0u, func_2(Struct_2(Struct_1(vec4<u32>(arg_3.a, arg_3.a, u_input.b, u_input.b), 1i, global1.x, -12587i, arg_1), global1.x, Struct_1(vec4<u32>(43537u, 11107u, 4294967295u, arg_3.a), -30704i, false, -16581i, -425f), vec3<u32>(24311u, 7534u, u_input.a), Struct_1(vec4<u32>(10995u, arg_3.a, u_input.b, arg_3.a), -1i, global1.x, 25307i, 363f)), Struct_1(vec4<u32>(u_input.a, arg_3.a, arg_3.a, 0u), -39657i, true, -11078i, -1244f), arg_1, Struct_1(vec4<u32>(1u, arg_3.a, arg_3.a, arg_3.a), 16844i, false, 1i, arg_1)))) % vec3<u32>(32u)));
    var var_1 = select(max(var_0.x, _wgslsmith_div_u32(8200u, ~var_0.x)), min(39399u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, arg_3.a) | var_0.yx, var_0.xx >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), true) | u_input.a;
    var var_2 = vec4<i32>(_wgslsmith_div_i32(~select(1i, 1i, true), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6101i, 31777i, 1i), vec4<i32>(1i, -1i, 2126i, 0i))) >> (_wgslsmith_mod_u32(var_0.x, arg_3.a) % 32u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(17546i, i32(-1i) * -1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-74918i, -1i, 1i, -23855i), vec4<i32>(0i, -24193i, 575i, 30634i))) >> (1u % 32u), -34960i, -firstTrailingBit(1i));
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(85327u, var_0.x, 70299u, arg_3.a), vec4<u32>(u_input.a, 4294967295u, arg_3.a, 1u) & (vec4<u32>(u_input.a, 1u, arg_3.a, 72304u) << (vec4<u32>(var_0.x, 48457u, u_input.a, 22970u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(var_2.x, i32(-1i) * -741i), global1.x, var_2.x >> ((u_input.b | _wgslsmith_div_u32(arg_3.a, arg_3.a)) % 32u), 751f), !arg_2, Struct_1(~vec4<u32>(var_0.x, arg_3.a << (0u % 32u), ~2862u, 0u), var_2.x, arg_2, var_2.x, arg_1), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_3.a, var_0.x, 4294967295u), ~vec3<u32>(u_input.b, arg_3.a, arg_3.a)) ^ vec3<u32>(u_input.b, arg_3.a, select(_wgslsmith_mult_u32(arg_3.a, var_0.x), ~33166u, any(vec4<bool>(false, false, global1.x, false)))), Struct_1(~vec4<u32>(arg_3.a, u_input.a, u_input.b, ~4294967295u), 1i << (_wgslsmith_mult_u32(~arg_3.a, 29776u) % 32u), any(select(!vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(false, true, arg_2), vec3<bool>(true, global1.x, false), global1.wwy), vec3<bool>(global1.x, false, true))), var_2.x, 906f));
    let var_4 = var_3.e;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1u);
    global0 = array<f32, 18>();
    global1 = !(!(!(!vec4<bool>(false, global1.x, global1.x, global1.x))));
    let var_1 = func_1(global0[_wgslsmith_index_u32(u_input.b, 18u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~0u), 18u)]), all(vec3<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 18u)] <= 739f, !global1.x, global1.x), !all(vec3<bool>(global1.x, true, true)), true)), var_0);
    let var_2 = _wgslsmith_div_i32(-1i, countOneBits(countOneBits(-var_1.a.d) << (~_wgslsmith_add_u32(var_1.c.a.x, 1u) % 32u)));
    let var_3 = select(~max(vec2<i32>(-var_1.e.b, func_1(-1480f, var_1.a.e, true, Struct_3(var_1.e.a.x)).c.d), vec2<i32>(-var_2, ~var_1.e.d)), firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(var_1.c.d, var_2), func_1(442f, 1161f, global1.x, Struct_3(0u)).a.b) >> (firstTrailingBit(func_1(var_1.e.e, var_1.c.e, true, Struct_3(30909u)).a.a.zx) % vec2<u32>(32u))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(3594i, 43565i, var_1.c.d), -vec3<i32>(-1i, 2147483647i, var_1.a.b)), var_1.a.b), firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -52872i, var_1.a.d, 0i), vec4<i32>(0i, var_2, var_2, -2147483647i)), abs(vec4<i32>(2147483647i, 0i, 26528i, var_2)))));
}

