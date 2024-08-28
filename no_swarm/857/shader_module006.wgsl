struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 4294967295u, 61289u, 52066u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = vec4<i32>(-u_input.e.x, 5321i, i32(-1i) * -u_input.d, u_input.d);
    var var_2 = -383f;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var_0 = u_input.a.x;
    return !(!vec4<bool>(select(any(vec2<bool>(false, false)), true, true), !all(vec4<bool>(true, true, true, true)), false, true));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(457f, true, _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12877u, 43676u, 78982u, 9939u) ^ vec4<u32>(u_input.b.x, u_input.b.x, global0.x, global0.x), ~vec4<u32>(0u, 57118u, global0.x, global0.x)), ~countOneBits(45671u)) & global0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e.x, 2147483647i, 1i, 32946i), u_input.e), u_input.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 772f, _wgslsmith_f_op_f32(-var_0.c)));
    var var_2 = Struct_4(var_0, reverseBits(45988u) >> (abs(0u) % 32u), Struct_3(var_0, vec4<i32>(u_input.e.x, -(~(-1i)), var_0.e, u_input.e.x)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-492f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-613f * -717f), -1194f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), -348f))), 499f, _wgslsmith_f_op_f32(f32(-1f) * -1314f), -2655f);
    let var_4 = (var_2.a.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-517f)))) || true;
    return vec2<bool>(any(select(vec3<bool>(true, var_4 || var_4, any(vec3<bool>(var_0.b, var_4, var_4))), vec3<bool>(var_2.c.a.b || var_2.c.a.b, true, false), var_0.b)), true);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = ~vec4<u32>(reverseBits(~0u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(74886u, 0u, u_input.b.x)), 20053u, firstTrailingBit(countOneBits(69017u))) << (countOneBits(~(max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, global0.x), vec4<u32>(global0.x, 4294967295u, 19282u, 37415u)) | select(vec4<u32>(global0.x, 4294967295u, 47250u, 4294967295u), vec4<u32>(4294967295u, 0u, 13102u, 42620u), vec4<bool>(false, true, false, true)))) % vec4<u32>(32u));
    let var_0 = !func_2();
    var var_1 = Struct_2(all(func_3()), var_0, firstTrailingBit(abs(~countOneBits(1u))));
    var_1 = Struct_2(~(abs(40665u) >> (~var_1.c % 32u)) == _wgslsmith_dot_vec3_u32(global0.yzz, (vec3<u32>(9541u, 0u, var_1.c) >> (u_input.a % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, 0u, global0.x)), !select(select(func_2(), var_0, !vec4<bool>(var_1.b.x, true, false, true)), select(func_2(), var_1.b, true), var_1.b), abs(_wgslsmith_mod_u32(abs(global0.x), _wgslsmith_clamp_u32(u_input.a.x, var_1.c, 4294967295u))));
    var var_2 = ~_wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(0u, 4294967295u, u_input.a.x, 35834u)), abs(~vec4<u32>(var_1.c, 22803u, 9422u, 4294967295u)));
    return !var_1.b.yxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), vec3<bool>(true, true && !all(vec4<bool>(false, false, false, true)), true), select(vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true)), any(vec2<bool>(true, true)), 4294967295u >= global0.x), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true))));
    var_0 = func_1(vec2<f32>(2246f, 1f), -u_input.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1595f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(-663f * -573f), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, 953f) * vec2<f32>(907f, -1407f)), vec4<i32>(u_input.c, -10279i, -2147483647i, 4426i)).x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(602f, _wgslsmith_f_op_f32(max(1140f, -193f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, 362f, 1000f))))));
    let var_2 = Struct_2(!var_0.x, vec4<bool>(select(var_0.x, var_0.x, false), false, true, var_0.x), 32763u);
    var_0 = !vec3<bool>(var_0.x, var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) - _wgslsmith_f_op_f32(ceil(var_1.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) + -1603f));
    var var_3 = vec4<i32>(49588i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d, u_input.c) ^ ~2147483647i, _wgslsmith_clamp_i32(13503i, 0i, 0i >> (var_2.c % 32u))), select(~abs(u_input.c), -2147483647i, false)), u_input.e.x, ~(~u_input.c << (global0.x % 32u)));
    var var_4 = i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.e.yy, var_3.yy);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zy, ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), vec3<u32>(var_2.c, 22165u, 1u)) >> (_wgslsmith_sub_vec3_u32(global0.zyx, vec3<u32>(51792u, 1u, var_2.c)) % vec3<u32>(32u))), ~select(19137u, ~53679u, false), u_input.a.x, 832f);
}

