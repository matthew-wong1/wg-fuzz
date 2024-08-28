struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-108f, 124f, -287f, 284f), vec4<f32>(1035f, 358f, -433f, -505f), vec4<f32>(160f, -1000f, -157f, 1012f), vec4<f32>(834f, 1027f, -267f, -396f), vec4<f32>(759f, -599f, 992f, -483f), vec4<f32>(1000f, -304f, 468f, 137f), vec4<f32>(-628f, -178f, 708f, -143f), vec4<f32>(334f, -401f, -1143f, 337f), vec4<f32>(-1828f, -861f, 1664f, -369f), vec4<f32>(821f, 179f, -618f, -471f), vec4<f32>(-956f, 1196f, -503f, -539f), vec4<f32>(748f, 2161f, -1000f, 2241f));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = !vec2<bool>(true, all(vec3<bool>(global0.x, -36090i != global3.c, global0.x)));
    global1 = array<Struct_1, 6>();
    var var_1 = -(~u_input.a);
    let var_2 = !global0.xww;
    let var_3 = ~u_input.c;
    return Struct_2(!any(vec4<bool>(false, global3.b.x, false, any(global0.yx))));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = global3.d;
    let var_1 = _wgslsmith_mult_i32(max(u_input.a.x, -2147483647i), _wgslsmith_mod_i32(global3.d.x, 0i | _wgslsmith_clamp_i32(532i, -79240i, -2147483647i)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f * 217f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) * _wgslsmith_f_op_f32(arg_0 * -838f))))));
    let var_3 = vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(-var_0.xxz, vec3<i32>(-1i, -(~var_1), var_1)), 0i >> ((global3.a.x << (12303u % 32u)) % 32u));
    var var_4 = Struct_2(!global3.b.x);
    return ~global3.a.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_sub_u32(u_input.b.x, countOneBits(countOneBits(69860u)))), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 24291u) << (vec2<u32>(0u, 30409u) % vec2<u32>(32u)), vec2<u32>(50489u, 5077u)), u_input.c), ~20726u);
    let var_1 = global1[_wgslsmith_index_u32(global3.a.x ^ 0u, 6u)];
    var_0 = ~0u;
    var_0 = ~max(0u, reverseBits(var_1.a.x));
    let var_2 = Struct_1(vec2<u32>(global3.a.x, var_1.a.x), global0.xx, _wgslsmith_clamp_i32(~(-621i), global3.d.x, _wgslsmith_div_i32(abs(-11464i), u_input.d)) << (~func_3(_wgslsmith_f_op_f32(step(var_1.e, global3.e)), var_1.e) % 32u), countOneBits(-vec4<i32>(i32(-1i) * -9929i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global3.d.x, 15597i), u_input.a), -u_input.d, ~u_input.a.x)), global3.e);
    return _wgslsmith_add_vec3_u32(~vec3<u32>(global3.a.x | _wgslsmith_add_u32(u_input.c, 26064u), ~(~9674u), ~global3.a.x), ~max(vec3<u32>(var_1.a.x, var_1.a.x, u_input.c), ~countOneBits(vec3<u32>(global3.a.x, 24962u, 31462u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<u32>(1u, 6779u, 39046u | _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(u_input.c, u_input.b.x, global3.a.x)), 1u));
    global0 = !vec4<bool>(true, all(!select(global0.zxy, global0.yzx, vec3<bool>(true, global3.b.x, var_0.a))), any(!global0.ww), false);
    let var_1 = func_2();
    global1 = array<Struct_1, 6>();
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -680f), vec2<f32>(-737f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1015f))))), firstTrailingBit(min(firstLeadingBit(~var_1), firstTrailingBit(var_1) >> ((var_1 & vec3<u32>(2645u, 9047u, 31771u)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-global3.e), vec4<u32>(var_1.x, u_input.c, 4294967295u, 35072u));
}

