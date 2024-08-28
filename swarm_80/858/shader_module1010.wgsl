struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 30458i);

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec4<i32>(-33201i, 11863i, -24580i, -50459i), vec4<u32>(11264u, 0u, 1u, 43183u)), Struct_5(vec4<i32>(-3859i, -35428i, 2147483647i, 5618i), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), Struct_5(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 18901i), vec4<u32>(4294967295u, 116220u, 4294967295u, 61814u)), Struct_5(vec4<i32>(39427i, -75998i, 1i, 12684i), vec4<u32>(46734u, 6741u, 6605u, 0u)), Struct_5(vec4<i32>(-1i, -41860i, -62334i, 13482i), vec4<u32>(51135u, 29245u, 4294967295u, 4294967295u)), Struct_5(vec4<i32>(1i, 61448i, 11995i, -16000i), vec4<u32>(2238u, 4294967295u, 11741u, 4294967295u)), Struct_5(vec4<i32>(2147483647i, -59968i, i32(-2147483648), -27820i), vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_5(vec4<i32>(-1i, 1i, -23979i, 49158i), vec4<u32>(1u, 111609u, 4294967295u, 35562u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_5 {
    global1 = array<Struct_5, 8>();
    let var_0 = vec2<u32>(1u, 1u);
    let var_1 = ~abs(min(firstLeadingBit(~u_input.a), ~vec3<u32>(7921u, u_input.a.x, 0u)));
    global1 = array<Struct_5, 8>();
    let var_2 = _wgslsmith_mod_i32(u_input.b.x, 2583i);
    return global1[_wgslsmith_index_u32(~var_0.x, 8u)];
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    let var_0 = func_1();
    global1 = array<Struct_5, 8>();
    return Struct_4(48659u);
}

fn func_3() -> vec3<u32> {
    let var_0 = true;
    var var_1 = func_2(global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 28269u, u_input.a.x, 63756u), vec4<u32>(83055u, 0u, 15380u, u_input.a.x) ^ vec4<u32>(1u, 48977u, 3056u, u_input.a.x))), 8u)]);
    let var_2 = -215f;
    global0 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b & _wgslsmith_div_vec2_i32(u_input.b, u_input.b), max(reverseBits(vec2<i32>(-773i, global0.x)), min(u_input.b, u_input.b))), u_input.b << ((vec2<u32>(var_1.a, 4294967295u) ^ vec2<u32>(var_1.a, 4294967295u)) % vec2<u32>(32u)));
    var var_3 = -2081i;
    return func_1().b.zww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(1u, 11439u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yz, u_input.a.zx), abs(_wgslsmith_mult_u32(abs(u_input.a.x), max(u_input.a.x, 5934u)))));
    var_0 = ~(abs(~firstTrailingBit(u_input.a)) >> (~(~vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = any(!vec2<bool>(true, true & (10909i != u_input.b.x)));
    var var_2 = func_1();
    let var_3 = func_2(Struct_5(~(~countOneBits(vec4<i32>(var_2.a.x, 2147483647i, -37827i, 2147483647i))), vec4<u32>(firstLeadingBit(1u), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 10163u), vec2<u32>(46414u, 1162u)), _wgslsmith_add_vec2_u32(var_2.b.xx, var_0.xz)), ~(~103998u))));
    var_0 = func_3();
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(69764u, 1u, !(!(4294967295u <= var_2.b.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1184f, -1152f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-641f)) * _wgslsmith_div_f32(597f, -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 961f), _wgslsmith_f_op_f32(925f * -1000f)))))), (_wgslsmith_mod_vec2_i32(~vec2<i32>(var_4.x, u_input.b.x), max(var_2.a.zy, u_input.b)) & abs(vec2<i32>(var_2.a.x, var_2.a.x))) << (var_0.xz % vec2<u32>(32u)));
}

