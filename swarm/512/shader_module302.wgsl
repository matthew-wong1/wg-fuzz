struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = u_input.d;
    var var_1 = vec4<bool>(select(!(!global0.a.x) & arg_3.a.x, !(!global0.a.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, u_input.e, 26720i, -8536i), vec4<i32>(arg_2, 2147483647i, -331i, u_input.e)) == 0i), true, select(arg_3.a.x, all(select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, global0.a.x, false, false), vec4<bool>(global0.a.x, false, true, false))) || true, var_0.x <= var_0.x), all(arg_3.a));
    global0 = arg_3;
    var_1 = !vec4<bool>(any(var_1.zy), arg_3.a.x, true & ((arg_3.a.x == false) | global0.a.x), false);
    let var_2 = -max(u_input.b, -2147483647i);
    return _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_0, abs(var_0), vec2<u32>(arg_0.x, u_input.d.x)), u_input.d) & vec2<u32>(~(var_0.x >> (34823u % 32u)), u_input.d.x);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    let var_0 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, u_input.d.x), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, u_input.a)), u_input.d), _wgslsmith_sub_vec2_u32(func_3(vec3<u32>(u_input.d.x, u_input.d.x, 8702u), vec2<f32>(1000f, 1000f), arg_0, Struct_2(global0.a)), ~u_input.d)));
    var var_1 = vec2<u32>(18533u ^ var_0.x, var_0.x);
    return _wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(firstLeadingBit(u_input.b), 1i)), -u_input.c);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = true;
    global0 = Struct_2(vec2<bool>(any(select(vec4<bool>(var_0, global0.a.x, false, true), vec4<bool>(global0.a.x, var_0, false, false), vec4<bool>(global0.a.x, true, false, true))), true));
    var var_1 = func_2(arg_2.x, ~(-(~(~vec3<i32>(1i, u_input.e, 97734i)))));
    var var_2 = ~u_input.d.x;
    global0 = Struct_2(select(select(!global0.a, select(select(global0.a, vec2<bool>(true, global0.a.x), false), !vec2<bool>(true, var_0), !var_0), global0.a), vec2<bool>(global0.a.x, true), !(!var_0)));
    return Struct_2(vec2<bool>(true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(select(!vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(global0.a.x, true, true), true)), true && any(!vec3<bool>(global0.a.x, false, global0.a.x)));
    let var_1 = u_input.a;
    global0 = func_1(_wgslsmith_f_op_f32(1937f * 124f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(635f, 199f, 890f, -1062f) * vec4<f32>(194f, -1000f, 775f, 429f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1811f, -1384f, 2683f, 347f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -389f, 625f, 684f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1371f, -598f, 542f, -1035f) - vec4<f32>(1f, 1f, 1f, 1f))))), firstTrailingBit(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.b, 15478i), vec4<i32>(u_input.e, -34250i, -1i, -26861i)))));
    global0 = Struct_2(func_1(-1554f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, 800f, -1003f, -427f))) - vec4<f32>(-1097f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1553f), _wgslsmith_f_op_f32(abs(-812f)))), select(-vec4<i32>(0i, u_input.e, -18046i, u_input.e), firstTrailingBit(vec4<i32>(27293i, 0i, u_input.b, u_input.e)) >> (~vec4<u32>(var_1, 37283u, var_1, 67797u) % vec4<u32>(32u)), any(select(vec4<bool>(true, global0.a.x, global0.a.x, false), vec4<bool>(false, global0.a.x, false, var_0.x), false)))).a);
    let var_2 = Struct_2(vec2<bool>(global0.a.x, var_0.x));
    var var_3 = 18570u;
    let var_4 = Struct_1(~abs(~(-vec4<i32>(u_input.c.x, -6536i, u_input.c.x, -4952i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1709f, 761f, -394f, -571f) - vec4<f32>(-693f, -432f, 1383f, 1397f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b.x, var_4.b.x) * var_4.b.x), 1066f, global0.a.x)))));
}

