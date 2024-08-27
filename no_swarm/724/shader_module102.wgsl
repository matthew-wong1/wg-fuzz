struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<u32, 8>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, global0[_wgslsmith_index_u32(0u, 8u)]), u_input.e), 0u), global1.c), u_input.d.x, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(41374u, global0[_wgslsmith_index_u32(global1.c, 8u)], 0u)), countOneBits(vec3<u32>(u_input.e.x, 4294967295u, 34318u))), false & all(vec4<bool>(true, true, true, true)), ~reverseBits(4294967295u)), ~1i, u_input.d);
    let var_2 = -762f;
    let var_3 = Struct_2(var_1.a, var_1.b, abs(~reverseBits(var_1.c)), -countOneBits(_wgslsmith_add_vec3_i32(~u_input.d, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, global1.b, global1.b), vec3<i32>(u_input.d.x, -3746i, var_1.d.x)))));
    return Struct_1(var_1.b.a, 0i, 4294967295u, !(!global1.d), 23112u);
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-790f * 2249f))))) - -1000f);
    let var_1 = func_2(-633f, !global1.d);
    var var_2 = vec4<f32>(748f, _wgslsmith_f_op_f32(ceil(1690f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-221f * -1549f), _wgslsmith_f_op_f32(466f - -487f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f + -839f) - -1000f))));
    var var_3 = global1.d || global1.d;
    var var_4 = u_input.a | ~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(global1.b, var_1.b, var_1.b, 13071i));
    return vec3<u32>(4294967295u, max(abs(reverseBits(1u)), var_1.c), _wgslsmith_dot_vec2_u32(abs(reverseBits(u_input.e)), select(u_input.e | vec2<u32>(global1.a, global1.e), u_input.e, !arg_0)) >> (~reverseBits(abs(33816u)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    global0 = array<u32, 8>();
    global1 = func_2(1313f, !(false && !(global1.d == false)));
    var var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.e, _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 40208u), vec2<u32>(arg_1.b.e, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(_wgslsmith_div_u32(42027u, arg_1.b.a)), firstLeadingBit(~global0[_wgslsmith_index_u32(4294967295u, 8u)]), ~(u_input.e.x << (81872u % 32u))), func_3(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.d), vec2<bool>(true, true)))), 32059u);
    global1 = func_2(arg_3.x, any(select(vec3<bool>(all(vec4<bool>(false, global1.d, arg_0.d, false)), !arg_1.b.d, true), !(!vec3<bool>(arg_1.b.d, arg_0.d, true)), !all(vec3<bool>(true, true, arg_0.d)))));
    var var_1 = vec4<i32>(abs(arg_2.x), -1340i, abs(~(i32(-1i) * -1i)), u_input.b.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    let var_0 = 1i;
    var var_1 = 56736u;
    let var_2 = _wgslsmith_f_op_f32(-585f + _wgslsmith_f_op_f32(func_1(Struct_1(~(~8933u), -30266i, ~max(22240u, u_input.e.x), false, ~(~8718u)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1055f) + vec2<f32>(-1633f, -666f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-542f, -660f), vec2<f32>(198f, -379f)))), Struct_1(~global1.c, global1.b, 51412u, true, 76499u), u_input.a.x, u_input.a.zyy), u_input.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(948f, 462f, -1000f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-133f, 2612f, -764f))))))))));
    let var_3 = global1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, ~countOneBits(108883u), func_2(var_2, global1.d).c), _wgslsmith_add_vec3_u32(vec3<u32>(global1.e, reverseBits(global0[_wgslsmith_index_u32(0u, 8u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36484u, 8u)], 8u)] << (u_input.e.x % 32u)), ~(~vec3<u32>(1u, 4294967295u, u_input.e.x)))), var_0, vec4<u32>(~(~14231u), func_2(_wgslsmith_f_op_f32(floor(1813f)), true).c, _wgslsmith_mod_u32(global1.e, 1u), _wgslsmith_clamp_u32(25145u, countOneBits(u_input.e.x), global1.c)) << (reverseBits(~(vec4<u32>(0u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], 8u)]) >> (vec4<u32>(16757u, 1u, global0[_wgslsmith_index_u32(global1.c, 8u)], 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), -select(abs(-15466i) | max(u_input.b.x, global1.b), ~1i, !global1.d), min(_wgslsmith_mult_vec3_i32((vec3<i32>(u_input.c.x, 14586i, 1i) & u_input.a.xyz) | u_input.a.zwz, -(u_input.a.xwz << (vec3<u32>(81849u, u_input.e.x, 32781u) % vec3<u32>(32u)))), ~max(_wgslsmith_add_vec3_i32(u_input.a.xxz, u_input.b), u_input.d ^ vec3<i32>(global1.b, u_input.b.x, 2147483647i))));
}

