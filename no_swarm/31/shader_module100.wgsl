struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<vec3<i32>, 29>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    global0 = !vec3<bool>(!any(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, true, global0.x, global0.x), global0.x)), false, true);
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, ~(-_wgslsmith_add_i32(u_input.a, -1i))), 0i);
    let var_1 = !global0.x;
    global0 = select(vec3<bool>(true, false, !all(vec4<bool>(false, false, var_1, true)) || false), select(vec3<bool>(true, true, true), vec3<bool>(var_1, true, !(!var_1)), true), var_1 && var_1);
    let var_2 = var_0.x;
    return vec4<i32>(~22709i, -3098i, var_0.x, u_input.a & var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: f32) -> vec3<bool> {
    let var_0 = -770f;
    global0 = !select(select(!vec3<bool>(false, true, global0.x), select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, true)), !vec3<bool>(false, global0.x, true), true), select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), global0.x))), select(!(!vec3<bool>(global0.x, global0.x, false)), select(vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(global0.x, true, false), vec3<bool>(false, false, global0.x), false), true), -929f == var_0), true);
    let var_1 = arg_0;
    global0 = vec3<bool>(any(global0.zy), -153f > _wgslsmith_f_op_f32(floor(arg_0.a.x)), !global0.x);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))) * -480f), -993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1620f, _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(arg_3 - var_0), var_0), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -681f), 964f, _wgslsmith_f_op_f32(-arg_0.b.x))))));
    return vec3<bool>(select(false, global0.x, all(select(select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, false), true), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true), global0.x), true))), false, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global1 = array<vec3<i32>, 29>();
    global0 = func_4(arg_2, countOneBits(u_input.b.yw), func_3(~u_input.b.wz), -817f);
    global0 = arg_3;
    global1 = array<vec3<i32>, 29>();
    let var_0 = select(false, true, arg_3.x);
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = vec3<bool>(any(!(!vec2<bool>(false, arg_2.x))), true, 26900u <= ~u_input.b.x);
    let var_0 = select(~(~abs(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x))), reverseBits(~0u), true);
    global1 = array<vec3<i32>, 29>();
    var var_1 = min(arg_0, firstTrailingBit(u_input.a));
    var var_2 = !vec4<bool>(!arg_2.x, global0.x, any(!vec4<bool>(false, arg_2.x, arg_2.x, false)) == arg_2.x, !global0.x);
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(199f, -1055f, 1286f), vec3<f32>(114f, -168f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, -3314f, 2264f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(539f * 711f), _wgslsmith_f_op_f32(270f + -1675f))))));
    var var_1 = func_5(~u_input.a, var_0, select(select(vec3<bool>(global0.x, false, true), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, false)), true), select(!(!vec3<bool>(global0.x, false, global0.x)), select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, true))), !vec3<bool>(global0.x, global0.x, global0.x)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, var_0.b.x, var_0.a.x, 1504f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 193f, 499f, var_0.a.x)))), var_0, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-559f - -395f), -1448f, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1511f, var_0.b.x, var_0.b.x))), vec3<bool>(true, global0.x, -1012f >= _wgslsmith_f_op_f32(step(490f, 1087f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - 1402f)), !any(vec4<bool>(true, global0.x, true, true)))))) + func_5(abs(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-62207i, 3955i), vec2<i32>(u_input.a, -2147483647i)))), var_0, func_4(func_5(1i, func_2(vec4<f32>(-275f, var_1.b.x, var_1.a.x, 875f), Struct_1(vec3<f32>(var_0.a.x, 113f, 1124f), var_0.b), Struct_1(var_1.b, var_0.b), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(false, true, global0.x), Struct_1(var_0.a, var_0.b)), ~(u_input.b.yz & u_input.b.zy), abs(max(vec4<i32>(28944i, u_input.a, 5128i, u_input.a), vec4<i32>(56308i, u_input.a, u_input.a, -45658i))), var_0.a.x), func_2(vec4<f32>(var_1.b.x, var_1.a.x, -514f, 1000f), Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b * var_0.a)), var_0, func_4(func_5(u_input.a, var_0, vec3<bool>(true, false, global0.x), Struct_1(var_0.b, var_1.b)), firstLeadingBit(vec2<u32>(19830u, 92712u)), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), _wgslsmith_f_op_f32(sign(219f))))).a.x);
    var_1 = var_0;
    let var_3 = _wgslsmith_div_u32(1u, ~u_input.b.x) < 0u;
    return var_0;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = array<vec3<i32>, 29>();
    global1 = array<vec3<i32>, 29>();
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-3047f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(vec4<u32>(u_input.b.x, ~4294967295u, _wgslsmith_clamp_u32(66352u, u_input.b.x, 0u), _wgslsmith_add_u32(28305u, 1u)), vec4<bool>(true, any(vec2<bool>(true, true)), true, 1u < u_input.b.x), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-162f, 463f, 763f), vec3<f32>(-128f, 1519f, -196f), global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1358f, -1070f, 1000f))))), 1f));
    var var_1 = false;
    global0 = select(!func_4(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -1896f, -601f, -779f), vec4<f32>(236f, -308f, var_0, var_0), vec4<bool>(false, global0.x, global0.x, global0.x))), func_5(2147483647i, Struct_1(vec3<f32>(-1056f, var_0, var_0), vec3<f32>(-286f, var_0, 889f)), vec3<bool>(true, global0.x, false), Struct_1(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, 786f))), func_2(vec4<f32>(-167f, var_0, var_0, var_0), Struct_1(vec3<f32>(var_0, -902f, var_0), vec3<f32>(var_0, 1001f, var_0)), Struct_1(vec3<f32>(var_0, 644f, -456f), vec3<f32>(var_0, -399f, -858f)), vec3<bool>(false, global0.x, true)), select(vec3<bool>(global0.x, true, true), vec3<bool>(false, false, global0.x), global0.x)), firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b.zx, u_input.b.zx)), (vec4<i32>(u_input.a, u_input.a, u_input.a, 14561i) >> (vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))) ^ -vec4<i32>(u_input.a, u_input.a, 48248i, u_input.a), -934f), !(!vec3<bool>(!global0.x, true, any(vec4<bool>(false, true, global0.x, false)))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(192f, var_0, var_0), vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(486f, 1071f, 1926f) - vec3<f32>(var_0, var_0, 1426f))))), _wgslsmith_add_vec2_u32(u_input.b.yx, max(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x) | u_input.b.xz)), select(~vec4<i32>(0i, 0i, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -10887i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)), true) ^ vec4<i32>(~u_input.a, -41255i, u_input.a ^ 5424i, _wgslsmith_dot_vec3_i32(vec3<i32>(-8298i, -2147483647i, -2147483647i), global1[_wgslsmith_index_u32(89719u, 29u)])), var_0).x);
    var_1 = false;
    var_1 = global0.x;
    let var_2 = true;
    let var_3 = true;
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.ww);
}

