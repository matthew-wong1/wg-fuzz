struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> vec2<u32> {
    return vec2<u32>(1u, ~4294967295u);
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(reverseBits(min(~vec2<u32>(52452u, 10122u), func_3(_wgslsmith_add_i32(10665i, -2147483647i), global3[_wgslsmith_index_u32(~u_input.a, 5u)], arg_0.c))), all(vec2<bool>(arg_0.e.x, global2.e.x)) && (!(u_input.c.x == 0i) & (u_input.a > _wgslsmith_dot_vec3_u32(vec3<u32>(6550u, global1.a.x, 21589u), vec3<u32>(global2.c.a.x, 4294967295u, arg_0.d)))));
    let var_1 = global1.a.x;
    let var_2 = global2.c;
    global3 = array<Struct_3, 5>();
    let var_3 = arg_0.a;
    return 1u;
}

fn func_1() -> vec4<i32> {
    global2 = Struct_2(Struct_1(vec2<u32>(1u, func_2(Struct_2(global2.c, vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global2.b.x, -1000f), Struct_1(global2.c.a, true), global2.a.a.x, global2.e))) << ((vec2<u32>(14032u, global2.a.a.x) | global1.a) % vec2<u32>(32u)), true), _wgslsmith_f_op_vec3_f32(abs(global2.b)), Struct_1(global1.a ^ ~max(vec2<u32>(global2.d, global1.a.x), global1.a), true), ~global1.a.x, global2.e);
    global3 = array<Struct_3, 5>();
    var var_0 = firstTrailingBit(4294967295u);
    var var_1 = u_input.c.yy;
    global0 = array<f32, 26>();
    return countOneBits(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-71485i, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, -9684i, var_1.x, -2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(27606i, -67094i, var_1.x, u_input.c.x), vec4<i32>(39232i, u_input.c.x, u_input.c.x, 0i)))) << (vec4<u32>((~1u >> (~4294967295u % 32u)) & global1.a.x, 0u | _wgslsmith_clamp_u32(~42319u, 0u, 47545u), 0u, 0u) % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(~select(~global2.a.a.x, global2.c.a.x, all(vec4<bool>(arg_1, false, true, false))) << ((42559u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(33953u, global1.a.x, 11621u, 10556u), vec4<u32>(u_input.b, 72602u, 1u, global2.d))) % 32u), 28864u, 58256u >> (global2.c.a.x % 32u));
    global0 = array<f32, 26>();
    let var_1 = global2.b.x;
    global3 = array<Struct_3, 5>();
    let var_2 = Struct_2(Struct_1(select(vec2<u32>(min(0u, 8820u), ~var_0.x), max(abs(global2.c.a), _wgslsmith_clamp_vec2_u32(var_0.zy, global2.a.a, global1.a)), !all(global2.e.zz)), !all(select(global2.e, global2.e, global2.e))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(step(arg_3.x, -1129f))) - global0[_wgslsmith_index_u32(~min(var_0.x, u_input.b), 26u)]), -163f, -794f), Struct_1(select(abs(global1.a), vec2<u32>(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(global2.a.a.x, 64907u, u_input.b)), global2.a.a.x), _wgslsmith_mult_i32(673i, arg_2) > reverseBits(-40178i)), true), 4294967295u, vec3<bool>(_wgslsmith_f_op_f32(-arg_3.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)])), false, arg_2 < u_input.c.x));
    return Struct_1(max(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(0u, 49183u)), var_0.zz), global2.a.a), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(62i, u_input.c.x, -43451i, -1i), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -2147483647i) | vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(33052u, global2.a.a.x, global2.a.a.x, 28606u), vec4<u32>(4294967295u, u_input.b, 0u, 0u), vec4<u32>(global1.a.x, global2.c.a.x, 89259u, global1.a.x)) % vec4<u32>(32u)), ~(-func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) >= global2.b.x, _wgslsmith_add_i32(u_input.c.x, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, global0[_wgslsmith_index_u32(countOneBits(~108667u), 26u)], global2.b.x) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], -252f, 490f))))));
    global3 = array<Struct_3, 5>();
    global2 = Struct_2(global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.b.x, global2.b.x, -399f), vec3<f32>(-1153f, global0[_wgslsmith_index_u32(global1.a.x, 26u)], -1083f))) * vec3<f32>(_wgslsmith_div_f32(global2.b.x, global0[_wgslsmith_index_u32(23634u, 26u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a.a.x, 26u)] * 1353f), _wgslsmith_f_op_f32(-1000f * 1071f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(global1.a.x, 26u)], 229f)), global2.b)), global2.a, ~global2.c.a.x & global2.d, select(global2.e, select(select(global2.e, !vec3<bool>(false, true, global2.a.b), false), global2.e, global2.e), false));
    global0 = array<f32, 26>();
    global1 = global2.a;
    let var_0 = -vec4<i32>(_wgslsmith_add_i32(countOneBits(u_input.c.x), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))), countOneBits(-46514i), func_1().x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)));
    let var_1 = Struct_2(global2.a, vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 26u)], -1539f), -1391f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u ^ u_input.a, global1.a.x), 26u)]), func_4(countOneBits(-1i), global2.a.b, abs(u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29933u, 26u)] * global2.b.x), _wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 26u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1127f)), -878f, true)))), abs(global2.c.a.x), vec3<bool>(any(global2.e), true, !global2.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(min(~16415u, 4294967295u), vec3<i32>(u_input.c.x ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c.x, -2147483647i), func_1().x), -70748i, var_0.x), 26746u ^ _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 11804u ^ global2.a.a.x), func_2(var_1)), ~4294967295u);
}

