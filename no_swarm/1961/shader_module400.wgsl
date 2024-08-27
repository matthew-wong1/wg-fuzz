struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 14>;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(-1543f, -1i, vec3<u32>(57910u, 52218u, 39363u), 51279i), i32(-2147483648), vec2<i32>(0i, i32(-2147483648)), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(1068f, 0i, vec3<u32>(39596u, 36182u, 4294967295u), 0i), 1i, vec2<i32>(-28125i, -1i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(-196f, -1i, vec3<u32>(1u, 4294967295u, 61478u), -9002i), 34139i, vec2<i32>(2147483647i, 0i), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(-758f, i32(-2147483648), vec3<u32>(7578u, 54218u, 58003u), -1i), -18603i, vec2<i32>(-49456i, -38009i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-439f, 2147483647i, vec3<u32>(36940u, 0u, 6762u), 1i), 1516i, vec2<i32>(1i, -39753i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(-1399f, 0i, vec3<u32>(1u, 26275u, 38621u), 79485i), 1i, vec2<i32>(1i, -5147i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-612f, i32(-2147483648), vec3<u32>(0u, 34053u, 67310u), -41528i), -48138i, vec2<i32>(13390i, 0i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(687f, 2147483647i, vec3<u32>(61526u, 4294967295u, 4294967295u), i32(-2147483648)), 1i, vec2<i32>(1i, -26035i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(-242f, 29177i, vec3<u32>(41304u, 23350u, 20968u), -41549i), 33407i, vec2<i32>(39377i, -19746i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(-805f, 0i, vec3<u32>(18245u, 38904u, 12896u), 2147483647i), i32(-2147483648), vec2<i32>(0i, 1i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(-1227f, -1i, vec3<u32>(38001u, 0u, 4294967295u), 6057i), 1814i, vec2<i32>(1i, 425i), vec4<bool>(true, false, false, false)));

var<private> global3: array<vec3<bool>, 2>;

var<private> global4: Struct_3 = Struct_3(vec4<u32>(0u, 35991u, 1u, 10049u), Struct_2(Struct_1(-1022f, 1i, vec3<u32>(15204u, 37997u, 67549u), -1i), 30127i, vec2<i32>(36629i, 67873i), vec4<bool>(false, true, false, false)), vec3<f32>(339f, 2136f, 218f), Struct_1(-552f, -1i, vec3<u32>(37796u, 4294967295u, 4294967295u), -33862i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> u32 {
    global1 = array<i32, 14>();
    global0 = Struct_3(arg_2.a, Struct_2(Struct_1(387f, global0.d.b, ~arg_2.d.c, -2147483647i), -arg_2.d.d, global0.b.c, !global0.b.d), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-469f)) - -1353f))), arg_2.c.x, -1000f), global4.b.a);
    var var_0 = ~abs(u_input.b.wwy);
    var var_1 = Struct_2(arg_2.d, ~33324i, _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -global0.b.c, -vec2<i32>(-8030i, min(31200i, arg_2.d.d))), vec4<bool>(false, global0.b.d.x, all(vec4<bool>(global0.b.d.x, global4.b.d.x, false, !arg_2.b.d.x)), true));
    var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, global0.d.c.x | _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global4.d.c.x, 59774u, arg_1, arg_1)), abs(~17431u)), vec3<u32>(79086u << (~_wgslsmith_clamp_u32(var_1.a.c.x, arg_1, var_0.x) % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(abs(global4.a.x), firstTrailingBit(4294967295u)), 1u), global0.a.x));
    return arg_1;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global4.d.c.x, 38151u), u_input.c) & global0.a.yy), vec2<u32>(40065u, func_3(true, _wgslsmith_sub_u32(4294967295u, global4.a.x), Struct_3(global0.a, Struct_2(global4.d, global1[_wgslsmith_index_u32(global0.b.a.c.x, 14u)], vec2<i32>(global4.d.d, global4.d.d), vec4<bool>(global4.b.d.x, global0.b.d.x, global4.b.d.x, global0.b.d.x)), global0.c, global4.d), _wgslsmith_f_op_f32(trunc(global0.c.x))))));
    global4 = Struct_3(~u_input.b, Struct_2(Struct_1(global4.c.x, -(~global0.b.a.b), ~(~vec3<u32>(global4.d.c.x, global4.b.a.c.x, 36403u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-51374i, -970i)), -vec2<i32>(-1i, global0.d.b))), global0.b.b, global0.b.c, select(!(!global0.b.d), !(!vec4<bool>(global0.b.d.x, false, true, global4.b.d.x)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))), global4.b.a);
    global3 = array<vec3<bool>, 2>();
    var var_1 = global4.b.c;
    var var_2 = Struct_3((~abs(vec4<u32>(7341u, 1u, 1u, 47264u)) & global0.a) >> ((global4.a << ((vec4<u32>(1u, 1u, 1u, 4294967295u) & (global0.a << (vec4<u32>(global0.a.x, 82977u, global4.d.c.x, global4.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_2(Struct_1(global4.c.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.a.x, var_0.a.x, 3251u), u_input.b)), 14u)], u_input.b.zxy, max(_wgslsmith_dot_vec2_i32(global4.b.c, global4.b.c), ~global4.d.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(global4.b.a.c.x), ~countOneBits(global0.d.c.x)), 14u)], -global0.b.c, select(vec4<bool>(any(global3[_wgslsmith_index_u32(66972u, 2u)]), true, global0.b.d.x, 4294967295u != var_0.a.x), select(select(global4.b.d, global0.b.d, global4.b.d), !global4.b.d, global0.b.d.x), vec4<bool>(true, all(vec4<bool>(true, false, true, global4.b.d.x)), !global4.b.d.x, true))), global0.c, Struct_1(_wgslsmith_f_op_f32(global0.b.a.a * global4.d.a), 4251i, global0.d.c, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, global4.d.b, 50986i, -2147483647i) ^ vec4<i32>(global4.d.b, global1[_wgslsmith_index_u32(global4.b.a.c.x, 14u)], -2147483647i, -75219i), vec4<i32>(1i, global0.b.c.x, -2147483647i, global4.d.b)), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(38628u, 14u)], 2147483647i, var_1.x), -vec4<i32>(global0.d.b, global1[_wgslsmith_index_u32(1u, 14u)], -1i, -1i)))));
    return Struct_3(vec4<u32>((func_3(true, global0.d.c.x, Struct_3(vec4<u32>(u_input.a, 4294967295u, 72355u, global0.a.x), Struct_2(global4.b.a, global0.b.b, var_2.b.c, vec4<bool>(global0.b.d.x, false, global0.b.d.x, global4.b.d.x)), vec3<f32>(-818f, global0.b.a.a, var_2.c.x), global4.b.a), -279f) & _wgslsmith_div_u32(var_0.a.x, var_2.b.a.c.x)) << (6121u % 32u), select(~_wgslsmith_mod_u32(var_0.a.x, 1u), u_input.c.x, select(select(var_2.b.d.x, true, global4.b.d.x), false, true)), var_0.a.x, max(1u, 4294967295u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), 1i << ((36063u >> (u_input.c.x % 32u)) % 32u), reverseBits(global4.b.a.c), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 14u)] ^ -10955i, ~(-17410i))), var_1.x, ~vec2<i32>(-2147483647i ^ global4.b.c.x, _wgslsmith_div_i32(0i, global0.d.b)), var_2.b.d), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(1066f, _wgslsmith_f_op_f32(min(786f, -510f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-233f, 105f))), global4.b.a.a))), Struct_1(1000f, abs(-(~5287i)), reverseBits(abs(vec3<u32>(global4.d.c.x, 72726u, u_input.c.x))) << (~(~vec3<u32>(4294967295u, 16920u, global0.a.x)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(16343u | _wgslsmith_sub_u32(global4.a.x, global0.b.a.c.x), 14u)]));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> StorageBuffer {
    let var_0 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(min(4294967295u, global4.a.x), 51646u), ~(vec2<u32>(global0.b.a.c.x, 91799u) ^ global0.d.c.zx)));
    var var_1 = ~(arg_0 ^ abs(_wgslsmith_mod_vec2_i32(arg_0, _wgslsmith_mult_vec2_i32(global4.b.c, global0.b.c))));
    let var_2 = !any(vec4<bool>(true, !all(vec3<bool>(false, global0.b.d.x, global4.b.d.x)), !(85793u <= global4.a.x), true));
    var_1 = -global0.b.c;
    let var_3 = func_2();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.a.a, var_3.b.a.a) + vec2<f32>(-1685f, global0.d.a)), vec2<f32>(var_3.d.a, 1184f)) * var_3.c.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!(-1i >= global0.d.d)), all(vec3<bool>(false, true, !(!global4.b.d.x))), true, global4.b.d.x);
    let var_1 = Struct_4(vec2<u32>(17968u, ~4294967295u));
    var_0 = global4.b.d;
    let var_2 = 4294967295u;
    let var_3 = Struct_2(global4.b.a, global1[_wgslsmith_index_u32(global0.d.c.x, 14u)] & reverseBits(33530i), ~vec2<i32>(global1[_wgslsmith_index_u32(var_1.a.x, 14u)], global4.d.d ^ global1[_wgslsmith_index_u32(select(global0.b.a.c.x, 4774u, global0.b.d.x), 14u)]), global4.b.d);
    let x = u_input.a;
    s_output = func_1(var_3.c, 12746i);
}

