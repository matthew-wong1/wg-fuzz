struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(53824u, 20578u, vec3<bool>(false, true, true)), Struct_2(39982u, 36598u, vec3<bool>(false, true, true)), Struct_2(1u, 11663u, vec3<bool>(false, false, true)), Struct_2(18274u, 21826u, vec3<bool>(false, false, false)), Struct_2(0u, 136u, vec3<bool>(false, false, false)), Struct_2(1u, 31451u, vec3<bool>(true, false, false)), Struct_2(2425u, 17915u, vec3<bool>(false, true, false)), Struct_2(0u, 37435u, vec3<bool>(false, false, true)), Struct_2(0u, 729u, vec3<bool>(false, true, false)));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(13953u, 39113u, 23281u), vec2<u32>(1054u, 4294967295u), -28349i), Struct_1(vec3<u32>(130427u, 4294967295u, 78907u), vec2<u32>(1u, 4294967295u), i32(-2147483648)), Struct_1(vec3<u32>(12079u, 26801u, 12519u), vec2<u32>(67129u, 9104u), 17334i), Struct_1(vec3<u32>(4294967295u, 1u, 82836u), vec2<u32>(4294967295u, 3654u), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec2<u32>(16830u, 37549u), 1i), Struct_1(vec3<u32>(1u, 661u, 1u), vec2<u32>(25252u, 0u), 1i), Struct_1(vec3<u32>(1u, 1u, 1u), vec2<u32>(4294967295u, 3889u), 43917i), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<u32>(1u, 12765u), -1i), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec2<u32>(28832u, 40620u), 0i), Struct_1(vec3<u32>(1u, 4294967295u, 105209u), vec2<u32>(1u, 4294967295u), 4434i), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<u32>(0u, 77544u), 32789i));

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 9>();
    let var_0 = -abs(~abs(u_input.b.x)) ^ firstTrailingBit(2147483647i);
    global0 = array<Struct_2, 9>();
    var var_1 = global1[_wgslsmith_index_u32(0u, 11u)];
    var var_2 = -2147483647i;
    return var_1.b.x;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(~select(~(~vec3<u32>(arg_0.a, 1203u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(29221u, 38166u, arg_0.a) >> (vec3<u32>(0u, arg_0.b, 27u) % vec3<u32>(32u)), ~vec3<u32>(1u, 4294967295u, 4294967295u)), !(!arg_0.c)), ~(~(~(~vec2<u32>(4294967295u, arg_0.b)))), -13673i & firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), abs(u_input.b.x))));
    global0 = array<Struct_2, 9>();
    var var_1 = var_0.b;
    var var_2 = Struct_1((var_0.a ^ ~reverseBits(var_0.a)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 8630u, var_0.b.x) << (var_0.a % vec3<u32>(32u)), vec3<u32>(69968u, var_1.x, 1u)), 39599u, var_1.x) % vec3<u32>(32u)), abs(firstTrailingBit(abs(select(vec2<u32>(35372u, var_0.a.x), var_0.b, true)))), 1i);
    var_2 = global1[_wgslsmith_index_u32(~(~arg_0.b), 11u)];
    return var_2.c;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i) | select(u_input.b, u_input.b, vec2<bool>(arg_1.x, false)), countOneBits(u_input.b)), 2147483647i, u_input.a), ~(vec3<i32>(-1i) * -min(vec3<i32>(u_input.a, 0i, -66247i), vec3<i32>(u_input.a, -2147483647i, u_input.a))), vec3<bool>(all(arg_1.xxw), arg_1.x, true));
    let var_2 = vec3<bool>(-2147483647i < -var_1.x, all(!(!select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(true, arg_1.x, false, false), global2[_wgslsmith_index_u32(arg_0, 23u)]))), arg_1.x);
    let var_3 = true;
    let var_4 = func_3(global0[_wgslsmith_index_u32(0u, 9u)]);
    return StorageBuffer(firstTrailingBit(max(select(vec3<i32>(37359i, var_4, u_input.a), vec3<i32>(var_1.x, -20015i, var_1.x), false), -vec3<i32>(35986i, var_4, -1i)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, 1u), vec3<u32>(arg_0, arg_0, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1662f, -611f, -299f, -355f), vec4<f32>(-1182f, -942f, -335f, -821f))))), vec4<f32>(-194f, 121f, 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(177f, 1000f))))), select(select(select(vec4<bool>(true, false, arg_1.x, false), vec4<bool>(arg_1.x, var_3, false, false), var_2.x), arg_1, all(global2[_wgslsmith_index_u32(arg_0, 23u)])), global2[_wgslsmith_index_u32(~arg_0 | countOneBits(arg_0), 23u)], arg_1))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, ~arg_0), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, arg_0)), vec2<u32>(1u, 0u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(1u, arg_0)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 1u)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    var var_0 = global1[_wgslsmith_index_u32(func_1(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-6197i, u_input.a, u_input.a), vec3<i32>(-2147483647i, -61116i, u_input.a)), select(vec3<i32>(-31571i, 32620i, u_input.b.x), vec3<i32>(2147483647i, 0i, u_input.b.x), true)), 1i)), 11u)];
    let x = u_input.a;
    s_output = func_2(4294967295u, vec4<bool>(firstTrailingBit(_wgslsmith_sub_u32(0u, var_0.a.x)) != 87355u, true, true, true));
}

