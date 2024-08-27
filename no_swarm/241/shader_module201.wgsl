struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 29>;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 18>;

var<private> global4: vec2<i32> = vec2<i32>(-37683i, -19295i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = ~14839u;
    let var_1 = -275f;
    var var_2 = abs(-abs(vec3<i32>(u_input.b.x, i32(-1i) * -2147483647i, -global4.x)));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(38499u, 4294967295u) | u_input.c, 18u)];
    var_0 = 1u;
    return vec4<i32>(var_2.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(-17693i) & min(var_2.x, -1i), global4.x, global4.x), -1i), -47142i, ~_wgslsmith_sub_i32(-1i, reverseBits(1i)) & _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(0i, u_input.b.x), -2147483647i, -2147483647i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = global0.c.zzw;
    var var_1 = abs(func_3(Struct_3(Struct_1(false)), Struct_1(true), global3[_wgslsmith_index_u32(arg_0 ^ u_input.a.x, 18u)]));
    global4 = u_input.b;
    global4 = -vec2<i32>(var_1.x, u_input.b.x);
    let var_2 = global3[_wgslsmith_index_u32(arg_0, 18u)];
    return Struct_1(true);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = arg_0;
    return func_2(u_input.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = -317f;
    let var_2 = Struct_1(true);
    let var_3 = global3[_wgslsmith_index_u32(~(~var_0), 18u)];
    let var_4 = (min(1u, _wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x)) ^ reverseBits(_wgslsmith_clamp_u32(var_0, ~u_input.c, reverseBits(4294967295u)))) ^ abs(firstLeadingBit(1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 0u, 4294967295u) >> (vec4<u32>(1u, 3073u, 4294967295u, var_0) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4609u, var_0, 4294967295u, 42159u), vec4<u32>(3534u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(var_0, u_input.c, 1u, var_0))));
    return max(var_0, ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 18>();
    var var_0 = vec3<i32>(2147483647i, -2147483647i, u_input.b.x) & -_wgslsmith_add_vec3_i32(select(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)], ~global1[_wgslsmith_index_u32(36756u, 29u)], all(vec3<bool>(true, global0.b.a, global0.a.a))), -vec3<i32>(8674i, -2147483647i, 10835i));
    var_0 = vec3<i32>(~(-41504i), -7242i, _wgslsmith_clamp_i32(global4.x, countOneBits(46932i), -(~u_input.b.x))) << (vec3<u32>(abs(~u_input.c >> (_wgslsmith_add_u32(u_input.c, 30936u) % 32u)), ~func_4(Struct_3(Struct_1(global0.c.x)), func_1(Struct_3(Struct_1(global0.a.a)), vec4<i32>(var_0.x, -13893i, var_0.x, -35822i), vec3<u32>(u_input.a.x, 0u, u_input.c), vec2<i32>(2147483647i, -2147483647i)), 2147483647i, -global4.x), abs(abs(~u_input.a.x))) % vec3<u32>(32u));
    global0 = Struct_2(func_1(Struct_3(global0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(select(1i, 24299i, global0.c.x), -1i, -var_0.x, -1i), _wgslsmith_add_vec4_i32(select(vec4<i32>(global4.x, var_0.x, global4.x, u_input.b.x), vec4<i32>(1i, var_0.x, 2230i, 4737i), false), vec4<i32>(41447i, -1i, var_0.x, 11509i))), vec3<u32>(u_input.a.x, u_input.a.x, ~(~u_input.c)), var_0.yz), global0.a, global0.c);
    var var_1 = vec4<i32>(-select(_wgslsmith_mod_i32(u_input.b.x, 30147i), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(1i, 31929i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), global0.c.x), reverseBits(1i), global4.x, global4.x);
    let var_2 = Struct_2(func_2(~(abs(u_input.c) & firstLeadingBit(32514u))), global0.b, !vec4<bool>(!all(global0.c.wyx), !all(global0.c.zy), !global0.b.a & true, true));
    var var_3 = u_input.a & vec2<u32>((u_input.c << (4294967295u % 32u)) & 11317u, reverseBits(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.a.x << (u_input.c % 32u), -(~max(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, global4.x), vec4<i32>(1i, global4.x, 6896i, 0i)) << (min(vec4<u32>(0u, 4294967295u, var_3.x, 58679u), vec4<u32>(0u, 54441u, 17927u, 4294967295u) | vec4<u32>(0u, u_input.a.x, 68913u, 5287u)) % vec4<u32>(32u))));
}

