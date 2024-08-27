struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 13846u;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec3<i32> = vec3<i32>(0i, 8861i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(1f));
    global1 = ~u_input.a;
    let var_1 = Struct_1(global3.x & global3.x, u_input.a);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(528f)), -1572f));
    let var_3 = Struct_1(reverseBits(-1i), ~83465u);
    return vec3<i32>(29877i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 56922u, var_3.b), ~vec3<u32>(var_3.b, var_1.b, 68841u)) % 32u), 1i, i32(-1i) * -2147483647i);
}

fn func_3() -> vec2<i32> {
    global3 = ~min(~vec3<i32>(1i, i32(-1i) * -1991i, global3.x), vec3<i32>(_wgslsmith_div_i32(max(-17046i, 1i), -28622i), _wgslsmith_clamp_i32(global3.x, firstTrailingBit(40701i), ~(-69876i)), global3.x));
    let var_0 = ~_wgslsmith_sub_vec4_u32(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(63445u, 50128u, 103071u, u_input.a), vec4<u32>(30089u, u_input.a, 10683u, u_input.a))), ~(~vec4<u32>(u_input.a, 43688u, 14748u, 4294967295u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 15805u, 40226u, 1u), vec4<u32>(u_input.a, u_input.a, 32575u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1043f);
    global0 = select(!all(!vec2<bool>(global2.x, false)), global2.x, all(select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), global2.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global2.x, true)), any(vec4<bool>(global2.x, false, true, global2.x))))) || all(select(vec2<bool>(global2.x, true), select(vec2<bool>(true, true), vec2<bool>(false, true), !vec2<bool>(global2.x, true)), true));
    global0 = true;
    return countOneBits(vec2<i32>(abs(~global3.x), -_wgslsmith_div_i32(global3.x, 0i)) | ~(vec2<i32>(global3.x, 806i) & vec2<i32>(-17442i, global3.x)));
}

fn func_1() -> vec3<bool> {
    global3 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-49699i, ~(~global3.x), global3.x), func_2());
    global0 = true | global2.x;
    let var_0 = ~u_input.a;
    let var_1 = min(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(global3.x, global3.x) << (vec2<u32>(var_0, 75503u) % vec2<u32>(32u)), func_3()), global3.xy);
    let var_2 = Struct_1(38532i, ~var_0);
    return vec3<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(true, global2.x, global2.x, true))) && any(vec2<bool>(all(vec2<bool>(true, global2.x)), true)), global2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global3 = select(vec3<i32>(_wgslsmith_mod_i32(1i, global3.x), global3.x, _wgslsmith_div_i32(global3.x, _wgslsmith_dot_vec2_i32(global3.xx, abs(vec2<i32>(63748i, -1i))))), vec3<i32>(11942i, -select(global3.x, -1i, global2.x) ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32(global3.x, -42244i), -59918i, -12083i), _wgslsmith_div_i32(0i, global3.x)), func_1());
    var var_0 = Struct_1(~max(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, -47175i), global3.yy), ~global3.x), 4294967295u);
    global0 = global2.x;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(u_input.a), ~44943u), ~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 54196u, var_0.b, u_input.a), vec4<u32>(u_input.a, 10474u, 95638u, u_input.a), global2.x), vec4<u32>(32775u, 4294967295u, var_0.b, 80253u))));
    global2 = !select(vec2<bool>(true, true), !(!(!vec2<bool>(global2.x, false))), vec2<bool>(true, !any(vec2<bool>(global2.x, global2.x))));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-841f))))))), 1i, var_1, vec2<i32>(1i ^ var_0.a, _wgslsmith_mult_i32(-10206i, i32(-1i) * -20353i) << ((~u_input.a >> ((13666u | var_1) % 32u)) % 32u)));
}

