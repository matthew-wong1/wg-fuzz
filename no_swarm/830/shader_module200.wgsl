struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: vec3<f32> = vec3<f32>(193f, 157f, 555f);

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(80500u, 11127u, 43587u), 0u, 1i, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -721f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * -253f), _wgslsmith_f_op_f32(floor(global1.x)))), global1.x)));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1382f), 1162f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, global1.x), var_0.x))))));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.x, -1868f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1458f, global1.x, 629f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, -1105f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1254f, var_0.x, var_2) - vec3<f32>(var_0.x, -724f, 1126f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, global1.x, global1.x))), vec3<f32>(_wgslsmith_f_op_f32(-292f - 113f), _wgslsmith_f_op_f32(227f + 900f), -535f)))));
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(-u_input.b.xy, vec2<i32>(u_input.a.x, -1i)) >> (~(global2.b.zx << (vec2<u32>(3303u, global2.c) % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.b.zz);
    return global2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 582f) + global1.x)))));
    let var_1 = ~(-reverseBits(u_input.a.x) | -abs(global2.d >> (global2.c % 32u)));
    global2 = Struct_1(func_2(), abs(global0[_wgslsmith_index_u32(~9072u, 14u)]), _wgslsmith_add_u32(53883u, _wgslsmith_sub_u32(~global2.b.x ^ (1u >> (global2.c % 32u)), countOneBits(~4294967295u))), u_input.a.x, func_2());
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_3 = abs(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c, global2.b.x, global2.c, 40285u), _wgslsmith_sub_vec4_u32(vec4<u32>(232u, 29644u, global2.b.x, global2.c), vec4<u32>(global2.c, global2.c, 1u, global2.c)), vec4<u32>(global2.b.x, 0u, 4294967295u, 4294967295u) << (vec4<u32>(0u, 1u, global2.c, global2.b.x) % vec4<u32>(32u))) & ~(vec4<u32>(11832u, global2.b.x, 1u, global2.c) << (vec4<u32>(global2.b.x, global2.c, global2.b.x, 10039u) % vec4<u32>(32u)))));
    return Struct_1(true, global0[_wgslsmith_index_u32(abs(var_3.x) & var_3.x, 14u)], _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(13650u, 4294967295u)), firstLeadingBit(-reverseBits(abs(u_input.b.x))), arg_1);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(949f, arg_1.b, 291f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1300f, global1.x, global1.x) + vec3<f32>(global1.x, -1499f, -359f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(730f, 1214f, global1.x) * vec3<f32>(arg_1.b, -629f, 741f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, -1618f, global1.x), vec3<f32>(-1415f, global1.x, 1339f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -795f, arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, -255f, arg_1.b)), true && global2.a))))));
    let var_0 = arg_1.c.a;
    let var_1 = ~(~reverseBits(~global2.b.x)) | (~_wgslsmith_clamp_u32(arg_1.c.b.x, 74071u, abs(arg_1.a.c)) & arg_1.c.b.x);
    var var_2 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.xx, vec2<f32>(global1.x, -644f))) + _wgslsmith_f_op_vec2_f32(sign(global1.zz))), func_2()), vec3<u32>(~max(~22967u, 1u), _wgslsmith_sub_u32(firstTrailingBit(select(global2.b.x, 22476u, false)), arg_1.a.c), var_1));
    let var_3 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    global2 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(739f)) * -653f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(global2.a, 32386u < global2.b.x, true, global2.a), true)));
    let var_1 = _wgslsmith_clamp_i32(u_input.a.x, -(~(18944i << (global2.b.x % 32u))), u_input.a.x) << (~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, global2.b.x, 60839u, 1u), vec4<u32>(54970u, 49640u, global2.b.x, global2.b.x)) >> (global2.c % 32u))) % 32u);
    let var_2 = Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -1000f), !global2.e), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(32302u, _wgslsmith_dot_vec2_u32(global2.b.yy, global2.b.yy)), ~(~1u), reverseBits(~global2.b.x)), _wgslsmith_add_vec3_u32(global2.b, ~global2.b) & vec3<u32>(global2.b.x >> (global2.b.x % 32u), firstLeadingBit(global2.c), countOneBits(global2.b.x))));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(301f)))), any(vec4<bool>(false, 1584f != global1.x, -1835f == global1.x, func_3(var_1, Struct_3(var_2.a, 250f, Struct_1(global2.a, vec3<u32>(0u, 36197u, var_2.a.c), var_2.b.x, 11188i, true))))))), -317f);
    var var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1976f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(global1.x, 285f))), var_2.a.c);
}

