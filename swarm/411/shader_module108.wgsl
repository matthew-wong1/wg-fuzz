struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> f32 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = -258f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.b)), 577f);
    global0 = array<Struct_1, 10>();
    return arg_3.b;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_4 {
    global0 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1488f, arg_0, arg_0))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0)), 662f, true)), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(593f, 646f), 554f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f), -537f))));
    global0 = array<Struct_1, 10>();
    let var_1 = select(63838u, u_input.b, true);
    var var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_1 >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 0u, 90017u), vec4<u32>(u_input.b, 54116u, var_1, u_input.b)), max(18238u, var_1)) % 32u), 10u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~45938u ^ ~var_1, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, 34270i, 2147483647i), vec4<i32>(6889i, 0i, arg_1.a.x, arg_1.a.x)) | ~vec4<i32>(-2147483647i, arg_1.a.x, -66054i, u_input.d), -463f, Struct_3(Struct_2(arg_1), _wgslsmith_f_op_f32(abs(-225f)), arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0, 948f, false)), -1000f))))), global0[_wgslsmith_index_u32(u_input.b, 10u)]);
    return Struct_4(Struct_2(Struct_1(vec3<i32>(arg_2, u_input.d, -1i))), Struct_1(~var_2.c.a >> (~vec3<u32>(21202u, 0u, 1u) % vec3<u32>(32u))), 2147483647i, (~min(vec2<u32>(var_1, 56802u), vec2<u32>(72325u, u_input.b)) | ~max(vec2<u32>(1u, u_input.b), vec2<u32>(1u, var_1))) & (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(u_input.b, 27207u)), vec2<u32>(14541u, var_1)) & reverseBits(vec2<u32>(66279u, 34563u) | vec2<u32>(u_input.b, u_input.b))), Struct_2(arg_1));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = true;
    var var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(490f - -353f) + _wgslsmith_f_op_f32(482f + -359f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f - -1042f))), func_2(_wgslsmith_div_f32(-153f, _wgslsmith_f_op_f32(trunc(1000f))), global0[_wgslsmith_index_u32(~max(69826u, arg_0.x), 10u)], _wgslsmith_mult_i32(1i, arg_1.b.a.x >> (arg_0.x % 32u))).e.a, u_input.a).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1845f, 639f, true)) - _wgslsmith_f_op_f32(abs(-675f))))), global0[_wgslsmith_index_u32(1u, 10u)]);
    var var_2 = ~(~var_1.a.a.a.x) == -u_input.d;
    var var_3 = false;
    let var_4 = arg_0.zx;
    return ~arg_1.d.x;
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(min(~(~1u), firstTrailingBit(~u_input.b)), _wgslsmith_add_u32(_wgslsmith_sub_u32(func_4(vec3<u32>(u_input.b, 1u, 38605u) | vec3<u32>(u_input.b, u_input.b, 1u), func_2(-1249f, global0[_wgslsmith_index_u32(0u, 10u)], 10060i)), 18857u), 0u));
    var var_1 = -2147483647i;
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1010f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1876f * 677f), 634f)), 1669f)), vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.b, _wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, u_input.c, 18584i, -22832i), vec4<i32>(12503i, -13180i, u_input.d, 0i)), vec4<i32>(-1i, u_input.c, u_input.d, u_input.c)), _wgslsmith_f_op_f32(395f - -834f), Struct_3(func_2(1401f, global0[_wgslsmith_index_u32(1u, 10u)], -2147483647i).a, 1074f, global0[_wgslsmith_index_u32(u_input.b, 10u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f))))));
    return vec3<bool>(select(true, true, (var_2.x >= var_2.x) | true) | select(arg_0.x, true, (u_input.a < 30445i) || select(arg_0.x, arg_0.x, false)), false, !arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 95723u;
    let var_1 = global0[_wgslsmith_index_u32(37767u | firstTrailingBit((u_input.b & u_input.b) >> (25976u % 32u)), 10u)];
    let var_2 = 58480u;
    let var_3 = all(select(!vec3<bool>(true, true, all(vec4<bool>(true, true, false, false))), select(!func_1(vec3<bool>(true, false, false)), vec3<bool>(true, select(true, false, true), false), true), select(true, true, _wgslsmith_mod_i32(var_1.a.x, u_input.d) != (u_input.a << (u_input.b % 32u)))));
    let var_4 = _wgslsmith_mod_vec3_i32(var_1.a, max(abs(vec3<i32>(1i, _wgslsmith_add_i32(-8166i, -1i), -20778i)), _wgslsmith_sub_vec3_i32(var_1.a >> (abs(vec3<u32>(32663u, var_2, 134944u)) % vec3<u32>(32u)), vec3<i32>(1i, i32(-1i) * -51996i, u_input.c))));
    var_0 = _wgslsmith_sub_u32(~var_2, reverseBits(~var_2));
    var var_5 = func_2(789f, Struct_1(_wgslsmith_add_vec3_i32(var_4, -vec3<i32>(var_4.x, 2147483647i, -34480i)) & _wgslsmith_add_vec3_i32(select(var_1.a, vec3<i32>(2147483647i, 0i, var_1.a.x), vec3<bool>(false, var_3, var_3)), ~var_1.a)), -func_2(248f, Struct_1(-var_4), _wgslsmith_dot_vec2_i32(reverseBits(var_1.a.xy), ~vec2<i32>(var_4.x, 1i))).c).a;
    let var_6 = !(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1033f * 626f))), var_5.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_5.a.a.x, 2147483647i, u_input.c), vec4<i32>(0i, var_1.a.x, 15422i, -21698i))).b.a.x > -1i);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, firstTrailingBit(12705u));
}

