struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~global1.e.x, 15892u), vec3<u32>(47309u, 15803u, abs(~u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-global1.b)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(-907f * -1414f))))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c.x, i32(-1i) * -1i, firstLeadingBit(41673i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-27171i, -2147483647i, u_input.c.x), select(vec3<i32>(u_input.c.x, u_input.c.x, global1.c), vec3<i32>(-66341i, u_input.c.x, 2147483647i), vec3<bool>(var_0, false, false))))), ~vec4<u32>(~u_input.b, 100289u, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_clamp_u32(u_input.b, global1.e.x, global1.d.x), u_input.a), u_input.b), reverseBits(vec4<u32>(44043u, (u_input.b >> (u_input.b % 32u)) >> (~u_input.b % 32u), _wgslsmith_clamp_u32(global1.e.x, _wgslsmith_div_u32(28818u, u_input.b), select(37488u, u_input.b, var_0)), 86533u)));
    var var_2 = var_0;
    return ~(~(~reverseBits(global0[_wgslsmith_index_u32(12766u, 29u)]) & global0[_wgslsmith_index_u32(global1.e.x, 29u)]));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<vec4<u32>, 29>();
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(~87562u, arg_0), u_input.a, ~min(~arg_0, global1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_sub_i32(reverseBits(-1i), 55218i), reverseBits(func_3()), vec4<u32>(~4294967295u, max(44045u, max(global1.a.x, abs(0u))), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.a.yx, global1.a.xy, vec2<u32>(global1.a.x, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(4294967295u, global1.d.x), global1.e.yw))), ~(~0u)));
    var_0 = Struct_1(~(~(~var_0.d.zzz)), -1000f, _wgslsmith_mod_i32(-4198i, firstTrailingBit(var_0.c << ((331u & arg_0) % 32u))), vec4<u32>(~global1.a.x, ~global1.d.x, ~1u, u_input.b ^ 1u), global1.e);
    var var_1 = false;
    let var_2 = abs(abs(-vec4<i32>(_wgslsmith_mod_i32(27986i, -21254i), -10196i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), var_0.c)));
    return abs(u_input.b) >> (~(~1u) % 32u);
}

fn func_1() -> vec4<u32> {
    global0 = array<vec4<u32>, 29>();
    let var_0 = max(64028u, 32399u);
    let var_1 = Struct_1(~(~vec3<u32>(func_2(1u), ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1.e.yz))), global1.b, -2147483647i, _wgslsmith_clamp_vec4_u32(func_3() & vec4<u32>(u_input.a, ~var_0, u_input.a, 1u), vec4<u32>(global1.a.x >> ((var_0 << (36166u % 32u)) % 32u), reverseBits(~42243u), firstLeadingBit(var_0), var_0), ~vec4<u32>(u_input.b ^ 72434u, var_0, ~1u, var_0)), ~_wgslsmith_mod_vec4_u32(reverseBits(countOneBits(global1.e)), vec4<u32>(4356u, global1.e.x, global1.e.x, global1.e.x) & ~vec4<u32>(u_input.d, 76475u, u_input.b, 4294967295u)));
    global1 = var_1;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -343f);
    return _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_1.d, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.e.x, 1u, _wgslsmith_dot_vec3_u32(global1.a, global1.a), 14108u), reverseBits(global0[_wgslsmith_index_u32(46783u, 29u)]))), firstTrailingBit(~(var_1.d | vec4<u32>(4294967295u, 4294967295u, var_0, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec3<bool>(true, false, true));
    let var_1 = Struct_1(global1.a ^ _wgslsmith_clamp_vec3_u32(select(global1.e.zzz >> (vec3<u32>(global1.a.x, u_input.d, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.d, global1.d.x), any(vec3<bool>(var_0, false, false))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4688u, 4294967295u), vec3<u32>(4294967295u, global1.a.x, u_input.b)), ~global1.d.yzy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) + _wgslsmith_f_op_f32(global1.b + global1.b))))), _wgslsmith_mult_i32(-52846i, u_input.c.x >> (_wgslsmith_dot_vec4_u32(max(global1.e, vec4<u32>(46233u, u_input.a, 1u, 62224u)), ~global1.d) % 32u)), (vec4<u32>(22640u, 4201u | global1.a.x, u_input.b, u_input.a | global1.e.x) & global1.d) | func_1(), global1.d);
    let var_2 = Struct_1(global1.a, global1.b, global1.c, ~global1.d, _wgslsmith_mod_vec4_u32(vec4<u32>(abs(7686u), _wgslsmith_dot_vec2_u32(global1.d.ww, vec2<u32>(u_input.b, global1.e.x)) & _wgslsmith_mod_u32(var_1.a.x, 0u), 103277u, firstTrailingBit(~147951u)), ~vec4<u32>(~7011u, 50156u, _wgslsmith_mod_u32(var_1.a.x, 44432u), countOneBits(global1.e.x))));
    global1 = Struct_1(~abs(var_2.d.zwy), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, u_input.c.x, global1.c), vec3<i32>(global1.c, 1i, u_input.c.x)), ~global1.c), _wgslsmith_sub_vec4_u32(var_2.d, _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)] << (global1.d % vec4<u32>(32u)), vec4<u32>(var_1.a.x, 0u, 0u, 21670u), ~vec4<u32>(var_2.a.x, 27467u, global1.a.x, 19809u)) >> (~(~vec4<u32>(4294967295u, u_input.b, var_2.e.x, var_1.e.x)) % vec4<u32>(32u))), ~vec4<u32>(global1.e.x, 4294967295u, var_1.e.x, ~37557u & (global1.a.x & 13359u)));
    global1 = Struct_1(~countOneBits(select(var_2.d.zxw & var_1.e.zyy, global1.d.xxw, vec3<bool>(true, false, var_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - var_1.b))))), firstTrailingBit(select(var_2.c << (var_2.a.x % 32u), _wgslsmith_dot_vec2_i32(u_input.c, -u_input.c), var_0)), ~(~var_2.d), vec4<u32>(func_1().x, _wgslsmith_sub_u32(global1.a.x, func_3().x), 0u, 39821u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, var_1.c, firstLeadingBit(_wgslsmith_mult_u32(~u_input.b, _wgslsmith_mod_u32(0u, u_input.d))) >> (var_1.e.x % 32u));
}

