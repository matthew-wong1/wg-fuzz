struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -32033i;

var<private> global1: array<u32, 5> = array<u32, 5>(35614u, 0u, 4294967295u, 48039u, 1u);

var<private> global2: Struct_1 = Struct_1(-1i, 25264i, 1i, vec3<bool>(false, false, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    global2 = Struct_1(~max(u_input.c, -_wgslsmith_mod_i32(2774i, -16207i)), global2.a, 2147483647i, vec3<bool>(false, any(vec2<bool>(false, true)), true));
    let var_0 = Struct_4(813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f)), ~(~(~reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2696u, 5u)], 5u)]))), _wgslsmith_dot_vec2_i32(vec2<i32>(-34157i, global2.b), arg_0.b.zz));
    var var_1 = -5497i;
    global2 = Struct_1(global2.c, u_input.c, -4550i, select(select(vec3<bool>(all(vec4<bool>(false, false, global2.d.x, false)), any(global2.d.yz), !global2.d.x), !vec3<bool>(global2.d.x, global2.d.x, false), global2.d), vec3<bool>(true, false, !arg_1.x), !vec3<bool>(any(arg_1), arg_1.x, -457f < var_0.b)));
    return min(55226u, ~(~(~1u)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global1 = array<u32, 5>();
    var var_0 = global2.d;
    var var_1 = var_0.x;
    var var_2 = global1[_wgslsmith_index_u32(~(32442u & ~func_3(Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], vec3<i32>(-42218i, global2.b, arg_0.x)), global2.d.yy)) ^ firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 93440u, global1[_wgslsmith_index_u32(94674u, 5u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 11030u, global1[_wgslsmith_index_u32(1u, 5u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7593u, 5u)], 5u)], 5u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)])))), 5u)];
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(~reverseBits(51537u), 5u)], max(global1[_wgslsmith_index_u32(35235u, 5u)] << (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3830u, 5u)], 5u)]) % 32u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(30511u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], 5u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51114u, 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)])), ~35954u))), ~0u >> (global1[_wgslsmith_index_u32(20587u, 5u)] % 32u)), 5u)];
    return Struct_2(vec4<i32>(firstTrailingBit(-1i) << (4294967295u % 32u), -2147483647i, -1i, -2147483647i), !select(global2.d.zx, vec2<bool>(select(false, false, global2.d.x), all(global2.d)), select(var_0.zx, select(var_0.xy, vec2<bool>(global2.d.x, false), true), !vec2<bool>(false, var_0.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global1 = array<u32, 5>();
    global0 = arg_1.a.x;
    return Struct_1(reverseBits(~firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.b.x))), global2.b, _wgslsmith_dot_vec3_i32(abs(arg_1.a.wxy), _wgslsmith_div_vec3_i32(u_input.a | firstTrailingBit(arg_1.a.wyz), _wgslsmith_mod_vec3_i32(max(vec3<i32>(-1i, global2.b, -1i), vec3<i32>(global2.c, -63247i, 24265i)), u_input.a))), global2.d);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(-19321i, 2147483647i, -2147483647i, vec3<bool>(false, global2.d.x, global2.d.x));
    global2 = func_4(global1[_wgslsmith_index_u32(~firstTrailingBit(1u), 5u)], func_2(select(vec3<i32>(-22534i, 1i, select(37553i, u_input.c, true)), ~(u_input.a & vec3<i32>(-41597i, 0i, 2147483647i)), vec3<bool>(!global2.d.x, all(vec3<bool>(var_0.d.x, false, true)), true))));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16716u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)]), vec3<u32>(1u, 0u, 0u)), 5u)], ~4294967295u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 5u)], 0u))), ((vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31448u, 5u)], 5u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], global1[_wgslsmith_index_u32(1u, 5u)])) | (vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(4763u, 5u)]) | vec3<u32>(global1[_wgslsmith_index_u32(8840u, 5u)], 39624u, global1[_wgslsmith_index_u32(85936u, 5u)]))) << (~(~vec3<u32>(0u, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12413u, 5u)], 5u)])) % vec3<u32>(32u))), vec3<u32>(4294967295u, ~_wgslsmith_sub_u32(min(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)]), ~4294967295u), global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(104898u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), 5u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13213u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45926u, 5u)], 5u)], 5u)]), vec4<u32>(global1[_wgslsmith_index_u32(29545u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47738u, 5u)], 5u)], 9387u, 44412u)), 5u)]), 5u)] ^ 0u));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14602u, 5u)], 5u)], 5u)], _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 92167i, 1i), vec3<i32>(global2.c, u_input.a.x, u_input.b.x)), u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(514i, -global2.a, global2.b), vec3<i32>(global2.b, global2.c, -var_0.a))));
    var_2 = Struct_3(5653u, firstLeadingBit(var_2.b));
    return func_2(abs(select(~abs(var_2.b), vec3<i32>(-1i) * -var_2.b, var_2.a > _wgslsmith_dot_vec4_u32(vec4<u32>(52102u, var_2.a, 31559u, var_1.x), vec4<u32>(11883u, var_1.x, 71585u, 1u)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    var var_0 = arg_1.b;
    let var_1 = min(select(vec4<u32>(~arg_1.c, ~(43527u >> (1u % 32u)), ~26722u, _wgslsmith_div_u32(arg_1.c, 23974u)), ~(~vec4<u32>(127869u, arg_1.c, arg_1.c, arg_1.c)), false), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(62435u, global1[_wgslsmith_index_u32(arg_1.c, 5u)], 1u, 6036u) >> (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 5u)], 14704u, global1[_wgslsmith_index_u32(69815u, 5u)]) % vec4<u32>(32u)), min(vec4<u32>(arg_1.c, 16097u, global1[_wgslsmith_index_u32(arg_1.c, 5u)], global1[_wgslsmith_index_u32(30787u, 5u)]), vec4<u32>(1u, 64555u, global1[_wgslsmith_index_u32(arg_1.c, 5u)], 1u)), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), vec4<bool>(global2.d.x, arg_0.b.x, true, true), vec4<bool>(false, false, false, false))), ~firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.c, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(27010u, 5u)], 41394u, 0u))));
    let var_2 = Struct_1(-(~(~28233i)), 1i, i32(-1i) * -func_2(-arg_0.a.wwx).a.x, !global2.d);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b))));
    var var_3 = func_2(-(~(-(~u_input.b))));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + 1000f) * 1f), arg_1.b, _wgslsmith_div_u32(~1u, var_1.x), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_5(func_1(), Struct_4(_wgslsmith_f_op_f32(floor(-1253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)) * _wgslsmith_f_op_f32(step(512f, _wgslsmith_f_op_f32(trunc(-468f))))), 9251u, _wgslsmith_add_i32(u_input.b.x & 29191i, global2.b & ~45247i)));
    let var_2 = func_1();
    var var_3 = Struct_4(-1000f, _wgslsmith_f_op_f32(trunc(265f)), 0u, 0i);
    let var_4 = var_3.c != (4743u ^ func_3(Struct_3(17674u, vec3<i32>(var_3.d, -8840i, -1i)), !global2.d.yz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-1000f * var_3.a), var_2.a.xzz, vec4<i32>(~_wgslsmith_mod_i32(2147483647i, 1i), i32(-1i) * -(~0i), _wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(var_1.d, var_3.d, var_1.d) << (vec3<u32>(51422u, var_1.c, 1u) % vec3<u32>(32u)))), global2.b), -179f);
}

