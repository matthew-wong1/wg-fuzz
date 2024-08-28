struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = global2.a.c.x;
    global0 = array<vec2<i32>, 24>();
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(1u, u_input.c, u_input.a.x, 29863u)), vec4<u32>(global2.a.c.x, 47203u, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.c), ~1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.c.x, u_input.c), vec2<u32>(global2.a.c.x, u_input.c)))), 1u);
    let var_2 = 1u;
    global2 = Struct_2(Struct_1(!(true || all(vec3<bool>(global2.a.a, global2.a.a, false))), global2.a.b ^ select(min(vec3<i32>(global2.a.d, global2.d, -18117i), vec3<i32>(global2.c, global2.a.d, -7736i)), vec3<i32>(u_input.b.x, -1i, 2147483647i), -101f != global2.b), ~(~vec2<u32>(1u, 20347u)), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -674f))) + -297f), u_input.b.x, ~_wgslsmith_mult_i32(max(i32(-1i) * -2147483647i, global2.c), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(2147483647i, global2.d))));
    return Struct_3(select(vec3<bool>(true, false, true), select(vec3<bool>(true, !global2.a.a, -480f <= arg_0.x), !vec3<bool>(true, true, global2.a.a), global2.a.a), vec3<bool>(false, global2.a.a, global2.a.a)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    global1 = u_input.b.x;
    global2 = Struct_2(Struct_1(arg_2.a.x, reverseBits(global2.a.b) & global2.a.b, ~_wgslsmith_sub_vec2_u32(firstLeadingBit(arg_1.zy), u_input.a.ww), arg_0), 140f, 0i, _wgslsmith_mult_i32(-global2.d, global2.c << (~global2.a.c.x % 32u)));
    return ~reverseBits((i32(-1i) * -u_input.b.x) >> (min(firstTrailingBit(arg_1.x), ~u_input.a.x) % 32u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = Struct_2(Struct_1(true, global2.a.b, u_input.a.yw, min(u_input.b.x, func_3(countOneBits(global2.d), u_input.a, func_2(vec3<f32>(1000f, 174f, global2.b))))), global2.b, ~(-2147483647i), max(func_3(2147483647i, ~vec4<u32>(u_input.c, 0u, u_input.c, global2.a.c.x), Struct_3(vec3<bool>(arg_0, false, arg_0))), 1i));
    var var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.b), global2.b, 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-812f, 502f) + _wgslsmith_div_f32(-1443f, -1000f)))));
    var var_2 = abs(~44275u);
    var_0 = Struct_1(global2.d >= (-u_input.b.x >> (_wgslsmith_add_u32(94350u, _wgslsmith_div_u32(7114u, global2.a.c.x)) % 32u)), -(~global2.a.b), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x >> (~global2.a.c.x % 32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), global2.a.c & var_0.c), ~firstLeadingBit(vec2<u32>(u_input.a.x, 68978u)))), -1i ^ ~var_0.d);
    return Struct_2(global2.a, global2.b, func_3(0i, ~(~u_input.a), func_2(var_1.yzx)), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~48542u;
    var_0 = global2.a.c.x;
    global2 = func_1(true);
    var var_1 = u_input.a.xzz;
    global2 = Struct_2(func_1(!(u_input.b.x <= _wgslsmith_mult_i32(2104i, u_input.b.x))).a, -741f, -(u_input.b.x & (u_input.b.x ^ (i32(-1i) * -2147483647i))), -u_input.b.x);
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(func_1(all(vec2<bool>(true, false))).a.b.yz >> (~vec2<u32>(0u, var_1.x) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x))), u_input.b);
    global2 = func_1(!(!(!global2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(13254u >> (~(~firstTrailingBit(global2.a.c.x)) % 32u), ~global2.d, vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) - -1162f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-824f - global2.b), _wgslsmith_f_op_f32(round(-1005f)))), global2.b), var_1.x, (u_input.a ^ _wgslsmith_add_vec4_u32(vec4<u32>(59444u, 12189u, 32460u, u_input.c), u_input.a)) & u_input.a);
}

