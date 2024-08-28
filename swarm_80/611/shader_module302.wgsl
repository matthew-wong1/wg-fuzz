struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<i32>(-1i, 0i, -11566i)), Struct_2(vec3<i32>(1638i, 3347i, i32(-2147483648))), Struct_2(vec3<i32>(45184i, 17425i, 56361i)), Struct_2(vec3<i32>(i32(-2147483648), 27564i, 23634i)), Struct_2(vec3<i32>(0i, 17150i, -15402i)), Struct_2(vec3<i32>(27129i, 1i, 29165i)), Struct_2(vec3<i32>(42754i, 5964i, 1i)), Struct_2(vec3<i32>(0i, -44395i, 1i)), Struct_2(vec3<i32>(-1i, 1i, 20796i)), Struct_2(vec3<i32>(-20692i, 1592i, -5634i)), Struct_2(vec3<i32>(22643i, -4481i, 26481i)), Struct_2(vec3<i32>(24794i, -1i, -2804i)), Struct_2(vec3<i32>(42453i, 1i, 1i)), Struct_2(vec3<i32>(30782i, 28117i, 35021i)), Struct_2(vec3<i32>(2147483647i, 11452i, i32(-2147483648))), Struct_2(vec3<i32>(0i, -44247i, -44710i)), Struct_2(vec3<i32>(1i, 9483i, 0i)), Struct_2(vec3<i32>(-1i, 0i, 45386i)), Struct_2(vec3<i32>(1i, 24381i, 1i)));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec3<f32> = vec3<f32>(1000f, -117f, 853f);

var<private> global3: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(42361u, 21195u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 52793u, 1u));

var<private> global4: array<f32, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    global3 = array<vec3<u32>, 3>();
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, 90763u);
    var var_1 = Struct_1(!select(!select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, true, true, true), vec4<bool>(global1.x, arg_0, true, false)), vec4<bool>(arg_0, -5333i != u_input.d, false, false), vec4<bool>(false, false, !global1.x, all(vec4<bool>(arg_0, arg_0, arg_0, true)))), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(4294967295u, 19u)])), global2.x, _wgslsmith_add_u32(0u, firstLeadingBit(min(38153u, arg_2.x))) >> (1u % 32u), _wgslsmith_f_op_f32(-global2.x));
    var var_2 = var_1.d;
    var var_3 = Struct_1(var_1.a, global4[_wgslsmith_index_u32(arg_2.x, 19u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(545f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-300f, var_1.b, var_1.a.x)))))), arg_2.x & 18593u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e * var_1.e) - _wgslsmith_f_op_f32(step(1000f, 524f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(886f)) + _wgslsmith_f_op_f32(f32(-1f) * -2032f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(0u, 19u)], var_1.c))))))));
    return u_input.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> bool {
    var var_0 = -_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(func_3(false, u_input.a, u_input.a.wy), countOneBits(u_input.c.x)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, arg_1.x), arg_1.zx)), vec2<i32>(-(~arg_1.x), 0i));
    var var_1 = -abs(abs(abs(arg_1)));
    global3 = array<vec3<u32>, 3>();
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(1459f)), _wgslsmith_f_op_f32(sign(-983f)))))), vec3<f32>(962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-180f + -485f)))), _wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(693f, 113f)))))));
    var var_2 = vec4<u32>(countOneBits(u_input.b.x), ~min(~32765u, arg_2), select(0u, abs(1u), true) | arg_2, 67169u & ~abs(countOneBits(u_input.b.x)));
    return global1.x;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(282f)));
    let var_1 = global0[_wgslsmith_index_u32(abs(0u), 19u)];
    let var_2 = Struct_2(select((arg_1.zwy << (max(vec3<u32>(39499u, 20048u, u_input.b.x), u_input.b.zyx) % vec3<u32>(32u))) | var_1.a, arg_1.wwz, vec3<bool>(arg_0, func_2(Struct_1(vec4<bool>(false, false, global1.x, global1.x), 234f, var_0, 0u, var_0), reverseBits(vec4<i32>(var_1.a.x, arg_1.x, 5751i, arg_1.x)), u_input.a.x), !(!arg_0))));
    let var_3 = select(-(~(arg_1 | arg_1)) | arg_1, reverseBits(arg_1), global1.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.x, ~vec4<i32>(69059i >> (u_input.a.x % 32u), -(~(-1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-5542i, u_input.c.x), reverseBits(u_input.c)), _wgslsmith_div_i32(~u_input.d, ~u_input.c.x)));
    global4 = array<f32, 19>();
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(1607f)), _wgslsmith_f_op_f32(-1695f - 481f), _wgslsmith_f_op_f32(global2.x + -1226f)), vec2<u32>(min(0u, ~1u), reverseBits(~u_input.a.x)));
    global3 = array<vec3<u32>, 3>();
    global4 = array<f32, 19>();
    global0 = array<Struct_2, 19>();
    let var_2 = reverseBits((i32(-1i) * -1i) | max(-var_0.a.x, u_input.d));
    var var_3 = vec3<bool>(false, true, global1.x);
    let var_4 = _wgslsmith_f_op_f32(abs(-795f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.yz, select(vec3<i32>(_wgslsmith_clamp_i32(1i, 1i, -21393i), 1i, firstTrailingBit(-15321i)), ~select(_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(u_input.d, 3052i, 11235i)), -var_0.a, true), !select(vec3<bool>(true, global1.x, var_3.x), vec3<bool>(true, false, false), vec3<bool>(global1.x, true, global1.x))), ~u_input.a.yyy);
}

