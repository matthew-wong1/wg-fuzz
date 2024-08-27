struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = vec3<f32>(861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1654f)) + 2080f)))), -1000f);
    let var_1 = 70002u << (~arg_0.a.x % 32u);
    let var_2 = arg_0.b.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1863f)) * -593f), 118f, _wgslsmith_f_op_f32(min(var_0.x, 931f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, var_0.x, var_0.x))))))));
    let var_3 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_mult_u32(abs(42896u), 29313u), ~(~3509u)), vec3<u32>(_wgslsmith_mod_u32(var_1, arg_0.a.x), _wgslsmith_add_u32(arg_0.a.x, arg_0.a.x) ^ arg_0.c.x, select(4294967295u, ~arg_0.b.x, any(vec4<bool>(true, false, false, false)))), vec2<u32>(~20600u, reverseBits(~arg_0.a.x))));
    return arg_0.b.xz;
}

fn func_2(arg_0: i32) -> vec2<u32> {
    let var_0 = ~72070u;
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(~(var_0 >> (0u % 32u)), ~58056u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(27905u, 17032u, 56495u, 20842u), vec4<u32>(4294967295u, var_0, 29716u, 4294967295u))), func_3(Struct_1(vec2<u32>(var_0, var_0) >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u)), vec3<u32>(0u, var_0, 20791u), vec2<u32>(1u, 1u))), min(vec2<u32>(1u, _wgslsmith_sub_u32(var_0, var_0)), select(firstLeadingBit(vec2<u32>(56104u, var_0)), vec2<u32>(0u, 1u), all(vec3<bool>(false, false, true))))));
    let var_3 = select(vec3<bool>(true, ~var_0 >= 57097u, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), select(vec3<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<bool>(any(vec2<bool>(true, true)), true, true), !(!all(vec4<bool>(true, false, false, true)))), all(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    var_2 = vec2<u32>(var_0, var_0);
    return vec2<u32>(_wgslsmith_add_u32(countOneBits(max(1u, firstLeadingBit(19857u))), var_0), var_2.x);
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_1(vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_mod_u32(~(~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2911u, 4294967295u, 67756u), vec3<u32>(6669u, 1u, 4294967295u)))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 20386u, 52457u), vec3<u32>(1u, 3272u, 4294967295u)))), func_2(reverseBits(arg_0)) >> (min(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(39208u, 1u), ~vec2<u32>(485u, 1186u))) % vec2<u32>(32u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x & var_0.c.x, 42616u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(55591u, var_0.b.x), vec2<u32>(8887u, var_0.a.x), var_0.b.zy))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, 4294967295u)), var_0.b), max(_wgslsmith_mod_vec2_u32(max(var_0.b.zx, var_0.a), vec2<u32>(var_0.b.x, 0u)), vec2<u32>(var_0.a.x, 67938u) >> ((vec2<u32>(4614u, 31931u) ^ var_0.c) % vec2<u32>(32u)))));
    var var_2 = true;
    var_0 = var_1.a;
    let var_3 = var_1;
    return firstTrailingBit(4294967295u) != _wgslsmith_dot_vec4_u32(vec4<u32>(~(~0u), 1u ^ _wgslsmith_sub_u32(31354u, var_0.a.x), 0u, var_0.c.x), vec4<u32>(var_0.c.x, var_0.b.x, var_0.a.x ^ countOneBits(var_3.a.a.x), var_3.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(false, !func_1(-1i)), select(select(vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, false))), true), vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), !vec2<bool>(all(vec2<bool>(false, true)), u_input.a.x > u_input.b.x)), false);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(446f, -1000f, false)) - _wgslsmith_f_op_f32(679f * -487f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-703f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(240f)))) + 445f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-284f, 2529f), _wgslsmith_f_op_f32(f32(-1f) * -149f), 1024f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, 520f, 1347f)), vec3<bool>(var_0.x, var_0.x, -1974f >= var_1.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(-1210f, var_1.x, -2056f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2597f, -1342f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, var_1.x, var_1.x))))) + vec3<f32>(-1382f, _wgslsmith_f_op_f32(step(-710f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(select(1187f, var_1.x, var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)))));
    var var_2 = vec2<u32>(reverseBits(~1u) << (1u % 32u), ~62926u);
    var var_3 = ~_wgslsmith_mult_u32(var_2.x, 4294967295u) << (~(36921u << (select(1u, select(var_2.x, var_2.x, var_0.x), false) % 32u)) % 32u);
    var_3 = var_2.x;
    var var_4 = 324f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_2.x, 1u), var_2.x, _wgslsmith_clamp_u32(1u, var_2.x, 7735u)), reverseBits(reverseBits(vec3<u32>(4294967295u, var_2.x, var_2.x)))), vec3<u32>(_wgslsmith_div_u32(var_2.x, var_2.x), var_2.x, var_2.x)), ~(u_input.b >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, var_2.x), vec3<u32>(var_2.x, 1u, var_2.x))) % vec3<u32>(32u))));
}

