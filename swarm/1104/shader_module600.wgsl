struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = ~global3.b.c.x << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 3705u), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(abs(u_input.c), 1u))) % 32u);
    var var_1 = vec2<u32>(arg_1.x, 26824u);
    global1 = array<Struct_2, 16>();
    global3 = Struct_2(13877i, Struct_1(vec3<i32>(70587i, firstLeadingBit(min(1i, u_input.b.x)), u_input.b.x), u_input.b.x, ~(~arg_1.xw), ~(-u_input.b.x << (countOneBits(0u) % 32u)), global3.b.c));
    let var_2 = ~select(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(global3.b.b << (u_input.c % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, 9820i, 1i), vec3<i32>(1i, 6850i, -26499i)))), -(select(global3.b.a.xz, global3.b.a.yx, vec2<bool>(arg_0, arg_0)) | vec2<i32>(-41780i, u_input.b.x)), true);
    return abs(~u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> u32 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1583f)), 544f, 323f);
    var var_0 = global1[_wgslsmith_index_u32(arg_1.x, 16u)];
    return 76341u;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = global2.x;
    let var_1 = Struct_2(global3.a, global3.b);
    let var_2 = _wgslsmith_f_op_f32(abs(-1258f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1765f) * _wgslsmith_f_op_f32(f32(-1f) * -473f)), -1288f));
    global3 = Struct_2(-1i, var_1.b);
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(~1u, 16u)], var_1, _wgslsmith_div_i32(max(min(i32(-1i) * -64989i, _wgslsmith_dot_vec3_i32(var_1.b.a, var_1.b.a)), ~_wgslsmith_div_i32(global3.a, 11484i)), ~u_input.b.x), global3.b.c.x);
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(73516u, func_4(Struct_3(var_1, Struct_2(1i, var_1.b), abs(0i), func_3(var_2, vec4<u32>(u_input.c, 67619u, 27804u, global3.b.e.x)) | var_3.b.b.e.x), min(select(vec3<u32>(var_1.b.e.x, 48843u, var_3.d), ~vec3<u32>(var_3.a.b.e.x, 16989u, 4294967295u), true), abs(vec3<u32>(1u, var_3.b.b.c.x, 1u)) ^ ~vec3<u32>(var_3.a.b.c.x, 4294967295u, 39296u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.b.b.e.x, var_3.a.b.e.x, var_1.b.e.x) & vec3<u32>(u_input.c, u_input.c, global3.b.e.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.e.x, global3.b.e.x, 64117u), vec3<u32>(4294967295u, var_1.b.e.x, var_1.b.e.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global3.a, -33650i), vec2<i32>(-4838i, u_input.b.x)) & abs(vec2<i32>(var_3.a.a, global3.a)), abs(var_3.b.b.a.yy) | vec2<i32>(var_3.c, -22373i), select(vec2<i32>(u_input.b.x, 26489i), ~vec2<i32>(var_3.b.b.a.x, var_1.a), vec2<bool>(var_2, var_2))))), 16u)];
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global1 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-855f, global2.x), vec2<f32>(global2.x, global2.x))))));
    let var_1 = func_2(220f);
    global0 = array<vec4<bool>, 23>();
    let var_2 = !select(global0[_wgslsmith_index_u32(global3.b.e.x, 23u)], global0[_wgslsmith_index_u32(~global3.b.c.x, 23u)], vec4<bool>(true, true, false, true));
    return 19003u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((-global3.b.b << (func_1(vec2<f32>(-442f, global2.x)) % 32u)) << (u_input.c % 32u));
    var var_1 = Struct_1(~global3.b.a, u_input.b.x, reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(40392u, global3.b.e.x), global3.b.e), max(global3.b.e, global3.b.c)), global3.b.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(-55992i, u_input.b.x), global3.b.a.xx) ^ (-40091i ^ -min(u_input.b.x, 2147483647i)), _wgslsmith_clamp_vec2_u32(global3.b.e, ~(~global3.b.e), vec2<u32>(11838u, 1u)));
    var var_2 = u_input.c;
    var var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, 999f))), global2.x)))).b;
    let var_4 = ~30924u ^ var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global2.xz)))))), func_4(Struct_3(Struct_2(-14224i, global3.b), global1[_wgslsmith_index_u32(81672u, 16u)], ~1i, var_4), ~vec3<u32>(u_input.a, var_4, 8955u) & _wgslsmith_mod_vec3_u32(~vec3<u32>(var_4, u_input.c, 182u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.c.x, var_3.e.x, u_input.c), vec3<u32>(global3.b.e.x, 1u, 1u), vec3<u32>(global3.b.c.x, var_4, var_1.c.x))), _wgslsmith_add_vec3_u32(select(vec3<u32>(var_1.e.x, u_input.c, var_4), vec3<u32>(var_1.c.x, var_1.c.x, 39516u), false), select(vec3<u32>(global3.b.c.x, 4294967295u, global3.b.c.x), vec3<u32>(17620u, 4294967295u, var_4), true)) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_1.c.x, var_1.c.x) ^ vec3<u32>(21098u, 30306u, 1u), ~vec3<u32>(global3.b.c.x, var_3.c.x, 0u)), firstLeadingBit(abs(vec2<i32>(-45670i, -3389i))) << (vec2<u32>(_wgslsmith_add_u32(63104u, var_3.e.x), ~28826u) % vec2<u32>(32u))), _wgslsmith_mod_i32(u_input.b.x, var_0), vec4<i32>(~_wgslsmith_dot_vec3_i32(-global3.b.a, abs(var_1.a)), global3.a, -9416i, 7471i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-243f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2331f) - _wgslsmith_div_f32(533f, 1764f)) + global2.x)));
}

