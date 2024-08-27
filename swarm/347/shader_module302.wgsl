struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, -24321i), vec2<i32>(-1i, 18042i), vec2<i32>(0i, -39880i), vec2<i32>(2147483647i, -26678i));

var<private> global2: u32 = 181849u;

var<private> global3: Struct_3;

var<private> global4: array<vec2<i32>, 30>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<vec4<u32>, 11>();
    global1 = array<vec2<i32>, 4>();
    var var_0 = !arg_0.b.zyy;
    var var_1 = -vec4<i32>(_wgslsmith_dot_vec4_i32(abs(u_input.a) ^ _wgslsmith_div_vec4_i32(arg_0.a.a, arg_0.a.a), arg_0.a.a), i32(-1i) * -firstTrailingBit(arg_0.a.a.x), 3612i, u_input.a.x);
    var var_2 = global3.a;
    return vec4<i32>(arg_0.a.a.x, var_1.x, var_2.a.x, (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, arg_0.a.a.x, global3.a.a.x), max(var_1.x, 1i)) & max(u_input.a.x, 1i)) | var_2.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = global3.a.b && ((u_input.a.x > u_input.a.x) && global3.b.x);
    var var_1 = Struct_1(arg_3.zxx >> (arg_3.yxw % vec3<u32>(32u)), vec3<u32>(countOneBits(14081u), ~1u, global3.c.x), global3.c);
    global4 = array<vec2<i32>, 30>();
    let var_2 = _wgslsmith_add_vec2_u32(var_1.a.yx, ~vec2<u32>((4294967295u | u_input.c) & ~var_1.b.x, ~firstLeadingBit(6289u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1140f + 1786f), _wgslsmith_div_f32(-1000f, -1421f), 1393f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1425f, 1000f, -1134f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, -194f, 154f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(767f)) - 485f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f))), !global3.b.zxw)));
    return Struct_2(~_wgslsmith_add_vec4_i32(func_3(Struct_3(global3.a, vec4<bool>(false, true, true, arg_1), vec3<u32>(arg_2, u_input.c, u_input.c))), vec4<i32>(global3.a.a.x, _wgslsmith_mult_i32(1i, global3.a.a.x), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 39590i), vec2<i32>(global3.a.a.x, -2147483647i)))), any(vec3<bool>(global3.b.x & true, !global3.a.b, true)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = true;
    let var_1 = ~(~countOneBits(~select(vec3<u32>(u_input.c, u_input.c, arg_0.c.x), vec3<u32>(global3.c.x, 72127u, arg_0.c.x), vec3<bool>(false, true, global3.b.x))));
    global3 = Struct_3(Struct_2(u_input.a, any(vec4<bool>(var_0, global3.b.x & false, true, true))), !(!vec4<bool>(arg_1 || arg_0.a.b, false & arg_0.b.x, var_0 & true, true)), arg_0.c | var_1);
    let var_2 = vec4<i32>(41200i, -49771i ^ ((1i >> (arg_0.c.x % 32u)) << (u_input.c % 32u)), min(0i, arg_0.a.a.x & -global3.a.a.x), 2147483647i) & _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(global3.a.a.x, arg_0.a.a.x, 2147483647i, global3.a.a.x)), min(vec4<i32>(-1i, 13126i, u_input.b, u_input.a.x), vec4<i32>(0i, 970i, 1i, 47461i))), firstTrailingBit(global3.a.a));
    global2 = u_input.c;
    return global3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_div_vec4_i32(global3.a.a, reverseBits(u_input.a)), select(func_4(Struct_3(Struct_2(vec4<i32>(-27329i, 9857i, global3.a.a.x, arg_0.a.x), false), vec4<bool>(true, global3.b.x, arg_3.x, global3.b.x), global3.c), false).b, false, func_4(Struct_3(Struct_2(u_input.a, arg_3.x), vec4<bool>(arg_0.b, arg_3.x, true, true), vec3<u32>(u_input.c, arg_1.x, 67071u)), false).b)), global3.b, vec3<u32>(17124u, 13816u, reverseBits(_wgslsmith_clamp_u32(0u, 69355u, 35969u)))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1653f + _wgslsmith_f_op_f32(f32(-1f) * -635f)))), -978f));
    var var_2 = !global3.b.xw;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1, var_1)))), _wgslsmith_f_op_f32(-222f * 1058f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1000f, var_1, 3343f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(435f, var_1, 741f, var_1), vec4<f32>(var_1, var_1, -1000f, 527f))))), !(!vec4<bool>(global3.b.x, false, true, true)))))));
    global1 = array<vec2<i32>, 4>();
    return vec2<i32>(countOneBits(i32(-1i) * -56731i), 2147483647i);
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    let var_0 = vec2<u32>(46280u << (0u % 32u), firstTrailingBit(((global3.c.x ^ global3.c.x) << (0u % 32u)) ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, 0u), 77092u << (u_input.c % 32u))));
    var var_1 = global3.a.b & global3.a.b;
    var var_2 = select(func_5(func_4(Struct_3(func_2(vec4<bool>(false, global3.b.x, global3.a.b, true), false, 102382u, vec4<u32>(10115u, 0u, u_input.c, 70938u)), global3.b, global3.c), any(vec3<bool>(global3.b.x, false, true))), var_0, Struct_1(abs(global3.c | vec3<u32>(1u, u_input.c, 22741u)), vec3<u32>(var_0.x, firstTrailingBit(var_0.x), var_0.x), global3.c >> (~global3.c % vec3<u32>(32u))), vec3<bool>(arg_0.x > _wgslsmith_f_op_f32(-1000f * arg_0.x), global3.a.b, !func_4(Struct_3(Struct_2(global3.a.a, global3.a.b), vec4<bool>(false, global3.b.x, global3.b.x, true), global3.c), global3.a.b).b)), select(global4[_wgslsmith_index_u32(firstTrailingBit(61520u), 30u)], u_input.a.yx, select(select(select(global3.b.ww, global3.b.xx, vec2<bool>(false, global3.b.x)), global3.b.zx, !global3.b.yw), !vec2<bool>(global3.b.x, true), true)), global3.b.xx);
    global1 = array<vec2<i32>, 4>();
    var_2 = -_wgslsmith_add_vec2_i32(func_5(global3.a, firstTrailingBit(~vec2<u32>(62496u, 37179u)), Struct_1(~vec3<u32>(5381u, global3.c.x, u_input.c), vec3<u32>(4294967295u, 7356u, 40683u), global3.c), select(vec3<bool>(global3.a.b, true, true), vec3<bool>(true, global3.b.x, global3.b.x), select(vec3<bool>(global3.b.x, global3.a.b, global3.a.b), global3.b.yzx, global3.b.x))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(u_input.c, 4u)], vec2<i32>(43184i, 0i)), ~vec2<i32>(u_input.b, -2147483647i)), select(global1[_wgslsmith_index_u32(65953u, 4u)], vec2<i32>(global3.a.a.x, -8965i), global3.b.x) << (vec2<u32>(global3.c.x, 4294967295u) % vec2<u32>(32u))));
    return StorageBuffer(global3.a.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1117f, 2181f, 1000f) + vec4<f32>(-1555f, 1741f, -594f, 790f))))));
}

