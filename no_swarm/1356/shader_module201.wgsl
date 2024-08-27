struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> i32 {
    let var_0 = abs(~u_input.c) & countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 21368u, u_input.b.x) >> (_wgslsmith_clamp_vec3_u32(u_input.b, u_input.a, u_input.b) % vec3<u32>(32u)), u_input.a));
    let var_1 = arg_1.c;
    global0 = array<vec2<bool>, 28>();
    var var_2 = ~select(vec4<u32>(~var_0, 1u, ~var_0, ~73529u) & vec4<u32>(var_0 | 56529u, _wgslsmith_mult_u32(var_0, var_0), 69812u, 113342u), ~select(vec4<u32>(9447u, 4294967295u, var_0, 1u), vec4<u32>(var_0, 1u, 4294967295u, 0u), vec4<bool>(false, true, false, false)) << ((~vec4<u32>(52714u, var_0, 17541u, var_0) >> (abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(true, !any(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)), !(arg_0.a < arg_1.d.x)));
    var var_3 = var_1.x;
    return -2147483647i;
}

fn func_2() -> vec3<u32> {
    global0 = array<vec2<bool>, 28>();
    let var_0 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, 0i)) & func_3(Struct_4(-4965i, vec4<f32>(1068f, -645f, 438f, -413f)), Struct_1(vec4<i32>(-18288i, 49169i, 37849i, -299i), vec3<f32>(-1000f, 946f, 1022f), vec4<f32>(1194f, -315f, 101f, -2031f), vec4<i32>(-70141i, 18906i, 80847i, -11189i))), -reverseBits(_wgslsmith_mod_i32(-2147483647i, -1i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(115f, 152f, 156f, -474f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-587f, -506f, 700f, 818f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, -734f, 915f, 485f))), vec4<bool>(true, select(true, true, true), true, all(vec3<bool>(true, false, true))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-897f, 1129f, -943f, 342f))), vec4<f32>(1f, 1f, 1f, 1f)))));
    global0 = array<vec2<bool>, 28>();
    var var_1 = any(select(vec3<bool>(true, true | (var_0.a > var_0.a), !any(vec4<bool>(true, true, false, true))), select(vec3<bool>(false, false, all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), false));
    var var_2 = select(vec2<bool>(u_input.c < 1u, true), global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_mult_u32(37746u, 21704u) < _wgslsmith_add_u32(u_input.a.x, 99002u));
    return vec3<u32>(~(~abs(~1u)), min(abs(~51630u), u_input.c), u_input.b.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> vec2<bool> {
    let var_0 = vec2<u32>(u_input.c, abs(u_input.a.x));
    var var_1 = func_2();
    global0 = array<vec2<bool>, 28>();
    var var_2 = reverseBits(~(~abs(_wgslsmith_mod_i32(732i, -2147483647i))));
    var_1 = u_input.b;
    return global0[_wgslsmith_index_u32(var_1.x, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = array<vec2<bool>, 28>();
    var var_1 = select(!global0[_wgslsmith_index_u32(1u, 28u)], !func_1(!(!global0[_wgslsmith_index_u32(16827u, 28u)]), 129f), func_1(global0[_wgslsmith_index_u32(~u_input.a.x, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-749f, -1000f, true)) + _wgslsmith_f_op_f32(sign(-423f)))).x);
    let var_2 = vec3<bool>(2124f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -934f))), true, !var_1.x);
    let var_3 = Struct_2(Struct_1(~(~(-vec4<i32>(46689i, 1i, var_0, 2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1704f, 1410f)), _wgslsmith_f_op_f32(-1191f - 1084f), 1532f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, 2124f, 1285f, -957f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1292f, 1117f, 1608f, 512f)))))), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_0, -1i, var_0, -34773i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0, var_0, var_0, var_0), firstTrailingBit(vec4<i32>(-2147483647i, var_0, var_0, var_0)), abs(vec4<i32>(var_0, var_0, var_0, var_0))))));
    var var_4 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 117813u, 26319u), vec4<u32>(26029u, 58467u, u_input.c, u_input.a.x)), 4294967295u, 492u)), ~vec3<u32>(u_input.b.x, u_input.c, ~u_input.a.x));
    global0 = array<vec2<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(264f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1517f - var_3.a.c.x))), 567f), _wgslsmith_f_op_vec3_f32(step(var_3.a.c.xwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b.x, var_3.a.b.x, 853f))))), var_0, vec4<u32>(0u, u_input.c, 1u, ~(~1u)) << (select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.c), vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 4294967295u)), vec4<u32>(1u, u_input.c ^ 41101u, u_input.b.x, ~2777u), select(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_2.x, true, var_2.x), true), vec4<bool>(false, true, false, false), func_1(vec2<bool>(var_1.x, false), -447f).x)) % vec4<u32>(32u)), -2147483647i, countOneBits(~_wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(u_input.c, 1u, 21674u))));
}

