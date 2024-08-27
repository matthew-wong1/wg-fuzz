struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false));

var<private> global3: array<vec4<f32>, 6>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global1 = Struct_3(Struct_1(vec4<f32>(1409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) * -628f), 425f, _wgslsmith_f_op_f32(-global0.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1006f + arg_0.a.x))), 2852f, arg_0.b.x), _wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(-32085i, arg_0.c >> (0u % 32u), 1i), u_input.a << (~arg_0.d % 32u)), ~(~u_input.b), _wgslsmith_add_u32(25840u, 23712u)));
    var var_0 = Struct_2(!global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.e, abs(1u)), 15u)]);
    let var_1 = global1.a;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -828f));
    return vec3<i32>(_wgslsmith_clamp_i32(countOneBits(_wgslsmith_clamp_i32(1i | var_1.c, 74362i, firstTrailingBit(arg_0.c))), arg_0.c, 2147483647i), 68532i, var_1.c);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    global2 = array<vec4<bool>, 15>();
    global1 = Struct_3(global1.a);
    let var_0 = global1.a;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-(~func_3(global1.a)), vec3<i32>(var_0.c | -1135i, var_0.c, _wgslsmith_add_i32(var_0.c, u_input.d.x)) << (~vec3<u32>(17783u, 0u, arg_0.x) % vec3<u32>(32u))), i32(-1i) * -40535i, firstLeadingBit(global1.a.c));
    global2 = array<vec4<bool>, 15>();
    return _wgslsmith_mod_u32(min(~_wgslsmith_dot_vec3_u32(arg_0.ywz, vec3<u32>(global1.a.e, 38915u, u_input.b)), max(~30803u, min(4294967295u, arg_0.x))) & ~1u, ~(~(countOneBits(42985u) | arg_0.x)));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, global1.a.e, ~global1.a.d, ~func_2(reverseBits(vec4<u32>(1u, 72873u, 4294967295u, 4294967295u)), global0.x)), vec4<u32>(func_2(vec4<u32>(~u_input.b, 4294967295u & u_input.b, 45514u, abs(global1.a.e)), global1.a.b.x), u_input.b, 7739u, ~28641u));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(734f, _wgslsmith_f_op_f32(182f - -187f), -1245f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(801f, 237f, global1.a.a.x, global0.x) - _wgslsmith_f_op_vec4_f32(step(global1.a.a, global3[_wgslsmith_index_u32(global1.a.e, 6u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x * -1258f), global0.x, global1.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1006f)), vec4<f32>(global0.x, 192f, global0.x, _wgslsmith_f_op_f32(abs(-164f)))), -1i ^ firstLeadingBit(countOneBits(u_input.c)), ~(~(~38344u)), max(abs(countOneBits(1u)), var_0.x)));
    var var_2 = var_0;
    var var_3 = 2726u;
    global2 = array<vec4<bool>, 15>();
    return vec4<i32>(0i, ~func_3(global1.a).x, _wgslsmith_mod_i32(1i, ~global1.a.c), _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 9989i, global1.a.c, -2147483647i), -vec4<i32>(-15127i, -11090i, 61684i, -13025i))), -_wgslsmith_add_vec4_i32(vec4<i32>(-46535i, -6660i, u_input.a, 60943i), vec4<i32>(global1.a.c, global1.a.c, -1i, var_1.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(585f, _wgslsmith_f_op_f32(global1.a.b.x - _wgslsmith_f_op_f32(max(-1122f, global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 211f), 134f))));
    let var_1 = global1.a.c | -global1.a.c;
    let var_2 = _wgslsmith_f_op_f32(-global1.a.b.x);
    var var_3 = func_1();
    var var_4 = -28978i;
    var_4 = _wgslsmith_add_i32(func_3(global1.a).x, firstLeadingBit(0i));
    var var_5 = Struct_3(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 1u), 44874u, var_5.a.e), var_3.wy, ~u_input.b, firstTrailingBit(abs(vec3<u32>(global1.a.e, _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.a.e, global1.a.e, global1.a.e), vec3<u32>(var_5.a.d, u_input.b, var_5.a.e)), global1.a.d))));
}

