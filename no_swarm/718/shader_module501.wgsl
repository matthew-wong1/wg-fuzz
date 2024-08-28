struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

var<private> global2: vec2<u32> = vec2<u32>(53408u, 2946u);

var<private> global3: bool;

var<private> global4: array<vec4<bool>, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = 1958f;
    global0 = vec3<bool>(!select(!all(global4[_wgslsmith_index_u32(0u, 28u)]), true, true), true, global0.x & select(true, global0.x, true));
    global2 = vec2<u32>(reverseBits(global2.x), 0u);
    var var_1 = select(vec2<i32>(~1i, -1627i), u_input.a, global0.yx);
    var var_2 = firstLeadingBit(global2.x);
    return Struct_1(vec3<i32>(_wgslsmith_add_i32(arg_0.x, ~1i), -46640i, -u_input.a.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = arg_0.a;
    let var_2 = -31745i;
    let var_3 = arg_0;
    let var_4 = ~1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(546f))))) - _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(-1387f + -284f));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = !(!select(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), global0.x), select(vec3<bool>(false, false, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, true, true))), _wgslsmith_div_f32(546f, 526f) >= _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<i32>(arg_0.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(1u, global2.x)), global4[_wgslsmith_index_u32(global2.x, 28u)], arg_0.a.x, arg_0))));
    global4 = array<vec4<bool>, 28>();
    var var_0 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(firstLeadingBit(global2.x >> (2350u % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 47091u, 59754u), vec3<u32>(4294967295u, global2.x, global2.x)), ~global2.x), abs(103479u)), _wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(1u, global2.x, 34559u)), ~(vec3<u32>(10203u, global2.x, global2.x) >> (vec3<u32>(95790u, 1u, 0u) % vec3<u32>(32u)))), true & any(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, global2.x), 28u)])), (select(vec3<u32>(83039u, global2.x, global2.x), abs(vec3<u32>(global2.x, 1u, global2.x)), select(false, true, global0.x)) | ~vec3<u32>(global2.x, global2.x, 56119u)) | (~vec3<u32>(global2.x, 6928u, global2.x) | vec3<u32>(global2.x, 23169u, select(40808u, 50171u, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2036f, -247f, 1866f, 188f)) - vec4<f32>(1127f, -1000f, -1659f, 1236f)) - vec4<f32>(_wgslsmith_f_op_f32(-804f - -209f), _wgslsmith_f_op_f32(func_3(Struct_2(arg_0, vec2<u32>(global2.x, var_0.x)), global4[_wgslsmith_index_u32(global2.x, 28u)], arg_0.a.x, Struct_1(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)))), -2224f, _wgslsmith_f_op_f32(step(185f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(881f, -525f, -1114f, 1091f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, 127f, -176f, -556f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, -670f, 423f, 450f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, 280f, -521f, -268f)), select(global0.x, global0.x, global0.x))), global0.x)), false))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1248f, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 647f, var_1.x, -422f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-171f, var_1.x, -654f, -442f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(383f, var_1.x, -1000f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -1304f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(min(var_1.x, 1173f)), 527f)))));
    return max(~countOneBits(select(4294967295u, var_0.x, global0.x) & var_0.x), ~abs(global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global2.x, func_2(func_1(~(-vec3<i32>(u_input.a.x, u_input.a.x, 24349i))))), 28u)];
    var var_1 = Struct_2(func_1(max(countOneBits(-vec3<i32>(u_input.a.x, -1i, 2147483647i)), ~select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), true))), ~vec2<u32>(global2.x << (global2.x % 32u), _wgslsmith_mult_u32(global2.x, 4294967295u)) ^ vec2<u32>(_wgslsmith_sub_u32(28829u, select(20410u, global2.x, true)), 10712u));
    let var_2 = Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, -u_input.a.x, var_1.a.a.x)), vec2<u32>(~(~4294967295u), abs(_wgslsmith_dot_vec2_u32(var_1.b, var_1.b)))), global4[_wgslsmith_index_u32(global2.x, 28u)]);
    let var_3 = Struct_3(var_2.a, vec4<bool>(!(!any(var_2.b)), 247f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1191f))), all(global0.zy), !any(select(vec3<bool>(true, var_2.b.x, var_2.b.x), var_0.zzw, vec3<bool>(false, true, global0.x)))));
    let var_4 = Struct_3(Struct_2(Struct_1(-reverseBits(vec3<i32>(50004i, var_1.a.a.x, var_2.a.a.a.x))), ~vec2<u32>(1u, global2.x)), select(!var_2.b, global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(var_1.b.x, 36155u, 1u)), 28u)], global0.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(abs(-1404f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1586f * -213f), _wgslsmith_f_op_f32(select(-751f, -553f, global0.x))) + -268f)));
    var var_5 = -(~(-abs(vec3<i32>(1i, var_3.a.a.a.x, var_2.a.a.a.x))) << ((reverseBits(~vec3<u32>(32326u, 64207u, var_1.b.x)) | ~reverseBits(vec3<u32>(var_1.b.x, global2.x, 0u))) % vec3<u32>(32u)));
    var var_6 = vec3<i32>(-abs(-1i), -15105i, func_1(-_wgslsmith_mult_vec3_i32(var_2.a.a.a, vec3<i32>(9714i, var_2.a.a.a.x, var_4.a.a.a.x))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(36167u, _wgslsmith_mult_u32(var_3.a.b.x, _wgslsmith_add_u32(var_4.a.b.x, var_2.a.b.x)), 0u | var_1.b.x, ~firstTrailingBit(4294967295u))), vec3<u32>(_wgslsmith_div_u32(var_2.a.b.x, ~1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_4.a.b.x, var_1.b.x, 4294967295u, 2747u)), vec4<u32>(var_2.a.b.x, 0u, var_3.a.b.x, 4294967295u) ^ vec4<u32>(0u, var_1.b.x, 1u, 16774u)) >> (var_2.a.b.x % 32u), var_4.a.b.x), firstLeadingBit(~reverseBits(var_2.a.a.a.x << (var_2.a.b.x % 32u))));
}

