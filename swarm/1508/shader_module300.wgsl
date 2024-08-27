struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.b.a);
    var var_1 = !arg_0.a.x;
    var_1 = !((_wgslsmith_f_op_f32(min(-2481f, _wgslsmith_div_f32(arg_1, 920f))) != arg_1) | !any(arg_0.a.xx));
    return arg_0.b;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = Struct_1(~(~abs(~vec4<u32>(46127u, 1u, u_input.b, 13569u))));
    var_0 = Struct_1(vec4<u32>(~(~(~21380u)), 0u, max(2924u & u_input.a, ~32320u) | 4294967295u, 1u));
    var var_1 = ~var_0.a.zyx;
    return select(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_2, 2147483647i), u_input.d), firstTrailingBit(min(arg_2, u_input.c.x))), 43265i), _wgslsmith_dot_vec2_i32(select(reverseBits(-vec2<i32>(u_input.c.x, arg_2)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-36113i, 13830i)), _wgslsmith_mult_i32(u_input.d.x, -1i)), !select(vec2<bool>(true, false), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3))), vec2<i32>(abs(_wgslsmith_mult_i32(26385i, arg_2)), firstTrailingBit(countOneBits(u_input.c.x)))), all(select(vec4<bool>(arg_3, any(vec4<bool>(arg_3, arg_3, true, arg_3)), all(vec3<bool>(arg_3, true, arg_3)), any(vec2<bool>(false, arg_3))), vec4<bool>(all(vec4<bool>(false, true, arg_3, false)), arg_3, false, !arg_3), all(select(vec2<bool>(arg_3, false), vec2<bool>(true, false), true)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<f32>) -> bool {
    let var_0 = select(select(arg_0.a.yz, arg_1.a.zx, false), arg_1.a.yz, arg_1.a.x);
    var var_1 = _wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), arg_3.x)))) < _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_1 = var_0.x;
    var var_2 = ~vec2<i32>(countOneBits(arg_0.d), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, -1i)), -abs(vec4<i32>(-36986i, -28123i, 46295i, 106156i))));
    var var_3 = arg_2;
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = all(vec4<bool>(true, func_4(Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<u32>(u_input.b, u_input.a, 4294967295u, 1u)), u_input.c.x << (u_input.b % 32u), -1i), Struct_3(vec3<bool>(true, true, true), func_2(Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<u32>(u_input.b, 0u, u_input.a, u_input.a)), u_input.c.x, -13467i), 543f), func_3(Struct_5(vec2<f32>(1000f, -139f)), 13675u, -1i, true), 7876i >> (u_input.b % 32u)), abs(reverseBits(vec3<i32>(1i, u_input.c.x, -1i))), vec3<f32>(_wgslsmith_div_f32(-1000f, 365f), -2431f, -1503f)), true, !(firstLeadingBit(u_input.a) > _wgslsmith_mod_u32(u_input.a, u_input.b))));
    var var_1 = select(!select(vec2<bool>(true, u_input.b <= 0u), !select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), true), select(vec2<bool>(!var_0, var_0), !vec2<bool>(true, var_0), !select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), vec2<bool>(true, var_0)), !vec2<bool>(var_0, var_0), select(vec2<bool>(false, false), vec2<bool>(var_0, false), var_0))), select(select(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), vec2<bool>(var_0, any(vec4<bool>(var_0, false, var_0, var_0))), select(select(vec2<bool>(var_0, false), vec2<bool>(false, false), true), select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), true), !var_0)), select(vec2<bool>(0i != u_input.d.x, var_0), vec2<bool>(!var_0, true), false), true));
    var_1 = vec2<bool>(var_0 | var_1.x, all(!vec4<bool>(var_0, true, var_1.x, true)) || var_1.x);
    let var_2 = vec2<f32>(_wgslsmith_div_f32(561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(175f - 796f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(ceil(1777f)))))));
    let var_3 = Struct_4(vec4<bool>(false | !(!var_0), true, any(vec3<bool>(true, true, true)), !var_0 | true), Struct_3(select(vec3<bool>(!var_0, all(vec2<bool>(true, false)), all(vec3<bool>(true, false, false))), select(vec3<bool>(true, var_1.x, var_0), select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, true, false), vec3<bool>(true, false, var_0)), u_input.b != 14879u), vec3<bool>(var_1.x, true, var_1.x)), func_2(Struct_3(vec3<bool>(var_1.x, var_0, var_1.x), Struct_1(vec4<u32>(u_input.b, 11014u, u_input.b, u_input.b)), 24887i >> (u_input.a % 32u), abs(20320i)), var_2.x), u_input.d.x, firstLeadingBit(1i)));
    return Struct_3(select(var_3.b.a, !(!vec3<bool>(var_3.a.x, var_3.a.x, false)), func_4(Struct_3(select(vec3<bool>(false, var_3.b.a.x, var_3.a.x), var_3.b.a, false), var_3.b.b, max(5085i, u_input.d.x), 2147483647i), var_3.b, vec3<i32>(var_3.b.d, 27936i, -1i) ^ vec3<i32>(var_3.b.d, u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_2.x, 1242f), vec3<f32>(var_2.x, 594f, var_2.x))))), var_3.b.b, var_3.b.d, -42846i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<bool>(false, var_0.a.x);
    var_1 = !var_0.a.zz;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -917f);
    let var_3 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(~4159i, -var_0.c), ~(-vec2<i32>(u_input.d.x, -1i)), u_input.d.zx);
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1007f), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(-728f, -1000f))), 1f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(step(815f, 855f)), 1f, -506f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2262f, -1822f, -220f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(((var_0.c >> (u_input.a % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_3.x), ~var_3)) >> (u_input.b % 32u), var_0.b.a.x, -254f, ~max(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.c, u_input.d.x), u_input.d), u_input.d), u_input.d));
}

