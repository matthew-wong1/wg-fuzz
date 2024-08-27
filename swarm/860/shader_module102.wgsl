struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true | any(vec4<bool>(true, true, true, true)), true)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec4<bool>(false, true, true, false))), vec3<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(false, false, false))))));
    let var_1 = Struct_5(-(firstLeadingBit(firstLeadingBit(vec2<i32>(-2147483647i, -1i))) << ((_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 4294967295u)) & ~u_input.a.zy) % vec2<u32>(32u))), any(select(vec3<bool>(var_0.x, true, any(vec3<bool>(true, true, var_0.x))), select(!var_0.yxy, vec3<bool>(true, true, true), var_0.yyz), vec3<bool>(true, any(vec3<bool>(true, true, var_0.x)), all(var_0.zz)))), firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(~(0u << (select(u_input.a.x, u_input.a.x, var_0.x) % 32u)), ~u_input.a.x));
    let var_2 = vec2<f32>(-709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-802f)))));
    let var_3 = var_1;
    var_0 = select(!(!(!select(vec4<bool>(true, var_1.b, var_1.b, var_1.b), vec4<bool>(true, false, var_0.x, false), var_0.x))), select(vec4<bool>(var_1.b, !var_1.b, var_1.b, true), vec4<bool>(1u >= ~u_input.a.x, true, any(vec3<bool>(true, false, var_3.b)), true), select(vec4<bool>(var_0.x, var_3.c == var_1.c, true, true), select(!vec4<bool>(var_0.x, var_1.b, true, var_1.b), select(vec4<bool>(var_1.b, true, true, var_0.x), vec4<bool>(var_1.b, true, var_1.b, true), vec4<bool>(var_1.b, true, true, var_0.x)), true), (u_input.a.x > 1u) || any(var_0.wy))), var_3.b);
    return reverseBits(u_input.a.zx);
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f - -340f)) - -1076f) - -357f);
    var var_1 = ~1i;
    var_1 = arg_0.x;
    var var_2 = !(!vec3<bool>(var_0 <= 786f, true, true));
    let var_3 = Struct_4(vec4<bool>(false, var_2.x, !(~u_input.a.x < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 18075u, u_input.a.x), vec4<u32>(6741u, 4294967295u, 4294967295u, u_input.a.x))), true));
    return Struct_3(-1786f, ~_wgslsmith_mod_vec2_u32(u_input.a.zx, func_3() | ~u_input.a.yx));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = func_2(~vec3<i32>(arg_0.a.x, ~(arg_0.a.x << (u_input.a.x % 32u)), 1i));
    let var_1 = Struct_2(select(arg_1, vec2<bool>(true, arg_0.b), arg_1.x), countOneBits(max(arg_0.a.x, arg_0.a.x)));
    let var_2 = var_1.b >= firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.a.x, -2147483647i), ~(-23247i)));
    let var_3 = arg_0.a.x;
    var var_4 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~24610u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), vec3<u32>(u_input.a.x, 24772u, 1u) & u_input.a)), select(~1u, ~var_0.b.x, false & var_1.a.x) << (var_0.b.x % 32u)), 1u, 4294967295u, firstTrailingBit(18853u));
    return Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1053f * var_0.a) + -343f) + var_0.a), _wgslsmith_f_op_f32(round(-566f)))), vec2<u32>(func_3().x, (func_2(vec3<i32>(-16782i, 0i, 1i)).b.x << (~33833u % 32u)) >> (~u_input.a.x % 32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_4(vec4<bool>(u_input.a.x <= ~39795u, !arg_0, arg_0, arg_1.a < arg_1.a));
    var var_1 = select(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, 1i, 1i)), ~abs(abs(vec3<i32>(-24509i, 0i, -34867i)))), 32853i, true);
    var_1 = 2147483647i;
    var var_2 = firstLeadingBit(-16612i);
    var var_3 = u_input.a;
    return !var_0.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var_0 = func_4(all(vec4<bool>(true, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), false)), func_1(Struct_5(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -14703i) >> (u_input.a.xx % vec2<u32>(32u)), vec2<i32>(1i, -15824i)), true, firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.a.x)), u_input.a.x), vec2<bool>(var_0.x, var_0.x)));
    var var_1 = Struct_5(vec2<i32>(~(~0i), 1i) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), any(vec4<bool>(false, !var_0.x, false, false)), func_3().x | _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(0u, 1u)), 35368u);
    var var_2 = vec4<i32>(reverseBits(var_1.a.x), -1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(1i, var_1.a.x), firstLeadingBit(~1i)), -var_1.a.x) >> (vec4<u32>(30912u, abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, var_1.c)), u_input.a.x)), ~(~2160u), 14292u) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1671f))) - func_1(Struct_5(vec2<i32>(12103i, var_1.a.x), true, 0u, 58882u), select(vec2<bool>(var_0.x, true), vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, false))).a), 254f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_3.x), 1839f, -1014f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_3.zx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1056f, -270f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.xy, var_3.xx, vec2<bool>(true, var_1.b))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -404f))));
}

