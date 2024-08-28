struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global1: array<f32, 31> = array<f32, 31>(-147f, 406f, 2142f, -1000f, -823f, 983f, 440f, 1000f, 541f, -138f, 144f, -429f, -1431f, -297f, 437f, -394f, -445f, -215f, -340f, -160f, -798f, -642f, 205f, -1194f, 1864f, -364f, 1583f, 707f, -1067f, 913f, 1000f);

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(-352f, Struct_1(vec3<i32>(0i, i32(-2147483648), -1i), vec4<bool>(true, true, true, true), vec4<u32>(43890u, 24658u, 29368u, 13551u), 2147483647i), -140f, Struct_1(vec3<i32>(-1i, -865i, -39276i), vec4<bool>(false, false, false, false), vec4<u32>(9496u, 4294967295u, 44057u, 57863u), -8148i), false);

var<private> global4: vec4<i32> = vec4<i32>(1i, 0i, 34646i, -410i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = 4294967295u;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f - -255f) * global3.c)), global3.c, -510f));
    let var_1 = (arg_0.a | ~4294967295u) << (~(~(_wgslsmith_mod_u32(28511u, arg_0.a) >> ((arg_0.a >> (global3.d.c.x % 32u)) % 32u))) % 32u);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zx) + var_0.wx);
    return Struct_1(vec3<i32>(-1i << (countOneBits(~arg_0.b.c.x) % 32u), -55924i, arg_0.b.d), !global3.b.b, global3.d.c, -10578i);
}

fn func_3(arg_0: Struct_1) -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    global4 = _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, func_3(func_1(Struct_2(global3.b.c.x, Struct_1(u_input.a.zzy, vec4<bool>(false, true, false, arg_1.b.x), vec4<u32>(global3.b.c.x, 51060u, 1u, arg_1.c.x), -2147483647i)))), _wgslsmith_div_i32(arg_2 << (~60766u % 32u), ~(50116i >> (1u % 32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, -2147483647i), vec2<i32>(u_input.a.x, -1i)), vec2<i32>(arg_0, arg_2)), 1i, abs(~13543i))), _wgslsmith_clamp_vec4_i32(~(~u_input.a), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1.d, arg_1.d, -7485i), vec4<i32>(arg_1.d, 2147483647i, -1i, -1i))), -vec4<i32>(u_input.a.x, 1459i, global3.b.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-12753i, firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(18852i, global3.b.a.x), u_input.a.yz), arg_1.a.x | arg_0), min(vec4<i32>(1i, 88353i, arg_2, arg_0) & u_input.a, vec4<i32>(-2147483647i, -25999i, arg_2, u_input.a.x)), firstLeadingBit(vec4<i32>(global4.x, 3019i, global3.d.a.x, global3.b.a.x)))));
    var var_0 = Struct_2(0u, func_1(Struct_2(func_1(Struct_2(global3.b.c.x, Struct_1(vec3<i32>(arg_1.d, 0i, arg_0), vec4<bool>(false, false, false, arg_1.b.x), vec4<u32>(global3.d.c.x, 1696u, 0u, 4294967295u), u_input.a.x))).c.x >> (select(arg_1.c.x, global3.d.c.x, true) % 32u), func_1(Struct_2(global3.b.c.x, Struct_1(vec3<i32>(arg_0, global4.x, -2147483647i), global3.d.b, arg_1.c, 39273i))))));
    let var_1 = select(func_1(Struct_2(select(~1u, ~var_0.a, true), Struct_1(vec3<i32>(1i, global3.d.d, global3.b.a.x), vec4<bool>(var_0.b.b.x, global3.b.b.x, false, false), ~vec4<u32>(arg_1.c.x, var_0.a, 0u, var_0.a), -2147483647i))).b.zww, vec3<bool>(var_0.b.b.x, global3.d.b.x, global3.b.b.x), vec3<bool>(any(global3.d.b.yw), var_0.b.b.x, true));
    global1 = array<f32, 31>();
    let var_2 = Struct_4(var_0.b.d, ~vec3<u32>((arg_1.c.x | global3.b.c.x) << (_wgslsmith_mult_u32(1u, 8299u) % 32u), 1u, ~15963u), func_1(Struct_2(firstLeadingBit(arg_1.c.x), func_1(Struct_2(4294967295u, Struct_1(global4.ywz, vec4<bool>(false, false, arg_1.b.x, false), arg_1.c, u_input.a.x))))), func_1(Struct_2(~(~1u), Struct_1(-vec3<i32>(1i, arg_0, arg_1.a.x), arg_1.b, vec4<u32>(arg_1.c.x, 33775u, 44245u, 4294967295u), -72205i))), arg_1.c.x);
    return func_1(Struct_2(14884u, global3.b)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~(~_wgslsmith_mod_u32(min(6854u, 25837u), _wgslsmith_div_u32(global3.d.c.x, 1u))));
    global4 = vec4<i32>(1i, -global3.b.a.x, abs(~u_input.a.x), (func_2(_wgslsmith_mult_i32(29677i, -6356i), func_1(Struct_2(10222u, global3.d)), -global3.b.d) << (_wgslsmith_mod_u32(global3.b.c.x, ~global3.b.c.x) % 32u)) >> (27084u % 32u));
    var var_0 = vec3<u32>(select(global3.b.c.x, global3.d.c.x, global3.d.b.x || true), global3.d.c.x >> (19430u % 32u), global3.d.c.x);
    let var_1 = global3.d;
    var var_2 = Struct_3(1f, Struct_1(countOneBits(global4.yzx), global3.b.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0.x, 1u), _wgslsmith_div_u32(1u, 45070u), firstTrailingBit(54737u), 11476u), ~vec4<u32>(var_1.c.x, 29627u, 25348u, 0u), var_1.c), 1i), 662f, func_1(Struct_2(countOneBits(_wgslsmith_mult_u32(global3.b.c.x, 1u)), global3.d)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(13831u, var_2.b.c.x), 74096u));
}

