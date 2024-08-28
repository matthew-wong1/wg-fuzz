struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-21049i, false, vec4<i32>(-32520i, -4940i, -2618i, -2232i), vec3<f32>(-848f, -761f, -1413f)), Struct_1(1i, false, vec4<i32>(0i, -60111i, 0i, 17781i), vec3<f32>(-387f, 118f, -679f)), 2147483647i, Struct_1(43672i, false, vec4<i32>(-1i, -867i, 30187i, 42858i), vec3<f32>(-1091f, 238f, -161f)), Struct_1(38452i, false, vec4<i32>(1i, 1i, 3854i, 0i), vec3<f32>(103f, 841f, -1402f)));

var<private> global1: i32;

var<private> global2: array<u32, 15> = array<u32, 15>(18087u, 59005u, 31307u, 0u, 13635u, 1u, 49046u, 0u, 3762u, 101380u, 4294967295u, 7374u, 1u, 21610u, 4294967295u);

var<private> global3: array<vec3<u32>, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> bool {
    global2 = array<u32, 15>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_3, -599f)))))), -630f);
    let var_1 = Struct_2(global0.d, Struct_1(global0.a.a, 19829i < u_input.d.x, u_input.d, global0.a.d), 1i >> (arg_1.x % 32u), global0.e, global0.e);
    var var_2 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(-24061i, var_1.a.c.x, global0.d.a) & global0.a.c.xyw, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, var_1.c), vec3<i32>(-1i, var_1.a.c.x, global0.b.a) ^ u_input.d.zwz), !(arg_3 < -301f)), u_input.d.wwy) != -((var_1.d.c.x & u_input.d.x) >> (firstTrailingBit(abs(global2[_wgslsmith_index_u32(1u, 15u)])) % 32u));
    let var_3 = ~(_wgslsmith_mult_vec2_u32(vec2<u32>(select(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], var_1.a.b), firstTrailingBit(26765u)), vec2<u32>(u_input.b.x & arg_1.x, u_input.c.x)) & _wgslsmith_add_vec2_u32(arg_1 | (u_input.b & u_input.c.zx), u_input.a));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(!vec2<bool>(~global2[_wgslsmith_index_u32(u_input.a.x, 15u)] < 6662u, func_3(true, u_input.c.yz ^ u_input.a, Struct_3(vec2<bool>(arg_1.a.x, global0.b.b)), global0.a.d.x)));
    var var_1 = select(arg_1.a.x, true, !(!any(!vec4<bool>(arg_1.a.x, true, true, arg_1.a.x))));
    global0 = Struct_2(Struct_1(u_input.d.x ^ (u_input.d.x >> (firstLeadingBit(0u) % 32u)), true, ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.c.x, u_input.d.x, 15608i, u_input.d.x), vec4<i32>(u_input.d.x, global0.a.a, global0.a.a, 0i)), _wgslsmith_sub_i32(-39314i, global0.a.a), _wgslsmith_div_i32(u_input.d.x, global0.c), 2147483647i), global0.b.d), global0.a, -39287i, global0.a, global0.e);
    global1 = firstLeadingBit(-(i32(-1i) * -(u_input.d.x << (5997u % 32u))));
    let var_2 = Struct_3(select(arg_1.a, var_0.a, false));
    return Struct_1(u_input.d.x, !all(vec4<bool>(true, true, var_2.a.x, true)), abs(vec4<i32>(~abs(-9196i), 1i, _wgslsmith_div_i32(i32(-1i) * -18339i, global0.e.c.x & -2147483647i), -22569i)), global0.a.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = 1u ^ ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, arg_1, u_input.b.x), vec4<u32>(u_input.a.x, 67001u, u_input.a.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(27247u, arg_1, 56508u, arg_1), u_input.c)));
    let var_1 = global0.e.b;
    let var_2 = global0.a.c.wzw;
    var var_3 = _wgslsmith_sub_u32(8102u, _wgslsmith_add_u32(max(abs(~0u), 9225u), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_1, 15u)], u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, arg_1), vec3<u32>(43165u, arg_1, 58569u)) % 32u))));
    var_0 = _wgslsmith_mod_u32(countOneBits(34333u), global2[_wgslsmith_index_u32(~0u, 15u)]);
    return ~(~abs(~abs(0u)));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -(min(~global0.a.c, global0.b.c) ^ ~abs(vec4<i32>(global0.d.c.x, -1i, -2147483647i, arg_2.c.x)));
    global1 = global0.b.a;
    let var_1 = arg_2.d.x;
    global2 = array<u32, 15>();
    var var_2 = true;
    return global0.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = arg_2;
    global3 = array<vec3<u32>, 29>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.d.x - global0.b.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(global0.b.d.x * -1239f)) - global0.d.d.x)));
    let var_2 = func_5(false, vec2<u32>(func_4(!vec4<bool>(false, global0.e.b, false, global0.a.b), global2[_wgslsmith_index_u32(1u, 15u)], func_2(4294967295u, Struct_3(vec2<bool>(false, false))), vec3<bool>(global0.d.b, true, global0.e.b)), ~_wgslsmith_sub_u32(var_0, 83425u)) | (select(u_input.c.xy, ~vec2<u32>(4294967295u, 1u), func_3(global0.b.b, vec2<u32>(0u, arg_2), Struct_3(vec2<bool>(global0.a.b, true)), -663f)) >> (min(vec2<u32>(1573u, var_0), reverseBits(vec2<u32>(var_0, 4294967295u))) % vec2<u32>(32u))), Struct_1(~u_input.d.x, all(vec3<bool>(false, !global0.a.b, false)), global0.e.c, _wgslsmith_f_op_vec3_f32(max(arg_0.wzx, _wgslsmith_f_op_vec3_f32(-global0.a.d)))));
    let var_3 = select(select(select(vec4<bool>(global0.b.a >= 2147483647i, all(vec4<bool>(false, var_2.b, global0.a.b, var_2.b)), false, !global0.a.b), !vec4<bool>(false, false, true, global0.b.b), vec4<bool>(true, true, true, true)), select(vec4<bool>(global0.a.b, all(vec2<bool>(global0.a.b, true)), true, true), vec4<bool>(select(false, true, global0.a.b), false, !global0.b.b, global0.e.b), select(global0.e.b, arg_0.x >= var_2.d.x, true)), vec4<bool>(var_2.b, var_2.b, false, var_2.b)), vec4<bool>(false, false, true, true), (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-856f * var_2.d.x))) <= var_1) || (!(global2[_wgslsmith_index_u32(1u, 15u)] == 4294967295u) && global0.b.b));
    return ~38879i >> (global2[_wgslsmith_index_u32(max(~var_0, arg_2), 15u)] % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec2_u32((~u_input.c.yy & (vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]) << (vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)]) % vec2<u32>(32u)))) & vec2<u32>(38234u, u_input.a.x), _wgslsmith_div_vec2_u32(~min(vec2<u32>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)]), u_input.a), u_input.a));
    global1 = _wgslsmith_dot_vec2_i32((vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, 2353i), ~(-2147483647i)) >> (vec2<u32>(var_0.x, 23046u) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_i32(global0.e.c.zy, ~(~vec2<i32>(u_input.d.x, -52706i))), vec2<i32>(~(global0.c << (1u % 32u)), func_1(vec4<f32>(global0.d.d.x, global0.b.d.x, 1000f, 683f), -1753i, ~0u)) ^ ~u_input.d.wx);
    global0 = Struct_2(global0.a, Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.c.x, 2147483647i, -7021i, 4759i) >> (u_input.c % vec4<u32>(32u)), u_input.d >> (vec4<u32>(1u, global2[_wgslsmith_index_u32(var_0.x, 15u)], 15008u, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]) % vec4<u32>(32u))), !all(vec3<bool>(global0.e.b, global0.e.b, true)) || any(vec2<bool>(global0.d.b, global0.d.b)), u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.b.d, vec3<f32>(global0.e.d.x, -906f, -348f), vec3<bool>(true, true, true))) - vec3<f32>(_wgslsmith_f_op_f32(global0.d.d.x - 2413f), -1460f, _wgslsmith_f_op_f32(sign(global0.d.d.x))))), 28526i, global0.b, Struct_1(-(-u_input.d.x << (global2[_wgslsmith_index_u32(min(var_0.x, u_input.c.x), 15u)] % 32u)), true | !(false && global0.d.b), countOneBits(global0.b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b.d.x, global0.b.d.x, global0.e.d.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(970f, global0.a.d.x, global0.d.d.x), global0.a.d)))))));
    let var_1 = func_5(1i == _wgslsmith_sub_i32(global0.d.a, abs(55521i)), min(_wgslsmith_div_vec2_u32(~max(u_input.b, vec2<u32>(27540u, u_input.a.x)), _wgslsmith_mod_vec2_u32(~var_0, _wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 15u)], 15u)], 22248u), var_0))), u_input.b), func_5(global0.d.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(60342u, 15u)], 63038u), vec2<u32>(72787u, ~var_0.x), ~_wgslsmith_div_vec2_u32(u_input.c.yw, u_input.a)), func_5(global0.e.d.x >= global0.d.d.x, _wgslsmith_mod_vec2_u32(var_0, var_0 & vec2<u32>(14674u, 74368u)), func_2(~0u, Struct_3(vec2<bool>(true, true))))));
    let var_2 = Struct_3(!vec2<bool>(var_1.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_vec4_i32(global0.b.c, vec4<i32>(func_2(1u, var_2).c.x, -var_1.a, func_1(vec4<f32>(465f, global0.e.d.x, 309f, -1003f), 12661i, u_input.b.x), global0.a.c.x << (60021u % 32u)), _wgslsmith_mod_vec4_i32(u_input.d, var_1.c) ^ _wgslsmith_clamp_vec4_i32(var_1.c, global0.e.c, vec4<i32>(var_1.a, 2873i, var_1.c.x, var_1.a)))), var_0 << (u_input.b % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-675f * var_1.d.x))), _wgslsmith_f_op_f32(sign(var_1.d.x))) * _wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-global0.d.d.x), var_1.d.x))), 0u);
}

