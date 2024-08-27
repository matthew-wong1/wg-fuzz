struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1411f, -1023f, -1000f, -665f));

var<private> global2: array<i32, 16> = array<i32, 16>(-3914i, 27907i, -51654i, 1i, 16549i, 168i, 1i, -15053i, i32(-2147483648), 0i, 8228i, i32(-2147483648), 2147483647i, 41043i, -7126i, -41197i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_u32(1u, u_input.a.x) ^ 45625u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-968f, global1.a.x, -566f), _wgslsmith_f_op_vec3_f32(-global1.a.wzx)))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.a.x)))), -992f, _wgslsmith_f_op_f32(-global1.a.x))));
    return 78056u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = func_3();
    let var_1 = var_0;
    global1 = Struct_1(vec4<f32>(-511f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -1649f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.x))))))));
    let var_2 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true))), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), false);
    let var_3 = Struct_2(var_0, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1861f + -1912f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - -550f))), 1f))));
    return Struct_2(select(~(~_wgslsmith_div_u32(var_3.a, var_0)), 103556u, all(vec2<bool>(var_2.x, select(false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-854f, _wgslsmith_f_op_f32(f32(-1f) * -887f), arg_3.c.a.x), _wgslsmith_div_vec3_f32(global1.a.xyy, arg_2.a.wzz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.zyx - vec3<f32>(900f, arg_2.a.x, 195f)) - _wgslsmith_f_op_vec3_f32(select(arg_3.c.a.yyx, arg_3.e.b.wwy, global0[_wgslsmith_index_u32(1u, 21u)])))), !arg_3.a)));
    let var_1 = select(select(~reverseBits(max(vec4<i32>(global2[_wgslsmith_index_u32(27356u, 16u)], global2[_wgslsmith_index_u32(arg_0, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], u_input.d.x), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(25246u, 16u)], 0i, global2[_wgslsmith_index_u32(arg_1.x, 16u)]))), select((vec4<i32>(0i, global2[_wgslsmith_index_u32(9089u, 16u)], -32338i, 21616i) << (u_input.a % vec4<u32>(32u))) & ~vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 16u)], global2[_wgslsmith_index_u32(58120u, 16u)], u_input.d.x, -7351i), abs(vec4<i32>(-6297i, u_input.d.x, u_input.d.x, global2[_wgslsmith_index_u32(u_input.b, 16u)]) | vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(115387u, 16u)], 0i, -1i)), select(vec4<bool>(true, true, arg_3.a.x, arg_3.a.x), vec4<bool>(true, false, true, arg_3.a.x), false)), arg_3.a.x), max(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.d.x, 1i, global2[_wgslsmith_index_u32(54839u, 16u)], u_input.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(4065u, 16u)], global2[_wgslsmith_index_u32(arg_3.e.a, 16u)]), ~vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -53717i))), firstTrailingBit((vec4<i32>(21846i, global2[_wgslsmith_index_u32(var_0.a, 16u)], 39419i, global2[_wgslsmith_index_u32(5330u, 16u)]) & vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.d.x, 1i, global2[_wgslsmith_index_u32(75772u, 16u)])) | -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 14665i))), false);
    var_0 = Struct_2(~27628u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(217f, 2500f, arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -669f), 289f, _wgslsmith_f_op_f32(round(1190f)))))));
    var var_2 = 0i;
    var var_3 = arg_3.e;
    return Struct_2(_wgslsmith_div_u32(arg_0 << (4294967295u % 32u), _wgslsmith_mult_u32(~1u, select(arg_3.e.a, _wgslsmith_mult_u32(var_3.a, arg_1.x), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.b.a * arg_3.b.a) + global1.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_1(global1.a);
    let var_1 = _wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(global2[_wgslsmith_index_u32(func_1(_wgslsmith_sub_u32(~arg_0.a, u_input.c), u_input.a.zw, var_0, Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a, arg_0.a, u_input.c), 21u)], Struct_1(var_0.a), Struct_1(global1.a), vec3<u32>(u_input.a.x, 37908u, u_input.b) >> (u_input.a.zwx % vec3<u32>(32u)), arg_1)).a, 16u)], -3137i, global2[_wgslsmith_index_u32(reverseBits(1u >> ((15664u >> (arg_1.a % 32u)) % 32u)), 16u)]), arg_2);
    var var_2 = Struct_2(0u, _wgslsmith_f_op_vec4_f32(-var_0.a));
    global2 = array<i32, 16>();
    var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.xwx + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.b.wxz, vec3<f32>(-1103f, arg_0.b.x, global1.a.x))), vec3<f32>(global1.a.x, var_0.a.x, -882f)))));
    return true;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = reverseBits(max(u_input.a, u_input.a));
    global0 = array<vec3<bool>, 21>();
    var var_1 = arg_0.x;
    global0 = array<vec3<bool>, 21>();
    var var_2 = ~var_0.yzy;
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.x, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(5195u), ~37538u), max(select(arg_2, vec2<u32>(4294967295u, arg_2.x), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_add_vec2_u32(arg_2, u_input.a.yw)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    var var_0 = ~func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f * -1000f) - 1031f), global1.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.a.x)), global1.a.x, 533f), u_input.a.yw, vec4<bool>(true, true, func_4(Struct_2(u_input.b, vec4<f32>(global1.a.x, global1.a.x, 1777f, 1236f)), func_1(27350u, u_input.a.xz, Struct_1(global1.a), Struct_3(vec3<bool>(false, true, true), Struct_1(global1.a), Struct_1(vec4<f32>(1000f, 1438f, 513f, global1.a.x)), u_input.a.zyw, Struct_2(78320u, global1.a))), vec3<i32>(u_input.d.x, 10302i, global2[_wgslsmith_index_u32(0u, 16u)])), all(global0[_wgslsmith_index_u32(0u, 21u)]) & true));
    let var_1 = !global0[_wgslsmith_index_u32(~max(~0u, u_input.b), 21u)];
    let var_2 = Struct_3(vec3<bool>(any(vec3<bool>(var_1.x || var_1.x, true, var_1.x)), !(_wgslsmith_f_op_f32(-global1.a.x) >= _wgslsmith_f_op_f32(-global1.a.x)), false), Struct_1(vec4<f32>(-1052f, 337f, -555f, -730f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-942f + global1.a.x))), _wgslsmith_f_op_f32(-1570f - _wgslsmith_div_f32(-1310f, 195f)), -497f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.a.x, -843f)), _wgslsmith_f_op_f32(abs(global1.a.x)))))), firstTrailingBit(u_input.a.zwy) | min(select(~vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c), !vec3<bool>(var_1.x, var_1.x, false)), u_input.a.xwx), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -373f, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1828f, 184f, global1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.d.zy), -852f, _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(u_input.c, u_input.c, 21542u, var_2.d.x)), firstLeadingBit(abs(var_2.d.zx)), var_2.c, Struct_3(vec3<bool>(false, var_2.a.x, true), var_2.c, var_2.c, vec3<u32>(4294967295u, var_2.e.a, 0u) >> (vec3<u32>(var_2.d.x, var_2.d.x, var_2.e.a) % vec3<u32>(32u)), func_2(vec3<f32>(407f, 943f, 1538f)))).b.x), _wgslsmith_add_vec3_i32(vec3<i32>(select(u_input.d.x, -2147483647i, var_2.a.x), u_input.d.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b, 16u)], u_input.d.x)), vec3<i32>(1i, u_input.d.x, u_input.d.x)) << (vec3<u32>(~(~u_input.c), u_input.c, _wgslsmith_dot_vec2_u32(var_2.d.zz, ~u_input.a.yz)) % vec3<u32>(32u)), i32(-1i) * -1i);
}

