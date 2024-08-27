struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-684f, -709f, 1112f, -536f, 483f, -857f, -636f, -185f, 616f, 794f, -1276f, -244f, 180f, 591f, 1000f, 321f, -359f, -529f, -376f, -928f, -895f, 835f, 1458f, -645f, 564f, 325f, -1297f, -1000f, 159f);

var<private> global1: array<u32, 29>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(select(vec3<bool>(true, true, true), !vec3<bool>(all(vec3<bool>(false, true, true)), true, select(false, true, false)), true));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, reverseBits(u_input.b.x), _wgslsmith_sub_i32(u_input.a, u_input.a), 0i), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(37198i, u_input.b.x, u_input.a, 2147483647i)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(-26665i, 0i, -2147483647i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.a, 13341i)), select(vec4<i32>(u_input.b.x, -2147483647i, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, 0i, -565i), vec4<bool>(true, false, false, var_0.a.x))), vec4<i32>(u_input.a, _wgslsmith_mult_i32(-34653i, u_input.a), u_input.b.x >> (1552u % 32u), -u_input.b.x)), ~(vec4<i32>(u_input.b.x, 12849i, 2147483647i, u_input.b.x) & _wgslsmith_add_vec4_i32(vec4<i32>(15853i, u_input.b.x, u_input.a, -1i), vec4<i32>(u_input.a, 3786i, 2147483647i, 27527i)))), -(select(vec4<i32>(17677i, -2543i, -2147483647i, 2147483647i) | vec4<i32>(u_input.b.x, -1i, -1i, -30586i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x) & vec4<i32>(0i, 0i, 1i, 2147483647i), all(vec3<bool>(false, var_0.a.x, true))) | ~vec4<i32>(u_input.b.x, u_input.a, -1i, 1i)));
    let var_2 = Struct_3(!(!vec3<bool>(true, var_0.a.x, var_1 < var_1)));
    var var_3 = Struct_3(var_0.a);
    let var_4 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 29u)], 29u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 29u)], 29u)], 29u)], 29u)]))));
    return vec3<bool>(true, all(vec3<bool>(!any(vec4<bool>(true, false, false, var_3.a.x)), var_0.a.x, var_2.a.x)), var_3.a.x);
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: f32, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_4(select(select(func_2(), !(!vec3<bool>(false, arg_0.c, true)), select(vec3<bool>(arg_0.c, true, arg_0.c), arg_0.a.a, !vec3<bool>(arg_0.c, false, arg_0.a.a.x))), arg_0.a.a, any(vec4<bool>(false, arg_0.a.a.x, false, arg_0.a.a.x)) != false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, -673f, true))) - arg_2), arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_f_op_f32(trunc(-653f)), false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1645f)) * -352f)));
    let var_1 = firstLeadingBit(global1[_wgslsmith_index_u32((4294967295u << (global1[_wgslsmith_index_u32(~48617u, 29u)] % 32u)) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(44886u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9270u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)])), vec3<u32>(4294967295u, 0u, 0u)) % 32u), 29u)]) >= ~firstLeadingBit(_wgslsmith_clamp_u32(4718u, 11056u, 27014u));
    global0 = array<f32, 29>();
    var var_2 = arg_0.a;
    let var_3 = arg_0.a;
    return ~(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13833u, 29u)], 29u)], global1[_wgslsmith_index_u32(~(~1u), 29u)], _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)] >> (global1[_wgslsmith_index_u32(18610u, 29u)] % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(3601u, 29u)], global1[_wgslsmith_index_u32(14047u, 29u)]), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)]), countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 29u)], 31687u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1261u, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16659u, 29u)], 29u)], 29u)], 29u)], 29u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 4977u, 8864u, global1[_wgslsmith_index_u32(1u, 29u)]) % vec4<u32>(32u)), vec4<u32>(4294967295u, 12035u, 4294967295u, 4294967295u))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 34378u, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<u32>(global1[_wgslsmith_index_u32(32329u, 29u)], global1[_wgslsmith_index_u32(35847u, 29u)], global1[_wgslsmith_index_u32(27503u, 29u)], 32541u), vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(47886u, global1[_wgslsmith_index_u32(97174u, 29u)], 53476u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), vec4<u32>(global1[_wgslsmith_index_u32(54903u, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60031u, 29u)], 29u)], 1u, 4304u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 4294967295u, 4294967295u, 24173u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 29u)], 0u), vec4<u32>(42062u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24709u, 29u)], 29u)], global1[_wgslsmith_index_u32(29013u, 29u)], 33955u)))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11783u, 29u)], 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(1u, 29u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)]), vec4<u32>(24507u, 49297u, global1[_wgslsmith_index_u32(10331u, 29u)], 96170u), true), ~func_1(Struct_5(Struct_3(vec3<bool>(true, true, false)), vec2<f32>(-895f, 1712f), false), 1i, 462f, -1178f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x | 1i, 2457i, -11935i, ~vec4<u32>(global1[_wgslsmith_index_u32(15415u, 29u)], ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14455u, 29u)], 29u)]), var_0.x, var_0.x));
}

