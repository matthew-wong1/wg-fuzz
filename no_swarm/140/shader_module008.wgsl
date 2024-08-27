struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_4,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: u32;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<f32, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    global1 = 4294967295u;
    var var_0 = (u_input.a.zxw | ~(~arg_0.b.c)) << (~firstLeadingBit(firstTrailingBit(firstLeadingBit(u_input.a.wzy))) % vec3<u32>(32u));
    var var_1 = arg_0;
    global1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.c.x, 5477u), select(var_0.zy, firstLeadingBit(arg_0.b.b.b.wx), !select(var_1.c.a.yx, vec2<bool>(global0.x, true), global0.xx)));
    global1 = var_0.x;
    return select(!vec4<bool>(select(false, true, global0.x | global0.x), (arg_0.c.a.x | arg_0.d) && false, !all(arg_0.c.a), !global2.x), select(!(!var_1.c.a), vec4<bool>(arg_0.c.a.x, ~var_0.x == ~var_1.b.c.x, false & !global2.x, var_1.a), select(arg_0.c.a, arg_0.c.a, select(!var_1.c.a, select(vec4<bool>(arg_0.c.a.x, arg_0.a, false, global2.x), vec4<bool>(var_1.e.a, var_1.d, arg_0.e.a, global0.x), arg_0.e.a), select(global0.x, global2.x, false)))), all(!select(var_1.c.a.wyy, var_1.c.a.xwx, arg_0.c.a.yyw)) | false);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_5(arg_0 > ~(-2147483647i), Struct_2(Struct_1(global0.x, vec4<u32>(arg_1.x, abs(4294967295u), 41309u, ~39362u)), Struct_1(arg_2.x, vec4<u32>(abs(1u), arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_1.x, 4294967295u), u_input.a), u_input.a.x & u_input.a.x)), vec3<u32>(7826u, 4294967295u, _wgslsmith_sub_u32(~u_input.a.x, abs(39028u)))), Struct_4(arg_2, vec3<i32>(0i, -20560i, countOneBits(arg_0)) ^ vec3<i32>(~u_input.c, abs(-10048i), -36015i), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(max(vec2<u32>(21021u, u_input.b), u_input.a.wz), firstLeadingBit(arg_1)), u_input.a.xz)), global0.x, Struct_3(all(!arg_2.yy)));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), global3[_wgslsmith_index_u32(42072u, 9u)])));
    let var_2 = !(!func_3(Struct_5(var_0.e.a, var_0.b, Struct_4(arg_2, var_0.c.b, vec2<u32>(22988u, u_input.a.x)), false, Struct_3(false))).x) || true;
    let var_3 = var_0.b;
    var var_4 = var_1;
    return var_3.a.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    global3 = array<f32, 9>();
    let var_0 = !(func_4(~(-2147483647i) & u_input.c, u_input.a.yy, select(select(vec4<bool>(global0.x, global0.x, global2.x, global0.x), vec4<bool>(false, true, false, true), global2.x), func_3(Struct_5(global0.x, Struct_2(Struct_1(true, u_input.a), Struct_1(global2.x, u_input.a), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), Struct_4(vec4<bool>(true, global2.x, true, global2.x), vec3<i32>(2147483647i, 2450i, u_input.c), arg_0.yx), global0.x, Struct_3(true))), vec4<bool>(global0.x, global0.x, true, true))) | false);
    global0 = !select(select(select(func_3(Struct_5(global0.x, Struct_2(Struct_1(var_0, vec4<u32>(u_input.a.x, 9766u, 95741u, 0u)), Struct_1(var_0, u_input.a), vec3<u32>(24083u, arg_1, 131511u)), Struct_4(vec4<bool>(false, true, global0.x, true), vec3<i32>(-9958i, u_input.c, u_input.c), vec2<u32>(arg_1, arg_1)), var_0, Struct_3(global0.x))).yyz, vec3<bool>(global0.x, global0.x, global0.x), true), vec3<bool>(true, true, true), func_3(Struct_5(var_0, Struct_2(Struct_1(true, vec4<u32>(arg_1, 29756u, 1u, arg_1)), Struct_1(false, vec4<u32>(0u, 0u, arg_0.x, 6952u)), u_input.a.zxw), Struct_4(vec4<bool>(true, false, global0.x, var_0), vec3<i32>(u_input.c, 2240i, u_input.c), vec2<u32>(18939u, 37584u)), var_0, Struct_3(true))).x), !select(!vec3<bool>(var_0, global2.x, global0.x), !vec3<bool>(true, var_0, true), true), !select(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, global2.x, false), vec3<bool>(global2.x, global0.x, var_0)), vec3<bool>(true, global2.x, false), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, false, true), vec3<bool>(global2.x, var_0, true))));
    let var_1 = true;
    var var_2 = !(!vec4<bool>(false, all(vec3<bool>(global0.x, var_1, global2.x)), !(!var_1), global2.x));
    return Struct_1(!((any(global0.zz) | (-438f > global3[_wgslsmith_index_u32(29130u, 9u)])) || global2.x), u_input.a);
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_2(~u_input.a.zxw, u_input.a.x);
    global1 = countOneBits(4294967295u);
    global2 = select(func_3(Struct_5(all(vec3<bool>(global2.x, global0.x, true)), Struct_2(Struct_1(global2.x, u_input.a), func_2(vec3<u32>(35384u, 1u, 4294967295u), 4294967295u), _wgslsmith_mult_vec3_u32(var_0.b.zzz, vec3<u32>(u_input.a.x, 68325u, 4294967295u))), Struct_4(vec4<bool>(global2.x, global0.x, false, global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-35138i, u_input.c, 2147483647i), vec3<i32>(55720i, u_input.c, 53117i)), vec2<u32>(u_input.b, var_0.b.x)), global0.x, Struct_3(var_0.a && false))).zz, select(vec2<bool>(false, func_2(vec3<u32>(u_input.b, var_0.b.x, var_0.b.x), arg_0).a), !vec2<bool>(global2.x, true), false), global0.zy);
    let var_1 = Struct_3(global0.x && any(select(vec3<bool>(global2.x, global0.x, global2.x), !vec3<bool>(global0.x, true, true), !vec3<bool>(true, var_0.a, var_0.a))));
    global2 = global0.xy;
    return Struct_3(var_0.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(24970u, 9u)])), -1111f, global3[_wgslsmith_index_u32(reverseBits(52960u), 9u)], -273f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, 1288f, global3[_wgslsmith_index_u32(arg_0.c.x, 9u)], global3[_wgslsmith_index_u32(arg_0.c.x, 9u)]))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, global3[_wgslsmith_index_u32(arg_0.c.x, 9u)], 847f, -372f) * vec4<f32>(-1340f, 112f, global3[_wgslsmith_index_u32(u_input.b, 9u)], 701f)))))));
    global2 = !vec2<bool>(arg_1.a, !(countOneBits(arg_0.b.x) >= u_input.c));
    var var_1 = _wgslsmith_sub_u32(~89871u, ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u)));
    var_1 = abs(u_input.b) ^ u_input.a.x;
    return _wgslsmith_add_u32(u_input.a.x >> (u_input.a.x % 32u), abs(~4294967295u)) ^ 40539u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 9>();
    global1 = ~func_5(Struct_4(select(select(vec4<bool>(global0.x, global2.x, true, false), vec4<bool>(true, false, global0.x, false), true), !vec4<bool>(global0.x, global0.x, global2.x, false), global0.x || true), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.c) >> (u_input.a.xxw % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(0i, 11356i, u_input.c) ^ vec3<i32>(u_input.c, -2147483647i, u_input.c)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(2571u, 4294967295u), u_input.a.yx), ~vec2<u32>(12216u, u_input.b))), func_1(0u));
    global1 = func_5(Struct_4(func_3(Struct_5(false & global0.x, Struct_2(Struct_1(global0.x, u_input.a), Struct_1(global2.x, u_input.a), u_input.a.yxw), Struct_4(vec4<bool>(global2.x, global2.x, true, false), vec3<i32>(1i, 2147483647i, 2147483647i), u_input.a.yz), global2.x, func_1(4294967295u))), ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-9759i, 0i, 2147483647i), vec3<i32>(29237i, 14623i, u_input.c)), vec3<i32>(1i, 1009i, -16102i) & vec3<i32>(u_input.c, 2147483647i, -1i)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.a.xx)), Struct_3(!(select(-32780i, u_input.c, false) < u_input.c)));
    let var_0 = vec3<f32>(global3[_wgslsmith_index_u32(abs(~u_input.b), 9u)], -563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], -231f, global2.x))))))));
    let var_1 = Struct_2(Struct_1(false, ~(~vec4<u32>(14819u, u_input.b, u_input.a.x, 4294967295u))), Struct_1(true, vec4<u32>(reverseBits(18428u), 34226u, u_input.a.x, 1u)), u_input.a.yyw);
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(671f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 9u)])))), 152f)), _wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~(~var_1.b.b.zxz)), ~(vec3<u32>(u_input.a.x, 28926u, 4294967295u) | vec3<u32>(0u, 36285u, u_input.a.x)) & ~_wgslsmith_div_vec3_u32(var_1.a.b.yxx, vec3<u32>(u_input.b, 62110u, var_1.b.b.x))), 19498u, 533f, var_1.c);
}

