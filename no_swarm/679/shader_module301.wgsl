struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: Struct_1;

var<private> global3: i32 = -4141i;

var<private> global4: u32 = 37695u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec3<bool>(true, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(vec3<bool>(0i == u_input.b, false, !any(vec4<bool>(true, false, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -323f)), 1f)))));
    global2 = Struct_1(u_input.a.wy | vec2<i32>(min(_wgslsmith_add_i32(1i, -15862i), reverseBits(-1i)), _wgslsmith_clamp_i32(-1i, global2.a.x, global2.a.x)));
    let var_2 = Struct_1(-global2.a);
    let var_3 = any(!(!select(!vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(false, true, false, var_0.x))));
    return select(-abs(select(global2.a.x, -27699i, false) >> (4294967295u % 32u)), -2147483647i, !select(all(!vec4<bool>(var_0.x, false, true, true)), var_0.x, var_3 & any(vec4<bool>(false, false, true, var_3))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~(~(~u_input.d.yx)) & (vec2<u32>(reverseBits(u_input.d.x), u_input.d.x) ^ ~firstTrailingBit(vec2<u32>(46839u, u_input.d.x))));
    global3 = _wgslsmith_mod_i32(global2.a.x, -func_3(Struct_1(max(u_input.c.yx, global2.a))));
    var var_1 = global1[_wgslsmith_index_u32(96665u, 13u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-879f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-517f, -415f)))))), !any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false)))));
    var var_3 = var_2;
    return Struct_1(select(-(~(~vec2<i32>(global2.a.x, u_input.b))), vec2<i32>(-1i << ((var_0.x >> (28173u % 32u)) % 32u), 32068i), false));
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    global3 = global2.a.x;
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global2.a.x, u_input.b, 7352i), -u_input.c), u_input.c.x), ~u_input.c.yy));
    let var_1 = func_2();
    var var_2 = vec2<bool>(true, !(!any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))));
    var var_3 = 8872u;
    return abs(firstTrailingBit(vec2<u32>(4294967295u >> (u_input.d.x % 32u), reverseBits(5556u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global3 = -22718i;
    var var_0 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~(26382u << (arg_1.x % 32u)) > (71247u >> (arg_1.x % 32u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(u_input.d.x), ~(~2998u), 58109u), u_input.d, u_input.d), vec3<u32>(reverseBits(_wgslsmith_mult_u32(13998u, u_input.d.x ^ 1u)), ~1774u, 0u), false);
    var var_1 = func_4(vec4<i32>(-u_input.b, firstLeadingBit(-2147483647i), 2147483647i, u_input.b), min(_wgslsmith_add_vec2_u32(var_0.yy >> (var_0.yy % vec2<u32>(32u)), func_1(var_0)) >> (u_input.d.xz % vec2<u32>(32u)), var_0.yx));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-131f, -501f, -784f, -1154f), vec4<f32>(-957f, -1367f, -715f, 612f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, -1085f, 329f, 177f) - vec4<f32>(1394f, -1107f, 146f, 1067f)))))));
    var var_3 = global1[_wgslsmith_index_u32(var_0.x, 13u)];
    global0 = array<vec4<u32>, 8>();
    var_3 = func_4(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(2373i, u_input.b, global2.a.x, u_input.a.x) ^ vec4<i32>(var_1.a.x, -22022i, -12164i, 32158i)), vec4<i32>(_wgslsmith_div_i32(var_1.a.x, -63002i), -global2.a.x, var_1.a.x >> (u_input.d.x % 32u), var_3.a.x ^ -39446i)) ^ abs(-vec4<i32>(1i, u_input.a.x, global2.a.x, -2147483647i) >> (~vec4<u32>(4294967295u, var_0.x, 0u, 26709u) % vec4<u32>(32u))), vec2<u32>(~var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(global2.a.x, 39237i)), 1i, 42830i, -1i), firstTrailingBit(min(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a.x, var_1.a.x, var_3.a.x, 9706i), vec4<i32>(var_3.a.x, -28978i, var_3.a.x, u_input.b), u_input.a), ~(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x) | u_input.a))), _wgslsmith_div_i32(_wgslsmith_div_i32(2553i, u_input.c.x), _wgslsmith_sub_i32(-u_input.b & -1i, func_2().a.x)));
}

