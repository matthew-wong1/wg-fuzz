struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(27517u, 2147483647i), Struct_2(152566u, -44138i), Struct_2(0u, -2983i), Struct_2(110277u, -19586i), Struct_2(1u, 1i));

var<private> global3: array<f32, 4> = array<f32, 4>(1798f, 362f, -1182f, -761f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_2(global1.a, -2147483647i);
    var_0 = Struct_2(global1.a >> (~(~global0.b) % 32u), reverseBits(-25846i));
    var var_1 = Struct_1(!(var_0.a >= _wgslsmith_dot_vec3_u32(~u_input.a.yxw, ~u_input.a.xzz)), select(var_0.a, (var_0.a << (78272u % 32u)) << (~(var_0.a ^ global1.a) % 32u), false), -u_input.b.xy);
    return reverseBits(~(~u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(global0.b, arg_0.b, arg_0.b, _wgslsmith_mult_u32(arg_2, 17505u)), ~vec4<u32>(_wgslsmith_mult_u32(1u, 0u), _wgslsmith_dot_vec3_u32(u_input.a.zxz, vec3<u32>(global1.a, global0.b, arg_0.b)), _wgslsmith_mult_u32(4294967295u, arg_0.b), ~25077u)), _wgslsmith_mult_vec4_u32(~(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(41514u, u_input.a.x, global1.a, arg_3.b)) & abs(vec4<u32>(0u, 0u, arg_2, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a | vec4<u32>(0u, u_input.c, 0u, u_input.a.x)), global0.b, _wgslsmith_add_u32(4294967295u ^ arg_3.b, reverseBits(4294967295u)), arg_0.b))), 5u)];
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.b, ~_wgslsmith_mult_u32(59785u, ~arg_0.b), arg_3.b), 4u)];
    var_0 = -1200f;
    global0 = Struct_1(true, 1u, ~(vec2<i32>(global1.b, u_input.d) ^ u_input.b.xx));
    var var_1 = arg_0;
    return -u_input.b.yz;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = arg_1;
    global0 = Struct_1(!(!(!(4294967295u < var_0.b))), _wgslsmith_mult_u32(142072u, arg_3), ~firstTrailingBit(vec2<i32>(0i, ~(-26970i))));
    let var_1 = global2[_wgslsmith_index_u32(32001u, 5u)];
    let var_2 = func_4(arg_1, ~_wgslsmith_sub_u32(var_1.a, arg_1.b) < firstTrailingBit(select(0u, 312u, true)), func_3(true), Struct_1(!global0.a, arg_3, global0.c)) ^ (arg_1.c | vec2<i32>(-global0.c.x, -16414i));
    global0 = var_0;
    return ~var_1.a << ((~var_0.b >> (_wgslsmith_sub_u32(arg_3, 1u) % 32u)) % 32u);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_1 {
    return Struct_1(global0.a, ~arg_1, vec2<i32>(-countOneBits(global0.c.x), -7676i));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = -vec2<i32>(_wgslsmith_clamp_i32(19830i ^ ~global1.b, _wgslsmith_add_i32(-2147483647i, func_5(50921u, 58029u, -1i).c.x), ~global1.b), -((global0.c.x ^ -2147483647i) ^ -13786i));
    global3 = array<f32, 4>();
    global0 = Struct_1(true, arg_0.b, _wgslsmith_sub_vec2_i32(select(arg_3.c ^ -vec2<i32>(u_input.d, 2147483647i), arg_3.c, select(vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_0.a, true), vec2<bool>(false, true), vec2<bool>(true, global0.a)), true && arg_3.a)), -u_input.b.xz));
    var_0 = vec2<i32>(-_wgslsmith_dot_vec3_i32(u_input.b.wxz, u_input.b.xxw) | _wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, arg_3.c.x, u_input.b.x, u_input.b.x), u_input.b), -2147483647i), ~(~(-78888i))), func_5((11263u ^ (arg_3.b << (arg_0.b % 32u))) & 6985u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, global0.b, 44315u) | u_input.a.yxy, ~vec3<u32>(28550u, global1.a, arg_0.b)), 24717u), 1i).c.x);
    global3 = array<f32, 4>();
    return _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(u_input.b, firstLeadingBit(u_input.b)), ~(~u_input.b)) ^ u_input.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_2 {
    global3 = array<f32, 4>();
    var var_0 = vec2<i32>(18346i, -1i);
    var var_1 = ~func_6(func_5(_wgslsmith_mod_u32(func_2(vec4<f32>(974f, -288f, -1835f, 1000f), Struct_1(global0.a, 0u, arg_0.xy), global3[_wgslsmith_index_u32(31060u, 4u)], 45343u), abs(918u)), arg_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.x, u_input.d), vec3<i32>(2147483647i, -40994i, global0.c.x)), _wgslsmith_dot_vec3_i32(arg_0.wwy, vec3<i32>(-45686i, u_input.b.x, 43077i)))), ~(-2147483647i) >> (~(global0.b >> (global0.b % 32u)) % 32u), ~1i, Struct_1(global0.a, 7034u, arg_0.zx));
    var_1 = select(vec4<i32>(_wgslsmith_mult_i32(global0.c.x, -48207i), -global0.c.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.x, global0.c.x), global1.b), var_1.x), firstTrailingBit(-vec4<i32>(var_1.x, u_input.d, -38787i, max(2147483647i, var_0.x))), true);
    var var_2 = Struct_1(!all(vec3<bool>(select(true, global0.a, global0.a), global0.a, global0.a && false)), 0u, vec2<i32>(countOneBits(i32(-1i) * -global1.b), global1.b));
    return global2[_wgslsmith_index_u32(reverseBits(1u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 4>();
    global1 = func_1(min(u_input.b, vec4<i32>(-global1.b, 1i, -(global1.b << (global0.b % 32u)), 24815i ^ u_input.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, 4294967295u, 1u, u_input.c) & u_input.a, u_input.a << (~u_input.a % vec4<u32>(32u))));
    global3 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c, u_input.c), u_input.a.zx, vec2<bool>(global0.a, false)), ~vec2<u32>(global0.b, global1.a))));
}

