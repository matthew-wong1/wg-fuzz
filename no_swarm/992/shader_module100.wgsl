struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<bool, 29>;

var<private> global3: i32;

var<private> global4: Struct_5;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> Struct_5 {
    let var_0 = 1u | _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(~global4.e.b.a.x, _wgslsmith_mult_u32(~1u, ~u_input.d.x)));
    let var_1 = -981f;
    let var_2 = Struct_1(countOneBits(vec4<u32>(arg_2.b, _wgslsmith_mod_u32(var_0, 0u) ^ 0u, _wgslsmith_mult_u32(4294967295u, u_input.d.x >> (23544u % 32u)), ~(7356u | arg_2.c.a.x))), global4.e.c.x, global4.d.c, 1i);
    global1 = array<vec2<bool>, 11>();
    global3 = -1i;
    return Struct_5(vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.a.zy, firstLeadingBit(global4.e.a)), max(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.a.x, 1u, arg_0.x), arg_0.yzw), _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(3703u, arg_2.b, 73914u))), _wgslsmith_clamp_u32(~4294967295u, 1u, ~arg_2.c.b.a.x)), ~(~(~4294967295u))), var_2.b, true, arg_2.c.b, arg_2.c);
}

fn func_3() -> vec4<u32> {
    var var_0 = u_input.d.zz;
    var var_1 = vec4<bool>(all(!select(vec3<bool>(global4.c, global4.e.b.c, true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global4.d.c, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(73016u, 4u)], global2[_wgslsmith_index_u32(68419u, 29u)]))) | all(global1[_wgslsmith_index_u32(67758u << (u_input.a % 32u), 11u)]), any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(23521u, 29u)] | global2[_wgslsmith_index_u32(var_0.x, 29u)], true), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), false || select(false, global4.d.c, global2[_wgslsmith_index_u32(global4.a.x, 29u)]))), all(!select(!vec3<bool>(global4.e.b.c, global4.c, global0[_wgslsmith_index_u32(global4.a.x, 4u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 4u)]), false & global0[_wgslsmith_index_u32(0u, 4u)])), global4.e.b.c);
    global3 = _wgslsmith_dot_vec4_i32(vec4<i32>(global4.e.b.d, ~global4.d.b, 0i, abs(~global4.b) ^ ~global4.e.b.b), vec4<i32>(countOneBits(8121i), firstLeadingBit(~max(2147483647i, u_input.b.x)), -17454i, firstLeadingBit(abs(global4.d.d))));
    var var_2 = func_2(abs(abs(~(~global4.e.b.a))), true, Struct_4(u_input.b.xyx >> (vec3<u32>(func_2(global4.e.b.a, false, Struct_4(vec3<i32>(-54717i, global4.d.d, u_input.b.x), var_0.x, Struct_3(vec2<u32>(u_input.d.x, 4294967295u), global4.e.b, u_input.b.yz), u_input.b.yzy), 33982i).a.x, abs(0u), _wgslsmith_clamp_u32(116524u, 4294967295u, var_0.x)) % vec3<u32>(32u)), ~var_0.x, func_2(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18687u, global4.a.x, var_0.x), global4.d.a)), !all(vec4<bool>(var_1.x, true, false, global4.e.b.c)), Struct_4(_wgslsmith_div_vec3_i32(u_input.b.xww, u_input.b.wzy), ~var_0.x, func_2(global4.e.b.a, false, Struct_4(vec3<i32>(-1i, global4.d.d, 0i), 5192u, Struct_3(vec2<u32>(34340u, 0u), Struct_1(global4.d.a, 55810i, var_1.x, global4.d.d), u_input.b.zx), u_input.b.yyw), global4.e.b.d).e, vec3<i32>(2147483647i, -14951i, u_input.c)), ~global4.e.c.x).e, vec3<i32>(func_2(vec4<u32>(30839u, global4.e.b.a.x, 43844u, u_input.d.x), global2[_wgslsmith_index_u32(u_input.a, 29u)], Struct_4(u_input.b.zww, 19746u, global4.e, u_input.b.yxy), select(-2147483647i, -5806i, true)).b, i32(-1i) * -u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.b, 72906i, -10350i), vec3<i32>(-14685i, -19727i, global4.b)) & global4.d.d)), -1i).e.b;
    let var_3 = Struct_4(vec3<i32>(1i, 35220i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, global4.d.b, 23690i), vec4<i32>(14218i, 1i, global4.e.b.b, u_input.b.x)) << (~global4.a.x % 32u)), select(~global4.a.x, 1u, false), func_2(vec4<u32>(_wgslsmith_mult_u32(var_0.x, u_input.a) | 4294967295u, countOneBits(_wgslsmith_mod_u32(9908u, var_2.a.x)), var_0.x, 1u), true, Struct_4(reverseBits(max(vec3<i32>(0i, var_2.d, 2147483647i), vec3<i32>(u_input.c, 2147483647i, 0i))), 10525u, global4.e, _wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.b.wzy), vec3<i32>(global4.e.b.d, global4.b, 37569i), u_input.b.yzy)), -countOneBits(-16384i)).e, ~vec3<i32>(~u_input.b.x, i32(-1i) * -2147483647i, i32(-1i) * -7404i) >> (u_input.d % vec3<u32>(32u)));
    return var_3.c.b.a;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4) -> u32 {
    global0 = array<bool, 4>();
    global1 = array<vec2<bool>, 11>();
    global4 = func_2(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1.c.a.x, 4294967295u, arg_0.a.x, _wgslsmith_dot_vec2_u32(arg_0.d.a.xw, arg_0.d.a.zz)), arg_1.c.b.a | vec4<u32>(global4.d.a.x, 0u, arg_0.e.b.a.x, 4294967295u)), vec4<u32>(~firstLeadingBit(arg_1.b), countOneBits(u_input.d.x), _wgslsmith_dot_vec2_u32(arg_1.c.a, arg_1.c.a), 0u)), arg_0.e.b.c, arg_1, -1i);
    global1 = array<vec2<bool>, 11>();
    var var_0 = func_2(~reverseBits(select(func_3(), arg_0.e.b.a, !vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], false, arg_1.c.b.c, global4.d.c))), !(_wgslsmith_f_op_f32(step(-1244f, _wgslsmith_f_op_f32(round(1000f)))) >= _wgslsmith_f_op_f32(sign(263f))), arg_1, arg_0.b & min(u_input.b.x, -2147483647i)).e.b;
    return ~arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1[_wgslsmith_index_u32(1u >> (select(func_1(Struct_5(u_input.d, 3796i, global2[_wgslsmith_index_u32(u_input.a, 29u)], Struct_1(global4.d.a, u_input.b.x, global0[_wgslsmith_index_u32(20658u, 4u)], global4.e.b.b), global4.e), Struct_4(vec3<i32>(global4.b, global4.b, u_input.b.x), global4.d.a.x, global4.e, u_input.b.yyx)), 1u, true) % 32u), 11u)];
    global1 = array<vec2<bool>, 11>();
    global4 = func_2(~(~vec4<u32>(~u_input.a, 1u, u_input.a, global4.a.x)), true == all(var_0), Struct_4(vec3<i32>(~(-9725i), ~(~u_input.b.x), global4.b | global4.e.c.x), ~(~(~global4.d.a.x)), func_2(~min(vec4<u32>(16957u, 0u, global4.e.a.x, global4.e.a.x), vec4<u32>(global4.e.a.x, global4.d.a.x, 59469u, u_input.d.x)), _wgslsmith_f_op_f32(select(-659f, 722f, global0[_wgslsmith_index_u32(101465u, 4u)])) > -783f, Struct_4(-vec3<i32>(-25852i, global4.b, global4.e.c.x), 70383u << (0u % 32u), global4.e, vec3<i32>(u_input.b.x, -32159i, u_input.c)), u_input.c).e, u_input.b.yzy), -_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(0i), abs(46438i), global4.b), u_input.b.xzx));
    var var_1 = select(vec3<bool>(var_0.x, true, !all(select(vec3<bool>(true, global4.e.b.c, true), vec3<bool>(false, false, false), vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(70148u, 29u)], false)))), !select(!(!vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(global4.d.a.x, 4u)])), vec3<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.e.b.a.x, u_input.a), 29u)]), select(select(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(35309u, 29u)], var_0.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], true, false), vec3<bool>(true, global4.d.c, global2[_wgslsmith_index_u32(84024u, 29u)])), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(29162u, 29u)]), vec3<bool>(global2[_wgslsmith_index_u32(43946u, 29u)], global4.c, global4.c), false), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(34339u, 4u)]))), all(select(vec4<bool>(false, true, true, u_input.a > 1u), vec4<bool>(var_0.x, all(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(18091u, 4u)])), true, true), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(0u, 29u)], global4.c, false)), true, all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true, false, false)), !global0[_wgslsmith_index_u32(global4.a.x, 4u)]))));
    global4 = func_2(global4.d.a, global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(~4294967295u, global4.d.a.x) ^ global4.d.a.x, 1u), 4u)], Struct_4(-_wgslsmith_add_vec3_i32(u_input.b.wyx, u_input.b.xyz), _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, u_input.d.x), global4.e.b.a)), global4.e, vec3<i32>(u_input.b.x ^ (u_input.b.x << (54830u % 32u)), ~(-2705i), reverseBits(~u_input.b.x))), i32(-1i) * -1i);
    let var_2 = u_input.b;
    var var_3 = func_2(global4.e.b.a, any(vec2<bool>(any(vec3<bool>(true, var_1.x, global4.d.c)), global2[_wgslsmith_index_u32(u_input.d.x, 29u)])) || false, Struct_4(firstLeadingBit(_wgslsmith_mod_vec3_i32(var_2.xxw, vec3<i32>(2147483647i, -48782i, 2147483647i)) ^ -vec3<i32>(u_input.b.x, global4.d.b, 18793i)), _wgslsmith_mult_u32(global4.d.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4.a.x, global4.d.a.x, global4.e.a.x), global4.e.b.a.zyy), ~vec3<u32>(1u, u_input.a, 4294967295u))), func_2(vec4<u32>(~u_input.d.x, u_input.d.x, 4294967295u, global4.e.b.a.x ^ global4.d.a.x), var_0.x || true, Struct_4(var_2.zxw, 0u, global4.e, ~vec3<i32>(var_2.x, u_input.c, u_input.c)), max(22774i, u_input.c) << ((82253u << (u_input.a % 32u)) % 32u)).e, vec3<i32>(global4.d.b, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 33819i, -2147483647i, global4.e.c.x), vec4<i32>(var_2.x, global4.d.d, -38715i, -56408i))), _wgslsmith_sub_i32(select(19001i, u_input.c, var_0.x), -var_2.x))), global4.d.d).e.b.a.yw;
    var var_4 = global4.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yyy, ~select(func_1(Struct_5(vec3<u32>(4294967295u, 1u, 0u), global4.d.d, global4.d.c, global4.e.b, Struct_3(vec2<u32>(global4.a.x, 32724u), global4.d, vec2<i32>(global4.e.b.b, global4.d.d))), Struct_4(u_input.b.wyy, u_input.d.x, Struct_3(vec2<u32>(0u, var_3.x), global4.d, vec2<i32>(2147483647i, u_input.b.x)), u_input.b.xyw)), var_3.x, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1894f, 841f, -1194f, 708f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-317f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-723f * -347f) * _wgslsmith_f_op_f32(trunc(-810f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(2131f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)))), -_wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, var_2.x, 6456i, 0i)), countOneBits(vec4<i32>(2147483647i, 6668i, 19556i, -2147483647i))));
}

