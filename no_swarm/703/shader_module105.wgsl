struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<bool, 26>;

var<private> global1: vec2<u32> = vec2<u32>(4032u, 15038u);

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(614f, -208f), vec2<f32>(-833f, 568f), vec2<f32>(-930f, 1142f), vec2<f32>(405f, -262f), vec2<f32>(216f, 1000f), vec2<f32>(614f, -826f), vec2<f32>(496f, 1376f), vec2<f32>(678f, 584f), vec2<f32>(-390f, -864f), vec2<f32>(758f, 603f), vec2<f32>(1000f, 766f), vec2<f32>(-459f, 1214f), vec2<f32>(-484f, 277f), vec2<f32>(-403f, -1000f), vec2<f32>(540f, -285f), vec2<f32>(239f, -2966f), vec2<f32>(843f, -736f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-275f));
    var var_1 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, 1i), countOneBits(max(1i, 0i))), Struct_3(!(abs(39747u) == ~global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(14996u, global1.x, global1.x, 1u) >> (~vec4<u32>(global1.x, global1.x, 34635u, 144692u) % vec4<u32>(32u)), vec4<u32>(~5408u, global1.x | 1u, 1u, ~global1.x)), u_input.a.ww, select(select(!vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(global1.x, 26u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(27180u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), true), select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 26u)]), true), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(46148u, 26u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(global1.x, 26u)]), true), true), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(global1.x, 26u)]), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 26u)], false, false)), vec3<bool>(true, true, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 26u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1543f)) - -1512f))), -1i >> (1u % 32u), 161f);
    global2 = var_1.b.b;
    global0 = array<bool, 26>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_add_i32(arg_0.c, -1i), -15708i & u_input.a.x, func_3()), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(arg_1.c.x, arg_0.a), ~(-37789i), _wgslsmith_mult_i32(arg_2, arg_0.a))), _wgslsmith_div_vec4_i32(firstTrailingBit(-(~u_input.a)), vec4<i32>(_wgslsmith_sub_i32(arg_0.a, _wgslsmith_sub_i32(arg_2, arg_2)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i) & vec2<i32>(u_input.a.x, 0i), u_input.a.yw), 1i, abs(countOneBits(arg_2)))), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(2020i, abs(~arg_1.c.x)), u_input.a.x, arg_0.c));
    let var_1 = arg_1.e;
    var var_2 = arg_1.b;
    var_2 = global1.x;
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, firstLeadingBit(4294967295u) | ~global1.x, global1.x, arg_1.b), max(~vec4<u32>(70527u, 51874u, 5226u, 4294967295u), vec4<u32>(~arg_0.b.b, arg_1.b, abs(arg_0.b.b), _wgslsmith_div_u32(11180u, arg_1.b)))) >> (vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), abs(arg_0.b.b), ~_wgslsmith_mult_u32(arg_1.b | global1.x, arg_1.b << (arg_0.b.b % 32u)), ~4294967295u) % vec4<u32>(32u));
    return u_input.a.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    global3 = array<vec2<f32>, 17>();
    global1 = ~select(~vec2<u32>(global1.x, global1.x), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 2742u, global1.x), ~vec3<u32>(25946u, 106352u, 2637u)), abs(_wgslsmith_mod_u32(global1.x, 68003u))), false);
    var var_0 = Struct_1(~max(global1.x, _wgslsmith_add_u32(global1.x, global1.x)), -370f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1547f), _wgslsmith_f_op_f32(step(-1311f, 658f)), arg_0.x))));
    global3 = array<vec2<f32>, 17>();
    global3 = array<vec2<f32>, 17>();
    return Struct_4(_wgslsmith_div_i32(i32(-1i) * -5679i, -84119i), Struct_3(!var_0.b, global1.x, -(~(~vec2<i32>(u_input.a.x, u_input.a.x))), arg_0, _wgslsmith_f_op_f32(-616f * -149f)), func_4(Struct_4(-46552i, Struct_3(any(vec4<bool>(global0[_wgslsmith_index_u32(76263u, 26u)], var_0.b, false, false)), ~1u, u_input.a.zz, !arg_0, _wgslsmith_f_op_f32(abs(1304f))), func_3(), _wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(floor(-937f)))), Struct_3(true, max(_wgslsmith_add_u32(global1.x, 8426u), global1.x), u_input.a.yy, vec3<bool>(var_0.a <= var_0.a, true, any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(-760f + _wgslsmith_f_op_f32(min(-781f, 1433f)))), -2147483647i), 500f);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_i32(1i, u_input.a.x, 5016i) == (0i & -u_input.a.x);
    var var_1 = arg_0;
    global2 = arg_0.b.b;
    let var_2 = var_1.b.b;
    var var_3 = u_input.a;
    return func_2(func_2(func_2(arg_0.b.d).b.d).b.d);
}

fn func_6(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(~abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, 0i), ~u_input.a.x)), Struct_3(true, 14368u, vec2<i32>(u_input.a.x, ~0i), select(arg_1.b.d, vec3<bool>(global0[_wgslsmith_index_u32(20431u, 26u)] != true, any(arg_1.b.d), any(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 26u)]))), vec3<bool>(true, !arg_1.b.a, false)), -813f), (~u_input.a.x ^ _wgslsmith_add_i32(arg_1.c ^ -2147483647i, abs(2147483647i))) >> (arg_1.b.b % 32u), _wgslsmith_f_op_f32(arg_1.b.e * arg_1.d));
    let var_1 = vec4<u32>(abs(36471u), 51693u, ~abs(1u), 4294967295u) | vec4<u32>(var_0.b.b, ~arg_1.b.b, arg_1.b.b, arg_1.b.b);
    let var_2 = arg_1.b.d;
    global2 = var_1.x;
    return Struct_2(_wgslsmith_add_u32(0u, ~(_wgslsmith_sub_u32(arg_0, var_0.b.b) ^ reverseBits(8654u))));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    var var_0 = 4294967295u;
    let var_1 = func_6(global1.x, func_5(func_2(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(true, true, true), true | global0[_wgslsmith_index_u32(4294967295u, 26u)])), vec3<i32>(-1i) * -u_input.a.zxx));
    var var_2 = Struct_1(1u, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~func_5(Struct_4(0i, Struct_3(global0[_wgslsmith_index_u32(var_1.a, 26u)], 35906u, u_input.a.zz, vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(var_1.a, 26u)], false), 1478f), -2147483647i, -1000f), u_input.a.zww).b.b, ~1u), 26u)]);
    let var_3 = 276f;
    let var_4 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2383i, 1i, i32(-1i) * -11947i, arg_0), -(~u_input.a)));
    return countOneBits(min(~vec2<u32>(~5813u, ~56237u), (~vec2<u32>(global1.x, global1.x) | (vec2<u32>(global1.x, var_1.a) | vec2<u32>(31602u, 4294967295u))) >> (firstTrailingBit(abs(vec2<u32>(global1.x, var_1.a))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~reverseBits(_wgslsmith_mod_vec2_u32(~func_1(-1i), vec2<u32>(max(global1.x, global1.x), global1.x)));
    global3 = array<vec2<f32>, 17>();
    let var_0 = global3[_wgslsmith_index_u32(1u, 17u)];
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, global1.x, global1.x), select(vec3<u32>(1u, global1.x, global1.x), vec3<u32>(1u, global1.x, global1.x), global0[_wgslsmith_index_u32(5873u, 26u)])) | global1.x, 4366u, ~29659u) >> ((_wgslsmith_mult_vec3_u32(~(vec3<u32>(116198u, 1u, global1.x) >> (vec3<u32>(18313u, 6656u, 4251u) % vec3<u32>(32u))), ~(~vec3<u32>(global1.x, 33089u, global1.x))) >> (firstLeadingBit(vec3<u32>(global1.x << (global1.x % 32u), max(1u, global1.x), firstLeadingBit(16771u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, -u_input.a.x, 33373i), min(~(u_input.a.x | _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), u_input.a.x));
}

