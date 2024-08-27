struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, true, -15414i, vec2<u32>(84308u, 199u), 1u);

var<private> global1: array<Struct_1, 12>;

var<private> global2: i32 = 1i;

var<private> global3: array<f32, 6>;

var<private> global4: vec2<u32> = vec2<u32>(45073u, 18722u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = -1614f;
    global3 = array<f32, 6>();
    let var_1 = Struct_1(!any(select(!vec2<bool>(global0.a, global0.b), select(vec2<bool>(false, true), vec2<bool>(global0.b, false), vec2<bool>(global0.b, false)), 1542f >= global3[_wgslsmith_index_u32(global4.x, 6u)])), all(vec3<bool>(!(!global0.a), (global4.x >= 34163u) || any(vec4<bool>(global0.a, false, global0.b, false)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(68052u, 6u)]) <= _wgslsmith_f_op_f32(floor(1980f)))), 2147483647i, vec2<u32>(4294967295u, 4294967295u), ~(~global4.x));
    global1 = array<Struct_1, 12>();
    var var_2 = !(!(!select(!vec3<bool>(var_1.b, var_1.a, global0.b), vec3<bool>(var_1.a, global0.b, true), var_1.b)));
    return var_1.b;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~abs(arg_2.e), 12u)];
    var var_1 = vec4<u32>(var_0.d.x, abs(~arg_1), var_0.e, _wgslsmith_mod_u32(_wgslsmith_mod_u32(85241u, arg_1 | 42479u) | arg_2.e, 32329u));
    var var_2 = (countOneBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.e, 1u, 1u), vec3<u32>(var_1.x, 44918u, arg_2.d.x), vec3<u32>(58288u, global4.x, global0.d.x)), ~var_1.zwz, vec3<bool>(true, false, var_0.a))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(~global0.e, var_1.x | 1u, 8764u), ~(~var_1.zzw)) % vec3<u32>(32u))) << (~vec3<u32>(~51182u, 1u, ~(~global0.e)) % vec3<u32>(32u));
    let var_3 = Struct_1(arg_2.b, func_3(), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3813i, ~u_input.a.x, abs(-2147483647i), _wgslsmith_mod_i32(1i, 20537i)), ~vec4<i32>(1i, u_input.a.x, u_input.a.x, 2147483647i) | ~vec4<i32>(u_input.a.x, arg_2.c, u_input.a.x, 1i)), global0.c), reverseBits(vec2<u32>(var_1.x, 1u)), abs(arg_1));
    var_2 = ~(~_wgslsmith_clamp_vec3_u32(firstTrailingBit(var_1.yxx), countOneBits(_wgslsmith_add_vec3_u32(var_1.yyw, vec3<u32>(4294967295u, 29984u, var_0.d.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.wyw, vec3<u32>(41643u, 1u, var_3.e)), 31172u, var_0.d.x << (1u % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 6u)] * -703f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.x, global0.d.x, Struct_1(true, arg_0.d.a, arg_0.b, arg_0.d.d, global0.e)))) * 1025f))), 911f);
    let var_1 = countOneBits(~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(arg_0.d.d), arg_0.d.d & arg_0.d.d), 4294967295u, 0u));
    var var_2 = Struct_2(10597u, u_input.a.x, _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 0i, arg_0.d.c, u_input.a.x), -vec4<i32>(arg_0.b, u_input.a.x, global0.c, global0.c))), abs(1199i)), global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global4.x, arg_0.a), global0.e >> (global0.d.x % 32u))), _wgslsmith_dot_vec3_u32(var_1, var_1)), 12u)]);
    global4 = vec2<u32>(51262u, reverseBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(12335u, global4.x, 1u), vec3<u32>(var_1.x, arg_0.d.e, var_2.a)), _wgslsmith_clamp_vec3_u32(var_1, ~vec3<u32>(var_2.d.d.x, global4.x, 1u), _wgslsmith_mult_vec3_u32(var_1, var_1)))));
    global2 = u_input.a.x;
    return select(_wgslsmith_clamp_vec3_u32(abs(abs(countOneBits(vec3<u32>(arg_0.d.e, 0u, 87693u)))), min(var_1, _wgslsmith_clamp_vec3_u32(vec3<u32>(3282u, arg_0.a, 1u) << (var_1 % vec3<u32>(32u)), ~var_1, vec3<u32>(18059u, 0u, 66209u) >> (var_1 % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, reverseBits(4294967295u), reverseBits(arg_0.a)), ~var_1)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global0.e, 5859u, var_1.x), var_1.x, abs(17787u)), var_1, var_1), vec3<bool>(true, var_2.d.a, arg_0.d.b));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    global2 = _wgslsmith_mod_i32(i32(-1i) * -2147483647i, (_wgslsmith_div_i32(~arg_1.b, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global0.c, global0.c))) ^ global0.c) | abs(arg_1.c));
    let var_0 = arg_1;
    global2 = var_0.d.c;
    return Struct_1(false, !global0.b, _wgslsmith_clamp_i32(min(countOneBits(arg_1.c), arg_1.d.c), _wgslsmith_mult_i32(var_0.b, u_input.a.x), 43414i) ^ -32941i, var_0.d.d, ~select(~4294967295u, arg_1.d.d.x, any(vec4<bool>(true, true, global0.a, var_0.d.b))) << (~42655u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(~max(~vec3<u32>(global4.x, 4294967295u, 0u), ~func_1(Struct_2(global0.e, global0.c, -27928i, Struct_1(global0.b, false, global0.c, vec2<u32>(global4.x, global4.x), global4.x)), 18606u, vec3<f32>(global3[_wgslsmith_index_u32(73129u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(global4.x, 6u)]))), Struct_2(~_wgslsmith_clamp_u32(65815u, ~0u, ~global0.e), u_input.a.x, global0.c, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(global0.d), ~global0.d), 12u)]));
    var var_0 = Struct_2(~(~34788u), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(-(u_input.a.x ^ global0.c), -_wgslsmith_clamp_i32(u_input.a.x, 1i, global0.c)), -(~u_input.a.x)), _wgslsmith_mod_i32(25344i, _wgslsmith_clamp_i32(global0.c, global0.c, func_4(vec3<u32>(1u, global4.x, 22329u), Struct_2(4294967295u, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(47606u, 12u)])).c)), func_4(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(global4.x, global4.x, global4.x)), max(vec3<u32>(1u, global0.d.x, 16568u), vec3<u32>(24751u, global0.d.x, 0u)), vec3<u32>(4294967295u, 19025u, global4.x)), vec3<u32>(_wgslsmith_div_u32(global0.d.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global4.x, 1u, global4.x), vec4<u32>(30606u, global4.x, global4.x, global0.d.x)), global0.d.x ^ global4.x)), Struct_2(global4.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -25247i, global0.c, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 44644i, 45124i)), min(1i, u_input.a.x ^ -2147483647i), global1[_wgslsmith_index_u32(~global0.e, 12u)])));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_0.d.d.x, ~41617u), _wgslsmith_sub_u32(~func_4(vec3<u32>(0u, 21828u, global0.e), Struct_2(var_0.a, var_0.c, global0.c, Struct_1(true, true, -4190i, vec2<u32>(24804u, 46717u), 48781u))).d.x, firstTrailingBit(global4.x) ^ 0u)), min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(func_1(Struct_2(4294967295u, var_0.c, global0.c, Struct_1(global0.a, true, var_0.b, vec2<u32>(0u, global4.x), 26225u)), global0.d.x, vec3<f32>(global3[_wgslsmith_index_u32(20805u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)])).x, 1u), 1u), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(78385u, var_0.a, 1u)), vec3<u32>(58382u, global0.e, global4.x) >> (vec3<u32>(var_0.a, 8571u, global4.x) % vec3<u32>(32u)))), global4.x, ~13529u);
    global2 = _wgslsmith_div_i32(u_input.a.x, u_input.a.x);
    global0 = Struct_1(!any(vec4<bool>(global0.a, var_0.d.b == true, var_0.d.b, global0.a)), func_3(), firstTrailingBit(-2147483647i), ~global0.d, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(var_0.a, 43077u, ~1u), 14064u, 1084f, ~(-firstTrailingBit(-vec4<i32>(var_0.c, var_0.d.c, -1i, var_0.d.c))));
}

