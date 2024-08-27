struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<f32, 31>;

var<private> global2: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    global1 = array<f32, 31>();
    global0 = Struct_5(~(-23393i), vec2<bool>(!global0.d.c.a, any(vec3<bool>(any(global0.d.a), global0.b.x, any(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x))))), global0.c, global0.d);
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, countOneBits(67079i)), min(u_input.c.ywy, vec3<i32>(-(~27501i), firstTrailingBit(1i), -9538i)));
    let var_1 = u_input.e;
    var var_2 = ~countOneBits(vec4<u32>(8337u, 1u | global2.x, _wgslsmith_sub_u32(global2.x, 10437u), ~4294967295u) | vec4<u32>(1u, abs(0u), 1u, ~u_input.b.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    global0 = Struct_5(27780i, global0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))))), global0.d);
    var var_0 = firstLeadingBit(-2147483647i << (global2.x % 32u));
    let var_1 = Struct_3(~45562u);
    return Struct_2(!select(select(vec3<bool>(global0.d.e.a, global0.d.b.a, true), vec3<bool>(global0.b.x, false, true), !global0.d.a), vec3<bool>(select(true, global0.d.e.a, true), global0.b.x, global0.d.b.a), global0.d.e.a), Struct_1(global0.b.x), Struct_1(any(global0.d.a)), global0.d.d, global0.d.c);
}

fn func_1(arg_0: Struct_5) -> vec2<u32> {
    global0 = Struct_5(_wgslsmith_add_i32(~(-min(global0.a, u_input.d)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-global0.a, ~u_input.a.x), -_wgslsmith_mod_i32(-2147483647i, arg_0.a))), !(!global0.b), vec2<f32>(_wgslsmith_f_op_f32(-1144f * arg_0.c.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(0u), 31u)])), func_2(reverseBits(~reverseBits(u_input.c.wx))));
    var var_0 = -(~vec2<i32>(global0.a, global0.a << (_wgslsmith_clamp_u32(global2.x, u_input.e, global2.x) % 32u)));
    global0 = Struct_5(abs(_wgslsmith_mod_i32(16144i ^ global0.a, 1i)), select(arg_0.d.a.yx, !select(!arg_0.d.a.zz, vec2<bool>(arg_0.b.x, arg_0.d.e.a), global0.d.b.a), global0.d.b.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(24542u, 31u)], 1827f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1561f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, 255f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)), -455f)), Struct_2(!vec3<bool>(false && global0.d.e.a, arg_0.d.c.a, true), Struct_1(true), func_2(u_input.c.xz ^ min(vec2<i32>(global0.a, -15903i), u_input.c.yz)).e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(global0.d.d, _wgslsmith_f_op_f32(round(197f)))), Struct_1(false)));
    global0 = arg_0;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.d.d), _wgslsmith_f_op_f32(round(-765f)), 1046f)), !(!(!func_2(vec2<i32>(-34699i, arg_0.a)).a)), countOneBits(~(~global2.wzw) & u_input.b));
    return select((u_input.b.yz >> (vec2<u32>(global2.x, 87581u) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(6515u, 49871u, global2.x, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.x, u_input.b.x, u_input.b.x), vec4<u32>(78690u, 23194u, 4294967295u, var_1.c.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(68894u, 34950u, 2851u), vec3<u32>(1u, 1u, 1u))), global2.wy, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    let var_0 = ~(~firstTrailingBit(~func_1(Struct_5(-8317i, vec2<bool>(true, true), global0.c, Struct_2(global0.d.a, global0.d.c, Struct_1(global0.d.b.a), 851f, global0.d.e)))));
    global2 = vec4<u32>(_wgslsmith_div_u32(global2.x, firstTrailingBit(39349u)) << ((~u_input.b.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, var_0.x))) % 32u), global2.x, var_0.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, 0u, var_0.x), vec4<u32>(0u, var_0.x, global2.x, var_0.x)), vec4<u32>(58255u, ~u_input.e, 1042u, u_input.b.x))) & _wgslsmith_add_vec4_u32(vec4<u32>((var_0.x >> (global2.x % 32u)) >> (max(global2.x, var_0.x) % 32u), _wgslsmith_dot_vec3_u32(~global2.xzz, _wgslsmith_div_vec3_u32(u_input.b, u_input.b)), global2.x ^ u_input.b.x, 15199u), ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(15161u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(42352u, 0u, 1u, global2.x), vec4<u32>(8638u, var_0.x, u_input.b.x, 116330u))));
    let var_1 = ~(-firstLeadingBit(17220i));
    let var_2 = global0.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.zyy, _wgslsmith_sub_u32(min((4294967295u ^ u_input.b.x) & ~u_input.b.x, u_input.b.x), ~u_input.b.x), abs(var_1), -(reverseBits(-u_input.c.xz) >> (var_0 % vec2<u32>(32u))));
}

