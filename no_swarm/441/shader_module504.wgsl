struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = u_input.e <= 0u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-640f * _wgslsmith_f_op_f32(step(-280f, -329f))), !(!vec3<bool>(true, false, all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f * 140f)), -1584f, 416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(195f, -634f, false)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(504f, _wgslsmith_f_op_f32(2268f + 460f), _wgslsmith_f_op_f32(319f * 1329f), _wgslsmith_f_op_f32(524f - 111f)) * _wgslsmith_div_vec4_f32(vec4<f32>(688f, 381f, 1186f, 1050f), vec4<f32>(723f, -108f, -913f, -198f)))), 37465i, !(!select(true, false, true)));
    let var_2 = var_1.c.zyx;
    var var_3 = u_input.e;
    var_3 = _wgslsmith_mult_u32(u_input.c.x, reverseBits(select(u_input.c.x, u_input.e, -972f == _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x))));
    return true;
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -760f))), select(vec3<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), 1862f < _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), vec3<bool>(true, u_input.a.x >= u_input.b.x, select(func_3(vec4<i32>(-7495i, 71960i, u_input.b.x, 1i)), u_input.e <= 33657u, 38396i <= u_input.a.x)), true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1077f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))) * 669f), arg_0.x), ~(min(2147483647i, 1i | u_input.a.x) & u_input.b.x), false);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1702f, -174f))))), select(select(!select(vec3<bool>(var_0.e, true, var_0.b.x), var_0.b, var_0.b), !(!vec3<bool>(var_0.b.x, var_0.e, var_0.e)), false), !select(var_0.b, vec3<bool>(true, true, true), !var_0.b), !select(var_0.b, !var_0.b, true | var_0.b.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(639f, -168f, var_0.a, 1302f) - var_0.c)))))), ~(i32(-1i) * -39911i), false);
    var var_2 = var_1.b.x;
    let var_3 = Struct_1(-984f, var_0.b, _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(f32(-1f) * -1064f), var_1.c.x, _wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, arg_0.x, var_1.a, arg_0.x) - vec4<f32>(arg_0.x, var_1.c.x, var_1.a, -679f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, var_0.a, var_1.c.x), vec4<f32>(var_0.c.x, arg_0.x, 171f, 131f))), var_1.b.x)))), ~var_0.d, false | (~u_input.e >= (u_input.c.x ^ _wgslsmith_clamp_u32(u_input.e, 38002u, u_input.c.x))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_div_f32(arg_0.x, 155f)) * 395f), _wgslsmith_div_f32(-462f, arg_0.x), false)), var_1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(var_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_3.c))))))), _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mult_i32(var_0.d, 1i)) | ~2147483647i, -(i32(-1i) * -1i)), !any(select(select(vec4<bool>(true, false, true, var_0.e), vec4<bool>(var_0.b.x, var_1.b.x, var_3.e, false), vec4<bool>(var_3.b.x, var_3.e, var_0.b.x, true)), vec4<bool>(var_1.b.x, true, false, var_0.b.x), select(vec4<bool>(var_3.b.x, false, false, true), vec4<bool>(true, true, var_3.b.x, var_1.e), false))));
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1649f)), -1160f)), _wgslsmith_f_op_f32(-var_1.c.x))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, 664f)))))))));
    var var_1 = ~((_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 14875u, 0u), vec4<u32>(u_input.e, u_input.e, 66597u, 48409u)) >> ((vec4<u32>(u_input.e, u_input.e, 1u, 0u) >> (vec4<u32>(4294967295u, 0u, 14666u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 39266u, 13850u, 8475u), vec4<u32>(u_input.e, u_input.e, u_input.e, 30415u)), countOneBits(firstLeadingBit(vec4<u32>(1u, u_input.c.x, 1u, 56440u)))) % vec4<u32>(32u)));
    var var_2 = select(vec4<bool>(!(!select(true, false, true)), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)), false), !vec4<bool>(any(vec3<bool>(false, true, false)), true, true, select(false, all(vec3<bool>(false, true, true)), true)), vec4<bool>(abs(_wgslsmith_mult_u32(22351u, 0u)) >= _wgslsmith_clamp_u32(~4294967295u, 14580u, 4294967295u), true, ~u_input.d > 675i, true));
    let var_3 = Struct_1(-1095f, select(vec3<bool>(false, var_2.x, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(var_2.x, var_2.x, false), var_2.x), select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, var_2.x, true), var_2.wyw), any(vec3<bool>(var_2.x, var_2.x, var_2.x))), any(vec4<bool>(true, -74061i == u_input.d, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, -847f, 1000f)) + vec4<f32>(var_0.x, 799f, var_0.x, -1617f)))), _wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec3_i32(select(u_input.a, u_input.a, var_2.xxx) & select(u_input.a, vec3<i32>(u_input.a.x, arg_0, 1i), vec3<bool>(var_2.x, true, var_2.x)), ~u_input.a)), var_2.x);
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_4.c.x - var_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_3.a)))) + _wgslsmith_f_op_f32(825f + 514f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, all(vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -227f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-574f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-71316i)) - 1829f))), 832f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(794f + 293f) * _wgslsmith_div_f32(-1000f, -375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))))));
    let var_2 = ~(~(~u_input.e | 4294967295u));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_div_f32(318f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1266f, var_1.x) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, 186f))), _wgslsmith_f_op_f32(-var_1.x), var_1.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -663f), select(select(select(!vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, false)), all(var_0.xy)), !(!vec3<bool>(var_0.x, var_0.x, true)), true), select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, true), func_3(vec4<i32>(33507i, -2147483647i, u_input.a.x, u_input.d))), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(!var_0.x, true, var_0.x)), false | any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), -1345f, _wgslsmith_f_op_f32(187f - _wgslsmith_div_f32(510f, -622f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<f32>(431f, -783f, var_1.x, var_1.x)))), 2147483647i, true);
    let var_4 = u_input.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, 4294967295u), var_4.x)), vec4<i32>(min(~_wgslsmith_div_i32(var_3.d, var_3.d), _wgslsmith_clamp_i32(var_3.d, ~(-20072i), 1i)), u_input.b.x & abs(firstTrailingBit(var_3.d)), var_3.d, _wgslsmith_sub_i32(-(u_input.b.x | 16311i), 31130i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_3.a)))), abs(max(u_input.c.xx << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), abs(vec2<u32>(var_4.x, var_4.x)))));
}

