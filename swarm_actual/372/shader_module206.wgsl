struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(8081i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-1i), Struct_1(0i), Struct_1(-27619i), Struct_1(1i), Struct_1(31644i), Struct_1(-1i), Struct_1(-2579i), Struct_1(42075i), Struct_1(-69856i), Struct_1(1i), Struct_1(2147483647i), Struct_1(11537i), Struct_1(-56736i), Struct_1(i32(-2147483648)), Struct_1(12026i), Struct_1(1i), Struct_1(-54599i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-59890i));

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = vec2<bool>(true, true);
    global0 = var_0.a;
    var var_2 = -2516i;
    let var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1406f)))) + _wgslsmith_f_op_f32(round(arg_0.x)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = ~min(vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.a)), ~vec2<u32>(1u, 0u)), _wgslsmith_div_u32(0u, u_input.d) | 0u, ~u_input.d, abs(_wgslsmith_mult_u32(u_input.d, u_input.b))), vec4<u32>(1u, abs(u_input.d), ~1u, u_input.d));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(1u), 3u)];
    let var_2 = global2[_wgslsmith_index_u32(~(~var_0.x), 3u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_2 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)))));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, -7301i, u_input.c) | vec3<i32>(u_input.c, arg_1.a, var_1.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, arg_3.a, arg_3.a), vec3<i32>(arg_3.a, -1i, var_1.a), vec3<i32>(2147483647i, 2147483647i, u_input.c))), reverseBits(vec3<i32>(select(u_input.c, -23560i, false), 2147483647i, 1428i))));
    return ~vec3<u32>(var_0.x << (_wgslsmith_mult_u32(~21637u, 4294967295u ^ var_0.x) % 32u), ((0u & u_input.a) & _wgslsmith_div_u32(var_0.x, 1u)) >> (var_0.x % 32u), ~(~_wgslsmith_dot_vec2_u32(var_0.xy, var_0.zw)));
}

fn func_1(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-573f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(-1000f, -845f, 978f, 605f), global2[_wgslsmith_index_u32(u_input.b, 3u)])) - -757f))));
    global1 = array<Struct_1, 23>();
    let var_1 = Struct_1(reverseBits(-(~u_input.c)) | u_input.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-555f, -1026f, -435f, -419f), vec4<f32>(775f, 774f, 1000f, 287f)), vec4<f32>(-2202f, 2359f, 863f, -914f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(582f, -1000f, 309f, 169f) - vec4<f32>(-1000f, 528f, -605f, -260f)))), var_1)));
    var var_3 = _wgslsmith_add_vec3_u32(min(countOneBits(~(~vec3<u32>(u_input.a, 0u, 4294967295u))), func_3(_wgslsmith_div_vec3_f32(vec3<f32>(169f, -1309f, 753f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-362f, -1248f, 913f) + vec3<f32>(267f, -493f, -341f))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, u_input.a, u_input.b), 23u)], vec2<f32>(-475f, _wgslsmith_div_f32(1239f, -1502f)), Struct_1(var_1.a))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.a, u_input.d), vec3<u32>(u_input.b, u_input.a, u_input.a) & vec3<u32>(5413u, 4294967295u, u_input.b)) << (abs(vec3<u32>(~12133u, 4294967295u, 4294967295u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(466f, -735f), vec2<f32>(-384f, -966f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(720f, 251f))) - vec2<f32>(1255f, 461f)), select(arg_0.x, true, arg_0.x)))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(254f, _wgslsmith_f_op_f32(-1925f + -163f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1089f), _wgslsmith_f_op_f32(func_2(vec4<f32>(1643f, 1837f, -615f, -282f), var_1))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(434f, 611f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1471f) + -1000f) * _wgslsmith_f_op_f32(-2005f - -1206f))))));
    var var_1 = reverseBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -1056f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, 1639f))) * _wgslsmith_f_op_vec2_f32(func_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, -480f) - vec2<f32>(974f, -524f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-614f, 246f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1806f, -736f), vec2<f32>(301f, -374f), false)))))), any(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)))));
}

