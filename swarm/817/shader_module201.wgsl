struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(435f, 1000f), vec2<f32>(2100f, 807f), vec2<f32>(-1000f, -278f), vec2<f32>(845f, 647f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = !(!vec4<bool>(true, all(vec2<bool>(false, false)), (u_input.a.x >> (u_input.b.x % 32u)) < (u_input.a.x & -38266i), all(vec3<bool>(true, true, true))));
    var var_1 = vec2<u32>(16317u, ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x));
    var var_2 = Struct_3(select(!vec4<bool>(var_0.x, var_1.x >= u_input.b.x, true, true), vec4<bool>(all(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, true), var_0.wyy)), any(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), any(vec2<bool>(false, false)), true), select(select(!vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), any(vec3<bool>(false, var_0.x, true))), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, true, var_0.x)), var_0.x)), ~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x >> (30166u % 32u))));
    let var_3 = var_2.a.x;
    var var_4 = reverseBits(~(~vec4<i32>(u_input.a.x ^ u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), 1i, u_input.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(333f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(700f, -874f)) + _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1008f, 1000f)), 375f)))) + 1f);
}

fn func_2() -> f32 {
    var var_0 = 43679i;
    var var_1 = vec2<bool>((u_input.a.x != -2147483647i) && (-919f <= _wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(func_3()))), true);
    let var_2 = Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(~1u, ~u_input.b.x)), select(~(vec2<u32>(u_input.b.x, 35640u) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(57821u, 1u)), vec2<bool>(false || var_1.x, all(vec4<bool>(false, false, var_1.x, var_1.x))))), Struct_3(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, false, var_1.x), false)), firstLeadingBit(1u)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1047f * -2080f)))), _wgslsmith_f_op_f32(func_3())));
    var_3 = 533f;
    return 771f;
}

fn func_1() -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(756f + -1819f), 484f), _wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(383f, -1192f), u_input.b.x <= 1u))))), _wgslsmith_f_op_f32(2460f * _wgslsmith_f_op_f32(func_3())));
    global0 = array<vec2<f32>, 4>();
    let var_1 = _wgslsmith_dot_vec3_i32(~max(_wgslsmith_mod_vec3_i32(vec3<i32>(4598i, u_input.a.x, 63317i) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -46768i)), -vec3<i32>(-51834i, u_input.a.x, 2147483647i)), -vec3<i32>(1i, u_input.a.x, ~(-u_input.a.x)));
    let var_2 = true | !(min(-27957i << (1u % 32u), firstTrailingBit(-2147483647i)) == ~(-33912i));
    var var_3 = Struct_4(u_input.b, Struct_3(vec4<bool>(var_2 != (var_2 & var_2), !(!var_2), any(select(vec4<bool>(var_2, true, true, false), vec4<bool>(var_2, true, var_2, false), false)), all(vec3<bool>(var_2, var_2, true)) | var_2), u_input.b.x));
    return Struct_4(vec2<u32>(var_3.b.b, u_input.b.x), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -204f);
    var var_1 = ~(~select(41193i, _wgslsmith_add_i32(1i, u_input.a.x), all(vec2<bool>(true, true)))) >> (4294967295u % 32u);
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-343f))))))));
    global0 = array<vec2<f32>, 4>();
    let var_4 = Struct_3(vec4<bool>(!any(select(var_2.b.a, vec4<bool>(var_2.b.a.x, true, false, var_2.b.a.x), true)), false, !(!(1000f != var_3)), var_2.b.a.x), firstLeadingBit(20296u));
    let x = u_input.a;
    s_output = StorageBuffer(47742i, ~(~(~(vec3<i32>(u_input.a.x, -1i, 52059i) >> (vec3<u32>(u_input.b.x, 41224u, var_2.b.b) % vec3<u32>(32u))))));
}

