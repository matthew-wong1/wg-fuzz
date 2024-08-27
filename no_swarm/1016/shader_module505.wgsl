struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(35573u, 25571u, 45232u)), Struct_1(vec3<u32>(44954u, 1u, 53612u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(14105u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 71439u)), Struct_1(vec3<u32>(1u, 65529u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 40915u, 0u)), Struct_1(vec3<u32>(0u, 0u, 7025u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 1u, 57155u)), Struct_1(vec3<u32>(1886u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 4294967295u, 22015u)), Struct_1(vec3<u32>(70213u, 0u, 1u)), Struct_1(vec3<u32>(35301u, 90027u, 12277u)), Struct_1(vec3<u32>(80881u, 0u, 29136u)), Struct_1(vec3<u32>(8460u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 15307u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(60168u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 70617u, 9999u)), Struct_1(vec3<u32>(4294967295u, 41365u, 50167u)), Struct_1(vec3<u32>(29346u, 1u, 30651u)), Struct_1(vec3<u32>(0u, 17795u, 0u)), Struct_1(vec3<u32>(0u, 19426u, 78073u)), Struct_1(vec3<u32>(76904u, 1u, 59806u)));

var<private> global3: f32 = -936f;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(19546u, 1u, 20454u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_1, 26>();
    global3 = -729f;
    global2 = array<Struct_1, 26>();
    global2 = array<Struct_1, 26>();
    var var_0 = vec3<i32>(firstTrailingBit(u_input.c), select(0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -28624i, -1013i), vec4<i32>(-2147483647i, u_input.b, u_input.c, 9367i) & vec4<i32>(-24559i, u_input.c, u_input.b, u_input.c)), true), u_input.c);
    return Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(~global4.a.x, u_input.a.x ^ 29476u, 1u), _wgslsmith_sub_vec3_u32(u_input.a.xyw, vec3<u32>(1u, reverseBits(arg_0.x), _wgslsmith_sub_u32(0u, 0u)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), !any(vec3<bool>(true, false, true))), any(vec4<bool>(true, true, true, true)));
    global0 = func_2(global0.a);
    let var_1 = u_input.b;
    var var_2 = arg_2;
    let var_3 = true;
    return arg_1;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = !select(vec4<bool>(true, !arg_0.x, all(!vec2<bool>(false, arg_0.x)), all(vec4<bool>(true, true, true, true))), vec4<bool>(select(84140u > arg_2.a.x, !arg_0.x, any(arg_0)), select(arg_0.x, select(false, arg_0.x, arg_0.x), false & arg_0.x), true, _wgslsmith_clamp_u32(global0.a.x, global4.a.x, 0u) == ~u_input.a.x), !(!(true & arg_0.x)));
    let var_1 = (abs(u_input.c) << (~u_input.a.x % 32u)) ^ ((u_input.c | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 14638i), vec2<i32>(2147483647i, -2147483647i))) | (arg_1 & min(-u_input.c, 1i)));
    global0 = arg_3;
    let var_2 = global0.a.yx;
    let var_3 = ~max(_wgslsmith_mod_u32(42977u, global4.a.x | 60724u), 4294967295u | func_2(~arg_2.a).a.x);
    return var_0.zxy;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = ~abs(arg_0.a.x);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(arg_3, reverseBits(func_3(func_2(global0.a), func_2(arg_3), _wgslsmith_div_i32(1i, u_input.c)).a)));
    var var_2 = 978f;
    var_0 = 0u;
    let var_3 = vec2<bool>(true, true);
    return func_3(Struct_1(vec3<u32>(4294967295u, global4.a.x, 23226u) ^ vec3<u32>(~4294967295u, firstTrailingBit(1u), arg_0.a.x)), global1[_wgslsmith_index_u32(firstTrailingBit(abs(reverseBits(15248u)) << (~global4.a.x % 32u)), 31u)], _wgslsmith_sub_i32(reverseBits(i32(-1i) * -2147483647i), select(_wgslsmith_clamp_i32(-26346i, reverseBits(u_input.c), u_input.c), u_input.c, !(!var_3.x))));
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_1, 31>();
    global0 = func_5(global2[_wgslsmith_index_u32(1u, 26u)], 4294967295u, any(func_4(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), 1i, Struct_1(global4.a), func_3(Struct_1(vec3<u32>(34862u, global4.a.x, 86014u)), func_2(global4.a), u_input.c))), vec3<u32>(global4.a.x, ~global0.a.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.x, 16781u, 1u), global0.a))));
    let var_0 = -338f;
    let var_1 = Struct_1(~(global4.a | ~(~global4.a)));
    global4 = Struct_1(min(func_2(global4.a).a, global0.a));
    return StorageBuffer(410f, select(2147483647i, u_input.c, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-1i));
    let x = u_input.a;
    s_output = func_1();
}

