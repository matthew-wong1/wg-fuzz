struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: vec4<i32> = vec4<i32>(91273i, -20325i, i32(-2147483648), 1i);

var<private> global2: Struct_1 = Struct_1(-790f, vec3<f32>(-1860f, 2543f, 622f));

var<private> global3: array<vec2<f32>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -3530f), _wgslsmith_f_op_vec3_f32(trunc(global2.b)));
    var var_1 = true == (!arg_0 | arg_0);
    global0 = array<u32, 4>();
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), select(22601u, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false)), ~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(global0[_wgslsmith_index_u32(54128u, 4u)], 0u))), u_input.a);
    var_1 = arg_0;
    return -3089i;
}

fn func_2() -> Struct_2 {
    global1 = vec4<i32>(u_input.c, -8889i, func_3(any(vec2<bool>(true, true)), -(~countOneBits(u_input.d.x)), _wgslsmith_div_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]), ~4294967295u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(13359u, 4u)], 4294967295u, 45353u, 0u), vec4<u32>(1u, 4294967295u, u_input.a.x, 0u) ^ vec4<u32>(22697u, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)])) % 32u)), (5699i | global1.x) | 16880i);
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.b)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.a, -862f, global2.b.x) + vec4<f32>(var_0.a, var_0.a, global2.a, -513f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 730f, -1825f, global2.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x * var_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))))), _wgslsmith_f_op_f32(max(-2204f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.b.x)), -358f))), -702f, var_0.b.x)));
    global0 = array<u32, 4>();
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1.x));
    return Struct_2(global1.zy, select(~(-(vec4<i32>(33288i, global1.x, u_input.c, 1i) >> (vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], u_input.a.x) % vec4<u32>(32u)))), select(abs(reverseBits(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.c, -35989i, -2147483647i, u_input.c)), reverseBits(vec4<i32>(u_input.c, u_input.c, 28493i, u_input.c))), vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, true))), -597f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1375f - var_1.x))), var_1.wzy));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec3<f32> {
    global2 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_0.d.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b - arg_2.d.b), _wgslsmith_f_op_vec3_f32(-arg_1.d.b)) * func_2().d.b) - _wgslsmith_f_op_vec3_f32(-arg_2.d.b)));
    global1 = arg_0.b;
    global0 = array<u32, 4>();
    let var_0 = func_2();
    let var_1 = arg_0;
    return arg_2.d.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec2<bool> {
    global2 = Struct_1(1f, _wgslsmith_f_op_vec3_f32(func_4(func_2(), func_2(), Struct_3(global2.b.x, !any(vec4<bool>(true, arg_1.x, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, 1000f) + global2.b.zy), func_2().d))));
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.b.yx))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b.x + global2.b.x), _wgslsmith_f_op_f32(floor(744f)))))));
    var var_1 = ~vec3<i32>(1i, 41669i, u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-global2.a);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-873f, -163f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.xz), vec2<f32>(-982f, -572f)))) * vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<i32>(29354i, 1i), vec4<i32>(var_1.x, u_input.c, -2147483647i, -23987i), 175f, Struct_1(var_2, global2.b)), Struct_2(vec2<i32>(var_1.x, u_input.d.x), vec4<i32>(var_1.x, 6482i, 2147483647i, 44871i), -1649f, Struct_1(211f, vec3<f32>(449f, -633f, 1335f))), Struct_3(var_2, true, global3[_wgslsmith_index_u32(arg_0.x, 24u)], Struct_1(-563f, vec3<f32>(global2.b.x, -1039f, global2.b.x))))).x)))));
    return vec2<bool>(u_input.c > _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_mult_i32(i32(-1i) * -10373i, u_input.c)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true)), false);
    var_0 = !select(select(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), vec2<bool>(true, false)), func_1(firstTrailingBit(vec4<u32>(4294967295u, 18921u, global0[_wgslsmith_index_u32(44887u, 4u)], 4294967295u)), vec2<bool>(var_0.x, var_0.x)), _wgslsmith_mult_i32(16236i, global1.x) > _wgslsmith_div_i32(global1.x, -52056i)), select(func_1(abs(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)])), vec2<bool>(true, false)), vec2<bool>(var_0.x, all(vec4<bool>(false, false, var_0.x, true))), vec2<bool>(all(vec3<bool>(true, true, false)), true)), func_1(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], min(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(4408u, 4u)]), abs(u_input.a.x), 27480u), !func_1(vec4<u32>(u_input.b.x, 0u, 91323u, 8051u), vec2<bool>(true, var_0.x))));
    global2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f + global2.a)) + global2.a))), global2.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1292f, global2.b.x, global2.a))) * global2.b))))));
    global2 = func_2().d;
    global2 = Struct_1(_wgslsmith_f_op_f32(min(-1450f, global2.b.x)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.b.x, var_0.x), 4u)], 4u)], 4u)], 4u)], 4u)], ~(~(~(~4294967295u))), ~vec4<u32>(global0[_wgslsmith_index_u32(~0u, 4u)], u_input.b.x, u_input.a.x, min(48215u, 39875u >> (u_input.b.x % 32u))), 1u);
}

