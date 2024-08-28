struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(~(vec2<i32>(14183i, -1i) | _wgslsmith_mod_vec2_i32(~u_input.c.zz, countOneBits(vec2<i32>(u_input.c.x, 40056i)))), vec4<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -33984i, u_input.c.x, 1i), max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(1i, u_input.c.x, u_input.c.x, -1566i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -10676i, u_input.c.x, 24475i), vec4<i32>(0i, 16242i, -2147483647i, -29758i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -13597i, 11496i), vec4<i32>(-16306i, u_input.c.x, 83702i, 2147483647i)))), -4751i, u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(798f, 1109f, -1536f)))))) + vec3<f32>(-1753f, -3090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + -362f))), !(any(vec3<bool>(true, true, true)) == false), select(vec2<bool>(any(vec2<bool>(true, true)), -u_input.c.x > 8626i), vec2<bool>(true, true), false));
    var var_1 = vec2<bool>(true, true);
    var_1 = vec2<bool>(var_1.x, true | (_wgslsmith_add_u32(u_input.b, 30430u) < 1u));
    var var_2 = Struct_2(-var_0.b.yx, var_0.b, var_0.c, true, select(var_0.e, var_0.e, _wgslsmith_f_op_f32(min(-2831f, _wgslsmith_f_op_f32(var_0.c.x + -2237f))) != _wgslsmith_f_op_f32(592f - -648f)));
    var var_3 = vec4<u32>(abs(1u), ~30982u, ~u_input.b, ~u_input.a);
    return select((~vec2<u32>(u_input.b, 55830u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, u_input.b), vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u))) << (vec2<u32>(11744u, ~u_input.a) % vec2<u32>(32u)), vec2<u32>(~var_3.x, u_input.a), (firstLeadingBit(u_input.c.x) > ~u_input.c.x) | (var_0.e.x && (var_0.e.x | true))) ^ var_3.yx;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(-firstLeadingBit(u_input.c.zx), countOneBits(firstLeadingBit(vec4<i32>(-u_input.c.x, _wgslsmith_mod_i32(-1i, -18199i), u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(1i, 10234i, u_input.c.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(873f, -720f, 144f), vec3<f32>(-624f, -759f, -1183f)))))))), false, !select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, true))), false));
    var var_1 = _wgslsmith_clamp_vec2_u32(~(~(~(~vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a >> (32470u % 32u), select(u_input.b, u_input.b, var_0.d)), u_input.a), u_input.b), ~firstLeadingBit(abs(~vec2<u32>(u_input.b, u_input.a))));
    var_1 = firstLeadingBit(func_3()) << (_wgslsmith_sub_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.a)) & countOneBits(vec2<u32>(7816u, 11976u))), abs(select(vec2<u32>(var_1.x, u_input.a), vec2<u32>(39603u, 1u), var_0.d) & min(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 39795u)))) % vec2<u32>(32u));
    let var_2 = !(!vec3<bool>(!(!var_0.e.x), (15401i >> (var_1.x % 32u)) < firstTrailingBit(1i), var_0.d));
    var_1 = func_3();
    return ~(~(u_input.c | _wgslsmith_mod_vec3_i32(var_0.b.yyw, select(vec3<i32>(-33150i, var_0.a.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 27183i), var_2))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = firstTrailingBit(u_input.c);
    var_0 = func_2();
    var_0 = vec3<i32>(u_input.c.x, -1i, 1i);
    var var_1 = 1u;
    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec2_i32(-var_0.zy, var_0.yz)), _wgslsmith_mult_vec4_i32(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(40998i, 69468i, 22307i, 16394i), vec4<i32>(var_0.x, u_input.c.x, var_0.x, u_input.c.x)))), -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -1i, var_0.x), vec4<i32>(u_input.c.x, 0i, 0i, 2147483647i)), vec4<i32>(var_0.x, var_0.x, var_0.x, 32682i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(109f, -1000f, -443f))))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1193f + -111f), -1151f, !arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -1487f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1964f) + -445f))), arg_0.x, vec2<bool>(!(u_input.c.x <= (i32(-1i) * -2147483647i)), false));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false);
    let var_1 = Struct_2(u_input.c.yz, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, ~abs(104954i), _wgslsmith_dot_vec2_i32(countOneBits(u_input.c.xy), select(vec2<i32>(u_input.c.x, 1i), vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(true, var_0.a)))), min(vec4<i32>(u_input.c.x, u_input.c.x, -15549i, -2147483647i) >> (abs(vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.b)) % vec4<u32>(32u)), func_1(vec4<bool>(var_0.a, true, true, var_0.a)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), var_0.a, vec2<bool>(true, true));
    let var_2 = Struct_2(max(-_wgslsmith_div_vec2_i32(u_input.c.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, var_1.b.x), vec2<i32>(u_input.c.x, u_input.c.x), var_1.a)), vec2<i32>(-u_input.c.x, _wgslsmith_add_i32(countOneBits(29760i), abs(var_1.b.x)))), var_1.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1028f + -1393f), var_1.c.x, -1047f) + vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(-342f - var_1.c.x))))), var_1.e.x, var_1.e);
    let var_3 = u_input.b;
    let var_4 = var_0;
    var var_5 = reverseBits(var_1.a.x | u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(0u, ~select(66312u, 18317u, false), 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3, 43599u, u_input.a), vec3<u32>(33566u, u_input.b, u_input.b), vec3<u32>(var_3, 13714u, u_input.a)), vec3<u32>(3664u, 0u, u_input.b)) << (~(vec3<u32>(22118u, u_input.a, 4294967295u) >> (vec3<u32>(u_input.b, var_3, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

