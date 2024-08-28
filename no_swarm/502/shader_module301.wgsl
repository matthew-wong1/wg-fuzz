struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 17>;

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -68440i, 2147483647i);

var<private> global4: array<Struct_4, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = firstLeadingBit((~(~arg_1.yzz) << ((arg_1.yxy ^ vec3<u32>(u_input.c, arg_1.x, arg_1.x)) % vec3<u32>(32u))) | vec3<u32>(firstTrailingBit(46980u), u_input.c, _wgslsmith_dot_vec4_u32(arg_1, ~vec4<u32>(70793u, 0u, 11969u, arg_2.c))));
    var var_1 = global0[_wgslsmith_index_u32(~30016u, 10u)];
    let var_2 = vec3<u32>(arg_2.c, 0u, 37604u);
    var var_3 = _wgslsmith_div_i32(global3.x, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, arg_2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1386i, 0i), u_input.a.xxw)), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(2147483647i, 16168i))) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.c, 10661u, arg_2.c), vec3<u32>(4294967295u, 3340u, 1u)), abs(vec3<u32>(u_input.c, 59961u, 46647u) << (vec3<u32>(0u, 4294967295u, 4294967295u) % vec3<u32>(32u)))) % 32u));
    let var_4 = u_input.b;
    return all(select(arg_2.b.zz, arg_2.b.zx, !vec2<bool>(!var_1.b.x, true)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_2 {
    global2 = array<Struct_3, 17>();
    let var_0 = select(true, !(!any(vec3<bool>(false, true, true))), !func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zwy)), ~(~vec4<u32>(arg_1, 0u, arg_1, 30605u)), Struct_1(global3.x ^ -13607i, select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), ~arg_1, 139f, vec3<f32>(arg_0.x, 1647f, arg_0.x)), false));
    global4 = array<Struct_4, 5>();
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, _wgslsmith_mult_u32(4294967295u, arg_1), u_input.c, 0u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, 30434u, 40240u), vec4<u32>(u_input.d, arg_1, u_input.d, 41219u)) | ~(~vec4<u32>(arg_1, 4294967295u, 2349u, 13764u))), ~(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, 23748u, arg_1, 67533u)), vec4<u32>(4294967295u, 4294967295u, 16078u, arg_1))));
    global0 = array<Struct_1, 10>();
    return Struct_2(var_1.xxy, true, Struct_1(select(u_input.b.x, ~u_input.a.x, _wgslsmith_f_op_f32(round(-1335f)) < _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), vec3<bool>(all(!vec4<bool>(false, var_0, var_0, false)), true, false), var_1.x, _wgslsmith_f_op_f32(round(205f)), arg_0.wyy), !any(vec4<bool>(false, all(vec2<bool>(false, false)), var_0, !var_0)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    global0 = array<Struct_1, 10>();
    var var_0 = ~max(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(14303i, global3.x, _wgslsmith_dot_vec2_i32(global3.yx, vec2<i32>(global3.x, 2147483647i)), ~u_input.a.x), vec4<i32>(u_input.a.x, 1i, global3.x, _wgslsmith_sub_i32(arg_2.c.a, u_input.b.x))));
    global3 = u_input.a.yyx;
    var var_1 = arg_2.c.b.xy;
    let var_2 = global4[_wgslsmith_index_u32(u_input.d, 5u)];
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = Struct_5(vec4<u32>(~3052u, arg_0, 4294967295u, ~arg_2.b), abs(firstLeadingBit(func_4(1u | arg_0, vec4<f32>(arg_1.c.x, arg_1.b.x, arg_1.b.x, 1731f), func_2(vec4<f32>(arg_1.c.x, 722f, 201f, arg_1.c.x), u_input.c), _wgslsmith_sub_i32(u_input.a.x, global3.x)))));
    var var_1 = arg_1.c.x;
    var var_2 = select(select(vec2<bool>(true, arg_1.e), !(!select(vec2<bool>(arg_1.e, arg_1.e), vec2<bool>(arg_1.e, arg_1.e), true)), select(arg_1.e, true, u_input.c == select(arg_2.a.x, arg_0, arg_1.e))), vec2<bool>(true, true), false);
    return !(!vec2<bool>(any(select(vec2<bool>(false, var_2.x), vec2<bool>(true, arg_1.e), false)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.b.x)), ~vec4<u32>(var_0.a.x, var_0.b, u_input.d, var_0.a.x), global0[_wgslsmith_index_u32(~27165u, 10u)], arg_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec2<bool>(true, true), func_1(10665u, global4[_wgslsmith_index_u32(~u_input.d, 5u)], Struct_5(vec4<u32>(u_input.d, 0u, u_input.d, u_input.c), 4294967295u)), select(vec2<bool>(true, false), vec2<bool>(true, true), -2147483647i < global3.x)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    var_0 = global3.x != (-31727i | _wgslsmith_dot_vec2_i32(~vec2<i32>(global3.x, u_input.b.x), _wgslsmith_add_vec2_i32(u_input.a.wy, global3.xz) & global3.yx));
    var var_1 = Struct_5(~(~(~vec4<u32>(u_input.c, 92045u, 0u, 13668u))), select(func_4(~_wgslsmith_mod_u32(0u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-711f, -1000f, 567f, 1000f), vec4<f32>(-1154f, -1213f, 1000f, -929f), false))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-815f, 2129f, 537f, -1185f)), u_input.d), -global3.x), 0u, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global3.x, _wgslsmith_clamp_i32(u_input.b.x >> (4294967295u % 32u), min(13050i, u_input.b.x), _wgslsmith_clamp_i32(1i, -21772i, global3.x)) | u_input.b.x));
}

