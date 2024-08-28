struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32> = vec2<u32>(8784u, 25852u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> bool {
    global0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global1.x, ~10951u, ~61691u, 1u)), vec4<u32>(global1.x, _wgslsmith_mod_u32(4294967295u, global0.x), reverseBits(15841u), ~select(~global1.x, abs(global1.x), false)), ~vec4<u32>(~(~global1.x), _wgslsmith_mult_u32(global1.x, ~global0.x), 4294967295u, abs(~global1.x)));
    var var_0 = Struct_4(!arg_0.a, arg_0.b, arg_2.b.c);
    var_0 = Struct_4(var_0.a, var_0.b, arg_2.c);
    var_0 = Struct_4(vec4<bool>(any(arg_0.a), (_wgslsmith_f_op_f32(309f * 778f) > _wgslsmith_f_op_f32(round(var_0.c))) | arg_2.b.a.x, true, !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_0.a.x, false, arg_2.b.a.x), true))), -28020i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c)), _wgslsmith_f_op_f32(-arg_2.c))));
    var var_1 = select(select(!(!vec4<bool>(true, arg_2.b.a.x, arg_1, arg_2.b.a.x)), select(arg_0.a, select(vec4<bool>(arg_2.b.a.x, true, false, true), vec4<bool>(var_0.a.x, false, true, true), var_0.a), true), false), arg_2.b.a, vec4<bool>(all(vec3<bool>(true, false, true)), false, true, arg_2.b.a.x));
    return all(select(!(!var_0.a.xx), !var_1.xw, !var_1.zx));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(!vec4<bool>(func_3(Struct_4(vec4<bool>(true, false, false, true), u_input.a.x, -2474f), true, Struct_5(u_input.a.x, Struct_4(vec4<bool>(false, false, true, false), u_input.a.x, -515f), -1364f)), any(vec2<bool>(false, true)), func_3(Struct_4(vec4<bool>(true, false, true, true), -1i, -939f), true, Struct_5(u_input.a.x, Struct_4(vec4<bool>(false, true, false, true), u_input.a.x, -802f), -242f)), all(vec3<bool>(true, true, true))), -216f, Struct_1(firstLeadingBit(-u_input.a.yy), vec2<bool>(true, true)), vec4<u32>(global1.x, global1.x, 19626u, ~(max(global0.x, 1u) | ~global1.x)), Struct_1(vec2<i32>(u_input.a.x & -21701i, 16028i) | -u_input.a.yz, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = select(~vec4<u32>(global1.x, _wgslsmith_mult_u32(~global0.x, abs(global0.x)), firstTrailingBit(global0.x), global1.x), max(_wgslsmith_div_vec4_u32(var_0.d << (vec4<u32>(1u, 9924u, 63825u, var_0.d.x) % vec4<u32>(32u)), vec4<u32>(global1.x, var_0.d.x, 0u, global1.x)), var_0.d) >> (vec4<u32>(reverseBits(32572u), 78373u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26578u), vec2<u32>(global1.x, 46057u)), 6314u), global0.x) % vec4<u32>(32u)), select(vec4<bool>(true, var_0.a.x, any(select(var_0.a.yx, var_0.e.b, var_0.e.b.x)), any(vec3<bool>(false, var_0.e.b.x, true)) | (var_0.a.x && true)), select(!(!vec4<bool>(var_0.e.b.x, var_0.e.b.x, var_0.e.b.x, true)), !vec4<bool>(var_0.a.x, var_0.c.b.x, var_0.c.b.x, true), true), false));
    let var_1 = select(select(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.d.zww, vec3<u32>(var_0.d.x, var_0.d.x, global0.x)), ~global1.x, firstLeadingBit(20539u), _wgslsmith_mod_u32(54485u, 1u)) >> (reverseBits(var_0.d) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~(var_0.d | vec4<u32>(130124u, 4294967295u, var_0.d.x, 1u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_0.d, var_0.d), max(vec4<u32>(1u, var_0.d.x, 21464u, global1.x), var_0.d), vec4<u32>(var_0.d.x, global0.x, global1.x, 0u))), var_0.a), ~firstTrailingBit(var_0.d), vec4<bool>(false, any(select(select(var_0.a.xx, vec2<bool>(var_0.a.x, true), false), var_0.a.wy, var_0.e.b.x)), var_0.c.b.x, false));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), var_0.c.a) << (vec2<u32>(_wgslsmith_div_u32(47705u, 39357u), _wgslsmith_div_u32(global1.x, global0.x)) % vec2<u32>(32u))), vec2<bool>(false, select(!var_0.e.b.x, !var_0.e.b.x | any(vec2<bool>(false, false)), true)));
    var var_3 = Struct_4(var_0.a, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(18796i, 51856i, 0i, 2147483647i)), -vec4<i32>(var_0.e.a.x, 2147483647i, var_0.c.a.x, var_0.e.a.x)) ^ 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)) + _wgslsmith_f_op_f32(var_0.b + var_0.b)) + 738f)));
    return Struct_5(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-42936i, -1i, var_0.c.a.x, var_2.a.x), vec4<i32>(var_0.e.a.x, 37954i, var_2.a.x, -1i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, 26979u, var_1.x, 11887u), var_0.d) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-43056i, u_input.a.x, 60265i, -4149i)), ~vec4<i32>(var_3.b, u_input.a.x, -7106i, 1i))), Struct_4(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, var_0.c.a.x)), -(~var_2.a)), var_0.b), _wgslsmith_f_op_f32(var_3.c + _wgslsmith_f_op_f32(f32(-1f) * -1747f)));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = func_2();
    global1 = global0.yz;
    let var_1 = vec3<i32>(var_0.b.b, ~(~_wgslsmith_sub_i32(abs(var_0.b.b), -u_input.a.x)), 2147483647i);
    let var_2 = Struct_4(func_2().b.a, u_input.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c - var_0.c))) + _wgslsmith_f_op_f32(f32(-1f) * -491f)))));
    var var_3 = var_0.a & (_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-18857i, 0i, 32623i, var_0.b.b)), select(~vec4<i32>(var_2.b, var_0.b.b, 1i, u_input.a.x), vec4<i32>(var_2.b, 2147483647i, u_input.a.x, var_2.b), !vec4<bool>(false, false, var_2.a.x, var_2.a.x))) << (global1.x % 32u));
    return !(!(!vec4<bool>(false, var_2.a.x, var_0.b.a.x && true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(4294967295u, global1.x);
    var var_0 = Struct_3(select(func_1(abs(~u_input.a.x)), !func_1(-7442i), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)) | (true || all(vec2<bool>(true, true)))), firstLeadingBit(1u), Struct_1(~max(u_input.a.zy, vec2<i32>(-8191i, u_input.a.x) ^ vec2<i32>(-26103i, 1i)), vec2<bool>(!any(vec3<bool>(false, true, false)), true)), 0u);
    var var_1 = func_2();
    var var_2 = func_2().b;
    var_2 = func_2().b;
    var var_3 = _wgslsmith_f_op_f32(1746f + var_1.c);
    var_0 = Struct_3(var_2.a, global1.x & 8485u, var_0.c, global0.x);
    var var_4 = func_2();
    var var_5 = Struct_3(!func_1(-2147483647i), 1u, var_0.c, 68013u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c, var_4.c)))))), var_4.b.b, var_0.c.a.x, var_0.d);
}

