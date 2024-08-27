struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<f32>(548f, 244f, -3237f, 308f)), Struct_1(vec4<f32>(-2112f, -1000f, -906f, -187f)), Struct_1(vec4<f32>(-130f, 747f, 976f, -732f)), Struct_1(vec4<f32>(1000f, -306f, -1070f, 1000f)));

var<private> global2: array<Struct_3, 22>;

var<private> global3: array<f32, 12> = array<f32, 12>(-592f, -602f, 146f, -898f, -1933f, -363f, -1833f, -1500f, 1485f, 1000f, 458f, 1373f);

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = false;
    global3 = array<f32, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(10497u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)]) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(357f, global3[_wgslsmith_index_u32(0u, 12u)]), vec2<f32>(global3[_wgslsmith_index_u32(27453u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)])))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(135f, 2585f) * vec2<f32>(global3[_wgslsmith_index_u32(1835u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(66511u, 12u)], -417f), vec2<f32>(1262f, global3[_wgslsmith_index_u32(u_input.a, 12u)])))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(33794u, 12u)]))), global3[_wgslsmith_index_u32(abs(abs(u_input.a)), 12u)])));
    return -1870f;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> bool {
    global4 = select(!(!vec4<bool>(select(true, arg_3, false), any(arg_2.c), global4.x, true)), !(!(!(!vec4<bool>(false, false, arg_3, false)))), !(!vec4<bool>(select(arg_3, true, global4.x), global4.x || arg_3, global4.x, arg_2.c.x)));
    global2 = array<Struct_3, 22>();
    let var_0 = ~vec2<i32>(-arg_2.b.x, 20750i);
    var var_1 = arg_2.e;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.a.a.x)), arg_0.d.a.x, global3[_wgslsmith_index_u32(min(var_1.c, u_input.a), 12u)], _wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.a.a.x), _wgslsmith_f_op_f32(-1552f - global3[_wgslsmith_index_u32(83544u, 12u)])) + -880f)));
    return ~(arg_2.b.x | ((var_0.x | 1i) >> (var_1.c % 32u))) >= arg_1;
}

fn func_2(arg_0: Struct_3) -> u32 {
    global3 = array<f32, 12>();
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.e.c, u_input.a), _wgslsmith_clamp_u32(~arg_0.e.c | 55681u, u_input.a, 51123u)), _wgslsmith_add_u32(~_wgslsmith_div_u32(~38076u, _wgslsmith_mod_u32(u_input.a, arg_0.e.c)), select(reverseBits(u_input.a >> (1u % 32u)), (8924u << (arg_0.e.c % 32u)) << (u_input.a % 32u), global4.x)));
    let var_1 = true;
    var var_2 = select(global4.zx, global4.xy, func_3(arg_0.e, i32(-1i) * -min(-2946i, arg_0.b.x), Struct_3(arg_0.a, select(arg_0.b, arg_0.b >> (vec3<u32>(u_input.a, 25120u, 4294967295u) % vec3<u32>(32u)), true | global4.x), !vec3<bool>(arg_0.c.x, var_1, true), false, arg_0.e), true));
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(max(countOneBits(8294u), u_input.a), 27u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1605f - 1558f)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(max(18951u, 0u), 12u)], _wgslsmith_f_op_f32(min(arg_0.a.a.x, global3[_wgslsmith_index_u32(u_input.a, 12u)]))), _wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1775f))))), ~u_input.a, global1[_wgslsmith_index_u32(~1u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]);
    return ~min(0u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 4>();
    let var_0 = select(select(select(!vec4<bool>(global4.x, global4.x, global4.x, global4.x), !vec4<bool>(false, global4.x, global4.x, global4.x), true), vec4<bool>(true, all(!vec3<bool>(global4.x, global4.x, global4.x)), _wgslsmith_f_op_f32(func_1(global4.x)) > _wgslsmith_div_f32(512f, 452f), global4.x), global4.x), select(vec4<bool>(true, true, global4.x, true), vec4<bool>(true, !(!global4.x), !global4.x, global4.x), true), min(func_2(global2[_wgslsmith_index_u32(u_input.a, 22u)]) & u_input.a, u_input.a) != 1u);
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(55743u), _wgslsmith_clamp_u32(u_input.a, u_input.a << (u_input.a % 32u), 0u)), 27u)], -countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-17237i, 0i, -1i), vec3<i32>(53234i, 14725i, -42846i)), vec3<i32>(1i, 1i, 1i))), select(vec3<bool>(var_0.x | var_0.x, any(var_0.yx), !(!var_0.x)), select(vec3<bool>(all(global4.yz), any(vec2<bool>(false, global4.x)), false), select(select(vec3<bool>(global4.x, global4.x, global4.x), global4.ywy, var_0.wzz), var_0.yxy, true), !global4.x), var_0.xyw), !(1u <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(32328u, 4294967295u, 10428u))), Struct_2(global1[_wgslsmith_index_u32((max(79576u, u_input.a) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a))) >> (reverseBits(u_input.a << (18363u % 32u)) % 32u), 4u)], Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(24936u, 12u)], -335f, global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)]), vec4<f32>(-916f, -1840f, -1000f, global3[_wgslsmith_index_u32(u_input.a, 12u)])) + _wgslsmith_div_vec4_f32(vec4<f32>(363f, -1081f, global3[_wgslsmith_index_u32(46155u, 12u)], -1258f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 12u)], 610f, -1351f, -1331f)))), u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(45665u, u_input.a)), 4u)], global0[_wgslsmith_index_u32(10444u, 27u)]));
    var var_2 = vec3<i32>(-(~25872i) ^ (~_wgslsmith_clamp_i32(-2147483647i, 0i, var_1.b.x) << ((26774u | (1u ^ u_input.a)) % 32u)), ~(-2120i) | min(i32(-1i) * -var_1.b.x, firstTrailingBit(var_1.b.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, var_1.b.x, 0i, var_1.b.x)), vec4<i32>(~(-13034i), -3902i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, 0i), var_1.b), reverseBits(var_1.b.x))), abs(firstLeadingBit(vec4<i32>(-1i, var_1.b.x, var_1.b.x, var_1.b.x) << (vec4<u32>(4294967295u, 0u, u_input.a, var_1.e.c) % vec4<u32>(32u))))));
    var var_3 = max(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.e.c, u_input.a, u_input.a, 4294967295u), max(vec4<u32>(32183u, 15287u, var_1.e.c, u_input.a), vec4<u32>(var_1.e.c, 1u, 0u, var_1.e.c))), vec4<u32>(1u, _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a | 0u, _wgslsmith_add_u32(var_1.e.c, 1867u))) << (countOneBits(firstLeadingBit(~vec4<u32>(4294967295u, 41167u, var_1.e.c, 0u))) % vec4<u32>(32u)), vec4<u32>(~(0u << (1u % 32u)), u_input.a, 0u, abs(reverseBits(u_input.a) ^ _wgslsmith_sub_u32(u_input.a, 51563u))));
    let var_4 = ~select(~(select(vec4<u32>(42619u, 5364u, u_input.a, var_3.x), vec4<u32>(45076u, var_1.e.c, 1528u, var_3.x), var_0) ^ min(vec4<u32>(u_input.a, 4294967295u, 21993u, var_3.x), vec4<u32>(14940u, 47285u, var_1.e.c, 55704u))), firstLeadingBit(~vec4<u32>(7935u, 16678u, var_1.e.c, var_3.x)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 1u, u_input.a, u_input.a), vec4<u32>(var_1.e.c, u_input.a, 4294967295u, 0u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, u_input.a)), var_3.wyx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(50206u, 12u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(11240u, 12u)]))))), _wgslsmith_f_op_f32(step(var_1.a.a.x, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~abs(var_3.x), 12u)], 2191f))));
}

