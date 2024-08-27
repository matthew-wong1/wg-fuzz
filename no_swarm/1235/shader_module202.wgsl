struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: vec4<u32> = vec4<u32>(55094u, 67770u, 4294967295u, 2845u);

var<private> global3: Struct_1 = Struct_1(false, vec4<bool>(false, true, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = u_input.a;
    global3 = arg_0;
    global1 = array<vec4<u32>, 24>();
    let var_1 = Struct_2(firstTrailingBit(vec4<i32>(~(-21184i), _wgslsmith_clamp_i32(countOneBits(u_input.c.x), 1i, u_input.c.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(10080i, u_input.c.x, u_input.c.x, 2147483647i), vec4<i32>(u_input.c.x, 1i, 13835i, u_input.c.x), vec4<i32>(-2491i, u_input.c.x, 2147483647i, u_input.c.x))), u_input.c.x)), -1520f);
    var var_2 = Struct_2(firstLeadingBit(var_1.a << (~min(vec4<u32>(1u, u_input.a, 4294967295u, global2.x), vec4<u32>(u_input.a, u_input.b, var_0, u_input.b)) % vec4<u32>(32u))), var_1.b);
    return abs(countOneBits(abs((vec4<i32>(-41625i, var_1.a.x, u_input.c.x, var_1.a.x) ^ var_2.a) ^ var_1.a)));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    global3 = Struct_1(true, !global3.b);
    let var_0 = global2.yx;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1015f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)) + arg_0.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(-1000f + arg_0.b)) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -158f), any(vec3<bool>(global3.b.x, true, true)))), _wgslsmith_f_op_f32(-arg_0.b)))));
    global2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, var_0.x, 0u, 40232u) >> (vec4<u32>(4294967295u, 0u, u_input.a, u_input.a) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(global2.x, 24u)]) & ~0u, global2.x, 4294967295u, var_0.x);
    let var_2 = Struct_1(true, !global3.b);
    return global3.b;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global3 = Struct_1(global3.a, func_4(Struct_2(vec4<i32>(2147483647i, u_input.c.x, 0i, arg_0.a.x) | func_3(Struct_1(true, global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(221f))))));
    global3 = Struct_1(true, arg_1.b);
    global1 = array<vec4<u32>, 24>();
    let var_0 = arg_1;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u << (u_input.a % 32u), abs(4294967295u)), min(global2.xzw, abs(global2.ywx) | global2.xzy));
    return false;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = global3.b.x;
    var var_1 = abs(vec4<i32>(_wgslsmith_div_i32(14672i & u_input.c.x, arg_0), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-10234i, u_input.c.x, arg_0), u_input.c), -u_input.c), _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, u_input.c.x), arg_0), -75089i)) ^ vec4<i32>(~(-arg_0), u_input.c.x ^ _wgslsmith_mod_i32(25794i, 81486i), -10864i, u_input.c.x);
    let var_2 = Struct_1(true, select(select(select(select(global3.b, vec4<bool>(true, false, global3.b.x, global3.a), global3.a), !global3.b, global3.b), select(!global3.b, !global3.b, vec4<bool>(true, false, global3.a, true)), global3.b.x), !vec4<bool>(any(global3.b), true, func_2(Struct_2(vec4<i32>(40470i, u_input.c.x, arg_0, u_input.c.x), 1013f), Struct_1(true, vec4<bool>(global3.b.x, global3.a, global3.a, false)), global1[_wgslsmith_index_u32(17498u, 24u)]), !global3.a), vec4<bool>(any(vec4<bool>(global3.a, false, true, true)), true, false, global3.b.x)));
    global3 = Struct_1(var_2.a, var_2.b);
    var var_3 = var_2;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(floor(var_0.b));
    let var_1 = !arg_0.b.zzw;
    global3 = arg_0;
    let var_2 = ~arg_1.a.yw;
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global3 = func_1(reverseBits(i32(-1i) * -2147483647i));
    var var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-874f, _wgslsmith_f_op_f32(-arg_0.b)))))));
    let var_1 = _wgslsmith_sub_u32(u_input.b, u_input.b);
    global3 = Struct_1(true, !(!global3.b));
    global3 = func_1(var_0.a.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(~_wgslsmith_sub_i32(u_input.c.x, 0i)), Struct_2(min(-vec4<i32>(-2147483647i, -5176i, 37613i, -2147483647i), -vec4<i32>(u_input.c.x, 16239i, -1i, u_input.c.x)), 1263f)), Struct_1(global3.b.x, func_4(Struct_2(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), -537f))), all(global3.b.zz));
    global1 = array<vec4<u32>, 24>();
    let var_1 = max(func_5(Struct_1((91046u | u_input.a) == ~global2.x, vec4<bool>(false, global3.b.x, true, true)), Struct_2(vec4<i32>(1i, u_input.c.x, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), 622f)).a.xyx, countOneBits(-u_input.c | reverseBits(u_input.c ^ u_input.c)));
    global0 = _wgslsmith_f_op_f32(round(945f));
    global2 = global1[_wgslsmith_index_u32(~firstTrailingBit(19359u | ~global2.x), 24u)];
    let var_2 = !func_4(Struct_2(select(vec4<i32>(1i, var_1.x, u_input.c.x, var_1.x), vec4<i32>(0i, var_1.x, 26231i, u_input.c.x), false) | -vec4<i32>(27847i, 0i, var_1.x, var_1.x), -1462f));
    global1 = array<vec4<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(44925i, firstTrailingBit(firstLeadingBit(~0u) & u_input.a), -805f);
}

