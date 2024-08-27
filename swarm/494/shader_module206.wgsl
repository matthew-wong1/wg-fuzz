struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global3: array<i32, 7>;

var<private> global4: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = true;
    let var_1 = select(~global0.a.d, ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(10473u, 0u), global0.a.d, vec2<u32>(2700u, global0.a.d.x)), global0.a.d), ~vec2<u32>(global0.a.d.x, u_input.a) << (vec2<u32>(64371u, 1u) % vec2<u32>(32u))), vec2<bool>(true, !global4.x));
    var var_2 = Struct_1(-2147483647i);
    let var_3 = ~(vec2<i32>(~abs(1i), var_2.a) | vec2<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.a, 7u)], -1i) | _wgslsmith_mult_i32(0i, 64158i), ~arg_0.x));
    global1 = array<Struct_1, 8>();
    return global0.a.d | (vec2<u32>(reverseBits(0u), max(49032u, _wgslsmith_div_u32(u_input.a, 52835u))) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1397f * 1282f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1455f + 1410f) * _wgslsmith_div_f32(-320f, -1276f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(563f, 1887f))))), -1696f));
    global2 = array<vec4<bool>, 2>();
    var var_1 = -(arg_1.a ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(~u_input.b.x, reverseBits(0i), arg_1.a >> (4294967295u % 32u)), (global3[_wgslsmith_index_u32(u_input.a, 7u)] | 78152i) >> (1u % 32u)));
    var var_2 = max(min(vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_add_i32(arg_0.a, reverseBits(-19608i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-3242i, 22584i, u_input.b.x, 0i), vec4<i32>(-36052i, global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], -25038i, arg_1.a)) ^ 1i, _wgslsmith_mult_i32(arg_1.a, ~global0.a.a.a)), select(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, global0.a.a.a, 23052i, 80040i), vec4<i32>(-1i, 1i, u_input.b.x, global3[_wgslsmith_index_u32(global0.a.d.x, 7u)])), vec4<i32>(1i, arg_0.a | 3613i, 42076i, abs(arg_0.a)), _wgslsmith_f_op_f32(max(-1167f, var_0.x)) < -489f)), vec4<i32>(_wgslsmith_dot_vec3_i32(~u_input.b | vec3<i32>(-24357i, arg_0.a, u_input.b.x), reverseBits(u_input.b)), 48743i, -abs(1i), 10477i));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yxy * var_0.wxy));
    return u_input.a;
}

fn func_2() -> Struct_4 {
    let var_0 = all(global4.zz);
    global1 = array<Struct_1, 8>();
    global3 = array<i32, 7>();
    let var_1 = Struct_3(func_3(global1[_wgslsmith_index_u32(~(~(~59923u)), 8u)], global0.a.b, _wgslsmith_div_u32(countOneBits(global0.a.d.x), ~20u)), !select(select(vec3<bool>(global4.x, var_0, global4.x), !vec3<bool>(false, var_0, global4.x), true), !global4.wyz, global4.xzz), global0.a.a, !(!vec4<bool>(select(true, var_0, var_0), global4.x, any(vec2<bool>(false, false)), !global4.x)), Struct_2(global1[_wgslsmith_index_u32(func_1(min(select(vec4<i32>(global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(5927u, 7u)], 3411i), vec4<i32>(1i, u_input.b.x, 0i, -2147483647i), global4.x), _wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], global3[_wgslsmith_index_u32(13317u, 7u)], u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, global0.a.b.a, global3[_wgslsmith_index_u32(1u, 7u)])))).x, 8u)], global1[_wgslsmith_index_u32(global0.a.d.x | ~_wgslsmith_sub_u32(0u, u_input.a), 8u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 0u, 80190u)), ~vec3<u32>(u_input.a, 4294967295u, 0u)), 8u)], _wgslsmith_div_vec2_u32(vec2<u32>(0u, global0.a.d.x), vec2<u32>(global0.a.d.x, 1u)) << (global0.a.d % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) * _wgslsmith_f_op_f32(abs(-1792f))) + -1205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1273f))), -385f)));
    return Struct_4(Struct_2(Struct_1(~(-1i) & abs(global3[_wgslsmith_index_u32(var_1.a, 7u)])), global0.a.c, var_1.e.b, vec2<u32>(global0.a.d.x, global0.a.d.x) & reverseBits(_wgslsmith_mult_vec2_u32(var_1.e.d, global0.a.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~func_1(-vec4<i32>(global0.a.c.a, global3[_wgslsmith_index_u32(12284u, 7u)], 41387i, global3[_wgslsmith_index_u32(52229u, 7u)]) ^ countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], global0.a.a.a, u_input.b.x, 18952i))));
    let var_1 = func_2();
    var var_2 = 1247f;
    var_0 = select(vec2<u32>(1u >> (~abs(var_0.x) % 32u), ~u_input.a), _wgslsmith_sub_vec2_u32(var_1.a.d, ~((var_1.a.d << (vec2<u32>(111u, 4294967295u) % vec2<u32>(32u))) | vec2<u32>(39550u, 0u))), global4.x);
    let var_3 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32((11457u | global0.a.d.x) & max(var_1.a.d.x, var_0.x), reverseBits(var_1.a.d.x) << (~44015u % 32u)), 0u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(651f, 503f, -1000f, -1056f), vec4<f32>(-728f, 492f, -900f, 607f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-629f, 1232f, _wgslsmith_f_op_f32(round(-1962f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2708f, -129f, 1251f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1108f, 399f, 763f) * vec3<f32>(735f, -1000f, -1461f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1144f, -1735f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 1232f, -661f))) - vec3<f32>(-1015f, 165f, -1125f))))), countOneBits(18188u));
}

