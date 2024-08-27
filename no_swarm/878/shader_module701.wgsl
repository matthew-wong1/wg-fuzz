struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(true, true, true), 107262u, -72585i, vec2<i32>(-33264i, 13247i), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false), 41247u, 0i, vec2<i32>(1i, 1i), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true), 0u, -4636i, vec2<i32>(-52010i, -46582i), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true), 88009u, 2147483647i, vec2<i32>(-2704i, -46027i), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true), 0u, i32(-2147483648), vec2<i32>(0i, 2147483647i), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true), 12099u, 0i, vec2<i32>(-1i, -228i), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true), 1u, i32(-2147483648), vec2<i32>(55481i, -29124i), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), 0u, -4859i, vec2<i32>(-18178i, 1i), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false), 90114u, 29899i, vec2<i32>(-13985i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), 13746u, 3457i, vec2<i32>(-1i, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false), 31685u, 2147483647i, vec2<i32>(31750i, 2977i), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 1u, 0i, vec2<i32>(-10942i, -44145i), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true), 50282u, 47894i, vec2<i32>(21814i, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false), 4294967295u, 2147483647i, vec2<i32>(-21905i, 0i), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true), 6426u, 47189i, vec2<i32>(-1i, 1i), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false), 17050u, 42921i, vec2<i32>(1i, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true), 0u, 2147483647i, vec2<i32>(0i, -14118i), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false), 19344u, -38296i, vec2<i32>(i32(-2147483648), 32694i), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true), 78351u, i32(-2147483648), vec2<i32>(-25098i, 33616i), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false), 4294967295u, -2826i, vec2<i32>(4315i, -62096i), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 110u, 1i, vec2<i32>(1i, 1i), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false), 36349u, 1i, vec2<i32>(1448i, 1i), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false), 40929u, 2147483647i, vec2<i32>(-32330i, -13965i), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 0u, 1i, vec2<i32>(0i, 32287i), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), 9133u, -1i, vec2<i32>(0i, 13163i), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true), 0u, 2147483647i, vec2<i32>(-12958i, i32(-2147483648)), vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * arg_0)));
    var var_1 = Struct_1(select(!arg_1.a, vec3<bool>(arg_1.e.x, true, any(arg_3.e.yy) & true), any(select(select(vec4<bool>(true, arg_3.e.x, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, arg_1.e.x, false, true)), vec4<bool>(true, arg_3.a.x, false, true), true))), abs(~arg_1.b), arg_3.c, max(arg_3.d, _wgslsmith_add_vec2_i32(arg_1.d & vec2<i32>(2147483647i, 10096i), _wgslsmith_sub_vec2_i32(arg_3.d, u_input.b) >> (~vec2<u32>(1u, arg_1.b) % vec2<u32>(32u)))), !vec3<bool>(all(select(arg_1.a, arg_1.a, arg_3.e)), !(u_input.b.x <= u_input.c.x), arg_3.e.x));
    var var_2 = arg_3;
    let var_3 = Struct_1(!arg_1.e, 0u, _wgslsmith_add_i32(-arg_2, 2147483647i), var_1.d, vec3<bool>(all(vec3<bool>(!arg_1.a.x, true, arg_1.a.x)), var_2.a.x, any(vec2<bool>(!var_2.e.x, true))));
    return vec4<bool>(true, var_1.a.x, !(!(!var_1.a.x)), var_2.e.x & var_3.e.x);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2));
    global0 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(min(arg_2.x, 965f)), _wgslsmith_f_op_f32(ceil(156f))), arg_2))));
    let var_2 = var_1.x;
    let var_3 = select(vec3<bool>(all(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), false)), all(vec3<bool>(true != arg_1, true, true)), false), vec3<bool>(false, (var_2 != _wgslsmith_f_op_f32(trunc(-1000f))) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) < 392f), any(select(select(vec4<bool>(false, arg_1, true, arg_1), func_3(-1454f, Struct_1(vec3<bool>(true, arg_1, arg_1), 0u, 13030i, u_input.c.ww, vec3<bool>(false, true, arg_1)), u_input.b.x, Struct_1(vec3<bool>(true, false, false), 4294967295u, u_input.b.x, vec2<i32>(u_input.c.x, 2147483647i), vec3<bool>(true, false, false))), vec4<bool>(false, arg_1, true, false)), vec4<bool>(false, true, true, arg_1), false)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 0u) << (_wgslsmith_clamp_vec2_u32(u_input.a.xz, u_input.d.zz, u_input.a.yy) % vec2<u32>(32u)), vec2<u32>(1u, u_input.d.x) << (vec2<u32>(53538u, 33248u) % vec2<u32>(32u))), 8010u), 26u)];
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = func_2(~countOneBits(~u_input.d.x), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-608f, 615f)), -324f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1249f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1900f), -493f, _wgslsmith_f_op_f32(-1000f - 164f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, -293f, 276f))))));
    var var_1 = 1u;
    let var_2 = u_input.a.zx;
    global0 = array<Struct_1, 26>();
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(441f, 125f), vec2<f32>(-323f, 1681f), var_0.e.x)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(405f, 457f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_0 = Struct_1(arg_2.yxy, max(select(~0u, 1u, !arg_3.a.x || true), ~u_input.d.x), u_input.b.x, _wgslsmith_clamp_vec2_i32(~(vec2<i32>(-1i) * -arg_3.d), vec2<i32>(u_input.c.x, arg_3.d.x ^ (i32(-1i) * -34906i)), arg_3.d), func_3(_wgslsmith_f_op_f32(min(arg_0.x, 2510f)), Struct_1(func_2(_wgslsmith_clamp_u32(1u, arg_3.b, u_input.d.x), false, _wgslsmith_f_op_vec3_f32(floor(arg_0))).e, arg_3.b, -_wgslsmith_mult_i32(arg_3.c, 2147483647i), -arg_3.d, arg_2.xwy), ((u_input.b.x | arg_3.c) | (i32(-1i) * -1i)) | (reverseBits(arg_3.c) >> (~4294967295u % 32u)), global0[_wgslsmith_index_u32(47194u, 26u)]).yxx);
    global0 = array<Struct_1, 26>();
    return arg_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> StorageBuffer {
    global0 = array<Struct_1, 26>();
    let var_0 = func_2(1u, arg_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1029f, 551f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, 647f, 1235f))))))));
    var var_1 = u_input.c.ww;
    global0 = array<Struct_1, 26>();
    var_1 = vec2<i32>(_wgslsmith_add_i32(-1i, i32(-1i) * -19178i), -_wgslsmith_clamp_i32(-arg_0.c, var_1.x, reverseBits(-17171i))) | func_2(~42840u, any(vec3<bool>(true, arg_2.a.x, arg_2.e.x)) & all(!var_0.e.zy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(214f))), _wgslsmith_f_op_f32(f32(-1f) * -1390f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(2275f))))).d;
    return StorageBuffer(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = func_5(global0[_wgslsmith_index_u32(min(~11751u | _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.d.x, u_input.a.x)), func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2649f, 761f, 1000f), vec3<f32>(-2003f, -375f, -893f), false)))), _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(u_input.d.x, 26u)])), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(true, true, true), 4294967295u, reverseBits(0i), u_input.c.xw, vec3<bool>(true, true, true)))), 26u)], func_3(_wgslsmith_f_op_f32(1f + 1129f), global0[_wgslsmith_index_u32(4294967295u, 26u)], -u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~u_input.d.x ^ countOneBits(u_input.a.x)), 26u)]), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), _wgslsmith_add_u32(4294967295u, firstTrailingBit(max(18368u, 30695u))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, 1i) >> (u_input.a.x % 32u), u_input.b.x), max(vec2<i32>(~2147483647i, -2147483647i), u_input.c.yw), vec3<bool>(true, false, any(vec3<bool>(true, true, true)))));
}

