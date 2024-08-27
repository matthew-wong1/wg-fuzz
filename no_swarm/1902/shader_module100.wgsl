struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<f32, 14> = array<f32, 14>(484f, 274f, -1000f, -245f, 1000f, 349f, 557f, 1385f, -733f, 1832f, 546f, 181f, 747f, -293f);

var<private> global2: array<vec2<i32>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global2 = array<vec2<i32>, 10>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2338f, global1[_wgslsmith_index_u32(u_input.c, 14u)], -1163f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(19015u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]))))), -2028f, 22530u, select(true, true != (u_input.c > u_input.c), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))), Struct_1(vec3<f32>(151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-547f))), global1[_wgslsmith_index_u32(6056u, 14u)]), _wgslsmith_f_op_f32(abs(-498f)), ~4294967295u, true), ~abs(vec4<i32>(-2147483647i & u_input.a, u_input.a, ~(-9889i), u_input.b)), vec3<i32>(~u_input.b, -19501i, 34663i), -vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, 1i), vec4<i32>(-24369i, u_input.b, -1i, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.b), vec4<i32>(14682i, -531i, -62975i, u_input.b))), max(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.b), u_input.a), countOneBits(max(-18384i, 0i)), reverseBits(-u_input.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(341f - var_0.a.a.x))), _wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(63154u, 14u)] * -899f)))))));
    var_0 = Struct_3(var_0.a, var_0.b, vec4<i32>(2147483647i, ~(u_input.a & -31258i), ~(~u_input.a), abs(u_input.a)) & ~vec4<i32>(_wgslsmith_add_i32(43481i, -1i), _wgslsmith_div_i32(1i, u_input.b), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(1u, 10u)], var_0.c.yy), i32(-1i) * -1i), -(~vec3<i32>(var_0.e.x, ~u_input.a, ~2147483647i)), vec4<i32>(firstLeadingBit(~min(-2147483647i, u_input.b)), min(select(i32(-1i) * -1i, 10318i, u_input.b >= 1i), _wgslsmith_sub_i32(17024i, ~(-43173i))), min(var_0.e.x, var_0.d.x), firstTrailingBit(-u_input.b)));
    let var_2 = var_0.a.d;
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_3(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), 39903u, firstLeadingBit(u_input.c) != arg_2.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(arg_0.a)), vec3<f32>(arg_1.b.b, -717f, -1065f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a.x)), ~u_input.c, true), _wgslsmith_add_vec4_i32(firstLeadingBit(~arg_1.c), (arg_1.e >> (~vec4<u32>(u_input.c, arg_2.x, 73310u, 9922u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, arg_0.c, 1u, arg_2.x), vec4<u32>(1u, 88110u, arg_2.x, 45444u)) % vec4<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(arg_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(796i, arg_1.d.x), vec2<i32>(93418i, 18860i)) << (u_input.c % 32u)), 8215i, abs(-1i)), min(vec4<i32>(max(16889i, 2147483647i), arg_1.e.x, arg_1.d.x, ~(-1i)) | _wgslsmith_clamp_vec4_i32(abs(arg_1.c), arg_1.e, vec4<i32>(35808i, arg_1.e.x, -10710i, u_input.b)), arg_1.c));
    global2 = array<vec2<i32>, 10>();
    let var_1 = _wgslsmith_div_f32(var_0.a.b, arg_1.a.a.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(57943u, _wgslsmith_div_u32(53286u, ~(~func_3()))), 18u)];
    let var_3 = Struct_3(arg_1.b, var_0.b, countOneBits(~abs(arg_1.e)), -arg_1.d | abs(var_0.e.yxx), var_0.c);
    return var_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    global2 = array<vec2<i32>, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(18260u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)]), vec3<f32>(-822f, -539f, -887f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c, 14u)])), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c, 14u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f - global1[_wgslsmith_index_u32(0u, 14u)]) - _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 14u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-487f + global1[_wgslsmith_index_u32(u_input.c, 14u)])))))), _wgslsmith_div_u32(u_input.c, u_input.c & u_input.c), all(vec4<bool>(false, !all(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, true)), false)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~0u, 14u)]))));
    global2 = array<vec2<i32>, 10>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b - -1000f), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-1043f, var_1, var_1), 704f, u_input.c, var_0.d), Struct_3(Struct_1(var_0.a, 887f, 0u, var_0.d), Struct_1(vec3<f32>(-558f, 1728f, var_1), global1[_wgslsmith_index_u32(39269u, 14u)], u_input.c, false), vec4<i32>(-18824i, u_input.b, arg_1, arg_0.x), vec3<i32>(0i, arg_1, 17039i), vec4<i32>(u_input.a, 1i, 842i, arg_0.x)), vec3<u32>(u_input.c, 57721u, var_0.c))), -1394f)))), -377f, _wgslsmith_mult_u32(u_input.c, u_input.c), var_0.d);
    return 6071u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(~u_input.c << (u_input.c % 32u), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)), _wgslsmith_f_op_f32(abs(1000f))), -1000f, _wgslsmith_add_u32(_wgslsmith_mult_u32(func_1(vec3<i32>(19401i, -3184i, 51992i), 40855i), _wgslsmith_add_u32(u_input.c, 0u)), u_input.c), false), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], 1046f, 1000f), global1[_wgslsmith_index_u32(u_input.c, 14u)], u_input.c, false), Struct_3(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], 2491f, 111f), global1[_wgslsmith_index_u32(u_input.c, 14u)], u_input.c, false), Struct_1(vec3<f32>(-1462f, 1274f, global1[_wgslsmith_index_u32(4294967295u, 14u)]), 163f, 19558u, true), vec4<i32>(1659i, -1i, 2147483647i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b), vec4<i32>(-2213i, u_input.b, -1i, u_input.a)), vec3<u32>(u_input.c, 36510u, u_input.c))), _wgslsmith_f_op_f32(668f + global1[_wgslsmith_index_u32(83009u, 14u)])), -623f, _wgslsmith_f_op_f32(floor(2164f))), -243f, ~func_1(vec3<i32>(-8346i, u_input.a, 2147483647i), firstLeadingBit(u_input.b)), true), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(-1i, u_input.a)), u_input.b, ~max(-1i, u_input.b)), u_input.a, _wgslsmith_mod_i32(u_input.b, countOneBits(u_input.b)), 2147483647i), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.a), min(vec4<i32>(u_input.a, u_input.a, u_input.b, 3241i), vec4<i32>(-2147483647i, u_input.a, -2147483647i, 2147483647i))), countOneBits(_wgslsmith_add_i32(u_input.a, u_input.a))) ^ firstLeadingBit(abs(reverseBits(vec3<i32>(0i, u_input.a, 1i)))), (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b))) | -(~(-vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a))));
    let var_1 = 31339u;
    let var_2 = vec4<f32>(-1329f, 1f, -2064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.a.x, _wgslsmith_f_op_f32(select(var_0.a.a.x, 907f, false)), !var_0.a.d)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(var_0.a, Struct_3(Struct_1(var_0.b.a, var_0.b.b, var_1, false), Struct_1(var_0.a.a, 1720f, u_input.c, var_0.b.d), var_0.c, var_0.c.yzz, vec4<i32>(var_0.d.x, var_0.c.x, -2147483647i, -1i)), vec3<u32>(11825u, 106492u, 1u))), -204f))) * global1[_wgslsmith_index_u32(u_input.c, 14u)]));
    global1 = array<f32, 14>();
    var var_3 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1047f, -571f, 460f)))) + var_0.a.a))), countOneBits(u_input.c), _wgslsmith_div_u32(func_1(var_0.c.zxz, (u_input.a ^ 69935i) >> (4294967295u % 32u)), 14537u), u_input.b | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -var_0.e, var_0.c));
}

