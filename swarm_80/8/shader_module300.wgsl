struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<bool>(true, false, false), 184f), Struct_3(vec3<bool>(false, false, false), 332f), Struct_3(vec3<bool>(false, true, true), -1302f), Struct_3(vec3<bool>(true, true, true), 243f), Struct_3(vec3<bool>(false, true, true), 851f), Struct_3(vec3<bool>(false, false, false), 1881f), Struct_3(vec3<bool>(false, true, true), 612f), Struct_3(vec3<bool>(true, true, false), -1000f), Struct_3(vec3<bool>(false, true, true), -274f), Struct_3(vec3<bool>(true, false, true), 1101f), Struct_3(vec3<bool>(false, true, false), -443f), Struct_3(vec3<bool>(true, true, false), 1171f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = u_input.a;
    var_0 = ~(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, global0.b, var_0.x), u_input.a)), vec4<i32>(var_0.x ^ global0.b, firstTrailingBit(global0.b), max(2147483647i, var_0.x), -28657i >> (u_input.b.x % 32u))) << (vec4<u32>(18590u, 29895u, ~(~0u), ~global0.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(global0.a, u_input.b.x, u_input.b.x)) % 32u)) % vec4<u32>(32u)));
    let var_1 = vec3<u32>(u_input.b.x << (u_input.b.x % 32u), ~(firstTrailingBit(u_input.b.x) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.b.x, global0.a)), vec3<u32>(global0.a, global0.a, global0.a)) % 32u)), ~88816u);
    var var_2 = select(vec2<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true), vec2<bool>(true, true), true);
    var_0 = u_input.d;
    return global0.c.x;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(~global0.a, _wgslsmith_add_i32(1i, global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(max(global0.c.x, -1370f)), _wgslsmith_f_op_f32(-2007f + -636f)) - global0.c)));
    global1 = array<Struct_3, 12>();
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(1u, global0.a)), 0u), 12u)];
    var var_1 = Struct_1(global0.c.xy, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(444f + var_0.b) - _wgslsmith_f_op_f32(min(1919f, 1775f))), 736f, _wgslsmith_f_op_f32(2166f * 909f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global0.c.x))))), var_0.a);
    var var_2 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(select(-vec3<i32>(global0.b, 0i, global0.b), _wgslsmith_sub_vec3_i32(vec3<i32>(35672i, global0.b, global0.b), u_input.d.zzw), select(vec3<bool>(var_1.c.x, true, var_0.a.x), vec3<bool>(var_1.c.x, true, false), vec3<bool>(var_1.c.x, var_1.c.x, var_0.a.x))), ~_wgslsmith_clamp_vec3_i32(u_input.a.wyy, vec3<i32>(global0.b, 3428i, u_input.c.x), vec3<i32>(2147483647i, -2147483647i, global0.b)));
    return Struct_2(4294967295u, -32513i, var_1.b.yyy);
}

fn func_1() -> u32 {
    global0 = func_2();
    global1 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-677f, 229f, func_2().c.x, _wgslsmith_f_op_f32(-185f - global0.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1605f, 591f, 1642f, global0.c.x) + vec4<f32>(1069f, 154f, global0.c.x, global0.c.x))), all(vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-778f, global0.c.x, global0.c.x, 940f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.c.x, global0.c.x, global0.c.x)))), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true))))));
    let var_1 = ~u_input.c.x;
    let var_2 = global1[_wgslsmith_index_u32(56437u, 12u)];
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 12>();
    var var_0 = vec3<u32>(23931u, ~func_1(), 14321u);
    var_0 = select(countOneBits(~reverseBits(vec3<u32>(15168u, global0.a, global0.a))), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(27959u, var_0.x, 1u), ~vec3<u32>(u_input.b.x, 10264u, 33128u))) | _wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(59696u, 1u, global0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 11078u, 4294967295u) >> (vec3<u32>(0u, global0.a, 66082u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(50434u, 4294967295u, u_input.b.x), vec3<u32>(10367u, u_input.b.x, 72302u))), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, var_0.x), vec3<u32>(global0.a, u_input.b.x, u_input.b.x))), vec3<bool>(all(vec3<bool>(-380f == global0.c.x, false, true)), false, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, true), true))));
    global0 = Struct_2(6347u ^ global0.a, ~_wgslsmith_add_i32(-abs(-54346i), u_input.a.x), _wgslsmith_f_op_vec3_f32(sign(global0.c)));
    global1 = array<Struct_3, 12>();
    var var_1 = Struct_2(var_0.x, 2147483647i, vec3<f32>(func_2().c.x, -131f, 383f));
    var_0 = ~select(max(vec3<u32>(u_input.b.x, ~global0.a, u_input.b.x), min(vec3<u32>(var_1.a, 0u, global0.a), vec3<u32>(var_1.a, var_0.x, var_0.x)) << (~vec3<u32>(50129u, var_1.a, var_0.x) % vec3<u32>(32u))), vec3<u32>(global0.a, 9831u, _wgslsmith_dot_vec3_u32(vec3<u32>(8880u, 4294967295u, 44138u), vec3<u32>(1u, 4294967295u, 40168u))) >> ((~vec3<u32>(var_0.x, global0.a, 30271u) >> (~vec3<u32>(13571u, var_0.x, global0.a) % vec3<u32>(32u))) % vec3<u32>(32u)), false);
    let var_2 = Struct_2(1u, 1i, vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x * -367f), _wgslsmith_f_op_f32(-var_1.c.x), -805f));
    var var_3 = global1[_wgslsmith_index_u32(17851u | global0.a, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b, var_1.c.x, global0.c.x, -1147f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -932f, var_2.c.x, var_1.c.x)))), min(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, 0i), u_input.c >> (u_input.b % vec2<u32>(32u)), -vec2<i32>(51088i, 2147483647i)), firstTrailingBit(u_input.c << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))), -(~u_input.a.wx)), u_input.c), min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.x, u_input.b.x) << (vec3<u32>(var_0.x, var_1.a, var_1.a) % vec3<u32>(32u)), min(select(vec3<u32>(4294967295u, u_input.b.x, var_1.a), vec3<u32>(var_2.a, u_input.b.x, 4294967295u), var_3.a), vec3<u32>(59764u, 0u, global0.a) ^ vec3<u32>(var_1.a, u_input.b.x, var_1.a))), ~countOneBits(~vec3<u32>(42602u, 1u, u_input.b.x))), select(max(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global0.a, 67084u, 1u)), select(vec3<u32>(0u, 12846u, 1u), vec3<u32>(4294967295u, var_2.a, 4294967295u), var_3.a)), firstTrailingBit(~vec3<u32>(21307u, u_input.b.x, 51436u))), ~(~min(vec3<u32>(1u, 1u, 96000u), vec3<u32>(4294967295u, 4294967295u, var_1.a))), var_3.a.x));
}

