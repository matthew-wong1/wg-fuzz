struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<i32, 13> = array<i32, 13>(43864i, 12070i, 29163i, 0i, -1i, i32(-2147483648), 1i, 38901i, 2147483647i, -3799i, -35388i, -1i, 1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * global1.d.d)))) - global0.d) - -981f);
    var var_1 = Struct_2(global1.e, _wgslsmith_mod_vec4_i32(~vec4<i32>(i32(-1i) * -35679i, 0i, _wgslsmith_clamp_i32(1i, global1.d.b.x, 1i), ~global2[_wgslsmith_index_u32(32174u, 13u)]), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(global1.b << (vec4<u32>(4661u, u_input.a.x, u_input.a.x, 14418u) % vec4<u32>(32u)), global1.b), reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 26472i, global1.a.c.x, 17414i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 7499u) % vec4<u32>(32u))))), arg_0, global1.e, global1.a);
    let var_2 = 4294967295u;
    global2 = array<i32, 13>();
    return select(vec2<bool>(min(~2639u, u_input.a.x) < ~var_2, any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true))), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), 1u < u_input.a.x), vec2<bool>(true, select(false, global0.a != 34527i, true)), vec2<bool>(true, true)));
}

fn func_2() -> Struct_3 {
    var var_0 = 65575u;
    var var_1 = !(!all(!func_3(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], vec2<i32>(1762i, -14277i), global1.b.yzw, -167f))));
    let var_2 = vec4<bool>(true, func_3(global1.c).x, all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(select(-1478f, -1178f, true)) >= _wgslsmith_f_op_f32(step(305f, _wgslsmith_f_op_f32(-global0.d))));
    var_0 = 0u;
    var var_3 = firstLeadingBit(u_input.a);
    return Struct_3(var_2.x, var_2.x, (_wgslsmith_clamp_u32(var_3.x << (u_input.a.x % 32u), firstLeadingBit(4294967295u), _wgslsmith_div_u32(0u, 40482u)) >= ~93059u) & true, var_3.x, max(vec3<i32>(-1i, -global1.b.x, ~firstLeadingBit(0i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, global0.b.x, global0.a), global0.c & vec3<i32>(global1.c.a, global0.b.x, 14637i)), -abs(vec3<i32>(-18617i, 5339i, global2[_wgslsmith_index_u32(u_input.a.x, 13u)])))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    let var_0 = any(vec2<bool>(true, arg_2.b));
    var var_1 = -global0.b;
    let var_2 = func_2();
    let var_3 = 0i;
    return Struct_2(global1.c, ~global1.b ^ (global1.b << ((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_3.d, 1u, 1u), vec4<u32>(79959u, 47753u, arg_2.d, u_input.a.x)) ^ (vec4<u32>(11731u, 1u, 1u, 29726u) & vec4<u32>(var_2.d, arg_1.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))), global1.d, Struct_1(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~arg_3.d), 13u)], ~(-vec2<i32>(-67093i, -1i)), vec3<i32>(abs(_wgslsmith_mod_i32(0i, -11744i)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(arg_1.x, 13u)], 12154i, arg_3.e.x)), var_2.e & global1.e.c), select(arg_0, abs(2147483647i), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.d.d, -1107f))))), global1.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.d, arg_2.c.d, arg_2.c.d, _wgslsmith_f_op_f32(floor(153f))))));
    var var_1 = func_2();
    let var_2 = arg_2.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(var_0, var_0));
    var var_4 = Struct_4(-global1.b, Struct_1(max(-25642i & global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 2147483647i) & _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -2147483647i, 5487i, global0.b.x), vec4<i32>(41527i, global2[_wgslsmith_index_u32(4294967295u, 13u)], 0i, 2147483647i)), ~(-30549i)), select(_wgslsmith_sub_vec2_i32(global0.b, var_1.e.zz ^ arg_2.c.b), ~(global1.e.c.zy >> (vec2<u32>(u_input.a.x, arg_1.x) % vec2<u32>(32u))), firstTrailingBit(4294967295u) >= 53899u), global1.e.c, var_3.x), var_0, _wgslsmith_f_op_f32(-arg_0.d) >= arg_0.d, Struct_2(Struct_1(select(_wgslsmith_sub_i32(var_2.a, -23980i), countOneBits(var_2.c.x), -4632i > arg_2.e.a), firstLeadingBit(arg_2.e.c.yx), ~(vec3<i32>(var_1.e.x, global2[_wgslsmith_index_u32(var_1.d, 13u)], global1.c.c.x) << (vec3<u32>(u_input.a.x, arg_1.x, 1u) % vec3<u32>(32u))), var_3.x), func_1(1i ^ var_1.e.x, min(u_input.a, u_input.a) >> (~vec3<u32>(u_input.a.x, 4294967295u, 0u) % vec3<u32>(32u)), Struct_3(true, false, var_1.b, ~u_input.a.x, -vec3<i32>(2147483647i, 0i, arg_2.b.x)), Struct_3(var_1.c, all(vec4<bool>(true, var_1.c, false, true)), var_1.c, func_2().d, vec3<i32>(arg_2.a.c.x, global0.a, 51830i))).b, Struct_1(var_1.e.x, ~vec2<i32>(14401i, arg_3.x), abs(var_2.c), _wgslsmith_f_op_f32(ceil(-168f))), Struct_1(min(_wgslsmith_div_i32(arg_0.c.x, var_1.e.x), global2[_wgslsmith_index_u32(~4294967295u, 13u)]), vec2<i32>(17082i, ~0i), abs(vec3<i32>(var_2.b.x, -55099i, 1i)), arg_2.a.d), arg_2.e));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-106f, -780f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(func_4(Struct_1(global1.e.b.x, global1.d.b, global0.c, global1.c.d), _wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x)), func_1(global1.d.a, u_input.a, Struct_3(true, false, true, u_input.a.x, global1.e.c), Struct_3(true, true, true, u_input.a.x, vec3<i32>(global1.c.b.x, global0.c.x, global0.a))), global0.c.zz))) == global1.e.d, ~1i >= min(global0.c.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.a.x), 9347u | u_input.a.x), 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(557f, global0.d)))) >= global1.c.d, 1u, global1.b.yyy);
    let var_1 = Struct_3(var_0.b, !(!func_2().b), any(!(!select(vec3<bool>(var_0.a, var_0.b, var_0.c), vec3<bool>(true, true, true), vec3<bool>(var_0.c, var_0.b, var_0.a)))), ~1u, vec3<i32>(reverseBits(~(-43329i)), 1i, global0.c.x));
    var_0 = func_2();
    let var_2 = func_1(select(~25389i, -2147483647i, !(!var_0.b)), u_input.a, var_1, var_1).e;
    global2 = array<i32, 13>();
    let var_3 = -var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(982f, -1454f, -1275f, -2430f))))), var_0.d, _wgslsmith_add_i32(-global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_3.x), global1.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global1.b ^ vec4<i32>(-4856i, -1i, var_3.x, -1255i), vec4<i32>(-16639i, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_3.x, -2147483647i)) << (select(countOneBits(vec4<u32>(u_input.a.x, var_1.d, 1u, 4294967295u)), ~vec4<u32>(var_0.d, 47294u, var_0.d, 35825u), vec4<bool>(var_0.a, true, var_0.a, var_0.c)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(global1.b, global1.b) | _wgslsmith_clamp_vec4_i32(global1.b, global1.b, vec4<i32>(13627i, -84522i, 2147483647i, global1.e.c.x))));
}

