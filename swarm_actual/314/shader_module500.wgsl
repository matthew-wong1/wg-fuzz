struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3 = Struct_3(Struct_1(54550u, vec2<f32>(603f, 380f), true));

var<private> global2: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(global1.a.a), global1.a.a), global2.yx);
    let var_0 = global2.yzx;
    global1 = arg_0;
    let var_1 = Struct_2(global1.a, Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.a.b, vec2<f32>(arg_0.a.b.x, -484f)))), global1.a.c), global1.a, _wgslsmith_dot_vec3_u32(~(vec3<u32>(global2.x, global1.a.a, global1.a.a) & _wgslsmith_mod_vec3_u32(global2.wwx, global2.yyy)), firstLeadingBit(vec3<u32>(1u, ~29217u, global1.a.a))));
    let var_2 = Struct_3(arg_0.a);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, var_2.a.b.x))) * vec2<f32>(132f, -379f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(825f + arg_0.a.b.x), _wgslsmith_div_f32(arg_0.a.b.x, arg_0.a.b.x)))), _wgslsmith_f_op_f32(-arg_0.a.b.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    global1 = Struct_3(global1.a);
    var var_0 = arg_1;
    var var_1 = global1.a.b.x;
    let var_2 = _wgslsmith_sub_vec4_i32(abs(u_input.c), _wgslsmith_add_vec4_i32(u_input.c, -u_input.c));
    var var_3 = Struct_1(~select(~4294967295u, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_div_u32(global0.x, 28983u)), false), arg_1.a.b, select(all(select(select(vec4<bool>(true, arg_3.b.c, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, global1.a.c, false, arg_0.x)), vec4<bool>(var_0.a.c, false, false, global1.a.c), all(vec2<bool>(global1.a.c, false)))), arg_0.x, true));
    return global2.yw;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<u32> {
    global0 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a.a, 146933u), select(vec2<u32>(global0.x, 4294967295u), global2.yw, false))));
    let var_0 = global2.wwx;
    let var_1 = arg_0;
    global0 = func_4(vec3<bool>(true, var_1.a.c, !any(!vec2<bool>(global1.a.c, false))), Struct_3(Struct_1(4294967295u, var_1.a.b, true)), -u_input.c.x, Struct_2(Struct_1(~arg_0.a.a, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(global1.a))), !all(vec3<bool>(false, arg_0.a.c, false))), var_1.a, arg_0.a, ~1u));
    let var_2 = Struct_3(var_1.a);
    return _wgslsmith_mult_vec3_u32(vec3<u32>(max(var_0.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.a.a, global1.a.a), 1u)), firstLeadingBit(arg_0.a.a) & ~1u, 4294967295u), vec3<u32>(_wgslsmith_sub_u32(7028u, 1u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.a, global0.x, 4294967295u, arg_0.a.a), ~vec4<u32>(0u, 23575u, 63606u, var_0.x))), min(_wgslsmith_div_u32(1u, global2.x), _wgslsmith_mult_u32(global0.x, 140815u)) << (~1u % 32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(-u_input.a, u_input.a) >> (~vec2<u32>(_wgslsmith_dot_vec3_u32(global2.wzy, global2.zyx), _wgslsmith_dot_vec3_u32(func_2(Struct_3(global1.a), u_input.b), global2.ywx)) % vec2<u32>(32u));
    let var_1 = 2245f;
    var_0 = u_input.c.zz >> (~(~(~vec2<u32>(0u, global0.x))) % vec2<u32>(32u));
    var var_2 = all(select(vec4<bool>(false, any(vec4<bool>(true, true, global1.a.c, global1.a.c)), _wgslsmith_dot_vec2_i32(u_input.c.xw, u_input.c.xz) < u_input.a, true | global1.a.c), select(!vec4<bool>(false, global1.a.c, global1.a.c, global1.a.c), select(!vec4<bool>(global1.a.c, global1.a.c, global1.a.c, global1.a.c), select(vec4<bool>(true, global1.a.c, true, true), vec4<bool>(false, false, false, global1.a.c), true), global1.a.c), 1i <= _wgslsmith_add_i32(2147483647i, u_input.c.x)), true));
    var var_3 = global0.x;
    return Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.b.x, global1.a.b.x), global1.a.b, vec2<bool>(true, global1.a.c))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1, -559f), vec2<f32>(global1.a.b.x, -1079f))), global1.a.b))), !global1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = global0.x;
    var var_2 = select(vec2<bool>(any(!vec3<bool>(true, false, global1.a.c)), any(select(vec4<bool>(global1.a.c, global1.a.c, global1.a.c, false), select(vec4<bool>(global1.a.c, var_0.c, false, false), vec4<bool>(true, global1.a.c, true, global1.a.c), vec4<bool>(var_0.c, true, var_0.c, global1.a.c)), select(vec4<bool>(true, false, var_0.c, global1.a.c), vec4<bool>(global1.a.c, true, false, false), vec4<bool>(var_0.c, var_0.c, false, var_0.c))))), select(!select(!vec2<bool>(global1.a.c, false), vec2<bool>(false, global1.a.c), !vec2<bool>(var_0.c, global1.a.c)), !(!vec2<bool>(var_0.c, var_0.c)), !select(select(vec2<bool>(global1.a.c, false), vec2<bool>(var_0.c, false), true), !vec2<bool>(true, var_0.c), true)), select(vec2<bool>(true && var_0.c, false), vec2<bool>(any(!vec4<bool>(var_0.c, var_0.c, false, global1.a.c)), global1.a.c), vec2<bool>(global1.a.c, var_0.c)));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~max(global2.x, global1.a.a)), var_0.a, select(func_2(Struct_3(global1.a), u_input.c.x).x, ~(global2.x << (global1.a.a % 32u)), true || !var_2.x), 1u), reverseBits(~firstLeadingBit(vec4<u32>(global1.a.a, 1u, var_0.a, global2.x))), max(reverseBits(firstLeadingBit(max(vec4<u32>(global0.x, 14045u, global2.x, global1.a.a), vec4<u32>(4294967295u, 4294967295u, 4294967295u, global1.a.a)))), select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a, 4294967295u), global2.zw), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(21292u, var_0.a, global0.x, 1u), vec4<u32>(global0.x, global2.x, global1.a.a, 36675u)), 1u), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global0.x, 4294967295u, 8974u), vec4<u32>(4294967295u, global1.a.a, 0u, var_0.a))), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, global1.a.c, false), !vec4<bool>(var_2.x, var_2.x, true, var_2.x)))));
    var var_4 = _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(30620i, -u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, u_input.a), u_input.b), max(_wgslsmith_add_i32(u_input.a, 28763i), 1i))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(u_input.b << (8183u % 32u), var_4.x), 13804i, var_4.x));
}

