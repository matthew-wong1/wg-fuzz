struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: array<i32, 30>;

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = !vec3<bool>(2740f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1142f))), !any(vec2<bool>(arg_0.d, arg_0.d)), false);
    global3 = firstTrailingBit(~((vec3<u32>(19621u, global0.x, 1u) >> (vec3<u32>(global3.x, arg_0.a, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(1u, global0.x, u_input.b.x) % vec3<u32>(32u)))) & ~vec3<u32>(_wgslsmith_mod_u32(~arg_0.a, 27829u & global0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, 16509u), global3.xy), global0.x);
    global1 = array<i32, 30>();
    let var_1 = Struct_3(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a & 67961u, ~1u, _wgslsmith_sub_u32(78711u, arg_0.a), abs(global3.x)), vec4<u32>(16283u, global3.x, 1u, 42489u << (1u % 32u)))));
    global3 = ~select(var_1.a.xzy, max(vec3<u32>(37918u << (var_1.a.x % 32u), 1u, ~4294967295u), vec3<u32>(~49519u, max(global0.x, arg_0.a), 31666u)), !select(!var_0, var_0, !var_0.x));
    return arg_0.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    global2 = array<vec3<bool>, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1235f, _wgslsmith_f_op_f32(func_3(Struct_1(57562u, vec4<f32>(497f, 1236f, -398f, -1439f), 0i, true, 1640f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -304f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2071f, -953f, true)) - _wgslsmith_f_op_f32(1066f * -1495f))))), ~vec2<i32>(-global1[_wgslsmith_index_u32(1u, 30u)], 1i), 26483i, Struct_1(53201u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(650f, 831f, 237f, -1693f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(341f, 250f, -606f, -1029f))) * vec4<f32>(-242f, 816f, 1474f, 437f)), true)), ~global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(4294967295u, 0u, 39211u)), 30u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(arg_1.x), global3.x, max(arg_0, arg_0)), 30u)] > -16988i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f))), vec4<u32>(28251u, min(global3.x ^ _wgslsmith_mod_u32(global3.x, arg_0), abs(arg_0 >> (5310u % 32u))), ~0u, global0.x));
    var var_1 = var_0.d;
    global0 = var_0.e.zz;
    let var_2 = Struct_3(var_0.e);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.d.e, 253f, -1001f) - var_0.a)))), var_0.b, (i32(-1i) * -_wgslsmith_mod_i32(11271i, var_1.c)) >> (arg_1.x % 32u), Struct_1(49983u, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(var_0.a.x))), -global1[_wgslsmith_index_u32(~abs(1u), 30u)], !var_0.d.d, _wgslsmith_f_op_f32(floor(1011f))), var_2.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = func_2(min(4294967295u, ~(~arg_1.a) << (~(0u ^ global3.x) % 32u)), _wgslsmith_mod_vec2_u32(global3.xy, abs(vec2<u32>(~4294967295u, _wgslsmith_sub_u32(0u, global3.x)))));
    let var_1 = _wgslsmith_div_f32(arg_1.b.x, var_0.a.x);
    global0 = vec2<u32>(var_0.e.x, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.a, ~50945u), ~vec2<u32>(u_input.a.x, 1u)), ~vec2<u32>(~0u, ~4294967295u)).d.a);
    let var_2 = Struct_3(var_0.e);
    let var_3 = func_2(u_input.c, ~_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, u_input.a.x), ~_wgslsmith_mod_vec2_u32(u_input.b, u_input.a)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~min(select(vec2<u32>(u_input.b.x, u_input.c), u_input.b, vec2<bool>(true, true)) | (~global3.zz & ~vec2<u32>(2220u, global0.x)), min(reverseBits(_wgslsmith_mod_vec2_u32(global3.zy, u_input.b)), ~global3.xz & vec2<u32>(54662u, global3.x)));
    var var_0 = Struct_3(~select(vec4<u32>(4294967295u, 1u, 78361u, 0u) | vec4<u32>(u_input.a.x, global0.x, 1u, u_input.a.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(global3.x, 0u, global3.x, global3.x), ~vec4<u32>(79109u, global0.x, 49273u, u_input.c)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, true, false))));
    var var_1 = Struct_1(_wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(func_1(34167i, Struct_1(53723u, vec4<f32>(-232f, -1105f, -415f, 1818f), -18587i, false, 246f), true), var_0.a.x), ~20996u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) * func_2(0u, global3.xx).d.e), -876f, 467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2038f * 1478f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, -446f, 443f, 693f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(214f)), _wgslsmith_f_op_f32(round(-537f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f + 1262f) * -1000f))), 1i, true, 447f);
    let var_2 = Struct_3(var_0.a >> ((vec4<u32>(~4294967295u, u_input.a.x, min(58410u, 10946u), ~u_input.c) ^ vec4<u32>(~u_input.b.x, global3.x, 4294967295u >> (var_0.a.x % 32u), var_0.a.x)) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_div_f32(118f, _wgslsmith_f_op_f32(floor(var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(488f, abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.c, var_1.c, 1829i, -2147483647i), _wgslsmith_sub_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 30u)], var_1.c, -2147483647i, 21083i), vec4<i32>(var_1.c, var_1.c, -35422i, var_1.c) ^ vec4<i32>(var_1.c, 4788i, var_1.c, -27859i)))));
}

