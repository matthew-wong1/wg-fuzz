struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: vec4<i32> = vec4<i32>(72255i, 1i, 2147483647i, 1i);

var<private> global2: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = firstTrailingBit(arg_0.d);
    let var_1 = arg_0.e.wxz;
    var var_2 = Struct_1(-50056i, arg_0.e.x, !global2.x, ~arg_0.d, select(!vec4<bool>(arg_0.e.x, var_1.x, all(arg_0.e), false), !(!arg_0.e), all(!var_1)));
    var_0 = ~4294967295u;
    let var_3 = any(select(var_1.zy, select(var_2.e.xx, !select(vec2<bool>(arg_0.c, false), vec2<bool>(var_1.x, false), var_2.e.zx), var_1.x), !select(!var_2.e.wy, select(vec2<bool>(arg_0.e.x, false), vec2<bool>(true, true), false), var_2.e.x)));
    return select(var_1.x || !(!(arg_0.a < arg_0.a)), false, global2.x);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(~max(abs(arg_0.b), -1585i & arg_0.b) << ((32774u >> (arg_0.c % 32u)) % 32u), func_3(Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 4332i, 2147483647i, arg_0.b), vec4<i32>(arg_0.b, global1.x, global1.x, 2147483647i)), global2.x, arg_0.a.x, 1u, arg_0.a)), arg_0.a.x, ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(arg_0.c, u_input.b)), ~1u, 1u), !(!select(select(vec4<bool>(false, false, false, false), arg_0.a, arg_0.a), arg_0.a, global2.x)));
    var var_1 = -vec2<i32>(39468i, global1.x);
    var_0 = Struct_1(var_1.x, !(any(vec3<bool>(true, global2.x, true)) | true), any(select(vec2<bool>(global2.x, true), vec2<bool>(arg_0.a.x, true), var_0.e.yz)) | all(select(vec3<bool>(true, var_0.b, var_0.c), arg_0.a.xzy, !var_0.e.x)), ~select(_wgslsmith_add_u32(~104711u, 1u), ~var_0.d, false), select(vec4<bool>(true, false, false, true), select(!vec4<bool>(global2.x, true, true, var_0.b), vec4<bool>(global2.x, true, any(vec3<bool>(false, global2.x, var_0.c)), true), var_0.e), !var_0.e));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) - 652f);
    let var_3 = var_2;
    return Struct_2(Struct_1(-_wgslsmith_sub_i32(arg_0.b ^ 31968i, _wgslsmith_mult_i32(-2147483647i, var_0.a)), var_0.b, all(vec4<bool>(!global2.x, true, !global2.x, !var_0.e.x)), ~1u, arg_0.a), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(arg_0.b, -2147483647i)), global1.yx), abs(global1.yx)), global1.x), ~30627u >= arg_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = func_2(Struct_3(arg_2, 44734i, ~(~arg_0.d), ~46016u));
    global2 = arg_0.e.xx;
    var var_1 = Struct_3(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(u_input.a ^ 0u), ~u_input.b), 24u)]).a.e, select(~global1.x, -49i, true), 4294967295u, _wgslsmith_clamp_u32(5662u, ~func_2(Struct_3(var_0.a.e, var_0.b.x, u_input.c.x, var_0.a.d)).a.d, 34916u));
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    global0 = array<Struct_3, 24>();
    return !var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(2147483647i, !global2.x, global2.x, u_input.c.x, vec4<bool>(select(false != global2.x, true | global2.x, false), true, true, all(vec4<bool>(false, true, global2.x, global2.x)) != !global2.x)), global1.ww, all(vec2<bool>(true, any(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, false), vec2<bool>(true, global2.x))))));
    let var_1 = u_input.c.zz;
    var var_2 = select(vec4<bool>(any(func_1(Struct_1(-8985i, true, global2.x, var_0.a.d, var_0.a.e), vec3<f32>(-693f, -387f, 853f), vec4<bool>(global2.x, true, var_0.a.b, global2.x))), !var_0.a.c, all(!select(var_0.a.e.ywx, vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.c, true, var_0.a.c))), global2.x), !select(var_0.a.e, !func_2(global0[_wgslsmith_index_u32(u_input.b, 24u)]).a.e, vec4<bool>(true, any(var_0.a.e.xyx), var_0.a.b, true)), var_0.a.e);
    var_0 = Struct_2(Struct_1(-5320i >> (firstTrailingBit(firstTrailingBit(1u)) % 32u), !var_2.x, !(!all(var_0.a.e)), var_1.x, vec4<bool>(global2.x, all(!var_0.a.e), true, true || global2.x)), abs(var_0.b), false);
    let var_3 = ~(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.a, var_1.x), var_1.x, _wgslsmith_sub_u32(1u, var_1.x), var_0.a.d)) ^ vec4<u32>(select(22300u, abs(u_input.b), !var_0.a.c), reverseBits(var_1.x), 1u, 28552u));
    var var_4 = vec4<i32>(-(~(~(-1i))), 1i, -(~min(global1.x, 17450i)), _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(~(-9269i), global1.x))) ^ (~max(-vec4<i32>(-1i, global1.x, var_0.b.x, 0i), vec4<i32>(global1.x, 13846i, var_0.b.x, global1.x)) | _wgslsmith_mod_vec4_i32(-vec4<i32>(-8851i, 32767i, 17709i, 22967i), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0.a.a, var_0.b.x, var_0.b.x), vec4<i32>(global1.x, -2147483647i, 31880i, 4533i), vec4<i32>(var_0.a.a, 0i, 0i, var_0.a.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2241i, global1.x, -16036i, 0i), vec4<i32>(16967i, 0i, var_0.a.a, -91200i), vec4<i32>(global1.x, var_0.b.x, -5424i, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(642f, 1068f, -539f), vec3<f32>(1032f, 1016f, 1448f), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1817f, 1000f, 1078f) - vec3<f32>(-145f, 440f, -1914f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1646f, -438f, 652f))))));
}

