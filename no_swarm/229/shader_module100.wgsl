struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -337i;

var<private> global1: i32;

var<private> global2: array<f32, 27>;

var<private> global3: i32 = 1i;

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    return i32(-1i) * -83151i;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global1 = _wgslsmith_mult_i32(global4.c.x, ~u_input.d);
    global3 = u_input.d;
    var var_0 = Struct_1(abs(-15666i), global4.b, global4.c, ~(~countOneBits(abs(u_input.b))));
    let var_1 = Struct_1(~(-2147483647i), -countOneBits(select(abs(var_0.c), vec4<i32>(-9483i, var_0.c.x, 2147483647i, 0i), true)), var_0.c, vec4<u32>(51640u, min(var_0.d.x, firstLeadingBit(global4.d.x) << (u_input.b.x % 32u)), 1u, ~(~1u)));
    let var_2 = var_1;
    return firstLeadingBit(var_2.a);
}

fn func_2() -> i32 {
    let var_0 = reverseBits(vec3<i32>(global4.b.x, global4.c.x, -global4.a) ^ -global4.b.wwx);
    let var_1 = vec3<f32>(global2[_wgslsmith_index_u32(50195u, 27u)], 591f, 1081f);
    var var_2 = all(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), !(u_input.b.x <= _wgslsmith_div_u32(u_input.b.x, 0u))));
    global0 = _wgslsmith_mult_i32(-select(countOneBits(_wgslsmith_sub_i32(u_input.d, var_0.x)), -(2147483647i << (global4.d.x % 32u)), true), var_0.x);
    var var_3 = Struct_1(_wgslsmith_add_i32(var_0.x, _wgslsmith_mod_i32(-(~u_input.d), _wgslsmith_dot_vec2_i32(firstLeadingBit(global4.b.xz), _wgslsmith_mult_vec2_i32(vec2<i32>(global4.b.x, 2147483647i), global4.c.wy)))), global4.b & vec4<i32>(var_0.x, -2147483647i, reverseBits(func_3(var_1)), global4.a), global4.c, vec4<u32>(~(~u_input.b.x), firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 54936u), global4.d.yyx))), 30386u, ~0u));
    return -(~var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 27>();
    let var_0 = Struct_1(countOneBits(-1i), global4.c, -(vec4<i32>(func_1(vec2<bool>(true, true)), func_2(), firstTrailingBit(u_input.d), global4.b.x) ^ global4.b), select(vec4<u32>(reverseBits(global4.d.x), 0u, 4294967295u, global4.d.x), vec4<u32>(global4.d.x, ~_wgslsmith_clamp_u32(4294967295u, global4.d.x, u_input.a), ~u_input.a, u_input.b.x), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(-1i > u_input.d, false, select(false, true, true), false), true)));
    var var_1 = var_0;
    var var_2 = global2[_wgslsmith_index_u32(16832u << (countOneBits(42394u) % 32u), 27u)];
    var var_3 = Struct_1(u_input.d, _wgslsmith_add_vec4_i32(abs(-vec4<i32>(0i, -12258i, var_0.b.x, u_input.d)), vec4<i32>(-1i) * -var_1.c), max(vec4<i32>(1i, min(global4.b.x, global4.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -17715i, var_1.c.x, global4.c.x), var_1.b), var_1.a) ^ global4.b, vec4<i32>(-var_0.a & ~21561i, 1i, var_1.c.x, 2147483647i)), var_0.d & global4.d);
    var var_4 = Struct_1(-abs(-27624i), -(~max(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_3.b.x, u_input.d, var_3.a), vec4<i32>(9442i, var_3.b.x, var_1.c.x, 3582i)), vec4<i32>(u_input.d, 1i, -1i, var_0.c.x))), select(min(_wgslsmith_clamp_vec4_i32(var_1.c, ~var_3.c, var_3.c), var_3.b), var_3.c, false), _wgslsmith_mult_vec4_u32(min(vec4<u32>(_wgslsmith_div_u32(61275u, var_0.d.x), 6517u, global4.d.x, 43688u), var_0.d), ~select(vec4<u32>(var_1.d.x, 1u, 15560u, var_1.d.x), global4.d, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(16746i, _wgslsmith_div_i32(1i, ~countOneBits(var_0.c.x))), ~(~17958u), ~vec2<u32>(global4.d.x, 14012u), u_input.d);
}

