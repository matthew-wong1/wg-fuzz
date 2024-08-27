struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    global0 = Struct_4(u_input.e.x <= abs(_wgslsmith_clamp_i32(firstTrailingBit(-891i), -75557i, arg_3.b)), global0.b, global0.c);
    var var_0 = Struct_1(!global0.b.a, reverseBits(arg_1.d), vec2<i32>(-27074i << (1u % 32u), u_input.c.x ^ -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_3.d, 5u)] - -1000f), _wgslsmith_f_op_f32(sign(-809f))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0)))), global0.b.c.x);
    let var_1 = !var_0.a;
    var var_2 = vec4<u32>(51340u, u_input.b, 0u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(select(var_0.b, 4294967295u, var_0.a.x), var_0.b >> (arg_1.d % 32u), ~u_input.b, var_0.b), ~(vec4<u32>(var_0.b, global0.b.b, 0u, 1u) << (vec4<u32>(1u, arg_3.d, var_0.b, 22744u) % vec4<u32>(32u))), false), ~firstLeadingBit(vec4<u32>(arg_1.d, 0u, 56850u, arg_3.d))));
    var_0 = Struct_1(!vec2<bool>(all(!vec4<bool>(false, global0.c.a, var_0.a.x, true)), false), _wgslsmith_mod_u32(4294967295u, global0.b.b), abs(~abs(~vec2<i32>(2147483647i, global0.c.b))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f - arg_2.x) - -658f), _wgslsmith_f_op_f32(exp2(global0.c.c))), -2147483647i);
    return abs(~(~select(global0.c.d, 5625u, arg_3.a)) ^ 1u);
}

fn func_2() -> Struct_4 {
    var var_0 = true;
    var var_1 = ~vec4<u32>(firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(6399u, 0u, 1u)))), func_3(_wgslsmith_f_op_f32(round(908f)), global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.b.d)) - global0.b.d), Struct_2(global0.c.a, 30014i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 5u)]), global0.c.d)), 0u >> (reverseBits(~global0.b.b) % 32u), global0.b.b);
    var_1 = vec4<u32>(global0.b.b, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, abs(~27290u)), var_1.x), _wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(~1u, ~global0.c.d)), abs((~1u >> (_wgslsmith_mult_u32(global0.b.b, 4294967295u) % 32u)) << (~(~var_1.x) % 32u)));
    global1 = array<f32, 5>();
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, var_1.x, 1u), 10126u) <= 4294967295u;
    return Struct_4(var_2, global0.b, Struct_2(all(!(!vec4<bool>(var_2, var_2, global0.b.a.x, false))), -2147483647i, 306f, global0.c.d));
}

fn func_1() -> vec4<bool> {
    global0 = func_2();
    let var_0 = -_wgslsmith_mult_i32(17594i, ~(-u_input.a.x));
    var var_1 = func_2().c;
    let var_2 = select(global0.b.a, !global0.b.a, select(func_2().b.a, func_2().b.a, vec2<bool>(global0.c.a, !(global0.c.c < global1[_wgslsmith_index_u32(1u, 5u)]))));
    global0 = Struct_4(var_2.x, global0.b, global0.c);
    return vec4<bool>(true, max(~select(var_1.d, 71181u, true), 89410u) < 0u, select(true, var_2.x, all(!vec4<bool>(true, true, var_1.a, true)) || global0.a), any(!vec2<bool>(true, global0.a)));
}

fn func_4(arg_0: vec4<f32>) -> Struct_4 {
    global0 = func_2();
    global1 = array<f32, 5>();
    let var_0 = ~74835i;
    var var_1 = 2021f;
    let var_2 = ~((firstLeadingBit(vec3<u32>(global0.c.d, u_input.b, 8362u)) ^ ~(~vec3<u32>(1u, 3302u, global0.b.b))) ^ firstLeadingBit(abs(vec3<u32>(1u, u_input.b, u_input.b)) >> ((vec3<u32>(global0.b.b, 82192u, global0.c.d) >> (vec3<u32>(20887u, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstTrailingBit(~(4294967295u >> (global0.b.b % 32u)) | global0.c.d), global0.b.d.x);
    var var_1 = countOneBits(u_input.e.x);
    global1 = array<f32, 5>();
    var var_2 = -1000f;
    global0 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c.c, 1831f, var_0.b, -419f))) + vec4<f32>(global1[_wgslsmith_index_u32(var_0.a, 5u)], var_0.b, global1[_wgslsmith_index_u32(28631u, 5u)], global0.b.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, global0.c.c, 296f, global0.b.d.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 2352f, -1015f, var_0.b) - vec4<f32>(global0.c.c, var_0.b, global0.b.d.x, 592f)))), !func_1())));
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.yzw, _wgslsmith_sub_vec3_i32(~vec3<i32>(29740i, 30922i, global0.c.b), _wgslsmith_clamp_vec3_i32(u_input.d.wxw, abs(vec3<i32>(global0.c.b, 34118i, 2289i)), -u_input.c.yxx))), -_wgslsmith_mult_i32(-1i, i32(-1i) * -2147483647i), vec3<i32>(-13206i, global0.b.e ^ abs(~0i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -1i, global0.b.e), u_input.c.xxx), vec3<i32>(4088i, 2147483647i, global0.b.e) >> (vec3<u32>(u_input.b, 1u, 116138u) % vec3<u32>(32u)), -u_input.d.wzx), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-17408i, 32032i, -2147483647i), vec3<i32>(global0.c.b, global0.c.b, u_input.e.x), vec3<i32>(global0.b.c.x, global0.b.c.x, 8373i)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global0.c.b, 31367i, 85338i, -25558i), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(37592i, global0.b.c.x, u_input.a.x, u_input.d.x), vec4<i32>(global0.c.b, -30940i, 37198i, -2147483647i)))), u_input.c, reverseBits(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.c.x, 22487i, global0.b.e))));
}

