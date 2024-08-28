struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let var_0 = u_input.d;
    let var_1 = ~select(~vec3<u32>(u_input.c.x, u_input.c.x, 647u), select(vec3<u32>(_wgslsmith_div_u32(32482u, u_input.c.x), ~u_input.b, abs(1u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 42234u, u_input.b), ~vec3<u32>(60478u, 1u, 1u)), all(vec2<bool>(arg_2.a.b.x, arg_2.a.b.x)) || false), true);
    global0 = array<Struct_1, 10>();
    return min(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, _wgslsmith_add_u32(40241u, arg_2.a.d), arg_2.a.d), vec4<u32>(61866u, select(4294967295u, 1u, false), var_1.x, ~17345u) & ~abs(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x))), vec4<u32>(0u, 50443u, max(countOneBits(1u) & u_input.b, 46307u), 5910u));
}

fn func_2() -> Struct_2 {
    let var_0 = ~u_input.d.x;
    global0 = array<Struct_1, 10>();
    var var_1 = vec4<u32>(7793u, firstTrailingBit((u_input.c.x | u_input.c.x) & ~44425u), max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 31722u), 4294967295u), u_input.c.x), 82443u) << (func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1124f, -854f, -104f), vec3<f32>(1366f, 800f, 103f), vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-238f, 1412f, 403f) - vec3<f32>(1000f, 939f, -465f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(750f, 480f, 564f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(989f, 1000f, 282f), vec3<f32>(-1114f, -318f, -169f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(u_input.c.x), 4294967295u), 10u)], u_input.b, _wgslsmith_add_i32(abs(37723i), var_0), u_input.c.x)) % vec4<u32>(32u));
    var var_2 = true;
    return Struct_2(Struct_1(vec2<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(false, true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f * 1096f)), _wgslsmith_f_op_f32(-121f - 249f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, u_input.b, var_1.x) ^ ~vec4<u32>(1u, 1u, 0u, 20919u), ~(~vec4<u32>(u_input.b, u_input.b, var_1.x, 4294967295u)))), var_1.x, _wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, 1i))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(var_1.x, var_1.x) ^ var_1.xy), max(vec2<u32>(14960u, u_input.c.x), ~var_1.yy) & vec2<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, 0u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    global0 = array<Struct_1, 10>();
    let var_1 = vec4<bool>(true, !var_0.a.a.x, any(!vec2<bool>(var_0.a.b.x, var_0.a.a.x)) && false, select(all(!(!vec2<bool>(var_0.a.a.x, var_0.a.a.x))), any(!var_0.a.b), all(var_0.a.a)));
    var var_2 = u_input.d.zx;
    return all(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, 330f, -1000f, 2116f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1653f, -291f, 789f))), true, select(true, all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f))))))), _wgslsmith_div_f32(2313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f - _wgslsmith_f_op_f32(f32(-1f) * -782f)))));
    var var_2 = func_2();
    let var_3 = u_input.a ^ -_wgslsmith_clamp_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.d.x, 32937i, u_input.d.x, 5076i))), u_input.a, vec4<i32>(var_2.c, u_input.a.x, 1i, ~2611i));
    let var_4 = var_3.x;
    global0 = array<Struct_1, 10>();
    var_0 = func_2().a.b;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(297f, var_1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c, 964f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_2.a.c, false)), 263f)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * -1288f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(295f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

