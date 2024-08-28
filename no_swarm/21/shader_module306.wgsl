struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_3, 286f))))), _wgslsmith_f_op_f32(-476f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3)))))));
    let var_1 = max(abs(min(firstTrailingBit(~vec3<i32>(347i, u_input.c, 11100i)), countOneBits(vec3<i32>(-20244i, -45096i, 19818i)))), ~select(vec3<i32>(u_input.c, -7246i, -44089i), ~vec3<i32>(12544i, 20686i, -18929i) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, 20288i), vec3<i32>(u_input.c, u_input.c, u_input.c)), !select(vec3<bool>(arg_1, false, true), vec3<bool>(false, false, arg_1), vec3<bool>(true, true, global0[_wgslsmith_index_u32(43599u, 24u)]))));
    let var_2 = var_0;
    return u_input.d.xw;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1833f, 1f))));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 128f)));
    let var_2 = select(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(16058u, 32062u, u_input.d.x, 0u), u_input.d, u_input.d), u_input.d) & 48125u, arg_0), ~select(func_3(_wgslsmith_f_op_f32(-var_0), true, Struct_1(var_1.a), _wgslsmith_f_op_f32(-var_0)), vec2<u32>(1u, arg_0), global0[_wgslsmith_index_u32(~4294967295u, 24u)]), true);
    return var_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    let var_0 = vec4<f32>(-565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, -217f))) * -1000f) * arg_1.a), _wgslsmith_f_op_f32(arg_3.x + -479f), _wgslsmith_f_op_f32(func_2(arg_2, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), select(u_input.a.zx, ~vec2<u32>(u_input.d.x, 25591u), !global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), ~(-_wgslsmith_div_i32(7612i, 13584i)))));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(min(~u_input.b.x, reverseBits(firstLeadingBit(1u))), u_input.d.x, min(firstLeadingBit(4294967295u), 3074u >> (0u % 32u)) | firstTrailingBit(~u_input.b.x), ~(~1u)), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 31675u), func_3(var_0.x, global0[_wgslsmith_index_u32(34042u, 24u)], Struct_1(arg_1.a), arg_1.a).x & u_input.a.x, ~max(u_input.d.x, arg_2), 0u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d.x, 129903u, 1u), u_input.a), firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(reverseBits(~u_input.b), vec3<u32>(19808u, _wgslsmith_mod_u32(u_input.b.x, 1u), 1u)), ~(~arg_2), ~(~u_input.d.x)));
    let var_2 = true;
    var var_3 = firstTrailingBit(max(_wgslsmith_mult_vec2_i32(~abs(vec2<i32>(-27879i, u_input.c)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2167i, u_input.c)), reverseBits(vec2<i32>(u_input.c, 2147483647i)))), max(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(35467i, u_input.c), vec2<i32>(u_input.c, u_input.c)), max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, u_input.c))), select(min(vec2<i32>(-20366i, u_input.c), vec2<i32>(u_input.c, -21834i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, u_input.c)), !vec2<bool>(false, var_2)))));
    var var_4 = u_input.a.xx;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -983f)))))));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_1 = -1i;
    let var_2 = select(vec2<i32>(19611i, -var_1 ^ _wgslsmith_mult_i32(-33081i, var_1)) >> (vec2<u32>(abs(abs(u_input.b.x)), u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-7363i, -var_1), !global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.b.x, 64616u), 24u)]);
    var var_3 = var_0;
    global0 = array<bool, 24>();
    let var_4 = vec2<bool>((~44664i | select(_wgslsmith_clamp_i32(0i, var_2.x, var_2.x), _wgslsmith_mult_i32(var_2.x, u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(95821u, 48208u, 1u), 24u)])) > func_1(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], var_0, _wgslsmith_mod_u32(u_input.a.x & 68362u, ~4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, var_3.a))), !all(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false))));
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, -(~u_input.c), u_input.c), -vec4<i32>(-abs(13062i), 33188i, u_input.c, 32406i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<u32>(u_input.a.x, 0u), -1i)), -1000f, _wgslsmith_div_f32(795f, var_0.a), _wgslsmith_f_op_f32(floor(var_0.a))))), 18550i);
}

