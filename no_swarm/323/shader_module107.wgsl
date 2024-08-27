struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.e.a.xxx;
    let var_1 = ~reverseBits(abs(select(max(vec2<u32>(1u, 1u), var_0.zx), ~vec2<u32>(arg_0.d.a.x, 7445u), true)));
    var var_2 = -29460i;
    var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.b, 2147483647i), select(_wgslsmith_mult_vec2_i32(u_input.a.zx, _wgslsmith_div_vec2_i32(-vec2<i32>(29785i, 0i), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.b)))), u_input.a.xy, vec2<bool>(true, !all(vec4<bool>(true, false, false, true)))));
    var var_3 = var_1.x ^ ~1u;
    return 1u & arg_0.e.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = ~vec4<u32>(~(~func_3(Struct_2(1571f, 43096i, vec2<f32>(-223f, -216f), Struct_1(vec4<u32>(25956u, 1u, 4294967295u, 1u), vec3<f32>(-585f, 345f, -1000f), vec4<u32>(781u, 0u, 27503u, 47740u)), Struct_1(vec4<u32>(3461u, 1u, 4294967295u, 55595u), vec3<f32>(1000f, 1114f, -450f), vec4<u32>(71804u, 64973u, 4294967295u, 1u))))), 0u, _wgslsmith_clamp_u32(~(~73317u), 1u, func_3(Struct_2(-823f, 0i, vec2<f32>(126f, 2215f), Struct_1(vec4<u32>(4294967295u, 0u, 101113u, 4294967295u), vec3<f32>(-1000f, 171f, 273f), vec4<u32>(1u, 38590u, 27919u, 78161u)), Struct_1(vec4<u32>(1u, 5683u, 32370u, 1u), vec3<f32>(1000f, 1319f, -474f), vec4<u32>(0u, 4294967295u, 29331u, 4294967295u))))), 91u);
    let var_1 = Struct_1(~select(vec4<u32>(max(39833u, 11554u), _wgslsmith_clamp_u32(10855u, 4294967295u, 105505u), 89919u, var_0.x), reverseBits(~vec4<u32>(var_0.x, var_0.x, 0u, 26813u)), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-992f, -789f, -174f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(376f, -548f, 1777f) - vec3<f32>(147f, 527f, -1227f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, 525f, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, 209f, 1462f)))), vec4<u32>(~firstLeadingBit(76414u), 1u, min(_wgslsmith_add_u32(1u, var_0.x), 1u), var_0.x) | vec4<u32>(5274u, 4294967295u, 7832u, var_0.x));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1272f))));
    var_0 = var_1.c;
    var_2 = var_1.b.x;
    return Struct_2(_wgslsmith_f_op_f32(-var_1.b.x), u_input.a.x, vec2<f32>(-173f, -1505f), Struct_1(select(var_1.a, min(var_1.a, vec4<u32>(1u, 4294967295u, var_1.c.x, 40681u) | vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -1237f, var_1.b.x))), ~var_1.a), Struct_1(vec4<u32>(_wgslsmith_mult_u32(~var_0.x, ~0u), ~(~var_1.a.x), var_1.c.x, firstTrailingBit(4294967295u) | 6011u), _wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(245f, _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), var_1.b.x)), var_1.c));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = -u_input.a.zz;
    var_0 = u_input.a.xx;
    var_0 = vec2<i32>(countOneBits(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, -1i, var_0.x), vec4<i32>(var_0.x, -1i, -40219i, u_input.b))), countOneBits(firstTrailingBit(countOneBits(-u_input.a.x))));
    var var_1 = ~((((var_0.x | var_0.x) & ~var_0.x) ^ ~u_input.a.x) << (_wgslsmith_div_u32(arg_1.x, _wgslsmith_mod_u32(select(4294967295u, 19267u, true), arg_1.x)) % 32u));
    var var_2 = func_2();
    return vec3<i32>(-2147483647i, reverseBits(-23008i) | var_0.x, i32(-1i) * -abs(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
    var var_1 = 4294967295u;
    var var_2 = u_input.a;
    var_2 = func_1(!vec2<bool>(!select(true, false, false), !any(vec3<bool>(true, true, false))), ~abs(vec2<u32>(1u, 1u)), vec4<f32>(1547f, _wgslsmith_f_op_f32(sign(262f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1426f), 1000f)), -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -685f)));
    let var_3 = func_2();
    let var_4 = var_3.d.b.xz;
    var_1 = 53265u;
    var var_5 = var_3.d.c.wy;
    let x = u_input.a;
    s_output = StorageBuffer(35332u);
}

