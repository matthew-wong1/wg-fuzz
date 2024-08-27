struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: Struct_3;

var<private> global2: vec2<i32> = vec2<i32>(1i, -41325i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.d.x;
    var var_1 = Struct_2(122f, (_wgslsmith_mod_vec4_u32(reverseBits(arg_1.b.a.b), vec4<u32>(arg_1.a.c.b.x, 53325u, 103916u, 75846u)) << ((vec4<u32>(arg_0.b.a.b.x, 0u, 28333u, arg_1.b.a.e) | vec4<u32>(global1.a.e, 144078u, arg_1.b.a.b.x, arg_2.b.x)) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~global1.a.b, vec4<u32>(arg_1.a.c.b.x, 22612u, 4294967295u, 1u)), global1.a.b), Struct_1(-reverseBits(-2147483647i), ~abs(arg_0.a.c.b ^ global1.a.b), ~vec4<i32>(-global2.x, -global1.a.a, -u_input.c, _wgslsmith_mult_i32(14529i, arg_1.a.c.d)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-u_input.d, arg_2.c.c.x), ~(-8700i), _wgslsmith_mult_i32(global1.a.c.x, firstTrailingBit(1i))), (arg_0.b.a.e << (_wgslsmith_mod_u32(14703u, arg_0.b.a.b.x) % 32u)) << (max(9777u & global1.a.e, 1u) % 32u)), select(select(!vec4<bool>(true, arg_1.d.x, arg_1.d.x, true), select(!vec4<bool>(arg_1.d.x, arg_2.d.x, true, false), vec4<bool>(true, arg_2.d.x, true, false), select(arg_1.a.d, vec4<bool>(arg_0.d.x, true, false, true), arg_2.d)), !(!vec4<bool>(arg_2.d.x, arg_1.a.d.x, false, true))), !vec4<bool>(arg_2.b.x < 4207u, arg_1.a.d.x, !arg_1.a.d.x, arg_0.d.x), arg_1.a.d));
    let var_2 = var_1.d.x;
    let var_3 = vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.a)) - 1025f), -1560f);
    let var_4 = 1u;
    return !any(!select(!var_1.d.wx, arg_2.d.xz, arg_1.a.d.x));
}

fn func_2() -> Struct_3 {
    var var_0 = firstTrailingBit(u_input.b.x);
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.x, -829f, 814f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.x - global1.b.x)))))));
    let var_1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1470f, global1.b.x, global1.b.x, global1.b.x)), _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(global1.b.x, global1.b.x, -1010f, global1.b.x))))))));
    var var_2 = global1.b.yw;
    var var_3 = Struct_5(vec3<bool>(func_3(Struct_4(Struct_2(1000f, var_1.a.b, var_1.a, vec4<bool>(true, false, true, true)), Struct_3(global1.a, vec4<f32>(var_2.x, 958f, -1401f, 166f)), vec3<f32>(var_2.x, global1.b.x, global1.b.x), vec3<bool>(false, false, false), global2.x), Struct_4(Struct_2(var_2.x, global1.a.b, var_1.a, vec4<bool>(false, true, false, true)), Struct_3(Struct_1(-16417i, vec4<u32>(var_1.a.b.x, 73206u, 2888u, 1480u), vec4<i32>(-2147483647i, global2.x, u_input.b.x, 0i), var_1.a.a, 4294967295u), vec4<f32>(var_2.x, -928f, 780f, global1.b.x)), vec3<f32>(global1.b.x, 1000f, -254f), vec3<bool>(true, true, false), global2.x), Struct_2(296f, vec4<u32>(global1.a.e, 77505u, global1.a.b.x, 20846u), Struct_1(u_input.b.x, vec4<u32>(global1.a.b.x, global1.a.b.x, global1.a.e, 27670u), vec4<i32>(var_1.a.c.x, u_input.d, -2147483647i, 1i), u_input.a, global1.a.e), vec4<bool>(false, true, true, true))) & false, true, !(true || all(vec3<bool>(true, true, false)))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.b, vec4<i32>(_wgslsmith_mult_i32(global2.x, 21413i), global2.x, _wgslsmith_dot_vec2_i32(global1.a.c.yz, var_1.a.c.wz), abs(u_input.a))), vec4<i32>(_wgslsmith_add_i32(global1.a.a, -23473i), var_1.a.d, var_1.a.c.x | global1.a.c.x, i32(-1i) * -4521i) >> ((vec4<u32>(var_1.a.b.x, global1.a.e, 28504u, var_1.a.b.x) ^ ~var_1.a.b) % vec4<u32>(32u))));
    return Struct_3(Struct_1(~(-_wgslsmith_dot_vec3_i32(u_input.b.wwy, var_3.b.zyz)), var_1.a.b, global1.a.c, ~firstTrailingBit(-27100i) | _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.a.c.yxx, u_input.b.wwy, u_input.b.wyy), vec3<i32>(global1.a.a, 2147483647i, var_1.a.d)), global1.a.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(global1.b.x, var_1.b.x, -264f, var_2.x))))) - vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(sign(-468f)), -379f, 752f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -u_input.c, -90819i, 0i), -vec4<i32>(global1.a.a, reverseBits(global1.a.d), global2.x, min(u_input.d, global2.x))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(54741u, global1.a.b.x, arg_2.x, 17197u), arg_1.c.b)), _wgslsmith_clamp_vec4_i32(~arg_1.c.c, global1.a.c, -countOneBits(vec4<i32>(u_input.c, 2147483647i, global2.x, 24449i))), global2.x, ~(~49052u));
    global1 = func_2();
    var var_1 = Struct_5(vec3<bool>(arg_0.x, any(arg_0), !arg_1.d.x), vec4<i32>(global2.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-27903i, select(arg_1.c.c.x, global1.a.d, true)), select(0i, 1i, false) >> (61355u % 32u)), _wgslsmith_dot_vec4_i32(var_0.c, u_input.b) | 10206i, _wgslsmith_add_i32(min(firstTrailingBit(u_input.d), _wgslsmith_sub_i32(-18657i, 23542i)), -2636i)));
    var var_2 = ~func_2().a.e;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)));
    return var_0.b.x;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = global1.a.b.x;
    global0 = array<vec2<i32>, 5>();
    var var_1 = u_input.b;
    var_0 = arg_0.b.x;
    let var_2 = Struct_4(arg_0, Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(281f, 533f, arg_0.a))))), select(vec3<bool>(true, true, true), !vec3<bool>(true | arg_0.d.x, false, false), vec3<bool>(!(arg_0.c.d > 1i), true, global1.a.e < global1.a.e)), _wgslsmith_sub_i32(~(~(-2147483647i)), abs(-u_input.c)) >> ((global1.a.e >> ((global1.a.b.x & arg_0.c.b.x) % 32u)) % 32u));
    return Struct_3(arg_0.c, _wgslsmith_f_op_vec4_f32(-global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 5>();
    let var_0 = func_4(Struct_2(global1.b.x, vec4<u32>(~global1.a.e, 15469u & func_1(vec4<bool>(true, true, false, true), Struct_2(1590f, global1.a.b, Struct_1(2147483647i, vec4<u32>(global1.a.e, 6458u, 51578u, 35129u), u_input.b, -9852i, global1.a.b.x), vec4<bool>(false, true, true, false)), global1.a.b), global1.a.b.x, global1.a.e), Struct_1(global1.a.a, abs(~vec4<u32>(60553u, global1.a.b.x, global1.a.b.x, 1u)), u_input.b, 1i, ~global1.a.e & ~88545u), vec4<bool>(false, all(vec3<bool>(false, true, false)), true, true)));
    global0 = array<vec2<i32>, 5>();
    let var_1 = max(~(~1u), 83322u);
    var var_2 = Struct_2(3541f, global1.a.b, func_4(Struct_2(_wgslsmith_f_op_f32(-global1.b.x), ~countOneBits(global1.a.b), Struct_1(-1i, ~global1.a.b, abs(global1.a.c), min(1i, global1.a.d), var_1), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true))).a, vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), true));
    let var_3 = global1.a.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.x, -1i, -989f, var_2.c.b, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, abs(vec4<i32>(var_0.a.d, u_input.d, global1.a.d, 73455i))), global1.a.c));
}

