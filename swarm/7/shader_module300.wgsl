struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(var_1 - -1124f), all(vec3<bool>(arg_1.a, false, arg_0.a)))) * var_1)));
    let var_3 = u_input.a.x;
    var_2 = -923f;
    return Struct_2(arg_0.b, arg_1);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = func_1(func_1(func_1(Struct_1(true, 1f), func_1(Struct_1(arg_0, -1000f), Struct_1(false, 524f)).b).b, Struct_1(any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, arg_0), false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1275f))))).b, func_1(func_1(Struct_1(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(-833f + -938f)), func_1(func_1(Struct_1(arg_0, 1000f), Struct_1(arg_0, 414f)).b, Struct_1(arg_0, -1000f)).b).b, func_1(Struct_1(true, 1000f), func_1(Struct_1(arg_0, -1634f), Struct_1(false, 352f)).b).b).b).b;
    var var_1 = -2147483647i;
    var_1 = ~_wgslsmith_add_i32(countOneBits(-(~1911i)), -1i);
    var_1 = 1i;
    var_1 = -5700i;
    return true || var_0.a;
}

fn func_2(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = func_1(func_1(Struct_1(arg_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.b)) - arg_0.a)), Struct_1(all(vec2<bool>(arg_0.b.a, true)), 603f)).b, Struct_1(false, arg_0.b.b));
    var var_1 = func_1(func_1(Struct_1(func_3(763f > var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(any(select(vec4<bool>(arg_0.b.a, true, var_0.b.a, arg_0.b.a), vec4<bool>(false, arg_0.b.a, var_0.b.a, false), vec4<bool>(var_0.b.a, arg_0.b.a, false, var_0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - 590f) - _wgslsmith_f_op_f32(max(arg_0.b.b, 291f))))).b, arg_0.b);
    var var_2 = var_1.b;
    let var_3 = func_1(func_1(var_0.b, var_0.b).b, func_1(arg_0.b, Struct_1(true, _wgslsmith_f_op_f32(719f - arg_0.a))).b).b;
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-151f, var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-529f * arg_0.b.b)), -537f))));
    return abs(vec2<i32>(~(~0i), -1i)) | vec2<i32>(1i, select(-6941i, 2147483647i, var_0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(max(countOneBits(0i), ~_wgslsmith_sub_i32(-14151i, 953i) >> (min(46033u, max(u_input.a.x, u_input.a.x)) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(func_2(func_1(Struct_1(false, -727f), Struct_1(false, 3020f))), vec2<i32>(42833i, 1i)), firstTrailingBit(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 76406i), vec2<i32>(47112i, 26760i), vec2<i32>(-1i, 776i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(40297i, 4786i), vec2<i32>(24530i, 2147483647i), vec2<i32>(0i, -28527i))))));
    var var_1 = func_1(func_1(func_1(Struct_1(true, 553f), Struct_1(select(false, true, true), _wgslsmith_f_op_f32(min(-484f, 415f)))).b, Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(267f))))).b, func_1(Struct_1(true, _wgslsmith_f_op_f32(min(-437f, -2110f))), Struct_1(true, _wgslsmith_f_op_f32(floor(1813f)))).b).b;
    let var_2 = vec4<bool>(all(select(select(select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.a, false, var_1.a), var_1.a), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, true), var_1.a), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false), var_1.a)), vec3<bool>(var_1.a, var_1.a, var_1.a | var_1.a), vec3<bool>(!var_1.a, all(vec4<bool>(var_1.a, false, true, false)), var_1.a))), false, true, var_1.a);
    var_1 = Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * var_1.b))));
    let var_3 = u_input.a.x;
    let var_4 = 4033i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_4, var_4), vec3<i32>(0i, 11585i, -40701i)), max(38769i, 2147483647i), ~var_4)), var_4 & _wgslsmith_mod_i32(countOneBits(-2147483647i) >> (~var_3 % 32u), var_4), reverseBits(vec3<u32>(u_input.a.x, ~_wgslsmith_add_u32(var_3, var_3), ~(~1u))), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(round(var_1.b)), func_1(func_1(Struct_1(var_1.a, -1850f), Struct_1(var_2.x, 318f)).b, Struct_1(false, var_1.b)).b.b)));
}

