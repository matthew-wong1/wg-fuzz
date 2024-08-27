struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = vec4<bool>(true, -u_input.c.x == _wgslsmith_clamp_i32(firstLeadingBit(u_input.a << (u_input.b % 32u)), u_input.a, firstTrailingBit(-u_input.a)), false, true);
    return !(!(!var_0));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec3_u32(min(vec3<u32>(24190u, _wgslsmith_clamp_u32(0u, u_input.b, u_input.b), ~31988u), vec3<u32>(u_input.b, u_input.b, u_input.b) ^ reverseBits(vec3<u32>(u_input.b, 37479u, u_input.b))), abs(~(~vec3<u32>(30618u, u_input.b, u_input.b)))) << (~vec3<u32>(reverseBits(8705u), (u_input.b | 68057u) << (~u_input.b % 32u), 9653u) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3012f), _wgslsmith_f_op_f32(f32(-1f) * -770f)))));
    let var_2 = vec3<u32>(4294967295u, 0u, _wgslsmith_sub_u32(4294967295u, 1u));
    let var_3 = Struct_1(var_0.x, firstTrailingBit(min(vec4<u32>(0u, 45435u, 21226u, 14126u), vec4<u32>(var_2.x, 4294967295u, 1u, 0u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(2950u, 39116u, var_0.x, 4294967295u), vec4<u32>(0u, var_0.x, 126u, u_input.b))), func_1(u_input.a).x);
    let var_4 = !vec3<bool>(_wgslsmith_add_u32(var_0.x, ~2129u) < var_3.b.x, ~select(u_input.a, -2221i, false) > -_wgslsmith_clamp_i32(0i, -1i, u_input.a), var_3.c);
    return -330f < var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_4(Struct_3(Struct_2(u_input.b, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yy, vec2<i32>(u_input.c.x, -1i), u_input.c.yx), _wgslsmith_sub_vec2_i32(u_input.c.xy, u_input.c.yy)), u_input.c.x, u_input.c.yx, abs(~arg_0.b)), arg_0, Struct_2(_wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(0u, 55464u, 0u, 67128u)), select(~vec2<i32>(-20628i, u_input.c.x), vec2<i32>(u_input.c.x, 14492i), false), u_input.a >> (u_input.b % 32u), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c.x, -51521i), firstLeadingBit(vec2<i32>(u_input.a, u_input.c.x))), firstLeadingBit(vec4<u32>(0u, u_input.b, arg_0.a, u_input.b))), Struct_2(4294967295u, u_input.c.zx, min(65430i >> (arg_0.b.x % 32u), select(u_input.a, 8826i, arg_0.c)), u_input.c.zz, vec4<u32>(1u, 1u, arg_0.b.x, 80826u))), Struct_1(~1u, vec4<u32>(arg_0.a, _wgslsmith_clamp_u32(u_input.b, 32606u, arg_0.a), u_input.b, ~u_input.b) & vec4<u32>(22604u, _wgslsmith_clamp_u32(2340u, 1u, 1u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 38414u), arg_0.b.zx)), func_3()));
    var var_1 = arg_0.b.x;
    let var_2 = 7046i;
    var_1 = 1150u;
    var_1 = var_0.a.d.a;
    return Struct_3(var_0.a.d, Struct_1(_wgslsmith_mult_u32(u_input.b, 63886u), arg_0.b, _wgslsmith_f_op_f32(1000f * arg_2) != _wgslsmith_f_op_f32(max(1837f, _wgslsmith_f_op_f32(step(arg_2, arg_2))))), var_0.a.a, var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false)), vec2<bool>(true, true)), true));
    var var_1 = Struct_4(func_2(Struct_1(~(~8385u), countOneBits(select(vec4<u32>(14449u, u_input.b, 9736u, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.b, 0u), true)), false), select(select(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, true, var_0, false), vec4<bool>(var_0, true, false, true)), vec4<bool>(true, true, var_0, true), true), func_1(-1i), var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2848f)) + 1f), _wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(min(-1143f, -954f)))), var_0), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 26578u), vec2<u32>(u_input.b, u_input.b))), countOneBits(vec4<u32>(u_input.b, abs(0u), _wgslsmith_div_u32(4294967295u, u_input.b), 4294967295u)), false));
    let var_2 = var_0;
    var_1 = Struct_4(var_1.a, Struct_1(select(u_input.b, ~var_1.b.b.x, false), vec4<u32>(~_wgslsmith_sub_u32(42290u, u_input.b), _wgslsmith_sub_u32(u_input.b, 112695u << (var_1.a.c.a % 32u)), _wgslsmith_div_u32(~var_1.b.a, _wgslsmith_mod_u32(1u, u_input.b)), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.b), ~25810u)), func_1(-33987i).x));
    let var_3 = ~max(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, -37448i, 0i), max(vec4<i32>(u_input.c.x, -var_1.a.c.d.x, reverseBits(u_input.c.x), abs(14726i)), ~vec4<i32>(-31869i, u_input.a, 27630i, 39039i) >> (firstLeadingBit(vec4<u32>(u_input.b, 63925u, u_input.b, u_input.b)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.b, 1u), vec3<i32>(firstLeadingBit(var_1.a.d.c) << (var_1.b.a % 32u), ~(-(~var_1.a.c.c)), ~u_input.c.x), abs(firstTrailingBit(~var_1.b.b.x)));
}

