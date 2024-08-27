struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(~(~1u), vec2<f32>(_wgslsmith_f_op_f32(round(1287f)), _wgslsmith_f_op_f32(sign(-2538f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x));
    var var_2 = ~vec3<u32>(var_0.a, _wgslsmith_mod_u32(11361u, _wgslsmith_mult_u32(4294967295u, select(1u, var_0.a, false))), 1019u);
    let var_3 = var_2.zy;
    return vec4<bool>(true, any(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false), true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 65224u > ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 58019u, 1u), vec4<u32>(var_0.a, 3919u, var_3.x, 4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = 1u;
    let var_1 = arg_1;
    let var_2 = Struct_4(select(var_0, _wgslsmith_mod_u32(max(1u, ~var_0), _wgslsmith_dot_vec2_u32(~vec2<u32>(52177u, 25049u), ~vec2<u32>(var_0, 55957u))), true), arg_0.a.xy);
    var var_3 = var_2;
    let var_4 = func_3().x;
    return ~firstLeadingBit(56624u);
}

fn func_2() -> u32 {
    let var_0 = !(!all(vec3<bool>(true, true, true)));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, 1309f, 947f, -984f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1630f, 1143f, -335f, -1062f) - vec4<f32>(-1000f, -655f, -835f, 484f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, -2001f, 320f, -626f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2123f, -1145f, 1000f, -1367f))), vec4<bool>(var_0, var_0, var_0, !var_0)))), Struct_2(func_3(), _wgslsmith_div_vec2_i32(-firstLeadingBit(u_input.a.xy), min(~u_input.a.yw, _wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.a.xx)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -17204i), u_input.a & vec4<i32>(7642i, u_input.a.x, -2782i, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 37866i, u_input.a.x, -23204i), -u_input.a)), -u_input.a), u_input.a);
    var_1 = ~(~(~(5434u >> (1u % 32u))));
    var_1 = 81744u << (_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 0u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1193u, 0u, 0u, 23439u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(9331u, 1u, 29172u, 1u))), ~vec4<u32>(41235u, 448u, 0u, 0u), func_3()), vec4<u32>(1u, 1u, 1u, 1u)) % 32u);
    var var_2 = (-vec2<i32>(u_input.a.x, ~(-26826i)) << (~(~select(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<bool>(var_0, var_0))) % vec2<u32>(32u))) | (-firstTrailingBit(vec2<i32>(-2147483647i, 17675i)) | ~vec2<i32>(-14581i, u_input.a.x));
    return ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 59243u, 4294967295u)) >> (select(vec3<u32>(0u, 1u, 53906u), vec3<u32>(17966u, 61202u, 8892u), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, var_0), false)) % vec3<u32>(32u)), ~vec3<u32>(1u, 1u, 1u));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_3(func_2(), select(!select(vec4<bool>(true, true, true, true), func_3(), vec4<bool>(true, true, true, false)), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-843f, -904f, -266f, -231f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1604f, 1221f, -2007f) - vec4<f32>(2681f, 1158f, 783f, -229f)), vec4<bool>(true, true, true, true))))), firstTrailingBit(vec4<i32>(1i << (_wgslsmith_div_u32(0u, 4294967295u) % 32u), 34679i, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x))));
    var var_1 = Struct_2(var_0.b, vec2<i32>(-_wgslsmith_add_i32(abs(27759i), var_0.d.x | u_input.a.x), ~_wgslsmith_mult_i32(-1i, -35001i)));
    var_1 = Struct_2(var_0.b, -_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(var_0.d.yx | vec2<i32>(-1i, 35803i), -var_1.b), select(var_0.d.zx, ~u_input.a.xy, !var_0.b.yx), select(u_input.a.zy, abs(var_1.b), var_1.a.x)));
    var_1 = Struct_2(select(!(!func_3()), select(vec4<bool>(var_0.b.x, false, true, !var_1.a.x), !select(var_0.b, vec4<bool>(true, var_0.b.x, false, var_1.a.x), vec4<bool>(true, true, var_0.b.x, false)), !var_1.a.x), !var_0.b), countOneBits(var_0.d.zz));
    var var_2 = 12303i;
    return select(!(!func_3()), !(!vec4<bool>(all(var_0.b), var_1.a.x, !var_1.a.x, true)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -313f;
    let var_1 = vec2<bool>(!(true | any(func_1())), false);
    var var_2 = Struct_2(func_1(), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(1i, u_input.a.x)) << (abs(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), ~countOneBits(-u_input.a.ww)));
    let var_3 = select(~1u, ~1u, true);
    let var_4 = u_input.a.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

