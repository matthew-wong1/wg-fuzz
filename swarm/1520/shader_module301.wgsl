struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(1i, -73923i, 2147483647i);

var<private> global2: bool = false;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(arg_0.a, arg_0.a, u_input.a, arg_1.a)), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(2147483647i, u_input.a, -29846i, 57406i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, u_input.a, global1.x, 0i), vec4<i32>(global1.x, 1048i, arg_0.a, arg_0.a)), vec4<i32>(global1.x, 1i, 2147483647i, -21579i)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(434f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1057f, -845f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(223f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1433f * _wgslsmith_div_f32(2872f, -1566f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -116f)))))));
    let var_2 = _wgslsmith_clamp_vec4_u32(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 75160u, global0.x, 127159u), vec4<u32>(global0.x, 47029u, global0.x, global0.x) ^ vec4<u32>(global0.x, global0.x, global0.x, global0.x))), min(~(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(8040u, global0.x, global0.x, 54128u)) >> (vec4<u32>(21471u, global0.x, global0.x, global0.x) % vec4<u32>(32u))), ~firstTrailingBit(vec4<u32>(global0.x, 18762u, global0.x, global0.x))), vec4<u32>(~35180u, _wgslsmith_mult_u32(global0.x, 4376u) | 0u, _wgslsmith_mod_u32(global0.x, 84597u), global0.x) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, 24642u)), vec4<u32>(global0.x, 69039u, 1u, 41758u)), vec4<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(global0.x, 1u), ~7218u, 52570u)) % vec4<u32>(32u)));
    global2 = true;
    global0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(min(reverseBits(global0.wz), vec2<u32>(global0.x, global0.x)), vec2<u32>(4294967295u, 1u)), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(58580u, var_2.x, 97664u), vec3<u32>(8765u, 0u, 75433u))), min(16579u, firstTrailingBit(var_2.x)), var_2.x);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), -594f))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    global2 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_0 = _wgslsmith_f_op_f32(func_3(arg_2, arg_2));
    let var_1 = arg_2;
    var var_2 = u_input.b;
    var_0 = _wgslsmith_f_op_f32(sign(arg_1));
    return 1u;
}

fn func_1(arg_0: bool) -> u32 {
    global0 = ~(abs(select(~vec4<u32>(global0.x, 132409u, global0.x, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 79062u, 24533u, global0.x), vec4<u32>(40697u, global0.x, 2367u, 1u)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0))) ^ vec4<u32>(1u, firstLeadingBit(57755u), 1u, global0.x & ~7393u));
    global1 = abs(_wgslsmith_mult_vec3_i32(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, -1i), vec3<i32>(0i, global1.x, global1.x), vec3<i32>(global1.x, -1136i, -62657i)), _wgslsmith_sub_vec3_i32(vec3<i32>(8457i, global1.x, 0i), vec3<i32>(-10326i, global1.x, u_input.b.x)), select(vec3<i32>(-17809i, global1.x, -1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), arg_0)), vec3<i32>(0i, u_input.a, min(u_input.a, u_input.a))), -firstLeadingBit(vec3<i32>(-31372i, -2147483647i, u_input.a))));
    global0 = vec4<u32>(_wgslsmith_sub_u32(min(_wgslsmith_mult_u32(_wgslsmith_sub_u32(27255u, 25062u), global0.x << (global0.x % 32u)), global0.x), ~(~(~44583u))), global0.x, reverseBits(global0.x), firstLeadingBit(firstLeadingBit(~func_2(1000f, 266f, Struct_1(global1.x)))));
    let var_0 = vec4<i32>(-1i) * -(vec4<i32>(2147483647i, global1.x, firstTrailingBit(u_input.a), -1i) & firstLeadingBit(-vec4<i32>(global1.x, -1i, u_input.b.x, u_input.b.x)));
    var var_1 = Struct_1(-28549i | ((global1.x ^ _wgslsmith_sub_i32(0i, -28228i)) ^ -23228i));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~_wgslsmith_div_vec4_u32(~vec4<u32>(6472u, global0.x, global0.x, global0.x), firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, 1u))) & _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 4722u, 1u, 4294967295u), vec4<u32>(global0.x, global0.x, global0.x, 68754u))), select(vec4<u32>(global0.x, global0.x, 1u, 91359u), ~vec4<u32>(global0.x, global0.x, 47275u, 21318u), true)));
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(1u, global0.x), 1u, global0.x, global0.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 0u), vec4<u32>(global0.x, 1u, 65444u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 15156u, global0.x, global0.x), vec4<u32>(global0.x, 1u, global0.x, global0.x)))), ~vec4<u32>(1u, global0.x, func_1(all(vec3<bool>(false, true, false))), _wgslsmith_add_u32(25275u, global0.x)), vec4<u32>(firstTrailingBit(countOneBits(32563u)), abs(_wgslsmith_sub_u32(4294967295u, 0u)), 4294967295u, 0u) | _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(2149u, global0.x, global0.x, global0.x) & vec4<u32>(4294967295u, 46209u, 1u, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 29205u, global0.x, 33295u), _wgslsmith_add_vec4_u32(vec4<u32>(85736u, 1u, 20697u, 10879u), vec4<u32>(global0.x, 23616u, global0.x, 1u)))));
    var var_0 = Struct_1(0i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1292f, -1040f, -400f, -1000f), vec4<f32>(-433f, -605f, 765f, 571f))) - _wgslsmith_div_vec4_f32(vec4<f32>(2798f, 1719f, 317f, -1855f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-423f, -2216f, -138f, -918f)))))) * vec4<f32>(909f, 120f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1474f, -1881f, false)), -189f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(742f, 450f), 1281f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-664f, -1123f)))))));
    var var_2 = countOneBits(-vec4<i32>(~countOneBits(global1.x), 35530i << (_wgslsmith_clamp_u32(global0.x, global0.x, 83865u) % 32u), var_0.a, -min(9367i, 1i)));
    let var_3 = Struct_1(-min(u_input.b.x, -1i));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(2040f)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1496f)))))));
    let var_5 = Struct_1(abs(~(~(~9292i))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, global0.xwy, (_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, 2147483647i, 2147483647i, var_2.x), vec4<i32>(var_3.a, var_3.a, var_3.a, var_5.a) << (vec4<u32>(4294967295u, global0.x, global0.x, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.b.x, u_input.b.x, 41094i, 0i)) ^ vec4<i32>(var_0.a, 2147483647i, -1i, ~29424i)) & max(vec4<i32>(global1.x, max(var_5.a, u_input.a), 1i, 2147483647i), ~vec4<i32>(u_input.b.x, global1.x, -27017i, 29465i) | (vec4<i32>(u_input.a, -1i, var_2.x, var_2.x) ^ vec4<i32>(2147483647i, var_2.x, var_5.a, var_3.a))), var_1, -(~(vec2<i32>(var_2.x, -2147483647i) >> (vec2<u32>(76518u, 64361u) % vec2<u32>(32u)))));
}

