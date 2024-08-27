struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<i32, 24>;

var<private> global2: u32 = 10051u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = ~arg_0.b.x;
    global0 = array<Struct_1, 26>();
    let var_1 = Struct_1(-2147483647i);
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    return ~_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.d, 72598u), ~_wgslsmith_mult_u32(~4294967295u, u_input.d));
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_mod_u32(~31760u, _wgslsmith_add_u32(u_input.d, ~func_3(Struct_2(global0[_wgslsmith_index_u32(47764u, 26u)], vec3<u32>(u_input.d, 4294967295u, 27303u), true, u_input.d, -880f), u_input.b, Struct_1(-57791i), Struct_1(global1[_wgslsmith_index_u32(u_input.d, 24u)])))) ^ 43330u;
    var var_0 = countOneBits(vec3<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(94252u, u_input.d, u_input.d), 24u)], -2147483647i | global1[_wgslsmith_index_u32(u_input.d, 24u)], u_input.a.x), select(firstLeadingBit(0i), 565i, any(vec2<bool>(true, false)))) & ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -4330i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 3775i, -22562i), vec3<i32>(global1[_wgslsmith_index_u32(9980u, 24u)], global1[_wgslsmith_index_u32(57470u, 24u)], 17173i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.d, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.d, 24u)], 6942i))));
    return Struct_1(_wgslsmith_mult_i32(var_0.x, firstTrailingBit(1i)));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_1, 26>();
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_div_i32(select(0i, u_input.a.x, var_0) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_1), vec2<u32>(4294967295u, u_input.d)) % 32u), i32(-1i) * -1i), global1[_wgslsmith_index_u32(4294967295u, 24u)], -(~(global1[_wgslsmith_index_u32(arg_1, 24u)] << (arg_1 % 32u))), max(u_input.a.x, _wgslsmith_add_i32(-41331i, ~u_input.a.x))));
    var var_2 = reverseBits(~vec2<u32>(u_input.d, arg_1));
    var var_3 = -15654i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(_wgslsmith_div_u32(~(u_input.d | u_input.d) << (_wgslsmith_sub_u32(~u_input.d, ~76312u) % 32u), 50998u), ~(~46735u | max(u_input.d, 123764u)) >> (u_input.d % 32u));
    var var_0 = Struct_2(func_1(~global1[_wgslsmith_index_u32(~4294967295u | ~u_input.d, 24u)], ~53392u), vec3<u32>(~(~1u), 62464u, u_input.d), false, u_input.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-159f)))));
    var var_1 = var_0.a;
    global1 = array<i32, 24>();
    global0 = array<Struct_1, 26>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.e)), 367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1993f, _wgslsmith_f_op_f32(var_0.e * -1000f)))), _wgslsmith_f_op_f32(-1308f + -290f), 53936i, u_input.a, vec2<u32>(firstLeadingBit(abs(4294967295u)), 52609u) ^ ~var_0.b.xy);
}

