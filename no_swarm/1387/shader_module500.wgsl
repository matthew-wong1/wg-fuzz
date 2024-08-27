struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(-1i), vec3<bool>(true, true, true), 0u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(-1151f)), !global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-704f, -595f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3138f, 1127f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1345f, -986f)))))))));
    let var_1 = Struct_1(vec3<u32>(global0.c, global0.c, 11694u), global0.c);
    global0 = Struct_3(Struct_2(14634i), !(!global0.b), 121576u);
    global0 = Struct_3(Struct_2(_wgslsmith_mult_i32(-global0.a.a, global0.a.a)), vec3<bool>(select(global0.b.x, true, _wgslsmith_f_op_f32(floor(1770f)) > _wgslsmith_f_op_f32(1280f * -518f)), false || all(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), arg_0)), false), global0.c);
    let var_2 = var_1;
    return var_1.a;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = global0.b.x;
    var var_1 = global0.b.zz;
    let var_2 = _wgslsmith_dot_vec4_i32((-_wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(global0.a.a, -32695i, -16123i, arg_1.x)) & -(~arg_1)) | -vec4<i32>(global0.a.a, global0.a.a, -22787i, -1i), max(arg_1, -vec4<i32>(u_input.a.x & arg_0, ~1i, 2147483647i, ~arg_1.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(952f))) + -1000f);
    let var_4 = ~(~func_3(true));
    return var_4.x;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(_wgslsmith_clamp_i32(~1i, u_input.a.x, -2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-13563i, global0.a.a, -1i, u_input.a.x)), vec4<i32>(global0.a.a, 0i, 25565i, global0.a.a) & select(vec4<i32>(u_input.a.x, u_input.a.x, global0.a.a, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, global0.a.a), false)), select(~firstLeadingBit(vec4<i32>(-2147483647i, -60770i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, ~0i, i32(-1i) * -12851i, 0i), vec4<bool>(true, true, true, true))));
    global0 = Struct_3(global0.a, vec3<bool>(global0.b.x, !any(global0.b) || false, global0.b.x), ~64537u);
    let var_1 = global0.b.zy;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1074f, -1249f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(step(-1068f, -3020f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-734f, 994f, -566f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, 1000f, 198f))), vec3<f32>(_wgslsmith_f_op_f32(-1842f - -121f), _wgslsmith_f_op_f32(f32(-1f) * -919f), 1000f)))), vec3<bool>(select(all(select(vec4<bool>(false, var_1.x, global0.b.x, true), vec4<bool>(false, false, true, true), var_1.x)), firstLeadingBit(4294967295u) < reverseBits(global0.c), true), all(select(select(vec2<bool>(true, var_1.x), global0.b.zz, vec2<bool>(var_1.x, var_1.x)), !global0.b.yy, all(vec3<bool>(var_1.x, true, global0.b.x)))), any(vec3<bool>(false, !global0.b.x, global0.b.x)))));
    return Struct_3(global0.a, !select(!vec3<bool>(true, true, var_1.x), global0.b, true), ~func_2(_wgslsmith_mult_i32(global0.a.a ^ global0.a.a, global0.a.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 29443i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1i), vec4<i32>(-12573i, 18645i, -2147483647i, 11556i)) | vec4<i32>(2147483647i, global0.a.a, -2147483647i, 67529i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~80093u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1246f, 1656f, -1155f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -244f), _wgslsmith_f_op_f32(trunc(800f)))))))));
}

