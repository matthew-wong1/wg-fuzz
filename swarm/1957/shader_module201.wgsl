struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = array<f32, 7>();
    let var_0 = !vec3<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true)), select(true, min(u_input.e.x, 4294967295u) == 0u, any(vec3<bool>(true, false, true))));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.b, abs(~25948u)), reverseBits(_wgslsmith_dot_vec4_u32(~(vec4<u32>(38353u, u_input.e.x, u_input.d.x, 1u) & vec4<u32>(0u, 1u, 0u, u_input.e.x)), firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, u_input.b) >> (vec4<u32>(0u, 51765u, 30378u, u_input.e.x) % vec4<u32>(32u))))), 60148u);
    var var_2 = Struct_1(-1000f);
    var var_3 = all(select(var_0, var_0, var_0.x));
    return !(!(!select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), !vec4<bool>(true, var_0.x, true, true), true)));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<i32> {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.a, -2293f, arg_2.b.x)) * 1709f)))));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.c, abs(u_input.a.x)), abs(firstLeadingBit(u_input.c)));
    global0 = array<f32, 7>();
    return reverseBits(select(abs(select(_wgslsmith_add_vec4_i32(vec4<i32>(7027i, arg_2.c, 1i, arg_2.c), vec4<i32>(u_input.a.x, var_1.x, -1i, -24522i)), firstLeadingBit(vec4<i32>(u_input.a.x, 0i, 1i, u_input.c.x)), false & arg_0)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, u_input.c.x), vec4<i32>(36897i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(1i, arg_2.c, u_input.a.x, -23524i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -1i, -30350i, -2147483647i) >> (arg_2.e % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -2147483647i, 12203i, -22187i), vec4<i32>(1i, arg_2.c, 7573i, var_1.x)), vec4<i32>(0i, -33912i, var_1.x, 1i)), -283f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a - 1000f) + arg_2.a.a)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = -(~func_4(!all(vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, false), func_3(), true), Struct_2(Struct_1(758f), vec2<bool>(true, true), ~(-42615i), 0u & u_input.d.x, select(vec4<u32>(u_input.b, u_input.e.x, 9490u, u_input.d.x), vec4<u32>(25462u, 4294967295u, 4294967295u, u_input.d.x), false))));
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32((reverseBits(61596u) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 49685u, u_input.d.x), vec4<u32>(u_input.d.x, 55503u, u_input.d.x, u_input.d.x))) | _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e, u_input.d), vec3<u32>(u_input.e.x, 4294967295u, 41174u)), u_input.d.x, 8859u), 7u)] + -2308f);
    global0 = array<f32, 7>();
    let var_2 = true;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -541f), arg_0));
    return u_input.e.x;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: u32) -> vec3<bool> {
    var var_0 = !vec3<bool>(!(true || all(vec4<bool>(true, true, false, true))), true, any(vec2<bool>(true, true)));
    var var_1 = !vec3<bool>(all(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, true))), true, global0[_wgslsmith_index_u32(u_input.e.x, 7u)] > _wgslsmith_f_op_f32(676f + _wgslsmith_f_op_f32(f32(-1f) * -179f)));
    let var_2 = abs(countOneBits(_wgslsmith_dot_vec3_u32(arg_1.zyy, vec3<u32>(~arg_1.x, 1u, u_input.d.x))));
    let var_3 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(13399u, firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.b))), ~firstLeadingBit(var_2), 29686u), func_2(133f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_1, reverseBits(arg_1)), arg_3, ~arg_1.x ^ ~4294967295u), 7u)], (func_4(var_0.x, vec4<bool>(var_1.x, var_1.x, var_1.x, var_0.x), Struct_2(Struct_1(-600f), var_1.xx, 0i, arg_1.x, arg_1)).ww << (arg_1.zy % vec2<u32>(32u))) >> (~vec2<u32>(24431u, 77137u) % vec2<u32>(32u)), u_input.a.x));
    var_0 = vec3<bool>(any(func_3().xw), !all(vec3<bool>(true, var_1.x, any(vec2<bool>(true, var_1.x)))), select(all(!vec2<bool>(false, var_0.x)), !(var_0.x & false), !all(vec3<bool>(var_0.x, true, var_0.x))) & !all(vec2<bool>(var_0.x, var_0.x)));
    return vec3<bool>(var_0.x, abs(u_input.b) >= 1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(650f, 1451f)))) == global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mult_u32(1u, arg_3)), 7u)]);
}

fn func_1() -> Struct_1 {
    let var_0 = reverseBits(~_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(~4294967295u, abs(4294967295u), ~1u)));
    var var_1 = firstTrailingBit(~var_0.x & _wgslsmith_div_u32(_wgslsmith_div_u32(89026u, 13569u), var_0.x));
    let var_2 = !select(vec3<bool>(true, true, true), !func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(-42523i, 1i, u_input.c.x, -41829i), vec4<i32>(1i, u_input.c.x, 2147483647i, u_input.a.x)), ~vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.e.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(33520u, 7u)], -1237f))), func_2(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(var_0.x, 7u)], u_input.c, 2147483647i)), select(false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), false));
    var_1 = _wgslsmith_add_u32(1u, countOneBits(func_2(-680f, global0[_wgslsmith_index_u32(55212u, 7u)], vec2<i32>(u_input.c.x & u_input.a.x, u_input.a.x), u_input.a.x)));
    global0 = array<f32, 7>();
    return Struct_1(_wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.yz, u_input.e.yz), 7u)])) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    var var_0 = func_1();
    let var_1 = Struct_3(abs(vec3<u32>(~(47584u << (1u % 32u)), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b) & vec4<u32>(736u, u_input.d.x, 66065u, u_input.b), firstTrailingBit(vec4<u32>(0u, 92296u, 1u, 4873u))))), ~select(~_wgslsmith_add_u32(u_input.d.x, u_input.b), u_input.e.x, any(vec2<bool>(false, false))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_clamp_u32(~select(32610u, u_input.b, true), u_input.e.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32078u, 0u, 19583u, 1u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, u_input.e.x)), select(u_input.b, var_1.a.x, false))), u_input.e.x), 7u)];
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-696f, ~_wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(~u_input.a.x, 11250i)));
}

