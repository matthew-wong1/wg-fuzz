struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
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

var<private> global0: i32;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_1 = Struct_1(26529i, vec3<i32>(-3844i, -11610i, -11626i), true, 18146i, -256f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> i32 {
    global2 = global1[_wgslsmith_index_u32(62071u, 8u)];
    return 0i;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> bool {
    global2 = Struct_1(global2.a, global2.b, global2.c, global2.b.x, _wgslsmith_f_op_f32(-2058f - -1958f));
    return ~firstLeadingBit(~1i) > ~arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<u32>(~(~u_input.a & _wgslsmith_dot_vec2_u32(vec2<u32>(43202u, 0u), vec2<u32>(u_input.a, 4294967295u))), ~(~_wgslsmith_mod_u32(7814u, u_input.c.x)), ~(1u & reverseBits(u_input.c.x)), 9378u), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, 94058u, u_input.a) ^ vec4<u32>(u_input.a, 82101u, u_input.b, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b), vec4<u32>(11135u, 39213u, 84504u, u_input.c.x)))));
    var var_1 = Struct_1(max(func_1(), u_input.d.x), global2.b, func_2(u_input.b, ~(~(vec4<u32>(u_input.a, var_0.x, 48250u, u_input.c.x) & vec4<u32>(1u, u_input.a, 78824u, var_0.x))), _wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, global2.b.x, global2.a, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 6746i, 11927i)), vec4<i32>(1i, u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, 2147483647i), -2147483647i))), 1i, -281f);
    var var_2 = ~var_0.x;
    var var_3 = -455f;
    let x = u_input.a;
    s_output = StorageBuffer(42363u);
}

