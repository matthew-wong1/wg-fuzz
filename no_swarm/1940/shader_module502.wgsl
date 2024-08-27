struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<f32> = vec4<f32>(1000f, -2198f, 1230f, 758f);

var<private> global2: Struct_2 = Struct_2(true, vec4<u32>(4294967295u, 122270u, 4294967295u, 80099u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global0 = global2.b & _wgslsmith_div_vec4_u32(vec4<u32>(max(_wgslsmith_dot_vec2_u32(global0.wx, vec2<u32>(0u, u_input.d)), 1u), abs(global0.x), 21078u, firstLeadingBit(18841u | u_input.a.x)), ~(~u_input.a));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 212f, -319f, global1.x) + vec4<f32>(-1665f, global1.x, -1067f, -301f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -661f, global1.x, -541f), vec4<f32>(-163f, global1.x, global1.x, global1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -520f, -724f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2308f, 1930f, global1.x, 488f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, -297f, 906f) + vec4<f32>(global1.x, global1.x, 340f, global1.x))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, 1081f, global1.x, global1.x), vec4<f32>(global1.x, 1458f, global1.x, 462f))))))));
    let var_1 = select(vec4<bool>(true, false, !all(vec4<bool>(global2.a, false, false, global2.a)), any(vec3<bool>(!global2.a, global2.a, global2.a && true))), vec4<bool>(all(vec4<bool>(true, global2.a, global2.a && global2.a, true)), true, global2.a == global2.a, false), vec4<bool>(any(!select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(global2.a, true, true), global2.a)), all(!select(vec4<bool>(false, false, true, global2.a), vec4<bool>(false, global2.a, global2.a, true), vec4<bool>(global2.a, false, true, true))), any(vec2<bool>(all(vec2<bool>(global2.a, true)), select(global2.a, global2.a, true))), (global0.x | global2.b.x) < (min(global0.x, 1u) << (1u % 32u))));
    return 20758u;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_2(!arg_1.x, global2.b);
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(func_3(), ~global2.b.x, ~global0.x, _wgslsmith_mult_u32(34873u, 62283u))), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, 0u, global2.b.x, global0.x) << (_wgslsmith_sub_vec4_u32(global2.b, global2.b) % vec4<u32>(32u)), u_input.a)), u_input.e.wwz, ~firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x | global2.b.x, global2.b.x)), _wgslsmith_div_i32(2147483647i | _wgslsmith_sub_i32(u_input.b.x, ~0i), u_input.b.x));
    let var_2 = ~(82665u | ~firstTrailingBit(23415u)) & 4294967295u;
    var var_3 = Struct_2(!(true & (!global2.a & (0u >= global2.b.x))), var_0.b);
    var_1 = Struct_1(~(~vec4<u32>(var_1.c, _wgslsmith_clamp_u32(50271u, 4294967295u, 1015u), global0.x, var_0.b.x)), -var_1.b, var_3.b.x, var_1.d);
    return vec4<u32>(u_input.a.x << (min(64299u, ~_wgslsmith_div_u32(0u, var_1.a.x)) % 32u), global2.b.x, _wgslsmith_add_u32(~reverseBits(global2.b.x), 0u) ^ _wgslsmith_add_u32(global0.x, 1u), ~var_3.b.x);
}

fn func_1() -> Struct_2 {
    return Struct_2(true, u_input.a & func_2(1685f == _wgslsmith_f_op_f32(-global1.x), vec3<bool>(!global2.a, global0.x == 1u, global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a, vec4<u32>(36187u, 1u, global0.x ^ _wgslsmith_mult_u32(~global0.x, 53963u), _wgslsmith_sub_u32(23221u, ~(~global2.b.x))));
    let var_0 = min(vec3<u32>(_wgslsmith_clamp_u32(75173u, ~global0.x << (u_input.a.x % 32u), _wgslsmith_mod_u32(select(global0.x, global0.x, global2.a), abs(75570u))), 4294967295u, 4294967295u), ~vec3<u32>(64784u << (global2.b.x % 32u), u_input.a.x, global2.b.x) ^ _wgslsmith_mod_vec3_u32(global0.zxz, ~(vec3<u32>(1u, 12481u, 46775u) | u_input.a.wzw)));
    global2 = func_1();
    let var_1 = Struct_1(countOneBits(global2.b >> (vec4<u32>(~global2.b.x, 1u, 1u, abs(var_0.x)) % vec4<u32>(32u))), -(abs(vec3<i32>(0i, u_input.b.x, u_input.c)) << ((vec3<u32>(24185u, global2.b.x, var_0.x) | vec3<u32>(global2.b.x, global2.b.x, 23465u)) % vec3<u32>(32u))), min(~(~1u), 18326u), -u_input.c);
    global2 = Struct_2(true, _wgslsmith_clamp_vec4_u32(~global2.b, func_1().b & ~_wgslsmith_sub_vec4_u32(global2.b, vec4<u32>(var_1.a.x, 3242u, var_0.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(8942u), ~var_0.x, ~25783u, _wgslsmith_mod_u32(51889u, var_0.x)), vec4<u32>(global0.x, firstLeadingBit(28558u), ~global0.x, 0u << (var_0.x % 32u)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), -183f, global1.x, -280f) + vec4<f32>(1482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + -535f), global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-373f * -724f), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 266f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -1061f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(125f, global1.x, -424f, global1.x)))))))));
    var var_2 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-878f - global1.x), ~func_3());
}

