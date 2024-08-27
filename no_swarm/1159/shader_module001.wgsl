struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<vec4<bool>, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_u32((u_input.d & vec2<u32>(~u_input.d.x, ~147155u)) | vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, 4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), u_input.c) % 32u), 4294967295u), firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.c, ~u_input.c)));
    let var_1 = countOneBits(abs(max(vec3<u32>(u_input.d.x, ~4294967295u, u_input.d.x), ~reverseBits(vec3<u32>(u_input.d.x, 5210u, 49858u)))));
    global2 = array<vec4<bool>, 3>();
    global0 = !(!(!vec4<bool>(!global0.x, true || global0.x, global0.x, true)));
    let var_2 = vec3<bool>(0i <= u_input.b, false, !global0.x);
    return ~11095u;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(true, vec3<i32>(16641i, _wgslsmith_mod_i32(abs(reverseBits(arg_0)), u_input.b), u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = func_3(~_wgslsmith_add_i32(arg_1, 1i), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(func_2(-1053f), _wgslsmith_add_u32(arg_0.e, firstLeadingBit(64870u)))), 2u)]);
    var var_1 = Struct_3(var_0.b.xy, -2180f);
    global2 = array<vec4<bool>, 3>();
    var var_2 = vec4<i32>(9289i, arg_1, -2147483647i, 2147483647i);
    global0 = global2[_wgslsmith_index_u32(reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 78706u), abs(u_input.c)))) ^ ~75826u, 3u)];
    return func_3(var_0.b.x, Struct_1(var_0.b.xx ^ vec2<i32>(_wgslsmith_sub_i32(arg_0.b.x, 13809i), -14022i), arg_0.b, _wgslsmith_mult_vec2_i32(var_0.b.zx, (vec2<i32>(var_0.b.x, u_input.b) >> (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))) >> (select(u_input.d, vec2<u32>(arg_0.e, 51560u), true) % vec2<u32>(32u))), ~(-vec2<i32>(-17350i, arg_0.b.x)), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -229f)));
    global2 = array<vec4<bool>, 3>();
    global0 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_1 = -(vec2<i32>(-u_input.b, u_input.a) | vec2<i32>(_wgslsmith_clamp_i32(1116i, 2147483647i >> (u_input.d.x % 32u), u_input.b), select(firstLeadingBit(2147483647i), ~42481i, true)));
    var var_2 = ~u_input.c.x & 71144u;
    var var_3 = func_1(global1[_wgslsmith_index_u32(~1u, 2u)], var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d.x & (~u_input.d.x ^ 9926u)), 45643u, -532f, -vec3<i32>(max(_wgslsmith_add_i32(var_3.b.x, u_input.a), -7583i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.x, 9742i, u_input.b, var_1.x) | vec4<i32>(var_1.x, u_input.b, var_3.b.x, var_1.x), abs(vec4<i32>(25499i, var_3.b.x, var_1.x, var_1.x))), u_input.b), _wgslsmith_dot_vec2_u32(u_input.c, countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(29396u, 37492u)), vec2<u32>(4294967295u, 0u)))));
}

