struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: Struct_1 = Struct_1(74638u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(u_input.d);
    let var_1 = firstTrailingBit(vec3<i32>(-u_input.e, firstLeadingBit(~u_input.c), firstTrailingBit(17417i)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global2.a), 1u)];
    let var_3 = arg_0;
    global0 = array<Struct_2, 1>();
    return var_0;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<vec2<bool>, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1239f) - -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2200f))), 1314f, _wgslsmith_f_op_f32(f32(-1f) * -298f))), vec4<f32>(-106f, _wgslsmith_f_op_f32(floor(718f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f * -1336f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f + _wgslsmith_f_op_f32(select(-1742f, 1377f, false)))))));
    global0 = array<Struct_2, 1>();
    global1 = array<vec2<bool>, 15>();
    return !(!(false || all(vec4<bool>(false, false, false, true))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !arg_0;
    var var_1 = u_input.d;
    var_1 = 17792u;
    let var_2 = abs(global2.a) ^ 35719u;
    var_1 = ~var_2;
    return Struct_1(firstTrailingBit(1u));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global2 = arg_0;
    var var_0 = Struct_1(arg_0.a ^ func_4(false, abs(u_input.e), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(global2.a, 1u), 4294967295u, select(arg_0.a, 0u, true)), 1u)]).a);
    var_0 = func_4(false, -(_wgslsmith_add_i32(u_input.b & 34123i, i32(-1i) * -34283i) | ~(-7098i)), global0[_wgslsmith_index_u32(reverseBits(u_input.d), 1u)]);
    let var_1 = arg_0;
    global1 = array<vec2<bool>, 15>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, 1000f, _wgslsmith_f_op_f32(min(-2732f, 1503f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1679f, -509f, -231f))))), !all(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(4294967295u, 15u)], vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-551f - 920f));
}

fn func_1() -> vec3<f32> {
    let var_0 = func_5(func_4(func_3(func_2(global0[_wgslsmith_index_u32(~u_input.d, 1u)])), _wgslsmith_div_i32(u_input.b, u_input.c << (23436u % 32u)) | -u_input.c, global0[_wgslsmith_index_u32(~(~max(global2.a, 44058u)), 1u)]), (global2.a ^ (global2.a ^ (global2.a << (u_input.d % 32u)))) & ~(~0u));
    var var_1 = max(select(vec4<u32>(~global2.a, 4294967295u, func_2(Struct_2(var_0.a, 1484f)).a, ~u_input.d), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, 1u, 0u, u_input.d)), vec4<u32>(firstLeadingBit(global2.a), ~0u, ~global2.a, 0u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(57104u, u_input.d, global2.a, 0u) >> (vec4<u32>(11653u, global2.a, u_input.d, u_input.d) % vec4<u32>(32u))), vec4<u32>(global2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 27940u), vec2<u32>(0u, 80173u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(4294967295u, global2.a, 31409u, 0u)), abs(4294967295u))), vec4<u32>(~(~4294967295u), 0u, _wgslsmith_mult_u32(u_input.d, global2.a), abs(~0u))));
    var var_2 = Struct_1(firstTrailingBit(max(0u, reverseBits(~var_1.x))));
    var_2 = func_4(!any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), ~(reverseBits(u_input.a) >> (max(20555u >> (global2.a % 32u), _wgslsmith_clamp_u32(70923u, global2.a, 3024u)) % 32u)), func_5(Struct_1(reverseBits(global2.a)), ~_wgslsmith_mult_u32(var_1.x, global2.a)));
    global2 = Struct_1(firstTrailingBit(12084u));
    return vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - -526f) + _wgslsmith_f_op_f32(sign(var_0.b))), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(round(var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1075f, -1964f, -927f) - vec3<f32>(-100f, -2031f, 955f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, -193f, -606f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1243f, 1193f)) * -196f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, var_0.b))) * _wgslsmith_f_op_f32(min(935f, 312f))), var_0.b)));
    var_0 = global0[_wgslsmith_index_u32(~133960u, 1u)];
    let var_2 = u_input.d;
    global1 = array<vec2<bool>, 15>();
    var_0 = global0[_wgslsmith_index_u32(global2.a, 1u)];
    var var_3 = Struct_1(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-15070i, u_input.c, 0i), ~u_input.b), -(~vec2<i32>(u_input.c, -2147483647i))) >> (global2.a % 32u), vec3<i32>(u_input.e, ~firstTrailingBit(-83415i), ~(~u_input.b)), abs((u_input.d >> (var_2 % 32u)) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(134665u, 0u), vec2<u32>(1u, u_input.d)), ~var_2) % 32u)), ~select(vec3<i32>(47549i, abs(8263i), 1i), firstTrailingBit(vec3<i32>(-2147483647i, u_input.a, u_input.c)) >> (min(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(var_3.a, 49236u, 25157u)) % vec3<u32>(32u)), vec3<bool>(true, true, true)), ~(~u_input.b & reverseBits(_wgslsmith_clamp_i32(u_input.e, 6951i, 0i))));
}

