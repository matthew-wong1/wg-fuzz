struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_2 = Struct_2(55382u, Struct_1(32900u, vec2<f32>(-1928f, 1754f)), Struct_1(123308u, vec2<f32>(1339f, 734f)), 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xxx) * arg_0.yzx);
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(4390u, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.b.a, u_input.d.x), 8u)], ~32406u), vec2<i32>(1i, 1i));
    var var_1 = reverseBits(-vec2<i32>(var_0.b.x, i32(-1i) * -var_0.b.x));
    var var_2 = any(select(vec4<bool>(true | all(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, false, true, true)), reverseBits(var_1.x) < _wgslsmith_clamp_i32(2147483647i, 1i, -21850i), false), !vec4<bool>(false, var_1.x >= 5435i, true, true), select(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true), vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), false), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.b.x, -506f, 382f, var_0.a.b.b.x) - vec4<f32>(-1297f, -308f, 884f, global1.b.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, var_1.x, 0i, var_0.b.x), vec4<i32>(var_0.b.x, var_1.x, -52452i, var_0.b.x)), var_0.a, var_0.b.x & var_0.b.x))));
    var_1 = abs(~(-max(var_0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 0i), var_0.b))));
    var var_3 = (-firstLeadingBit(vec4<i32>(var_1.x, var_0.b.x, 2147483647i, 0i)) & (vec4<i32>(-1i) * -(~vec4<i32>(var_1.x, 0i, 2147483647i, var_0.b.x)))) | _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_1.x, var_0.b.x, 0i, 12415i) ^ vec4<i32>(var_1.x, var_1.x, var_0.b.x, 1i)) & vec4<i32>(-var_1.x, var_0.b.x, -2147483647i, 32470i), vec4<i32>(-24575i, ~var_1.x, _wgslsmith_div_i32(var_1.x, -2147483647i), var_0.b.x));
    return var_0.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(55160u, 8u)];
    let var_1 = Struct_3(func_2(), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(5125i, 57477i))), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-4117i, -2147483647i), vec2<i32>(2147483647i, 5861i), vec2<i32>(9166i, 1i)), vec2<i32>(0i, -1i))), vec2<i32>(_wgslsmith_sub_i32(-1i, -1i), 0i)));
    let var_2 = 20246u;
    var var_3 = Struct_3(var_1.a, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(abs(var_1.b), vec2<i32>(-31977i, 0i) & vec2<i32>(var_1.b.x, 27802i)) & var_1.b, _wgslsmith_mult_vec2_i32(~var_1.b, countOneBits(-var_1.b))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b.b.x), global1.b.b.x), var_0.b.x))));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.c.a, global1.c, func_1(vec2<bool>(true, true)), 1u);
    var var_1 = _wgslsmith_sub_vec4_i32(-firstTrailingBit(~vec4<i32>(1i, 1i, -1i, -10584i)), ~vec4<i32>(2147483647i, -1i, firstLeadingBit(2147483647i), 1i));
    var var_2 = reverseBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(17151u, global1.b.a, var_0.c.a, global1.b.a)), ~select(~vec4<u32>(79988u, 0u, u_input.c, 2715u), vec4<u32>(u_input.a.x, 4294967295u, global1.b.a, u_input.a.x), false), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.a, global1.b.a, var_0.d, 40999u), vec4<u32>(global1.c.a, 51739u, u_input.d.x, global1.a)), ~vec4<u32>(32415u, global1.a, 71491u, global1.d) & firstLeadingBit(vec4<u32>(var_0.d, 3923u, global1.b.a, u_input.d.x)))));
    let var_3 = false;
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(!select(vec2<bool>(var_3, false), vec2<bool>(true, false), false), select(select(vec2<bool>(false, false), vec2<bool>(var_3, var_3), false), vec2<bool>(var_3, true), true), !vec2<bool>(false, var_3))).a, vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(62948u, u_input.c), 1u), ~global1.d));
}

