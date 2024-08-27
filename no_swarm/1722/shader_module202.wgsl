struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 0u);

var<private> global1: u32 = 68630u;

var<private> global2: u32 = 39736u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = abs(global0.b);
    global0 = arg_0;
    global0 = arg_0;
    var var_2 = Struct_1(abs(countOneBits(-(~vec2<i32>(1i, -2147483647i)))), _wgslsmith_div_u32(_wgslsmith_mod_u32(select(49337u, global0.b, -2147483647i > global0.a.x), arg_1.b), ~0u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-859f)));
}

fn func_3() -> f32 {
    global2 = 0u;
    let var_0 = Struct_1(~firstLeadingBit(-vec2<i32>(u_input.b.x, u_input.a.x) ^ ~u_input.a), 26770u);
    global2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~1u, var_0.b), max(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.b, global0.b) >> (vec2<u32>(global0.b, var_0.b) % vec2<u32>(32u)), ~vec2<u32>(global0.b, var_0.b)), _wgslsmith_add_vec2_u32(vec2<u32>(~global0.b, var_0.b), select(abs(vec2<u32>(4294967295u, var_0.b)), ~vec2<u32>(0u, var_0.b), true))));
    let var_1 = 21809i;
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> StorageBuffer {
    var var_0 = Struct_1(select(abs(vec2<i32>(0i, 21406i)), -u_input.b.zx, vec2<bool>((global0.b >= global0.b) && true, select(true, true, true))), 74803u);
    var var_1 = vec3<i32>(~(-352i), ~_wgslsmith_mod_i32(var_0.a.x, countOneBits(_wgslsmith_mult_i32(var_0.a.x, 17683i))), var_0.a.x ^ -_wgslsmith_dot_vec3_i32(u_input.b, -u_input.b));
    let var_2 = firstTrailingBit(var_0.b);
    global1 = global0.b;
    global0 = Struct_1(select(~(~vec2<i32>(var_0.a.x, 2147483647i)), global0.a, vec2<bool>(true, true)) >> (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(42911u, global0.b), vec2<u32>(0u, global0.b), vec2<u32>(0u, var_2))) % vec2<u32>(32u)), _wgslsmith_clamp_u32(~(~(~global0.b)), 15596u & firstTrailingBit(1u), _wgslsmith_add_u32(var_0.b, 49345u)));
    return StorageBuffer(countOneBits(~_wgslsmith_clamp_u32(countOneBits(var_2), 1u, var_0.b | var_0.b)), ~(_wgslsmith_sub_vec4_i32(~vec4<i32>(global0.a.x, var_1.x, var_1.x, -1i), vec4<i32>(-10373i, -13701i, var_0.a.x, var_1.x) | vec4<i32>(var_1.x, u_input.b.x, u_input.b.x, -2147483647i)) ^ max(vec4<i32>(u_input.b.x, -1i, -29497i, var_1.x), -vec4<i32>(u_input.b.x, -61575i, var_1.x, u_input.a.x))), 4294967295u);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = firstLeadingBit(-_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global0.a.x, -1i)), global0.a)) << (~2747u % 32u);
    var var_1 = abs(~(~global0.b));
    let var_2 = arg_1;
    let var_3 = vec2<i32>(-6292i, ~(-40425i));
    var var_4 = var_2;
    return func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2655f) + _wgslsmith_f_op_f32(floor(-2234f))), _wgslsmith_f_op_f32(446f - _wgslsmith_f_op_f32(func_2(Struct_1(global0.a, arg_1.b), var_2)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(412f, -942f)) + _wgslsmith_f_op_f32(ceil(-527f))), _wgslsmith_f_op_f32(func_2(Struct_1(global0.a, arg_1.b), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(751f)) + _wgslsmith_f_op_f32(func_3()))), -156f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2123f, 1017f)) * -229f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2162f * -264f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f * -293f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(abs(u_input.b)), Struct_1(~_wgslsmith_div_vec2_i32(u_input.b.zx, vec2<i32>(-2147483647i, global0.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, global0.b), vec2<u32>(4294967295u, 0u)) << (_wgslsmith_div_u32(~global0.b, global0.b) % 32u)));
}

