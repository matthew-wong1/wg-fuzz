struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44484u;

var<private> global1: Struct_2;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 2147483647i);

var<private> global3: vec2<bool>;

var<private> global4: array<vec3<f32>, 23>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    global1 = Struct_2(~u_input.a, global1.c, global1.c);
    var var_0 = vec2<bool>(all(vec2<bool>(arg_1, !all(vec3<bool>(true, true, false)))), select(any(select(!vec3<bool>(arg_1, false, true), vec3<bool>(true, true, true), true)), any(vec4<bool>(global3.x, !arg_1, all(vec2<bool>(arg_2, arg_2)), true)), all(!vec4<bool>(arg_1, false, arg_1, false)) & false));
    global0 = 4411u;
    global1 = Struct_2(-_wgslsmith_mod_vec3_i32(global1.a, global2.yyw), Struct_1(_wgslsmith_dot_vec2_u32(global1.b.c.yy, abs(max(vec2<u32>(arg_0.x, 1u), arg_0.yz))), ~(max(arg_3.xx, u_input.b.zy) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global1.c.a, 0u), vec2<u32>(1u, 67335u)) % vec2<u32>(32u))), ~(~(~arg_3))), Struct_1(~select(arg_3.x, ~1u, any(vec2<bool>(arg_1, true))), firstTrailingBit(global1.b.c.xz), arg_3));
    return ~16025i;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<bool> {
    global1 = Struct_2(vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(func_3(arg_0.a.c.c.zwz, true, global3.x, vec4<u32>(arg_3.x, arg_0.c.b.c.x, 70018u, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2147483647i, -1i, -27676i), vec4<i32>(-2147483647i, global2.x, arg_0.b.x, 1i))), arg_1), Struct_1(4294967295u, ~vec2<u32>(firstTrailingBit(arg_0.c.c.b.x), arg_3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, u_input.c.x, 22827u, 0u), arg_2.c.c.c) ^ ~(~arg_2.d.c)), Struct_1(~u_input.b.x | arg_2.c.c.a, ~vec2<u32>(countOneBits(26075u), 34348u), ~vec4<u32>(27015u, global1.b.c.x, select(51471u, 82887u, global3.x), ~37946u)));
    return vec3<bool>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global1.a.x, -67563i), _wgslsmith_add_i32(global2.x, reverseBits(arg_0.b.x)), 1i) >= _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, global2.x), u_input.d.x)), !(!any(select(vec4<bool>(global3.x, false, false, false), vec4<bool>(true, true, global3.x, global3.x), false))), false);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_4 {
    global3 = select(!vec2<bool>(global3.x, true), !vec2<bool>(all(func_2(Struct_3(Struct_2(global1.a, Struct_1(26548u, global1.c.b, arg_1), Struct_1(global1.b.a, arg_1.zw, arg_1)), vec2<i32>(global1.a.x, u_input.d.x), Struct_2(global2.yzy, global1.c, global1.b), Struct_1(13677u, vec2<u32>(4294967295u, 4294967295u), arg_1)), arg_0, Struct_3(Struct_2(global2.zyw, Struct_1(arg_1.x, vec2<u32>(0u, 4294967295u), vec4<u32>(global1.c.a, 90008u, arg_1.x, 25360u)), global1.c), vec2<i32>(-1i, 31844i), Struct_2(vec3<i32>(-1i, 1i, global1.a.x), global1.b, Struct_1(arg_1.x, vec2<u32>(u_input.b.x, u_input.b.x), arg_1)), Struct_1(arg_1.x, u_input.b.xz, vec4<u32>(global1.c.c.x, 0u, u_input.c.x, u_input.c.x))), vec2<u32>(arg_1.x, 9409u))), any(!vec2<bool>(global3.x, global3.x))), all(vec4<bool>(all(vec2<bool>(true, true)), global3.x, global3.x, true)));
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(global2.zyx, vec3<i32>(-56066i, global1.a.x, -2147483647i)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global1.b.c, arg_1), ~vec4<u32>(global1.c.c.x, global1.c.c.x, global1.b.a, u_input.c.x)), u_input.c.x), ~abs(u_input.b.zx & u_input.b.yz), firstLeadingBit(vec4<u32>(~u_input.c.x, _wgslsmith_mod_u32(12112u, 1u), ~global1.c.b.x, 1u))), global1.c);
    global1 = Struct_2(vec3<i32>(2147483647i, 4016i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a.x, global1.a.x), vec2<i32>(32088i, global1.a.x))) & abs(global1.a), global1.b, var_0.c);
    return Struct_4(Struct_2(global2.xzx ^ _wgslsmith_mult_vec3_i32(abs(global1.a), global2.xxy | var_0.a), var_0.c, var_0.c), vec2<bool>(global3.x, true), select(select(vec4<bool>(false, true, false, any(vec3<bool>(global3.x, true, true))), select(!vec4<bool>(true, global3.x, true, global3.x), !vec4<bool>(true, false, global3.x, global3.x), global3.x), true), !vec4<bool>(select(true, false, true), any(vec2<bool>(global3.x, false)), !global3.x, global3.x), true), Struct_3(Struct_2(vec3<i32>(-global2.x, abs(-2147483647i), i32(-1i) * -41274i), Struct_1(4294967295u, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 2440u), var_0.b.b), arg_1), var_0.b), _wgslsmith_add_vec2_i32(vec2<i32>(global1.a.x, ~16573i), global2.xz), Struct_2(-global1.a, global1.c, Struct_1(4294967295u, arg_1.zy >> (arg_1.zx % vec2<u32>(32u)), countOneBits(vec4<u32>(4294967295u, 10278u, 10528u, arg_1.x)))), Struct_1(min(12055u, global1.c.b.x << (1u % 32u)), ~firstTrailingBit(vec2<u32>(8652u, var_0.b.a)), global1.c.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f)) + -952f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(abs(global2.x | -56124i), u_input.d.x, global3.x), select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.b.c, global1.b.c, ~global1.c.c), global1.b.c), vec4<u32>(_wgslsmith_mod_u32(~48376u, ~u_input.c.x), ~global1.b.c.x, ~20750u, _wgslsmith_mult_u32(u_input.b.x, global1.b.b.x)), false));
    var var_1 = -min(abs(-5180i), 0i);
    let var_2 = global3.x;
    var var_3 = vec3<u32>(global1.b.b.x, 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(1u), 1u ^ min(0u, var_0.d.c.c.c.x)) | _wgslsmith_dot_vec3_u32(vec3<u32>(~23501u, firstLeadingBit(0u), _wgslsmith_mult_u32(15653u, 66232u)), vec3<u32>(var_0.d.a.b.c.x & var_0.a.b.a, ~var_0.d.d.c.x, _wgslsmith_add_u32(u_input.c.x, global1.b.b.x))));
    var_1 = 30397i;
    var var_4 = var_0.a;
    var var_5 = global2.x ^ var_0.a.a.x;
    var_5 = _wgslsmith_div_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, -2147483647i, -44554i, -50638i), vec4<i32>(-2147483647i, var_0.d.c.a.x, global2.x, 2147483647i)) >> (var_4.b.a % 32u)), reverseBits(-45801i));
    let x = u_input.a;
    s_output = StorageBuffer(-152f, global1.a.x, 55853u, ~(abs(~vec4<u32>(4294967295u, 0u, 17195u, 0u)) | (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3.x, 0u, 12110u), var_0.a.b.c) << (var_0.d.c.b.c % vec4<u32>(32u)))));
}

