struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = true;
    let var_1 = vec4<i32>(~firstTrailingBit(u_input.d.x) ^ firstTrailingBit(-1179i), max(~(~(u_input.d.x | u_input.d.x)), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 145i, 0i), vec3<i32>(arg_0, 0i, arg_0) ^ vec3<i32>(-15785i, 2147483647i, arg_0))), -reverseBits(0i), _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(33270i, arg_0, -1i)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, 8697i, u_input.b.x), vec3<i32>(u_input.d.x, 0i, 1i)) ^ reverseBits(firstLeadingBit(vec3<i32>(u_input.d.x, u_input.d.x, 13372i)))));
    let var_2 = !vec2<bool>((u_input.b.x == -42468i) | any(vec2<bool>(false, true)), true);
    global0 = array<Struct_1, 11>();
    let var_3 = global0[_wgslsmith_index_u32(29671u, 11u)];
    return var_3.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<f32> {
    global0 = array<Struct_1, 11>();
    var var_0 = false;
    var var_1 = 1i;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x & _wgslsmith_sub_i32(1i, 36691i), firstTrailingBit(1i)), func_3(arg_0.c.x ^ ~countOneBits(arg_0.c.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - 532f), _wgslsmith_f_op_f32(sign(arg_0.b.x)), -1036f))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(abs(1u) >> (~(~(~u_input.a)) % 32u), _wgslsmith_f_op_vec3_f32(func_2(global0[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b.yy)), -u_input.d);
    let var_1 = u_input.a;
    return ~12389u >> (var_0.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u & abs(~u_input.a), ~abs(u_input.c), 3303u);
    var_0 = ~vec3<u32>(555u & func_1(), ~countOneBits(7623u), u_input.c ^ 1u) << (vec3<u32>(115838u, min(1u >> ((0u >> (u_input.c % 32u)) % 32u), 24593u), _wgslsmith_mult_u32(var_0.x, ~_wgslsmith_mult_u32(var_0.x, var_0.x))) % vec3<u32>(32u));
    var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~49182u, reverseBits(2589u)), ~(~21746u), 1u), ~abs(firstLeadingBit(vec3<u32>(1u, u_input.a, 4294967295u)))), firstTrailingBit(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.x, u_input.c), vec3<u32>(4294967295u, var_0.x, 1u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(16941u, 0u, 23563u), vec3<u32>(u_input.c, u_input.a, 470u)))), vec3<bool>(true, true, true));
    global0 = array<Struct_1, 11>();
    var_0 = vec3<u32>(u_input.c, _wgslsmith_clamp_u32(65420u, var_0.x, var_0.x), ~(~min(~40244u, ~33053u)));
    global0 = array<Struct_1, 11>();
    var_0 = abs(reverseBits(select(~vec3<u32>(36109u, 4294967295u, u_input.c), firstLeadingBit(vec3<u32>(14772u, 23329u, 1u)) | vec3<u32>(41458u, 5118u, u_input.c), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_i32(u_input.b.x, ~(-1i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(18147u, 0u, var_0.x, var_0.x), vec4<u32>(95025u, 37293u, u_input.c, 4294967295u) << (vec4<u32>(44618u, u_input.a, 52222u, var_0.x) % vec4<u32>(32u))) % 32u), u_input.d.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-381f)), -439f, _wgslsmith_f_op_f32(-334f - -366f)) + vec3<f32>(1f, 1f, 1f)))));
}

