struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(2147483647i, -23091i, 16015i, -1i), vec4<i32>(2147483647i, 1i, -35851i, 1i), vec4<i32>(2147483647i, 1i, 38574i, i32(-2147483648)), vec4<i32>(0i, 1i, -36543i, 5846i), vec4<i32>(-1i, 0i, i32(-2147483648), 9529i), vec4<i32>(2147483647i, 47860i, -10760i, 15366i), vec4<i32>(2147483647i, 24058i, -31216i, 46534i), vec4<i32>(20052i, 7553i, -2120i, 2147483647i), vec4<i32>(-1i, 1i, 32059i, -1i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -699i), vec4<i32>(21234i, 57181i, -28004i, -61393i), vec4<i32>(0i, i32(-2147483648), -46876i, 0i), vec4<i32>(0i, i32(-2147483648), 23950i, 49760i), vec4<i32>(-62430i, 19686i, 67637i, 0i), vec4<i32>(3270i, 2147483647i, 0i, 0i), vec4<i32>(22468i, 20319i, i32(-2147483648), -8756i), vec4<i32>(18730i, 39242i, 0i, -4695i), vec4<i32>(i32(-2147483648), 17489i, -1i, i32(-2147483648)));

var<private> global2: array<vec3<i32>, 24>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = false;
    global2 = array<vec3<i32>, 24>();
    return abs(_wgslsmith_mult_vec2_u32(arg_0.a.a & ~firstLeadingBit(u_input.b.xy), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 63248u), ~arg_0.c), arg_2)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> vec2<bool> {
    global1 = array<vec4<i32>, 18>();
    let var_0 = Struct_5(_wgslsmith_clamp_u32(arg_2.x, firstLeadingBit(u_input.b.x << (17393u % 32u)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 88839u, 0u, 0u), vec4<u32>(1u, 0u, u_input.b.x, 4294967295u)), max(vec4<u32>(arg_3.c, 1u, 24251u, 49848u), vec4<u32>(26725u, arg_2.x, 1u, 1u)), vec4<bool>(true, true, true, true)), ~(~vec4<u32>(u_input.b.x, arg_3.c, arg_2.x, arg_3.c)))));
    let var_1 = Struct_1(vec2<u32>(max(arg_2.x, 49123u) | (u_input.b.x & arg_3.c), _wgslsmith_dot_vec2_u32(func_3(Struct_2(Struct_1(arg_2, vec2<i32>(-2147483647i, 1i), arg_0.a, global0.x, -1000f), global1[_wgslsmith_index_u32(0u, 18u)], u_input.b.yx, u_input.a.xy), Struct_3(arg_3.a, arg_3.a.yy, 54414u), 16707u, vec4<bool>(false, false, false, true)), vec2<u32>(87918u, 1u) << (u_input.b.zy % vec2<u32>(32u)))) | vec2<u32>(~select(var_0.a, 4294967295u, true), 33778u), -u_input.a.zz ^ vec2<i32>(global0.x, global0.x), 1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(abs(39050i)), abs(2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-29643i, u_input.a.x, global0.x), _wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(31739u, 24u)])) | select(2147483647i, ~1i, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e), 1000f))) * arg_1.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.b.x, -1061f))));
    global1 = array<vec4<i32>, 18>();
    return vec2<bool>(true, !(!(1u == var_1.a.x)));
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = all(select(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_2(Struct_4(-1i), vec3<f32>(-160f, 1986f, -1674f), u_input.b.zx, Struct_3(vec3<f32>(-376f, 358f, -654f), vec2<f32>(-692f, -1099f), u_input.b.x))), vec2<bool>(_wgslsmith_div_i32(global0.x, u_input.a.x) > -global0.x, 26379u >= u_input.b.x), vec2<bool>(u_input.b.x <= (29189u & arg_0.a), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f + 1048f)) - 973f) * -1121f);
    global1 = array<vec4<i32>, 18>();
    global2 = array<vec3<i32>, 24>();
    let var_2 = ~reverseBits(u_input.b.zx);
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.a.zy, vec2<i32>(u_input.a.x, -1i), -arg_0.b), u_input.a.yy), abs(-1i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.x, -2147483647i), u_input.a))), arg_0.b);
    let var_0 = firstTrailingBit(~max(~0u >> (_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a) % 32u), 0u));
    var var_1 = global0.x;
    let var_2 = _wgslsmith_sub_u32(arg_0.a.x, ~(~43508u));
    var var_3 = Struct_5(36788u);
    return Struct_2(Struct_1(~(~vec2<u32>(arg_0.a.x, 56272u)), min(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, -2147483647i), select(vec2<i32>(arg_0.d, 2147483647i), vec2<i32>(0i, arg_0.b.x), vec2<bool>(arg_1, true))), ~(-u_input.a.xx)), arg_0.c, -(i32(-1i) * -1i), arg_0.e), select((global1[_wgslsmith_index_u32(4294967295u, 18u)] | global1[_wgslsmith_index_u32(1u, 18u)]) | firstTrailingBit(vec4<i32>(arg_0.c, -42672i, 77140i, -1i)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(global0.x, arg_0.d), ~(-1776i), _wgslsmith_clamp_i32(-31219i, 23980i, 17443i)), vec4<bool>(arg_1, arg_0.b.x >= global0.x, false, arg_1)) | firstLeadingBit(vec4<i32>(37896i ^ u_input.a.x, -1i, max(arg_0.c, -1735i), firstLeadingBit(2147483647i))), select(~(arg_0.a & arg_0.a), vec2<u32>(~28679u, 1u), !arg_1) | vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_3.a, var_3.a), vec4<u32>(70547u, u_input.b.x, var_0, var_3.a)), ~0u), vec2<i32>(-2147483647i, abs(global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -336f;
    global0 = vec2<i32>(global0.x, u_input.a.x);
    var var_1 = abs(global2[_wgslsmith_index_u32(u_input.b.x, 24u)]);
    let var_2 = func_4(Struct_1(_wgslsmith_mod_vec2_u32(~(u_input.b.yx >> (u_input.b.yy % vec2<u32>(32u))), vec2<u32>(func_1(Struct_5(u_input.b.x)), u_input.b.x)), min(vec2<i32>(-1i) * -vec2<i32>(u_input.c, 60765i), select(vec2<i32>(u_input.c, 0i), u_input.a.zy, true)), -global0.x, _wgslsmith_add_i32(-abs(-2147483647i), u_input.c), 749f), !any(vec3<bool>(true, true, true)));
    global2 = array<vec3<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(var_2.d.x >> (41025u % 32u), var_1.x, 1i, -var_1.x), reverseBits(-vec4<i32>(-24534i, -1i, global0.x, global0.x)), true) & global1[_wgslsmith_index_u32(1u, 18u)], firstTrailingBit(~(~vec2<u32>(88692u, var_2.c.x))));
}

