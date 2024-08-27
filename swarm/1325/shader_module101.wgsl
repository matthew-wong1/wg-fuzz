struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: u32;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(global3.a.e.x)), _wgslsmith_f_op_f32(floor(426f)));
    global2 = global3.a.c.e.c.x;
    global2 = ~149681u;
    var var_1 = max(_wgslsmith_clamp_vec4_u32(vec4<u32>(~60355u ^ global3.c, ~(~global3.a.b.b.x), _wgslsmith_mod_u32(48629u, global3.a.b.c.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.c.e.b.x, global3.a.c.e.c.x), vec2<u32>(global3.c, 0u)), ~global3.c), ~vec4<u32>(global3.c, 4294967295u << (global3.a.c.e.c.x % 32u), 1u, global3.c), (~vec4<u32>(global3.c, global3.c, 0u, 1u) << (~vec4<u32>(global3.a.b.c.x, global3.c, 29276u, global3.a.b.c.x) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(34088u, global3.c, 79909u, global3.a.c.e.c.x))), ~vec4<u32>(global3.a.b.b.x, 0u, 70935u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.c.e.b.x, 4686u, 8602u, global3.a.c.e.b.x), vec4<u32>(12075u, 25151u, global3.c, global3.a.c.e.c.x)), vec4<u32>(global3.a.c.e.c.x, 0u, global3.c, 0u))));
    global0 = array<Struct_1, 2>();
    return var_1.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = global3.a.c.b;
    var var_1 = global3.a.e.xzw;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1821f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(floor(1021f)))));
    var var_3 = Struct_4(global3.a, ~vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_0, 13920i, global3.a.a, arg_0)), _wgslsmith_div_i32(_wgslsmith_mod_i32(59747i, arg_0), min(u_input.a.x, arg_0)), 2870i), func_3(vec3<bool>(true, !any(vec3<bool>(false, global3.a.c.b, false)), !any(global3.a.c.d))), vec3<i32>(-select(-9620i, 17642i, true) | u_input.a.x, select(firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(arg_0, arg_0), any(global3.a.c.d)) & 1i, u_input.a.x));
    let var_4 = global1[_wgslsmith_index_u32(func_3(!select(select(select(vec3<bool>(false, var_3.a.c.d.x, var_3.a.c.d.x), vec3<bool>(var_3.a.c.b, global3.a.c.b, false), false), vec3<bool>(global3.a.c.b, var_3.a.c.d.x, var_3.a.c.b), vec3<bool>(true, true, false)), select(select(vec3<bool>(var_3.a.c.d.x, var_3.a.c.b, false), vec3<bool>(true, true, true), false), !vec3<bool>(global3.a.c.b, false, var_3.a.c.c), vec3<bool>(global3.a.c.b, true, true)), all(!vec2<bool>(var_3.a.c.b, true)))), 18u)];
    return var_3.a.c;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(global3.d.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(4294967295u, 42870u), _wgslsmith_mod_u32(abs(global3.c) | global3.a.c.e.b.x, _wgslsmith_mod_u32(~0u, global3.c))), 2u)], func_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(-22366i, 1i) << (reverseBits(0u) % 32u), u_input.a.x)), _wgslsmith_f_op_f32(max(global3.a.e.x, 752f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.c.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c.e.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.b.a.x))), 680f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global3.a.e, vec4<f32>(global3.a.e.x, global3.a.d, global3.a.d, global3.a.c.e.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-466f, global3.a.c.e.a.x, global3.a.e.x, global3.a.b.a.x)))))));
    let var_1 = u_input.a.wy;
    var var_2 = var_0.c.e;
    var var_3 = any(select(select(var_0.c.d, select(global3.a.c.d, vec2<bool>(var_0.c.b, false), var_0.c.d), select(vec2<bool>(global3.a.c.c, true), vec2<bool>(global3.a.c.d.x, var_0.c.b), true)), vec2<bool>(var_0.c.b, false | global3.a.c.d.x), func_2(abs(0i)).d.x)) || false;
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(19413u, global3.c, 1u), ~46082u, func_2(global3.b.x).e.b.x), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(11002u, var_0.c.e.b.x, global3.a.c.e.b.x) & vec3<u32>(global3.a.b.c.x, 4294967295u, var_2.c.x)), global3.a.c.e.c, firstTrailingBit(_wgslsmith_div_vec3_u32(global3.a.c.e.c, vec3<u32>(4294967295u, 0u, 4294967295u))))), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, ~global3.c), var_0.b.b.x));
    return func_2(15043i).e;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global2 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstTrailingBit(global3.c & global3.c)) << (~(~arg_0.b) % vec2<u32>(32u)), global3.a.c.e.c.yy);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(max(global3.a.e.x, _wgslsmith_f_op_f32(floor(global3.a.c.e.a.x))))), 806f), any(select(select(!vec3<bool>(false, global3.a.c.b, true), vec3<bool>(global3.a.c.c, global3.a.c.c, global3.a.c.b), !vec3<bool>(global3.a.c.d.x, true, global3.a.c.c)), vec3<bool>(false, true, all(vec4<bool>(global3.a.c.c, true, global3.a.c.c, true))), 5411u >= (49225u << (global3.c % 32u)))), false, !(!vec2<bool>(true, global3.a.c.d.x)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    global3 = Struct_4(global3.a, vec4<i32>(-firstLeadingBit(-12852i), 2147483647i, max(global3.a.a, u_input.a.x), ~(u_input.a.x & (2147483647i | global3.b.x))), countOneBits(~(~(0u | global3.a.b.b.x))), _wgslsmith_mod_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(12488i, global3.b.x), vec2<i32>(u_input.a.x, 23465i)), ~u_input.a.x, global3.a.a), u_input.a.xxw));
    global1 = array<Struct_1, 18>();
    global3 = Struct_4(global3.a, ~(~reverseBits(u_input.a)), _wgslsmith_div_u32(0u, ~abs(global3.a.c.e.c.x) >> (global3.c % 32u)), _wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(1i, u_input.a.x, global3.b.x)), global3.d));
    global2 = ~(~(~global3.a.b.b.x));
    global0 = array<Struct_1, 2>();
    let var_0 = Struct_3(global3.d.x, global1[_wgslsmith_index_u32(~firstTrailingBit(global3.a.b.c.x), 18u)], func_4(func_1(), _wgslsmith_clamp_i32(min(-1i, ~(-1679i)), min(countOneBits(-1i), 0i), ~1i << (global3.c % 32u))), global3.a.e.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, -1128f, -732f, global3.a.e.x) - global3.a.e), global3.a.e))), vec4<f32>(global3.a.b.a.x, global3.a.d, -212f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-574f, -1133f), _wgslsmith_div_f32(global3.a.e.x, global3.a.c.a.x)))), !(!(!vec4<bool>(global3.a.c.c, true, true, true))))));
    global2 = func_3(!select(vec3<bool>(false, all(vec3<bool>(var_0.c.b, true, true)), true), !vec3<bool>(var_0.c.c, var_0.c.b, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -20815i, 31547i), ~vec3<i32>(0i, -10657i, -1i)))), i32(-1i) * -19475i);
}

