struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(false, select(any(vec2<bool>(true, true)), true, true))));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    global0 = abs(select(~vec4<i32>(~global0.x, u_input.b, -2147483647i, global0.x), max(~vec4<i32>(-55326i, -2147483647i, u_input.b, u_input.b), vec4<i32>(~(-2147483647i), -2147483647i, global0.x, u_input.b)), !vec4<bool>(true, true, u_input.b <= u_input.b, true)));
    global0 = _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(0i ^ u_input.b, -64635i, 34516i, 10685i)), select(~max(vec4<i32>(-7607i, global0.x, -2706i, 38467i), vec4<i32>(-1i, global0.x, 0i, -1i)), vec4<i32>(u_input.b, 27070i, global0.x, 0i), vec4<bool>(true, true, true, true))) >> ((vec4<u32>(~u_input.a, ~_wgslsmith_mod_u32(u_input.a, u_input.a), 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(22606u, u_input.a), u_input.a)) ^ vec4<u32>(~(u_input.a ^ 492u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 16569u) >> (vec3<u32>(u_input.a, 15395u, u_input.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(97513u, 38020u, u_input.a), vec3<u32>(17608u, 4294967295u, 5088u))), _wgslsmith_clamp_u32(65189u, max(21772u, 1u), firstTrailingBit(u_input.a)), func_3(Struct_1(vec2<u32>(u_input.a, 1u), 0u)))) % vec4<u32>(32u));
    var var_0 = Struct_1(~vec2<u32>(abs(~u_input.a), u_input.a), 1u);
    let var_1 = _wgslsmith_f_op_f32(abs(1599f));
    var var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(var_0.a, _wgslsmith_add_vec2_u32(var_0.a, ~(~var_0.a))));
    return Struct_1(select(var_0.a, ~var_0.a, -371f > _wgslsmith_f_op_f32(-var_1)) | vec2<u32>(~u_input.a, reverseBits(1u)), 24797u);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    global0 = vec4<i32>(abs(~(~(-2147483647i))), global0.x, countOneBits(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-62695i, 1i, u_input.b), 1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4556u, 73677u, var_0.a.x), reverseBits(vec3<u32>(34039u, 28132u, var_0.b))) % 32u)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-abs(u_input.b), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.wy, global0.zz), -1i)), -global0.x << (arg_2 % 32u)));
    let var_1 = select(vec4<bool>(any(vec3<bool>(false, true, arg_3.x)), arg_3.x, !(arg_2 <= ~arg_0.a.x), true), select(!(!select(vec4<bool>(true, true, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), true)), select(select(vec4<bool>(arg_3.x, false, false, arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), !vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x)), !(!vec4<bool>(arg_3.x, false, arg_3.x, true)), select(!vec4<bool>(arg_3.x, arg_3.x, false, false), !vec4<bool>(true, arg_3.x, false, arg_3.x), !arg_3.x)), arg_3.x), true);
    var var_2 = func_2();
    global0 = firstTrailingBit(vec4<i32>(17094i, _wgslsmith_clamp_i32(~(-u_input.b), min(-global0.x, u_input.b ^ 1i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-15176i, -74427i), _wgslsmith_mult_i32(global0.x, -14574i), u_input.b)), max(u_input.b, -10006i), 1i << (((0u ^ var_0.a.x) ^ _wgslsmith_sub_u32(var_2.a.x, 1u)) % 32u)));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_2, _wgslsmith_mod_i32(-2147483647i, ~u_input.b)), -1i, -12138i, 322i), vec4<i32>(-2147483647i, _wgslsmith_add_i32(i32(-1i) * -6133i, -max(-7804i, 32471i)), _wgslsmith_div_i32(-9209i, firstTrailingBit(-39924i)) >> (_wgslsmith_add_u32(u_input.a, ~arg_1) % 32u), global0.x), countOneBits(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-35483i, global0.x, global0.x, -1i), vec4<i32>(global0.x, global0.x, arg_2, -40774i)) ^ vec4<i32>(29806i, arg_2, arg_2, -29157i))));
    let var_0 = Struct_1(vec2<u32>(~(~arg_0.a.x), _wgslsmith_mult_u32(arg_1, 26993u) >> (~arg_3.b % 32u)), arg_3.b);
    global0 = select(-min(vec4<i32>(22607i, countOneBits(-8845i), -69522i, 14405i), -vec4<i32>(28590i, global0.x, global0.x, -2147483647i)), vec4<i32>(arg_2, global0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, 6504i, 2147483647i, u_input.b), -abs(vec4<i32>(global0.x, 9261i, -41542i, global0.x))), arg_2), vec4<bool>(true, _wgslsmith_f_op_f32(-490f * _wgslsmith_div_f32(-2227f, -1000f)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1547f), _wgslsmith_f_op_f32(ceil(-474f)))), true, true));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f - -566f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -271f), 1298f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1171f + 1282f))))), -214f, _wgslsmith_f_op_f32(round(-112f)));
    return ~(~min(~vec4<u32>(4294967295u, u_input.a, arg_3.b, 4294967295u), vec4<u32>(28642u, var_0.a.x, arg_3.b, arg_0.b) >> (vec4<u32>(arg_1, arg_0.b, 4294967295u, 4294967295u) % vec4<u32>(32u)))) ^ vec4<u32>(_wgslsmith_clamp_u32(41268u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 4294967295u), firstTrailingBit(arg_0.a)), _wgslsmith_sub_u32(4294967295u, var_0.a.x) ^ arg_0.b), ~arg_0.a.x, 4788u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -48583i;
    global0 = ~(~(~vec4<i32>(-1i, global0.x, -2147483647i, global0.x) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(func_4(func_1(Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a), 0u, u_input.a, vec2<bool>(true, false)), 0u, firstTrailingBit(u_input.b), Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a)), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 24800u, u_input.a, 59531u) << (~vec4<u32>(u_input.a, 0u, 21423u, 922u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(~(vec2<u32>(33290u, ~0u) & vec2<u32>(1u << (u_input.a % 32u), u_input.a)), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4605u, 1u, u_input.a)), vec3<u32>(4294967295u, ~35795u, u_input.a ^ 4294967295u)));
    var var_2 = func_2();
    var var_3 = Struct_1(var_1.a ^ ~_wgslsmith_div_vec2_u32(var_2.a, ~var_1.a), var_2.a.x);
    let var_4 = reverseBits(global0.wz);
    var var_5 = Struct_1(_wgslsmith_mod_vec2_u32(~select(var_3.a, vec2<u32>(var_3.b, var_1.a.x), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<u32>(4294967295u, ~var_2.a.x) ^ var_3.a), ~(~4758u));
    var var_6 = max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 57718u, 4294967295u, ~(86797u | var_5.b)), vec4<u32>(var_1.a.x, var_3.b, 1u, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_i32(_wgslsmith_div_i32(var_4.x, u_input.b), u_input.b)), countOneBits(vec4<i32>(_wgslsmith_mult_i32(~11300i, -12053i), global0.x << (1u % 32u), firstTrailingBit(0i), u_input.b)));
}

