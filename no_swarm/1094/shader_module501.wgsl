struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1058f, -1030f, 1079f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, i32(-2147483648)), 443f, false), false, -24282i, Struct_1(vec3<i32>(0i, -13426i, -38510i), -260f, false), vec3<f32>(182f, -1904f, -1479f));

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    global1 = arg_1;
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-289f * -820f), _wgslsmith_f_op_f32(854f - global0.x)) * 1909f), 1574f, 574f) * vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -376f)))), 140f, _wgslsmith_f_op_f32(round(1371f))));
    var var_1 = arg_1.d;
    let var_2 = !(!(!select(!vec3<bool>(var_1.c, arg_1.b, global1.d.c), vec3<bool>(true, true, true), select(arg_1.b, var_1.c, false))));
    var var_3 = global1.d;
    return var_1.a.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> vec3<f32> {
    global2 = array<Struct_2, 24>();
    var var_0 = vec2<bool>(true, global1.d.c || global1.d.c);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(max(global1.a.b, -2132f)), _wgslsmith_f_op_f32(-global1.a.b)))));
    var var_1 = global1.d;
    var var_2 = func_3(~u_input.a, Struct_2(Struct_1(global1.d.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-640f + -2440f), global1.e.x)), all(vec2<bool>(var_0.x, var_1.c))), var_0.x && select(var_0.x & true, !global1.b, false), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~global1.a.a.xy, global1.a.a.yz), -17550i), global1.d, global1.e), -145f, global1.d.a.zz);
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(614f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1493f, -157f, global0.x), vec3<f32>(-937f, var_1.b, 1264f))))))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(~firstLeadingBit(global1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -539f), true);
    let var_1 = Struct_2(var_0, global1.b, ~_wgslsmith_mult_i32(global1.a.a.x, var_0.a.x), Struct_1(vec3<i32>(-1i, _wgslsmith_add_i32(~2147483647i, arg_0.a.x), -26342i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1234f), _wgslsmith_f_op_f32(-173f * global0.x))))), !(all(vec4<bool>(var_0.c, var_0.c, true, true)) & (false && global1.a.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(arg_0.a.x, 0u, u_input.b)))));
    let var_2 = ~u_input.c;
    let var_3 = select(select(vec3<bool>(global1.a.c, ~var_0.a.x < _wgslsmith_mod_i32(global1.c, arg_0.a.x), any(select(vec4<bool>(false, arg_0.c, true, true), vec4<bool>(var_1.b, true, var_0.c, false), false))), !(!(!vec3<bool>(false, var_0.c, false))), !(!(!vec3<bool>(true, false, var_1.a.c)))), vec3<bool>(arg_0.c, var_0.a.x > -2147483647i, any(select(!vec3<bool>(global1.d.c, var_1.d.c, false), !vec3<bool>(true, global1.a.c, true), vec3<bool>(var_0.c, arg_0.c, false)))), u_input.b <= ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(27195u, 0u, u_input.b), vec3<u32>(4294967295u, 21508u, 53321u))));
    global1 = Struct_2(Struct_1(-firstTrailingBit(global1.d.a), _wgslsmith_f_op_f32(floor(1201f)), any(!vec4<bool>(global1.b, false, var_3.x, false)) && true), arg_0.c, ~(max(-4806i, 2147483647i) ^ arg_0.a.x), Struct_1(~var_0.a, _wgslsmith_div_f32(-122f, var_0.b), true), var_1.e);
    return -(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, u_input.a.x, global1.a.a.x)), reverseBits(-vec3<i32>(-52493i, arg_0.a.x, 1i))) ^ 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!global1.a.c);
    global2 = array<Struct_2, 24>();
    var_0 = global1.a.c;
    var var_1 = global1.d;
    var_1 = Struct_1(vec3<i32>(-2147483647i, -1i, func_1(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_1.b, var_1.c))) & global1.d.a, 1000f, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.c, 4294967295u), vec4<u32>(1u, 11226u, 1u, u_input.c)) | (4294967295u | u_input.b)) > max(u_input.c, abs(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(4294967295u, 59224u, u_input.b, 0u)) >> (vec4<u32>(select(30292u, 23751u, global1.b), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.b)), vec2<u32>(u_input.b, 17540u) << (vec2<u32>(38744u, 0u) % vec2<u32>(32u))), ~(~u_input.c), u_input.b) % vec4<u32>(32u)));
}

