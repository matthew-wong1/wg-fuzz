struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: Struct_3 = Struct_3(Struct_2(92331u), Struct_1(-663f), vec3<u32>(24597u, 48169u, 26781u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = 1u;
    global1 = array<vec4<bool>, 1>();
    let var_1 = false;
    global2 = Struct_3(Struct_2((_wgslsmith_clamp_u32(0u, u_input.b.x, global0.c.x) ^ _wgslsmith_div_u32(62725u, var_0)) & _wgslsmith_dot_vec2_u32(~global2.c.zx, vec2<u32>(0u, var_0))), arg_0, u_input.c.wyw);
    let var_2 = Struct_3(Struct_2(abs(1u)), Struct_1(arg_0.a), firstTrailingBit(abs(~_wgslsmith_div_vec3_u32(u_input.b, global0.c))));
    return ~_wgslsmith_dot_vec4_u32(select(select(u_input.c, vec4<u32>(36847u, 4294967295u, 41026u, 26472u), global1[_wgslsmith_index_u32(var_2.c.x, 1u)]) << (abs(vec4<u32>(0u, u_input.c.x, global2.c.x, 0u)) % vec4<u32>(32u)), firstTrailingBit(max(vec4<u32>(var_0, global0.c.x, global0.c.x, u_input.b.x), vec4<u32>(84505u, global0.c.x, global0.c.x, 4294967295u))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~49779u, global0.a.a), 1u)]), ~(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.a, 0u, 14444u, global0.a.a), u_input.c) ^ u_input.c));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(u_input.c.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f + -987f) * _wgslsmith_f_op_f32(-1394f + global2.b.a)))), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(global2.a.a, global2.c.x, 43265u, u_input.c.x), u_input.c, global1[_wgslsmith_index_u32(45048u, 1u)]), reverseBits(vec4<u32>(global0.a.a, global0.a.a, 22203u, 1u))), 14000u));
    var var_1 = ~abs(func_3(var_0.b));
    let var_2 = select(reverseBits(max(_wgslsmith_add_i32(0i, 2147483647i), 1i)) <= select(i32(-1i) * -59219i, 50167i, select(true, var_0.b.a > var_0.b.a, true)), global0.c.x < (global2.a.a << (_wgslsmith_clamp_u32(0u, reverseBits(82078u), var_0.a.a) % 32u)), all(!vec3<bool>(all(vec2<bool>(false, false)), true, true)));
    var var_3 = true;
    global2 = Struct_3(Struct_2(firstTrailingBit(firstLeadingBit(62924u ^ u_input.a))), var_0.b, vec3<u32>(~(~83103u), firstLeadingBit(u_input.c.x), ~_wgslsmith_sub_u32(firstTrailingBit(4249u), _wgslsmith_add_u32(var_0.a.a, u_input.b.x))));
    return Struct_3(global0.a, var_0.b, u_input.b);
}

fn func_1() -> Struct_1 {
    var var_0 = -(15678i << (_wgslsmith_clamp_u32(~global0.c.x << (global2.c.x % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1831u), vec2<u32>(4294967295u, u_input.a), false), ~global2.c.xx), ~_wgslsmith_dot_vec4_u32(vec4<u32>(124636u, 42657u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, u_input.a, 0u, global2.c.x))) % 32u));
    let var_1 = func_2();
    var var_2 = countOneBits(min(vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, 4119i), 1i), 1i, 39140i), vec4<i32>(-1i) * -(vec4<i32>(0i, 0i, 2147483647i, -28491i) << (vec4<u32>(global2.a.a, 34552u, 1u, var_1.a.a) % vec4<u32>(32u)))));
    global0 = Struct_3(global0.a, Struct_1(1f), reverseBits(vec3<u32>(select(~u_input.a, ~global0.c.x, true), global2.a.a, 4294967295u)));
    global2 = func_2();
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, ~_wgslsmith_mult_i32(-19611i, -13141i)), vec2<i32>(2147483647i, 49329i));
    var var_1 = global0.b.a;
    let var_2 = var_0.x == -var_0.x;
    global1 = array<vec4<bool>, 1>();
    global1 = array<vec4<bool>, 1>();
    let var_3 = Struct_3(Struct_2(u_input.c.x | global2.a.a), Struct_1(global0.b.a), global2.c);
    global2 = var_3;
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~global2.c.x, var_4.a, _wgslsmith_mod_u32(global2.a.a, u_input.a), 29574i);
}

