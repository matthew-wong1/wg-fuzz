struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: array<f32, 11> = array<f32, 11>(302f, 309f, -777f, -530f, 2011f, -266f, -394f, 957f, -1493f, 563f, 186f);

var<private> global3: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    global1 = array<Struct_3, 31>();
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.a.x, 11u)])))), 2067f, 426f), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), ~vec2<i32>(3795i, u_input.c) & countOneBits(vec2<i32>(u_input.c, u_input.c))) ^ min(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(11861i, u_input.c), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 3280i)), vec2<i32>(u_input.c, -2147483647i << (u_input.b % 32u))));
    global1 = array<Struct_3, 31>();
    global3 = ~(~(~4294967295u) & _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x, abs(u_input.b)), ~(~0u)));
    let var_1 = Struct_2(var_0.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(25954i, ~u_input.c, i32(-1i) * -2147483647i), 0i), var_0.b, min(firstLeadingBit(-vec2<i32>(-2147483647i, -1i)), -var_0.b >> (~vec2<u32>(114550u, 4294967295u) % vec2<u32>(32u)))));
    return _wgslsmith_sub_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(13841i, var_0.b.x, -2147483647i, u_input.c)), min(-(vec4<i32>(-6185i, 29250i, var_1.b.x, u_input.c) | vec4<i32>(u_input.c, -1i, var_0.b.x, 55415i)), -abs(vec4<i32>(-2147483647i, var_1.b.x, -2147483647i, 40389i)))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), reverseBits(~vec3<u32>(32950u, 36363u, 1u))), ~countOneBits(countOneBits(4294967295u)), ~82579u, ~_wgslsmith_add_u32(18402u | u_input.b, 74470u)) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_3(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(16369u, arg_0.a), vec2<u32>(u_input.b, u_input.a.x))), 0u), arg_1.b);
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(1u, 1u)) ^ arg_1.a, var_0.a) == ~_wgslsmith_mult_u32(abs(52741u), var_0.a);
    var var_2 = Struct_1(true, var_0.b.a.x, !(~(-arg_1.b.b.x) >= _wgslsmith_div_i32(~2784i, arg_1.b.b.x)), ~(~vec4<u32>(arg_0.a, 61200u, 4294967295u, 1u) >> (vec4<u32>(arg_0.a ^ 4294967295u, arg_0.a, var_0.a, 8682u) % vec4<u32>(32u))), 1569f);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u & var_2.d.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.a, 4294967295u, arg_0.a))), max(~var_0.a, var_2.d.x)), 11u)]), -1575f, _wgslsmith_clamp_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.b.x, 1i, arg_0.b.b.x, 0i), vec4<i32>(arg_1.b.b.x, 46994i, -10970i, u_input.c)), vec4<i32>(-1i, arg_0.b.b.x, var_0.b.b.x, -2147483647i) >> (vec4<u32>(u_input.a.x, 1u, 57055u, 1u) % vec4<u32>(32u)), vec4<bool>(true, var_2.a, var_1, true)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.b.x, u_input.c, 66808i, arg_0.b.b.x) | vec4<i32>(-2147483647i, 6652i, 2147483647i, 10856i), -vec4<i32>(-1i, arg_1.b.b.x, arg_1.b.b.x, 1i)), countOneBits(-func_3()), vec4<i32>(arg_0.b.b.x, _wgslsmith_mod_i32(u_input.c, -2147483647i) >> (~var_0.a % 32u), arg_0.b.b.x, var_0.b.b.x)), _wgslsmith_f_op_vec2_f32(exp2(var_0.b.a.zx)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.b.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2955f, 1028f, 1690f))))))), arg_1.b.b);
    return firstLeadingBit(~arg_1.a);
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_3, 31>();
    global0 = array<Struct_4, 28>();
    let var_0 = ~((((vec4<u32>(4294967295u, u_input.b, 1486u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(24831u, u_input.b, 49931u, 14187u)) % vec4<u32>(32u))) & abs(vec4<u32>(u_input.a.x, u_input.b, 1u, 52883u))) & vec4<u32>(abs(func_2(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(11905u, 31u)])), ~max(4294967295u, u_input.a.x), 66742u, ~0u));
    global2 = array<f32, 11>();
    let var_1 = u_input.a.xy;
    return Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(1u, 11u)], -1854f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 11u)])), countOneBits(~reverseBits(abs(vec2<i32>(49756i, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 11>();
    global3 = ~u_input.a.x;
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    var var_0 = Struct_3(((_wgslsmith_mult_u32(20981u, 9987u) >> (u_input.a.x % 32u)) | abs(u_input.b)) >> (firstTrailingBit(reverseBits(u_input.b)) % 32u), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.x);
}

