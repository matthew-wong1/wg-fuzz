struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(884f, 465f, 740f);

var<private> global1: vec3<f32> = vec3<f32>(1981f, 236f, 721f);

var<private> global2: array<f32, 3> = array<f32, 3>(557f, -390f, -391f);

var<private> global3: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = u_input.e;
    let var_1 = vec3<i32>(u_input.b, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x | -2147483647i, ~_wgslsmith_mult_i32(2147483647i, var_0.x), _wgslsmith_dot_vec2_i32(u_input.e.yx, countOneBits(vec2<i32>(u_input.e.x, var_0.x)))), ~vec3<i32>(var_0.x, var_0.x, u_input.e.x)));
    var var_2 = global1.zz;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f + 160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global0.x)) + global1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1474f, var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-1000f))), select(!any(vec3<bool>(true, true, false)), false, false)));
    global2 = array<f32, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec2<u32>(u_input.d.x, 28250u), vec2<u32>(u_input.c, 72680u), true))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global2[_wgslsmith_index_u32(u_input.d.x, 3u)]))), _wgslsmith_f_op_f32(-arg_0.d)));
    global3 = array<vec4<bool>, 13>();
    let var_1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(~(u_input.e.x ^ u_input.e.x), ~abs(u_input.b), countOneBits(u_input.b), -u_input.b), u_input.e);
    global0 = var_0.zzx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x))))) + -241f);
    return arg_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = Struct_1(true);
    let var_1 = Struct_2(Struct_1(arg_0.b.a), func_2(Struct_2(func_2(Struct_2(arg_0.b, arg_0.b, var_0.a, -1659f)), func_2(Struct_2(arg_0.b, Struct_1(arg_0.b.a), true, -408f)), true, _wgslsmith_f_op_f32(f32(-1f) * -811f))), true, _wgslsmith_f_op_f32(select(1065f, global1.x, true)));
    var var_2 = u_input.e.zxx;
    var var_3 = arg_0;
    var var_4 = arg_0;
    return (!var_0.a | var_4.b.a) & true;
}

fn func_1() -> vec3<bool> {
    var var_0 = true;
    var var_1 = u_input.e.x;
    global3 = array<vec4<bool>, 13>();
    var var_2 = -954f;
    let var_3 = Struct_2(Struct_1(func_4(Struct_3(471f, func_2(Struct_2(Struct_1(true), Struct_1(false), false, global2[_wgslsmith_index_u32(31248u, 3u)])), _wgslsmith_div_f32(1450f, 1979f), max(u_input.e.x, -2147483647i)), -u_input.e.x)), Struct_1(!(-2147483647i == _wgslsmith_div_i32(-87752i, u_input.b))), u_input.d.x > max(~(u_input.c << (63778u % 32u)), 1u), -1076f);
    return vec3<bool>(any(!select(vec4<bool>(false, var_3.b.a, var_3.b.a, true), vec4<bool>(true, false, var_3.b.a, var_3.c), global3[_wgslsmith_index_u32(u_input.c, 13u)])) | all(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(4294967295u, 3u)] < var_3.d, func_2(var_3).a);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<f32, 3>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(global1.x - 1f), Struct_1(false), 1000f, ~(~_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -5128i), u_input.e.xwy), u_input.e.x >> (u_input.c % 32u))));
    var var_1 = var_0.d;
    var var_2 = vec4<bool>(all(vec2<bool>(select(arg_1.a, true, var_0.b.a), true)), all(!(!(!vec2<bool>(true, arg_1.a)))), true & !((u_input.b << (arg_0 % 32u)) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.d), u_input.e.yy)), !arg_2.a);
    let var_3 = true;
    return min(select(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.e.zw, vec2<i32>(-49436i, u_input.b)), select(u_input.e.xz, u_input.e.zw, !(!var_2.yx)), var_3), vec2<i32>(~max(817i, 2147483647i), max(var_0.d, u_input.b) & select(u_input.b, u_input.e.x, var_2.x)) << (min(~vec2<u32>(112735u, 96996u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, 9557u, _wgslsmith_add_u32(u_input.c, u_input.a) | ~1u), ~_wgslsmith_clamp_u32(u_input.d.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d), ~1u)), Struct_1(u_input.a <= 1u), Struct_1(any(func_1())));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1291f) + global1.x), -753f), _wgslsmith_f_op_f32(func_3(vec2<u32>(12062u, ~u_input.a))), 2454f, _wgslsmith_f_op_f32(ceil(1288f)));
    var var_2 = _wgslsmith_add_i32(~(~(-2147483647i)), _wgslsmith_add_i32(~_wgslsmith_mod_i32(1i, 2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(36767i, 2147483647i, var_0.x, u_input.b) & u_input.e, ~vec4<i32>(u_input.e.x, var_0.x, -2147483647i, u_input.e.x)), countOneBits(reverseBits(-13462i)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), global0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global1.x) * -893f));
    let var_4 = ~vec2<i32>(~u_input.e.x, -2147483647i);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.yxx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, global1.x, global2[_wgslsmith_index_u32(1u, 3u)])))));
    var_0 = reverseBits(u_input.e.xy) | -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), select(u_input.e.zw, var_4, all(vec4<bool>(false, true, var_3.a, true))));
    var var_5 = Struct_3(global1.x, func_2(Struct_2(Struct_1(true), var_3, false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -562f))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_1.x))), -156f, false)), 4500i);
    let x = u_input.a;
    s_output = StorageBuffer(1323f, _wgslsmith_f_op_f32(abs(var_5.a)));
}

