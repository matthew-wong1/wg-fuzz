struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(false, true), -1412f, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(true, false), -168f, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(true, false), -1000f, vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(false, true), 1126f, vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(false, false), 223f, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(true, false), -1424f, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, true), -1068f, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), 748f, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(true, false), 1532f, vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, true), -1044f, vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(false, false), 644f, vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(false, true), -1478f, vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(false, false), 752f, vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, false), -992f, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, false), 1000f, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), 147f, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, true), 599f, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, false), -1150f, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, false), -831f, vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(false, false), -1032f, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), -148f, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, true), 344f, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, true), -673f, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, true), -111f, vec4<bool>(false, true, false, false)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = ~select(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(1i, 7350i, 6266i)), ~vec3<i32>(1i, 0i, -2147483647i)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -10462i, -2147483647i), vec3<i32>(-12035i, 86820i, 26007i)))), vec3<i32>(-2147483647i, ~max(-2147483647i, -22230i), -1i), arg_3.x);
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_1(select(!arg_3.yy, arg_2.a, false && all(arg_2.c)), _wgslsmith_f_op_f32(1f * 1955f), select(arg_2.c, !arg_2.c, !vec4<bool>(true, select(true, arg_3.x, arg_2.a.x), arg_3.x, any(arg_3.xy))));
    var var_2 = var_1;
    var var_3 = global0[_wgslsmith_index_u32(13294u, 24u)];
    return _wgslsmith_dot_vec2_i32(~var_0.xz, vec2<i32>(_wgslsmith_mult_i32(var_0.x, 24683i), var_0.x)) | var_0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~1u;
    global0 = array<Struct_1, 24>();
    var var_1 = Struct_1(select(vec2<bool>(true, arg_1.c.x), vec2<bool>(arg_1.a.x, _wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)) < arg_1.b), !(!arg_1.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - -1191f)), arg_1.b)), arg_1.c);
    let var_2 = !arg_1.c.x | var_1.c.x;
    global0 = array<Struct_1, 24>();
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = func_2(all(arg_0.c), Struct_1(arg_0.c.yz, _wgslsmith_f_op_f32(-arg_0.b), !arg_0.c));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = Struct_1(vec2<bool>(all(!vec2<bool>(true, var_1.c.x)), true), _wgslsmith_f_op_f32(f32(-1f) * -717f), vec4<bool>(all(arg_0.c), arg_0.c.x, any(var_1.a), (2147483647i < max(arg_1.x, 0i)) & ((arg_1.x & 0i) < arg_1.x)));
    global0 = array<Struct_1, 24>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(min(_wgslsmith_mod_i32(1i, 58349i), 2147483647i >> (u_input.a % 32u)), -countOneBits(-8380i), 2147483647i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(2989i, -62643i, _wgslsmith_mod_i32(0i, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(17949i, 1i, 0i)), vec3<i32>(-1i, func_1(vec4<f32>(-790f, 1230f, 1605f, 390f), vec4<u32>(u_input.a, u_input.a, u_input.a, 27319u), Struct_1(vec2<bool>(false, true), 245f, vec4<bool>(false, true, false, true)), vec3<bool>(true, false, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-41494i, -3704i)))), vec3<i32>(-1i, ~(-countOneBits(-1i)), -50976i));
    var var_1 = select(vec2<bool>(false, false), vec2<bool>(true, true), true);
    var var_2 = !(!func_3(func_2(select(false, var_1.x, var_1.x), global0[_wgslsmith_index_u32(~u_input.a, 24u)]), select(vec4<i32>(23064i, 18713i, 12212i, 18533i), vec4<i32>(0i, 2147483647i, -2147483647i, 25374i) ^ vec4<i32>(25868i, var_0, var_0, var_0), var_1.x)));
    var var_3 = var_0;
    global0 = array<Struct_1, 24>();
    let var_4 = func_2(var_1.x, func_2(any(vec4<bool>(true, var_1.x && false, true, true)), Struct_1(var_2.yy, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-970f + 110f), -795f)), vec4<bool>(select(true, true, var_1.x), select(false, var_2.x, var_1.x), false, true))));
    global0 = array<Struct_1, 24>();
    var var_5 = func_2(var_4.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(true, Struct_1(var_4.a, -1702f, vec4<bool>(false, var_2.x, true, var_4.a.x))).b)), func_2(!var_4.c.x, Struct_1(!func_3(global0[_wgslsmith_index_u32(u_input.a, 24u)], vec4<i32>(var_0, var_0, 1i, 2147483647i)).yx, var_4.b, vec4<bool>(!var_4.a.x, all(vec4<bool>(var_1.x, true, false, var_1.x)), true, func_3(var_4, vec4<i32>(var_0, 2147483647i, 5046i, 1i)).x))));
    var var_6 = Struct_1(var_2.yz, _wgslsmith_f_op_f32(-634f + _wgslsmith_f_op_f32(func_2(true, func_2(var_4.c.x, global0[_wgslsmith_index_u32(20217u, 24u)])).b * -297f)), var_5.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.b, var_4.b))))))));
}

