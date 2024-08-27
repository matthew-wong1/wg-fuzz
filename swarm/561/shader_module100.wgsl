struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    return any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, select(true, select(false, true, false), true), countOneBits(4294967295u) > _wgslsmith_dot_vec4_u32(vec4<u32>(8474u, u_input.a.x, 1u, 40183u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), true));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 85299u), u_input.a.x) >= (34961u ^ u_input.a.x)), Struct_1(true), abs(~1i), vec2<u32>(u_input.a.x, 20618u));
    var_0 = Struct_2(Struct_1(true), var_0.b, max(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, -12528i, 1i, var_0.c), vec4<i32>(21125i, 54314i, -11769i, 1i)), i32(-1i) * -12625i)), -1i), var_0.d);
    var var_1 = var_0.b;
    let var_2 = Struct_2(var_0.a, var_0.b, -1i, ~u_input.a);
    var var_3 = Struct_2(Struct_1(all(vec4<bool>(true, true, !var_1.a, true && var_1.a))), Struct_1(func_3()), -2147483647i, abs(vec2<u32>(4294967295u, ~abs(var_0.d.x))));
    return -vec2<i32>(27436i, var_2.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = -5777i;
    var_0 = _wgslsmith_dot_vec2_i32(func_2(true), min((vec2<i32>(1i, 1i) >> (~vec2<u32>(65409u, arg_1.x) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(~u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(arg_1.x, arg_1.x))) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-27838i, 1i, -37164i, 7667i), vec4<i32>(44915i, 30835i, 0i, 40266i)), -2430i))));
    var var_1 = Struct_1(any(vec4<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), true)));
    let var_2 = vec3<u32>(61349u, 79065u, ~arg_0.x);
    var_0 = i32(-1i) * -1i;
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~vec2<i32>(1i, 1i)));
    let var_1 = func_1(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), ~vec4<u32>(14974u, u_input.a.x, u_input.a.x, u_input.a.x)) & 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, 0u, 1u)), vec3<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x, ~u_input.a.x)), _wgslsmith_sub_u32(~abs(11565u), u_input.a.x)), vec2<u32>(8128u, 51102u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-267f)) + _wgslsmith_f_op_f32(1850f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(121f)), _wgslsmith_f_op_f32(ceil(988f)), var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1261f + 503f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-375f, _wgslsmith_f_op_f32(-696f - -975f))), -1324f)))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xxy), var_2.yyw);
    let var_4 = any(select(!(!vec4<bool>(var_1.a, true, var_1.a, true)), vec4<bool>(any(vec4<bool>(false, var_1.a, false, var_1.a)), false, true, true), vec4<bool>(select(true, true, var_1.a) && true, true, true || (var_0.x != var_0.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_mod_u32(4294967295u, ~(~u_input.a.x)) | ~reverseBits(~u_input.a.x), -func_2(true & any(vec2<bool>(var_1.a, var_4))), min(vec3<i32>(-1i, ~var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(var_0.x, -27850i)) & 1i), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(1i, 25360i, var_0.x)), vec3<i32>(var_0.x, var_0.x, var_0.x) | vec3<i32>(var_0.x, var_0.x, var_0.x)) ^ max(vec3<i32>(-33173i, var_0.x, var_0.x), vec3<i32>(var_0.x, -1i, -13388i) << (vec3<u32>(52483u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
}

