struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-14513i, -6116i, vec4<i32>(-15120i, -1i, 2147483647i, 7349i)), Struct_1(-10090i, 2147483647i, vec4<i32>(12452i, 0i, 33589i, 2147483647i)), Struct_1(59912i, 1i, vec4<i32>(i32(-2147483648), 0i, 2147483647i, -43509i)), Struct_1(1i, i32(-2147483648), vec4<i32>(0i, -1i, 15959i, -36620i)), Struct_1(0i, i32(-2147483648), vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(-1i, -47221i, vec4<i32>(1156i, 18233i, 0i, -5968i)), Struct_1(-1i, 53333i, vec4<i32>(-65377i, -72321i, 30771i, -37758i)), Struct_1(2147483647i, -32492i, vec4<i32>(-18700i, 21128i, 0i, 54122i)), Struct_1(20503i, i32(-2147483648), vec4<i32>(-2372i, 1i, -8449i, 1i)), Struct_1(-1i, 1i, vec4<i32>(1i, -28764i, -23581i, -9984i)), Struct_1(0i, 1i, vec4<i32>(-1i, -7830i, 2147483647i, i32(-2147483648))), Struct_1(0i, -1i, vec4<i32>(74297i, 1i, 1i, 0i)), Struct_1(-44876i, 1i, vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i)), Struct_1(i32(-2147483648), 0i, vec4<i32>(2147483647i, 19880i, 0i, 1i)), Struct_1(29269i, 22433i, vec4<i32>(-7549i, 1i, 47561i, 1i)), Struct_1(-34993i, 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -1342i)), Struct_1(16513i, 1i, vec4<i32>(1i, 1i, 20846i, -8814i)), Struct_1(2147483647i, -1i, vec4<i32>(0i, 15357i, 50876i, 74071i)), Struct_1(-2444i, 0i, vec4<i32>(-30409i, 4835i, 0i, -66481i)), Struct_1(-1i, i32(-2147483648), vec4<i32>(i32(-2147483648), 31624i, -1i, 2147483647i)), Struct_1(1i, 58767i, vec4<i32>(0i, 2147483647i, 34109i, -4536i)), Struct_1(-1i, -31331i, vec4<i32>(-34613i, 2147483647i, 25685i, 37028i)), Struct_1(-8427i, -1664i, vec4<i32>(-1i, -74049i, -2664i, 21085i)), Struct_1(-2687i, -35431i, vec4<i32>(-1i, 24058i, 46269i, 1i)), Struct_1(5784i, 26223i, vec4<i32>(-1i, -65641i, 2147483647i, 1i)), Struct_1(-1i, 59023i, vec4<i32>(1i, i32(-2147483648), -14555i, -12802i)), Struct_1(0i, i32(-2147483648), vec4<i32>(-1i, 2147483647i, -6988i, 7661i)), Struct_1(2147483647i, 2147483647i, vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i)), Struct_1(-63300i, -37104i, vec4<i32>(41518i, 15297i, -21168i, 1i)), Struct_1(-28516i, -1i, vec4<i32>(-1i, 31622i, 0i, 12627i)), Struct_1(1i, 2147483647i, vec4<i32>(i32(-2147483648), 0i, 899i, -1i)), Struct_1(0i, 25767i, vec4<i32>(-1i, -19293i, 13182i, 0i)));

var<private> global2: array<vec3<bool>, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x, 927f)))));
    let var_1 = Struct_2(Struct_1(-1i, -1i, -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 49561i, -9331i, 12411i), vec4<i32>(1i, 1i, 1i, 1i))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) + 1290f), _wgslsmith_f_op_f32(abs(var_0.x))), Struct_1(10170i, 5373i, ~(vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, -2147483647i, 2147483647i))));
    var var_2 = -77676i;
    var var_3 = firstTrailingBit(var_1.c.c.xw) ^ var_1.c.c.wz;
    let var_4 = Struct_4(1261f, var_1.a);
    return vec4<i32>(-1i) * -(~(~var_4.b.c));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(min(~(~_wgslsmith_sub_u32(4294967295u, 9135u)), u_input.a.x ^ 1u), 27u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, -1260f, 481f))) - vec3<f32>(-672f, _wgslsmith_f_op_f32(min(442f, -859f)), -528f)))), Struct_1(_wgslsmith_sub_i32(~(~57637i), ~(-79011i)), -1i, -(~(-vec4<i32>(-1i, -2147483647i, -2147483647i, 22380i)))));
    let var_1 = u_input.a.x;
    var var_2 = Struct_2(Struct_1(-2147483647i, var_0.a.b, func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1476f), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -873f)))), var_0.b, Struct_1(var_0.c.c.x, var_0.a.a, ~vec4<i32>(0i, 1i, 27257i, -var_0.c.a)));
    let var_3 = Struct_3(var_2.b.x);
    global0 = array<Struct_1, 27>();
    return var_1;
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_1, 27>();
    var var_0 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -1i)), -(~vec2<i32>(-2147483647i, 1i))), _wgslsmith_clamp_i32(2147483647i, countOneBits(2147483647i), 2147483647i));
    var var_1 = vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, func_2()));
    var_0 = select(vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-var_0.x, -1i), firstTrailingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(4972i, var_0.x), vec2<i32>(0i, var_0.x)))), select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))));
    global2 = array<vec3<bool>, 17>();
    return ~u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(arg_1.a);
    global2 = array<vec3<bool>, 17>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global0 = array<Struct_1, 27>();
    global2 = array<vec3<bool>, 17>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~5796u, u_input.a.x) | ~(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_mult_vec3_u32(u_input.a, abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) & abs(func_1())), 27u)], Struct_4(-1513f, global1[_wgslsmith_index_u32(firstTrailingBit(1u), 32u)]));
    let var_2 = Struct_4(-522f, func_4(func_4(func_4(var_1, Struct_4(1282f, Struct_1(var_1.c.x, -11691i, vec4<i32>(743i, var_1.a, 1685i, -26846i)))), Struct_4(_wgslsmith_f_op_f32(select(-1790f, -638f, false)), func_4(global1[_wgslsmith_index_u32(17133u, 32u)], Struct_4(-326f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)])))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1091f), global1[_wgslsmith_index_u32(u_input.a.x, 32u)])));
    let var_3 = firstLeadingBit(_wgslsmith_mod_i32(var_0, var_2.b.c.x)) > -37603i;
    let x = u_input.a;
    s_output = StorageBuffer(11223i, vec2<f32>(1319f, var_2.a), 0i, 2147483647i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.a - 1094f))))), 2510f, var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -932f))));
}

