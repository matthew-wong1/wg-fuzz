struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

var<private> global1: array<i32, 5> = array<i32, 5>(3534i, -1i, i32(-2147483648), -10406i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global1 = array<i32, 5>();
    let var_0 = 0u;
    var var_1 = Struct_2(Struct_1(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 51204u, u_input.e.x), ~vec3<u32>(var_0, u_input.a, u_input.e.x), ~vec3<u32>(27154u, u_input.c.x, var_0))), 1109f), -(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(58548u, u_input.c.x), 5u)]));
    var var_2 = 4294967295u;
    var_2 = select(4294967295u >> (var_0 % 32u), ~(~(u_input.d ^ var_0) ^ 4294967295u), arg_0);
    return vec4<u32>(var_1.a.a.x, ~29888u, ~85720u & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, var_0, 17173u), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u)), select(vec4<u32>(u_input.e.x, var_1.a.a.x, var_1.a.a.x, u_input.e.x), vec4<u32>(4294967295u, 56364u, var_1.a.a.x, u_input.c.x), vec4<bool>(true, arg_0, true, arg_0))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, var_0, 0u, 47990u), vec4<u32>(82443u, var_1.a.a.x, 4294967295u, 1u))), firstLeadingBit(0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.e.x, arg_2.x, 76769u, abs(select(arg_0.a.x, _wgslsmith_clamp_u32(u_input.b, u_input.e.x, u_input.e.x), -582f >= arg_0.b))), func_3(false));
    let var_1 = abs(arg_1);
    global1 = array<i32, 5>();
    var var_2 = Struct_2(Struct_1(arg_2, -2230f), -20439i);
    let var_3 = Struct_1(func_3(arg_0.a.x >= ~arg_2.x).zwz, var_2.a.b);
    return Struct_1(max(arg_0.a, ~_wgslsmith_sub_vec3_u32(~vec3<u32>(716u, 1u, u_input.d), arg_0.a)), var_3.b);
}

fn func_1() -> Struct_1 {
    let var_0 = 1i;
    var var_1 = func_2(Struct_1(~(~(~vec3<u32>(32879u, 1u, 35693u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(356f - 716f), _wgslsmith_f_op_f32(abs(-833f))))))), select(~(~vec4<i32>(var_0, var_0, var_0, -1055i)), vec4<i32>(var_0, i32(-1i) * -3537i, reverseBits(var_0), ~var_0) | countOneBits(-vec4<i32>(-24677i, 2147483647i, -18007i, -2147483647i)), true), vec3<u32>(4294967295u, 23065u, 19215u));
    var_1 = func_2(Struct_1(vec3<u32>(var_1.a.x, 4294967295u, abs(~u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.b)))))), max(-vec4<i32>(max(0i, 52054i), -2147483647i >> (0u % 32u), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(12336u, 5u)], -2147483647i), ~0i), vec4<i32>(1280i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-23267i, 0i, var_0)), vec3<i32>(var_0, -2147483647i, var_0)), global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(69683u, u_input.b, 4294967295u)), 5u)], firstTrailingBit(~var_0))), _wgslsmith_mult_vec3_u32(vec3<u32>(14536u, _wgslsmith_sub_u32(1u, var_1.a.x) | ~u_input.b, max(u_input.a, ~42172u)), ~(~vec3<u32>(44999u, var_1.a.x, var_1.a.x))));
    global1 = array<i32, 5>();
    var_1 = Struct_1(select(firstTrailingBit(~vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.a.x, 4294967295u), vec3<u32>(u_input.a, u_input.c.x, 41337u)), vec3<bool>(true, all(vec2<bool>(true, true)), true)), var_1.b);
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b + 537f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.b;
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 5u)];
    let var_3 = true;
    global1 = array<i32, 5>();
    let var_4 = global1[_wgslsmith_index_u32(var_0.a.x, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_1().b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1252f)) - 1674f) - _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.b * var_0.b)))), vec3<i32>(reverseBits(-1i), -41333i, ~(-34274i)), _wgslsmith_clamp_u32(0u, 1u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, u_input.e.x), 1u)), var_0.a);
}

