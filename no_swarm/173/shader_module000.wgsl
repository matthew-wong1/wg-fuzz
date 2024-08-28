struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = global0.x;
    var var_1 = ~0u;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a ^ 0u, 18u)];
    let var_3 = vec4<bool>(!all(vec2<bool>(true, true)), true, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 54688u), vec2<bool>(true, var_2.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u))), ~abs(vec2<u32>(78994u, 4294967295u))) == 22455u, var_2.b);
    var_1 = 131736u;
    return ~(_wgslsmith_clamp_i32(u_input.b.x, ~var_2.a, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.yy))) & var_2.d.x);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 18>();
    global0 = vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(global0.x), firstTrailingBit(global0.x) ^ u_input.b.x), -35447i) | vec2<i32>(func_3(), 30548i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(17033u, 15737u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 23613u) | vec2<u32>(61022u, u_input.a)) % 32u));
    let var_0 = _wgslsmith_div_f32(-651f, _wgslsmith_f_op_f32(f32(-1f) * -409f));
    global1 = array<Struct_1, 18>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 18u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~select(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 17246u)), reverseBits(vec2<u32>(1u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, var_1.b), true)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 28246u)), vec2<u32>(u_input.a, firstLeadingBit(4294967295u)))), _wgslsmith_mod_u32(~(u_input.a >> (u_input.a % 32u)), abs(u_input.a))), 18u)];
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = func_2();
    global0 = _wgslsmith_sub_vec2_i32(reverseBits(var_0.d), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-var_0.d, select(var_0.e.xz, _wgslsmith_mult_vec2_i32(vec2<i32>(11794i, var_0.c), var_0.d), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), var_0.b))), countOneBits(-vec2<i32>(var_0.e.x, -15011i))));
    let var_1 = func_2();
    global0 = reverseBits(vec2<i32>(~abs(-1i), u_input.b.x));
    global1 = array<Struct_1, 18>();
    return StorageBuffer(~func_2().d.x, ~countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), abs(arg_0.yz))), ~var_0.e >> (arg_0 % vec3<u32>(32u)), u_input.a, -160f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<u32>(~_wgslsmith_mod_u32(u_input.a, 0u) & 2849u, u_input.a, u_input.a));
}

