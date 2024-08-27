struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(2147483647i, 2147483647i, 0i), -1217f);

var<private> global1: array<bool, 29> = array<bool, 29>(true, false, false, true, true, false, true, true, true, false, true, false, false, true, true, false, true, false, false, false, true, true, false, false, true, true, true, true, true);

var<private> global2: i32 = -1i;

var<private> global3: vec3<i32>;

var<private> global4: f32 = -358f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(arg_1.b, 0u, 7115u));
    let var_1 = arg_1.c.x;
    var var_2 = abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(abs(-14769i), -2147483647i), arg_1.d.x), -1i));
    let var_3 = arg_1.a.a.zx;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, arg_1.a.b) * -159f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1225f))))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(arg_1.a.b * 290f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.b, arg_1.a.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(576f, -1035f) * vec2<f32>(-679f, arg_1.a.b)) - vec2<f32>(global0.b, global0.b))))));
    return reverseBits(vec3<i32>(firstLeadingBit(select(arg_1.d.x, var_3.x, -2147483647i >= global0.a.x)), 0i, 2147483647i));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(global0.a, global0.b), firstLeadingBit(7223u) >> (u_input.a % 32u), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(9647u, 29u)], false, global1[_wgslsmith_index_u32(u_input.a, 29u)])), vec4<i32>(-1i, 1i, _wgslsmith_mod_i32(5834i, global0.a.x), _wgslsmith_mod_i32(firstLeadingBit(1i), 77031i)), Struct_1(func_3(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]), Struct_2(Struct_1(vec3<i32>(21372i, global3.x, global0.a.x), global0.b), u_input.a, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(3359u, 29u)], false), vec4<i32>(global0.a.x, 15997i, -39877i, 0i), Struct_1(vec3<i32>(global0.a.x, global3.x, -2147483647i), global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f - -1224f) - -1249f))), Struct_2(Struct_1(vec3<i32>(global3.x, -18931i ^ global0.a.x, global0.a.x >> (1u % 32u)), -615f), u_input.a, select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(u_input.a, 29u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, global1[_wgslsmith_index_u32(u_input.a, 29u)], true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]), true), false), select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], true, true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, true, false), vec4<bool>(false, false, false, false), global1[_wgslsmith_index_u32(29757u, 29u)]), !vec4<bool>(global1[_wgslsmith_index_u32(56352u, 29u)], false, global1[_wgslsmith_index_u32(44862u, 29u)], global1[_wgslsmith_index_u32(45930u, 29u)])), vec4<bool>(all(vec4<bool>(false, true, false, false)), false && global1[_wgslsmith_index_u32(1u, 29u)], global0.a.x != global3.x, !global1[_wgslsmith_index_u32(u_input.b, 29u)])), vec4<i32>(_wgslsmith_add_i32(min(2147483647i, global0.a.x), global3.x), -global3.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.x, global3.x, global0.a.x), ~global0.a), min(_wgslsmith_mult_i32(global3.x, global3.x), ~global3.x)), Struct_1(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1434f, 166f)), _wgslsmith_f_op_f32(global0.b - global0.b))))), abs(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 89163u) << (vec2<u32>(u_input.b, 75418u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 15926u), vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, u_input.b)), vec2<u32>(u_input.b, 5646u), abs(vec2<u32>(u_input.a, u_input.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b, -1375f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, global0.b)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)), vec2<f32>(117f, global0.b)))), abs(-vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-2147483647i, 0i), -global3.x, reverseBits(global0.a.x))));
    global2 = min(global3.x, var_0.a.a.a.x);
    var var_1 = firstLeadingBit(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 51072u, var_0.a.b, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(8978u, u_input.b, var_0.a.b, 4294967295u), vec4<u32>(4294967295u, u_input.a, 8243u, var_0.b.b)))) & firstTrailingBit(abs(countOneBits(vec4<u32>(u_input.b, 1u, u_input.a, u_input.b)) | ~vec4<u32>(u_input.b, 0u, var_0.b.b, 36533u)));
    global4 = var_0.b.a.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 296f))))))));
    return -_wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(global0.a, vec3<i32>(global3.x, 8045i, var_0.a.a.a.x), var_0.e.wxx), _wgslsmith_mult_vec3_i32(~global0.a, global0.a << (var_1.zwy % vec3<u32>(32u)))) >> (min(var_1.yzz, vec3<u32>(var_0.c.x, var_1.x, _wgslsmith_clamp_u32(countOneBits(u_input.b), 22054u, ~var_1.x))) % vec3<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = false | !(!global1[_wgslsmith_index_u32(abs(35210u), 29u)]);
    let var_1 = arg_1.a;
    global1 = array<bool, 29>();
    var_0 = true;
    var var_2 = _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(~u_input.a, u_input.b));
    return Struct_3(Struct_2(Struct_1(func_3(!vec3<bool>(true, arg_1.c.x, false), Struct_2(arg_1.a, 0u, arg_1.c, vec4<i32>(global3.x, arg_1.a.a.x, -14324i, arg_1.a.a.x), Struct_1(var_1.a, 1090f))), var_1.b), ~arg_1.b, vec4<bool>(arg_1.c.x, true, !global1[_wgslsmith_index_u32(~0u, 29u)], global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 1u, 1u), 29u)]), -(~(arg_1.d | arg_1.d)), arg_1.e), arg_1, vec2<u32>(~_wgslsmith_mult_u32(0u, u_input.a), ~(~1u)) | min(~min(vec2<u32>(u_input.b, arg_1.b), vec2<u32>(arg_1.b, 36471u)), vec2<u32>(42976u, u_input.b) << (abs(vec2<u32>(2435u, u_input.a)) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(928f, _wgslsmith_f_op_f32(-arg_1.e.b)), _wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(-225f + arg_1.e.b))), arg_1.d);
}

fn func_1() -> vec3<i32> {
    global3 = -_wgslsmith_clamp_vec3_i32(~global0.a, vec3<i32>(_wgslsmith_sub_i32(2147483647i, global0.a.x), -28857i, _wgslsmith_sub_i32(-62707i, global0.a.x)) & -(~vec3<i32>(global3.x, -1i, global0.a.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, global0.a.x, 52679i, global0.a.x), vec4<i32>(global0.a.x, global3.x, global3.x, 0i)), -global0.a.x, _wgslsmith_mult_i32(global0.a.x, ~2147483647i)));
    global4 = global0.b;
    var var_0 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-global0.b)))), Struct_2(Struct_1(func_2(), _wgslsmith_f_op_f32(812f * _wgslsmith_f_op_f32(global0.b * -133f))), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, u_input.b), abs(0u)) ^ ~(~u_input.b), select(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)], false, true)), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], true, global1[_wgslsmith_index_u32(0u, 29u)], true), true), vec4<bool>(global1[_wgslsmith_index_u32(14028u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], false, global1[_wgslsmith_index_u32(u_input.b, 29u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(34556u, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], false, false, true), false)), false), _wgslsmith_mult_vec4_i32(max(countOneBits(vec4<i32>(global3.x, global3.x, 19685i, global0.a.x)), vec4<i32>(global0.a.x, -19127i, 1i, 17152i)), -vec4<i32>(26270i, 0i, global3.x, 1i) >> ((vec4<u32>(u_input.b, 33705u, 4294967295u, 4294967295u) | vec4<u32>(5495u, u_input.b, 53866u, 48318u)) % vec4<u32>(32u))), Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -795f))));
    let var_1 = func_4(_wgslsmith_f_op_f32(635f * func_4(-654f, var_0.a).d.x), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.e.b))), var_0.b).b).b;
    var var_2 = false;
    return _wgslsmith_add_vec3_i32(vec3<i32>(-1i, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -907f)), func_4(_wgslsmith_f_op_f32(max(-1254f, var_1.a.b)), var_1).a).a.d.x, -13705i), ~global0.a);
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * arg_3.a.a.b), _wgslsmith_f_op_f32(max(arg_2.b, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b, arg_3.a.e.b), 389f))))), Struct_2(func_4(arg_3.a.a.b, Struct_2(func_4(237f, arg_3.b).a.e, 4294967295u, arg_3.b.c, _wgslsmith_clamp_vec4_i32(arg_1, vec4<i32>(24484i, arg_3.b.a.a.x, -2147483647i, 8441i), arg_1), Struct_1(vec3<i32>(global3.x, global0.a.x, 2147483647i), 1337f))).a.e, select(_wgslsmith_div_u32(arg_3.c.x, 0u) ^ (arg_0 >> (arg_0 % 32u)), arg_0, func_4(_wgslsmith_f_op_f32(-arg_3.d.x), Struct_2(Struct_1(arg_2.a, arg_2.b), 0u, vec4<bool>(false, arg_3.b.c.x, true, arg_3.b.c.x), arg_1, arg_2)).b.c.x), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], arg_3.a.c.x, arg_3.a.c.x, arg_3.a.c.x), !vec4<bool>(true, arg_3.b.c.x, global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), select(arg_3.a.c, vec4<bool>(true, true, false, false), arg_3.a.c)), abs(~arg_3.a.d), arg_2));
    var var_1 = arg_2;
    var var_2 = var_0.a.a;
    global1 = array<bool, 29>();
    global3 = func_1();
    return func_4(_wgslsmith_f_op_f32(-var_0.d.x), func_4(arg_3.a.e.b, func_4(var_2.b, arg_3.b).b).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.zz;
    global4 = global0.b;
    var var_1 = ((i32(-1i) * -_wgslsmith_dot_vec2_i32(global3.zx, vec2<i32>(-2147483647i, var_0.x))) << (12173u % 32u)) < var_0.x;
    var var_2 = func_5(u_input.b, vec4<i32>(~global3.x << (~u_input.a % 32u), 52758i, firstTrailingBit(-2147483647i), var_0.x) >> (~vec4<u32>(~4294967295u, u_input.a & u_input.b, firstLeadingBit(4294967295u), ~1u) % vec4<u32>(32u)), Struct_1(reverseBits(abs(countOneBits(vec3<i32>(14283i, 0i, 0i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(636f * global0.b)), 635f))), Struct_3(Struct_2(Struct_1(func_1(), _wgslsmith_f_op_f32(-global0.b)), 6542u >> (u_input.b % 32u), vec4<bool>(true, 1u < u_input.a, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(26295u, 29u)])), false), abs(vec4<i32>(var_0.x, global3.x, 0i, var_0.x)), Struct_1(global0.a, _wgslsmith_f_op_f32(max(global0.b, global0.b)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), func_4(_wgslsmith_f_op_f32(1106f + 1000f), func_4(global0.b, Struct_2(Struct_1(vec3<i32>(global3.x, 30770i, var_0.x), -212f), 16145u, vec4<bool>(global1[_wgslsmith_index_u32(47797u, 29u)], true, true, true), vec4<i32>(-92196i, global0.a.x, -3372i, global3.x), Struct_1(global0.a, global0.b))).a).b).b, vec2<u32>(~(~0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.a, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(7589u, u_input.b, u_input.a), vec3<u32>(83540u, 8195u, u_input.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(662f, -867f) - vec2<f32>(679f, global0.b)) - vec2<f32>(937f, _wgslsmith_f_op_f32(f32(-1f) * -1103f))), reverseBits(firstTrailingBit(vec4<i32>(global3.x, var_0.x, 0i, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.b, u_input.a) >> (min(u_input.a, ~u_input.b) % 32u), -(global3.xz >> (min(select(vec2<u32>(var_2.b.b, 34161u), vec2<u32>(var_2.b.b, 1u), false), vec2<u32>(1u, 1u)) % vec2<u32>(32u))), ~_wgslsmith_add_u32(~_wgslsmith_div_u32(51923u, 4294967295u), var_2.a.b), _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, -15850i, var_0.x)), func_5(var_2.b.b, vec4<i32>(global3.x, 66320i, -13354i, global3.x), Struct_1(global0.a, 377f), Struct_3(var_2.b, Struct_2(var_2.b.e, 45017u, vec4<bool>(var_2.b.c.x, var_2.b.c.x, global1[_wgslsmith_index_u32(var_2.c.x, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), var_2.a.d, var_2.a.a), var_2.c, vec2<f32>(-367f, var_2.d.x), var_2.b.d)).b.a.a)), _wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(global3.x, 17169i, var_2.b.a.a.x)), func_3(select(var_2.b.c.wwz, vec3<bool>(var_2.b.c.x, var_2.a.c.x, var_2.b.c.x), var_2.a.c.zxw), func_5(28434u, var_2.b.d, var_2.a.a, Struct_3(var_2.a, Struct_2(var_2.a.a, 33526u, vec4<bool>(var_2.a.c.x, true, false, true), vec4<i32>(-2147483647i, global3.x, global0.a.x, 14363i), var_2.b.a), var_2.c, vec2<f32>(var_2.a.a.b, -182f), var_2.b.d)).a))));
}

