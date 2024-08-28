struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<u32, 27>;

var<private> global2: array<vec2<i32>, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = select(~vec3<i32>(abs(min(12258i, -61552i)), _wgslsmith_dot_vec2_i32(~u_input.a, -vec2<i32>(u_input.e.x, u_input.e.x)), u_input.d), u_input.e, true);
    global2 = array<vec2<i32>, 14>();
    let var_1 = 961f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1667f), -714f, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(u_input.b.x, 27u)] ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0), u_input.b.yyx), 0u, arg_0, 37676u), min(u_input.b, vec4<u32>(~arg_0, 0u, ~37816u, 1u))), var_0.x);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 61031u, arg_0), vec3<u32>(var_2.c, ~0u, ~1u)) << (var_2.c % 32u), arg_0, reverseBits(arg_0), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_2.c, var_2.c), u_input.b.zzw) & vec3<u32>(var_2.c, arg_0, 0u)), ~(vec3<u32>(global1[_wgslsmith_index_u32(31837u, 27u)], 0u, 40040u) << (u_input.b.xzw % vec3<u32>(32u)))));
    return var_2.d;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_4 {
    global0 = array<Struct_3, 17>();
    let var_0 = arg_0;
    let var_1 = abs(max(-vec4<i32>(countOneBits(arg_0.b), ~0i, arg_0.e, firstTrailingBit(3740i)), _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-5014i, 30023i, var_0.e, 43763i), vec4<i32>(-14627i, arg_0.d.x, -22113i, -2147483647i), vec4<i32>(2147483647i, 1i, arg_0.e, var_0.d.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.d, vec3<i32>(u_input.e.x, -2147483647i, u_input.d)), countOneBits(arg_0.d.x), _wgslsmith_div_i32(u_input.d, var_0.b), _wgslsmith_sub_i32(52444i, arg_0.b)), vec4<i32>(abs(arg_0.d.x), 2147483647i, var_0.d.x, -36601i))));
    global0 = array<Struct_3, 17>();
    var var_2 = var_1;
    return Struct_4(arg_0, ~_wgslsmith_mult_vec3_u32(u_input.b.yyx, u_input.b.yww), var_0, (u_input.e.x ^ ~func_3(1u)) <= max(0i, 0i));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_5 {
    var var_0 = select(select(!arg_2.d, arg_2.d, !(!arg_1.d) && arg_2.c), vec2<bool>(arg_1.d, !all(vec3<bool>(false, false, arg_2.d.x))), true);
    let var_1 = ~_wgslsmith_div_u32(arg_1.b.x, 44572u);
    var var_2 = Struct_2(arg_2.a, arg_2.b, arg_1.d, vec2<bool>(true, false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1162f * _wgslsmith_f_op_f32(arg_2.b.a - -651f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1948f * arg_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x)))));
    let var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(max(~8400u, var_1), reverseBits(0u) ^ u_input.b.x), func_2(func_2(func_2(func_2(Struct_3(vec3<f32>(-187f, arg_1.a.c.x, var_2.a.b), -6661i, arg_1.a.c, vec3<i32>(-23462i, -21576i, -17588i), var_2.a.d), vec2<u32>(0u, var_2.b.c)).c, vec2<u32>(var_1, 1u)).c, ~(arg_1.b.xy << (u_input.b.xz % vec2<u32>(32u)))).c, arg_0).b.zz);
    global0 = array<Struct_3, 17>();
    return Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) - arg_2.b.b), var_2.b.a), _wgslsmith_mod_vec2_i32(max(firstTrailingBit(global2[_wgslsmith_index_u32(50625u, 14u)]), vec2<i32>(-12644i, -2147483647i)) & (vec2<i32>(-2147483647i, 0i) << (select(arg_0, vec2<u32>(12466u, 1u), vec2<bool>(var_2.d.x, var_2.d.x)) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(global2[_wgslsmith_index_u32(~func_2(global0[_wgslsmith_index_u32(var_1, 17u)], var_3).b.x, 14u)], firstTrailingBit(_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(58209u, 14u)], vec2<i32>(9363i, arg_2.b.d))), -vec2<i32>(-2147483647i, -2147483647i) & max(vec2<i32>(var_2.a.d, var_2.a.d), vec2<i32>(u_input.c, 13076i)))), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46622u, 27u)], 17u)], arg_2, _wgslsmith_mult_vec4_i32(select(-select(vec4<i32>(1i, -6692i, var_2.a.d, 24034i), vec4<i32>(var_2.b.d, 2147483647i, 2147483647i, var_2.b.d), vec4<bool>(true, var_0.x, true, true)), ~(vec4<i32>(35858i, u_input.d, -1i, -2147483647i) & vec4<i32>(u_input.e.x, -24368i, u_input.e.x, -20646i)), ~var_3.x != ~28084u), abs(firstTrailingBit(~vec4<i32>(u_input.e.x, -24504i, 26543i, u_input.e.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec2<i32>(-abs(35933i >> (global1[_wgslsmith_index_u32(4294967295u, 27u)] % 32u)), u_input.a.x);
    let var_1 = ~abs(min(vec4<u32>(u_input.b.x, 83000u, 0u, u_input.b.x) & vec4<u32>(140982u, 1u, 23345u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)]), vec4<u32>(u_input.b.x, 1u, 4294967295u, 103711u))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u << (u_input.b.x % 32u), u_input.b.x, ~104839u, u_input.b.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), 31338u), _wgslsmith_dot_vec3_u32(abs(u_input.b.xxw), ~u_input.b.zxy), ~1u, global1[_wgslsmith_index_u32(~u_input.b.x, 27u)]));
    var var_2 = func_4(~(~(~var_1.zy)), func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 27u)], 27u)] | u_input.b.x, 17u)], vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(30627u, 27u)] & 0u, var_1.x), u_input.b.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1051f * 2126f))), -508f, (0u ^ var_1.x) ^ max(28524u, u_input.b.x), var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f - -220f)), _wgslsmith_f_op_f32(953f * func_2(global0[_wgslsmith_index_u32(25594u, 17u)], var_1.zz).a.a.x), 11855u, u_input.d), !(true || (u_input.a.x != var_0.x)), vec2<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, false, false)) == true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1449f, 784f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1227f, -1466f) * vec2<f32>(-531f, 1408f)))), vec2<bool>(true, var_0.x < -15876i)))));
    global1 = array<u32, 27>();
    let var_3 = select(!(!select(!vec3<bool>(true, var_2.d.d.x, true), vec3<bool>(true, false, true), vec3<bool>(false, var_2.d.c, true))), !select(vec3<bool>(var_2.d.d.x, var_2.d.c, var_2.d.c), select(select(vec3<bool>(true, false, var_2.d.c), vec3<bool>(false, false, var_2.d.c), vec3<bool>(var_2.d.d.x, true, var_2.d.c)), vec3<bool>(true, false, var_2.d.d.x), false), select(!vec3<bool>(var_2.d.d.x, var_2.d.d.x, var_2.d.d.x), select(vec3<bool>(var_2.d.c, var_2.d.d.x, false), vec3<bool>(var_2.d.c, true, true), var_2.d.d.x), func_2(var_2.c, var_1.yx).d)), var_2.d.e.x <= -1191f);
    return var_2.d.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = 6245u;
    var var_1 = arg_0.x;
    var var_2 = arg_0;
    var_0 = 23817u;
    var_2 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(178f, arg_1.a))), arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f)))), _wgslsmith_f_op_f32(1f + 706f), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-200f)), _wgslsmith_f_op_f32(f32(-1f) * -1615f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -179f)))));
    global2 = array<vec2<i32>, 14>();
    global2 = array<vec2<i32>, 14>();
    let var_2 = Struct_1(-982f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1121f, 1711f))), (u_input.b.x ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44369u, 27u)], 27u)]) <= 54758u)))), 53129u, select(0i, ~max(1i, -55807i), true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, 299f))))));
    var var_4 = all(!vec3<bool>(~35159i >= _wgslsmith_sub_i32(0i, var_2.d), -2147483647i == var_2.d, true));
    var var_5 = u_input.b.x;
    var_1 = false;
    let x = u_input.a;
    s_output = func_5(!vec2<bool>((u_input.b.x << (u_input.b.x % 32u)) >= 27065u, min(0u, u_input.b.x) < (var_2.c ^ global1[_wgslsmith_index_u32(var_2.c, 27u)])), func_1());
}

