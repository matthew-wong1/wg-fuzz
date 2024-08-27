struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec4<f32> = vec4<f32>(-2606f, 299f, -233f, 1341f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 5u)];
    global1 = array<Struct_3, 20>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global3.x * 392f), _wgslsmith_f_op_f32(global3.x - -1154f), _wgslsmith_f_op_f32(-var_0.a.b), -128f)))));
    var var_1 = vec3<i32>(min(~arg_0.x, -var_0.a.d.x) << (0u % 32u), ~(abs(-1i) | arg_0.x) << (~u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(countOneBits(4562i), ~var_0.a.c, arg_0.x << (4294967295u % 32u), 1i >> (1u % 32u)), _wgslsmith_clamp_vec4_i32(min(-vec4<i32>(arg_0.x, 2147483647i, -1i, var_0.a.e.x), vec4<i32>(var_0.a.d.x, arg_0.x, arg_0.x, -1i) | vec4<i32>(1i, u_input.d.x, 0i, -2147483647i)), ~(~vec4<i32>(-4827i, var_0.a.c, u_input.d.x, arg_0.x)), -(vec4<i32>(37392i, 1i, 0i, -20205i) & vec4<i32>(-2147483647i, arg_0.x, arg_0.x, u_input.e)))));
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-15031i, -arg_0.x | u_input.d.x, -1i, var_0.a.c), -vec4<i32>(27444i, var_1.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_0.a.c, -55725i), var_0.a.d), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, var_1.x, 1i), var_0.a.d)));
    return !all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a.a.x, false, global2.x, var_0.a.a.x), vec4<bool>(true, false, var_0.a.a.x, var_0.a.a.x)), !(!vec4<bool>(global2.x, false, var_0.a.a.x, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_3(!select(vec3<bool>(true, func_3(u_input.d), arg_1 <= 210u), select(!arg_0, vec3<bool>(true, false, arg_2.x), arg_0), true), Struct_1(vec2<bool>(arg_0.x, all(!global2.zy)), 239f, -2147483647i, _wgslsmith_clamp_vec3_i32(-select(vec3<i32>(12607i, u_input.d.x, 1i), vec3<i32>(u_input.e, 1201i, u_input.e), arg_2.xyw), select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 2021i, u_input.e), vec3<i32>(15671i, -49195i, u_input.d.x)), select(vec3<i32>(u_input.e, u_input.e, u_input.d.x), vec3<i32>(0i, u_input.e, 1i), vec3<bool>(arg_2.x, true, false)), any(arg_2.zwx)), select(abs(vec3<i32>(u_input.e, u_input.e, u_input.e)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.e), vec3<i32>(u_input.d.x, u_input.d.x, -13787i)), true)), _wgslsmith_add_vec2_i32(~(~u_input.d), u_input.d)));
    global1 = array<Struct_3, 20>();
    var var_1 = global1[_wgslsmith_index_u32(1u, 20u)];
    return var_0.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-17564i, u_input.d.x), u_input.d);
    global2 = func_4(!vec3<bool>(false, func_3(-vec2<i32>(57937i, u_input.d.x)), all(arg_0)), 15668u, select(arg_0, select(!select(arg_0, vec4<bool>(global2.x, true, false, arg_0.x), vec4<bool>(false, true, global2.x, true)), select(vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(global2.x, global2.x, false, true), arg_0, arg_0), !global2.x), false), vec4<bool>((u_input.e <= -8854i) || arg_0.x, true, global2.x, func_3(vec2<i32>(-8002i, u_input.e)))));
    var var_1 = global1[_wgslsmith_index_u32((_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_div_u32(41948u, u_input.c)), ~u_input.c) << (~30742u % 32u)) >> (_wgslsmith_clamp_u32(0u, reverseBits(_wgslsmith_div_u32(u_input.c, u_input.c)) ^ 0u, 0u) % 32u), 20u)];
    let var_2 = var_1.b.b;
    var var_3 = any(arg_0);
    return all(var_1.b.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = vec3<i32>(i32(-1i) * -u_input.d.x, -81458i << (~_wgslsmith_clamp_u32(1u, u_input.c, u_input.b.x) % 32u), arg_0.e.x) << (max(u_input.a, ~u_input.b.xzx) % vec3<u32>(32u));
    var var_1 = global2.x & ((-721f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.b + 367f) + _wgslsmith_f_op_f32(f32(-1f) * -221f))) | true);
    var_1 = !(!arg_1.a.a.x & (~u_input.c == ~4294967295u));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(0i ^ u_input.e, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, 1i) >> (0u % 32u), ~(-8085i >> (0u % 32u)), i32(-1i) * -1i)), arg_0.d.xx);
    var var_3 = 19477i << (1u % 32u);
    return vec4<bool>(!arg_1.a.a.x, arg_1.a.a.x, func_2(select(vec4<bool>(all(arg_1.a.a), true | arg_0.a.x, global2.x, false), !(!vec4<bool>(false, global2.x, true, arg_0.a.x)), !arg_0.a.x || global2.x), _wgslsmith_f_op_vec3_f32(floor(global3.zzx))), arg_1.a.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-432f, -2423f, global3.x, global3.x) - vec4<f32>(global3.x, global3.x, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) * vec4<f32>(-2152f, -127f, -417f, global3.x))) * vec4<f32>(global3.x, _wgslsmith_div_f32(-941f, -889f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global3.x)))), global3.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, -1574f, 1690f, -441f), vec4<f32>(-285f, global3.x, -604f, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, global3.x, 305f))), select(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, true, true, true), false), func_1(Struct_1(global2.xy, -1437f, -39606i, vec3<i32>(0i, u_input.e, u_input.e), vec2<i32>(0i, 2147483647i)), Struct_4(global1[_wgslsmith_index_u32(55209u, 20u)])), select(vec4<bool>(true, true, false, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, 1000f, global3.x, 355f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-530f, 807f, global3.x, -2217f), vec4<f32>(global3.x, global3.x, 912f, -203f))))), !(!vec4<bool>(true, false, global2.x, false)))));
    var var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -547f, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -407f, global3.x, var_0.x)) - vec4<f32>(global3.x, -1000f, global3.x, -753f)), global3.x <= 987f)))));
    var var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1714f)) * _wgslsmith_div_f32(global3.x, global3.x)) * -828f) != _wgslsmith_f_op_f32(-var_0.x), true, !global2.x);
    var_2 = func_1(Struct_1(!select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, var_2.x), false), vec2<bool>(global2.x, var_2.x), !var_2.yw), _wgslsmith_f_op_f32(round(global3.x)), u_input.e, _wgslsmith_mod_vec3_i32(~(~vec3<i32>(28425i, u_input.d.x, 0i)), -vec3<i32>(u_input.d.x, u_input.d.x, 0i) ^ ~vec3<i32>(-1i, 2147483647i, u_input.e)), ~(-vec2<i32>(-1i, 17241i))), Struct_4(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(u_input.a.x, 17652u)) | 20645u, 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(u_input.b.x ^ countOneBits(var_1.x), _wgslsmith_add_u32(u_input.b.x, 1u), true)), (4294967295u & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(28230u, 62883u)), u_input.a.x ^ 0u)) | reverseBits(var_1.x), u_input.d.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-368f))), _wgslsmith_f_op_f32(floor(var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(abs(1000f)), true))), -816f));
}

