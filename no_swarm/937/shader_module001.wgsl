struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, true, false, true, false, false, true, false, false, false, false, false, false, false, true);

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<vec4<bool>, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-940f, -573f, -411f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2143f, 690f, 856f), vec3<f32>(3069f, 822f, -1220f))))), -countOneBits(-u_input.c), vec2<bool>(!global1[_wgslsmith_index_u32(1u, 16u)] && true, global1[_wgslsmith_index_u32(1u, 16u)] | true), ~(~select(vec4<u32>(arg_0.x, 36947u, arg_0.x, 4294967295u), vec4<u32>(u_input.a, arg_0.x, u_input.a, 33732u), vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f - _wgslsmith_f_op_f32(1194f + -534f)))), global0[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(~arg_0.x, 1u)), 8u)], -vec2<i32>(reverseBits(~(-2147483647i)), u_input.c.x), ~((abs(u_input.c.x) & firstTrailingBit(-2147483647i)) ^ select(u_input.c.x, 0i, !global1[_wgslsmith_index_u32(arg_0.x, 16u)])));
    let var_1 = var_0.b;
    global0 = array<Struct_1, 8>();
    var var_2 = 30967u;
    var var_3 = var_0.a.b.x != (select(abs(0i), var_1.b.x, true) >> (var_1.d.x % 32u));
    return var_0.a.d.x;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2023f, 714f, -1000f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1412f, 144f, 466f), vec3<f32>(-864f, 973f, -1866f)))))), arg_0.zx, !vec2<bool>((u_input.b.x & u_input.b.x) <= func_3(u_input.b), global1[_wgslsmith_index_u32(1u, 16u)]), firstLeadingBit(vec4<u32>(~1u, ~u_input.a, 4294967295u, 1u) & (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 0u), vec4<u32>(38067u, u_input.b.x, 16650u, u_input.a)) | max(vec4<u32>(u_input.b.x, 20136u, 11423u, 38221u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1580f - -1860f)))) * 959f));
    global1 = array<bool, 16>();
    let var_1 = var_0;
    global2 = array<Struct_2, 6>();
    var var_2 = var_1.d;
    return 17812u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    global3 = array<vec4<bool>, 26>();
    let var_0 = arg_0.c.x << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, abs(32745u) & _wgslsmith_mod_u32(1u, u_input.b.x), reverseBits(func_2(vec3<i32>(1i, arg_0.c.x, -15282i)))), _wgslsmith_sub_u32(~firstTrailingBit(30144u), _wgslsmith_mult_u32(arg_0.b.d.x, u_input.b.x))) % 32u);
    let var_1 = var_0 <= 2147483647i;
    global0 = array<Struct_1, 8>();
    global2 = array<Struct_2, 6>();
    return ~(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.b.d.x, 0u, arg_0.b.d.x), ~(~arg_0.a.d.xzz)) & func_2(-vec3<i32>(arg_0.d, var_0, -28446i) & abs(vec3<i32>(-2147483647i, -15532i, -3410i))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global1 = array<bool, 16>();
    let var_0 = !(!arg_0.a.c);
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_1 = abs(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 4294967295u)) & arg_0.b.d.zy) | select(vec2<u32>(~u_input.a, arg_0.a.d.x), vec2<u32>(arg_0.b.d.x, ~u_input.a), select(arg_0.b.c, select(vec2<bool>(true, var_0.x), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a.d.x, 16u)], arg_0.a.c.x), arg_1), !var_0.x)));
    return Struct_2(global0[_wgslsmith_index_u32(func_3(vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), reverseBits(vec2<u32>(var_1.x, u_input.b.x))), firstTrailingBit(17088u))), 8u)], arg_0.a, _wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, arg_0.d) & vec3<i32>(1i, 2147483647i, u_input.c.x), ~vec3<i32>(u_input.c.x, -31092i, -1i)), reverseBits(68i))), ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    var var_0 = 0u;
    var var_1 = vec2<u32>(_wgslsmith_add_u32(u_input.b.x << (u_input.b.x % 32u), 6987u), _wgslsmith_clamp_u32(u_input.a, u_input.a, ~u_input.b.x));
    let var_2 = func_4(global2[_wgslsmith_index_u32(countOneBits(~func_1(Struct_2(Struct_1(vec3<f32>(-1202f, -1329f, 1901f), vec2<i32>(-1i, 4979i), vec2<bool>(false, global1[_wgslsmith_index_u32(51365u, 16u)]), vec4<u32>(u_input.a, 1u, 1u, var_1.x), -236f), global0[_wgslsmith_index_u32(73066u, 8u)], u_input.c, -23817i), vec3<bool>(global1[_wgslsmith_index_u32(18665u, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false))) >> (26824u % 32u), 6u)], all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), !global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 16u)], true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 16u)], true))));
    let var_3 = vec2<bool>(true, var_2.a.c.x);
    global1 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, select(var_2.b.d.x, 4294967295u, !select(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], true, true))));
}

