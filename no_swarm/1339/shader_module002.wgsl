struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 12845u, 25784u), vec3<u32>(43854u, 1u, 20935u), vec3<u32>(40292u, 0u, 65593u), vec3<u32>(43885u, 1u, 1928u), vec3<u32>(85590u, 57865u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    global0 = global1[_wgslsmith_index_u32(~0u, 22u)];
    global2 = array<vec3<u32>, 5>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -728f), -1060f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(732f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -786f)))) * _wgslsmith_f_op_f32(select(-1000f, 1000f, true))));
    let var_2 = vec4<i32>(u_input.a.x, var_0.a, -49870i, _wgslsmith_mod_i32(40958i, firstTrailingBit(~2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1, -29463i, -1i), vec4<i32>(-15889i, -2147483647i, -2147483647i, u_input.a.x))));
    return arg_2.c;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<bool> {
    global0 = Struct_1(2147483647i, true, ~1u);
    var var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1);
    let var_2 = true;
    let var_3 = global1[_wgslsmith_index_u32(~global0.c >> (21276u % 32u), 22u)];
    return vec3<bool>(!global0.b || (var_3.a != -1i), any(!select(vec2<bool>(global0.b, false), vec2<bool>(false, global0.b), false)), global0.b);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(~0u), 22u)];
    global0 = Struct_1(global0.a, select(false, global0.b, false & !(u_input.a.x == global0.a)), global0.c);
    global1 = array<Struct_1, 22>();
    var var_0 = -978f;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(arg_0.zz));
    return global0.b && ((!(false && global0.b) | true) && !global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(func_1(10162u, ~(~(-4994i)), Struct_1(-1i, !(global0.b | true), 0u)), ~0u);
    let var_1 = vec4<i32>(firstLeadingBit(abs(u_input.b.x & -42995i)), -61268i, u_input.b.x, ~_wgslsmith_add_i32(~(~u_input.b.x), 1i));
    let var_2 = Struct_1(_wgslsmith_div_i32(-global0.a, u_input.b.x), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-887f, 811f, -247f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1653f, 810f, -1065f) + vec3<f32>(794f, -1571f, -538f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, 1000f, -647f)), func_2(-388f, _wgslsmith_f_op_f32(ceil(1164f)))))), global0.c);
    let var_3 = vec3<bool>(false, !all(vec3<bool>(var_2.b, func_3(vec3<f32>(-514f, -1129f, -1740f)), global0.a == -23343i)), var_0.x >= var_0.x);
    let var_4 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~global0.c, func_1(var_2.c, 25797i, Struct_1(2147483647i, global0.b, 4294967295u)), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(28941u, 5u)], vec3<u32>(6184u, var_0.x, global0.c)), ~78811u), vec4<u32>(3334u, var_0.x, global0.c, global0.c) & abs(vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(73449u, var_0.x, global0.c, 0u), vec4<u32>(var_2.c, 9749u, var_0.x, 0u))), countOneBits(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_2.c, 1u, 4294967295u, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.c, 1238u, var_2.c), vec4<u32>(1278u, var_0.x, var_2.c, 48416u)), func_3(vec3<f32>(1744f, -568f, 1304f))), ~(~vec4<u32>(4294967295u, var_2.c, var_2.c, 30172u)))), ~(~abs(vec4<u32>(global0.c, var_0.x, var_0.x, 16407u))));
    let var_5 = global1[_wgslsmith_index_u32(func_1(48036u & _wgslsmith_clamp_u32(var_4.x, var_0.x, 1u), firstTrailingBit(-45866i), global1[_wgslsmith_index_u32(var_2.c, 22u)]), 22u)];
    let var_6 = _wgslsmith_sub_vec4_i32(-select(select(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b.x, -3624i, 0i)), vec4<i32>(-9165i, 0i, var_2.a, var_2.a) ^ vec4<i32>(-1i, -2147483647i, u_input.b.x, 0i), select(vec4<bool>(false, var_5.b, var_3.x, true), vec4<bool>(var_2.b, true, var_2.b, false), var_5.b)), var_1, all(!vec4<bool>(var_5.b, true, false, var_2.b))), -var_1);
    global2 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1562f), ~(~max(abs(vec3<u32>(var_2.c, 102133u, var_2.c)), vec3<u32>(var_4.x, global0.c, var_0.x) ^ vec3<u32>(0u, 4294967295u, 0u))), var_4);
}

