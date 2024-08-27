struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<u32>;

var<private> global2: i32;

var<private> global3: vec3<i32> = vec3<i32>(1i, 1i, 29431i);

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(35367i, vec3<i32>(3115i, i32(-2147483648), 20360i), -443f, vec2<bool>(true, true)), Struct_2(-37135i, vec3<i32>(-6057i, -46318i, -1602i), 222f, vec2<bool>(false, true)), Struct_2(-11221i, vec3<i32>(-1i, 2147483647i, 2147483647i), -252f, vec2<bool>(true, false)), Struct_2(i32(-2147483648), vec3<i32>(21045i, -1i, i32(-2147483648)), 1418f, vec2<bool>(false, false)), Struct_2(-1i, vec3<i32>(1i, 4110i, 0i), -1000f, vec2<bool>(true, false)), Struct_2(-1i, vec3<i32>(i32(-2147483648), 3397i, -25849i), -495f, vec2<bool>(false, true)), Struct_2(-4031i, vec3<i32>(-1i, 0i, 1i), -1620f, vec2<bool>(true, false)), Struct_2(-15844i, vec3<i32>(-1i, 28133i, i32(-2147483648)), 147f, vec2<bool>(true, false)), Struct_2(-4085i, vec3<i32>(-41534i, 2147483647i, 0i), -694f, vec2<bool>(true, true)), Struct_2(19628i, vec3<i32>(19884i, -2845i, 25556i), -893f, vec2<bool>(false, false)), Struct_2(-1i, vec3<i32>(i32(-2147483648), 5041i, 46370i), 2515f, vec2<bool>(false, false)), Struct_2(-43286i, vec3<i32>(-1i, 1664i, 0i), 1373f, vec2<bool>(false, true)), Struct_2(i32(-2147483648), vec3<i32>(-23493i, -6691i, -7329i), -670f, vec2<bool>(true, true)), Struct_2(i32(-2147483648), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), 1286f, vec2<bool>(false, true)), Struct_2(-69156i, vec3<i32>(2147483647i, -26786i, -1i), 1086f, vec2<bool>(false, false)), Struct_2(-16893i, vec3<i32>(-28411i, -6296i, -1i), 988f, vec2<bool>(true, false)), Struct_2(1i, vec3<i32>(-970i, 1i, 27649i), 502f, vec2<bool>(true, true)), Struct_2(i32(-2147483648), vec3<i32>(-22490i, -3771i, 1i), -1000f, vec2<bool>(true, false)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<f32> {
    var var_0 = ~((_wgslsmith_mod_vec2_i32(global3.yz, ~vec2<i32>(global3.x, -39090i)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), abs(vec2<u32>(42606u, global0.x))) % vec2<u32>(32u))) << (max(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), firstTrailingBit(vec2<u32>(global0.x, u_input.a))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(142568u, u_input.a), vec2<u32>(global1.x, 78856u))) % vec2<u32>(32u)));
    var var_1 = !select(select(vec4<bool>(arg_1, arg_1, all(vec2<bool>(true, arg_1)), true), select(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)), select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, false, false, false), false), true), ~23523u > abs(global1.x)), !select(!vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, true, true, arg_1), select(arg_1, true, false)), false);
    let var_2 = ~min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global1.x, 4294967295u, global0.x), min(vec4<u32>(0u, 0u, 34028u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(133273u, global1.x, 4294967295u, global1.x), vec4<u32>(0u, global0.x, global0.x, u_input.a)))), max(global0.x, max(firstTrailingBit(40405u), 1u)));
    let var_3 = -323f;
    var_0 = ~(~(-global3.zy) & global3.xy) | (vec2<i32>(~(global3.x & global3.x), -1i) & vec2<i32>(1i, 1i));
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1699f, _wgslsmith_f_op_f32(-var_3)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-473f + 1152f), _wgslsmith_f_op_f32(-var_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2142f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 - var_3), _wgslsmith_f_op_f32(-var_3)), true)) * 1870f), _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(floor(var_3))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(0i, any(select(select(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, arg_0)), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_0, true, arg_0, true)), !vec4<bool>(false, arg_0, true, arg_0)), !vec4<bool>(false, arg_0, arg_0, true), arg_0))));
    var var_1 = global4[_wgslsmith_index_u32(4294967295u, 18u)];
    global0 = vec2<u32>(1u, global0.x >> ((u_input.a | ~abs(84940u)) % 32u));
    var var_2 = arg_0;
    let var_3 = Struct_2(2147483647i, vec3<i32>(countOneBits(select(firstTrailingBit(-2147483647i), 88759i, false)), 63475i | _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d, 6093i), ~5514i), ~max(u_input.c << (4294967295u % 32u), min(-31320i, global3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), var_1.c)), select(select(var_1.d, vec2<bool>(true, true), false), !select(select(var_1.d, var_1.d, false), vec2<bool>(false, var_1.d.x), select(vec2<bool>(var_1.d.x, arg_0), vec2<bool>(var_1.d.x, var_1.d.x), vec2<bool>(arg_0, var_1.d.x))), select(true, all(!var_1.d), !(var_1.d.x | true))));
    return Struct_2(select(25687i, abs(-1i), arg_0), vec3<i32>(-1i) * -abs(reverseBits(var_3.b)), 1071f, var_3.d);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = func_2(false);
    let var_1 = var_0.c;
    let var_2 = func_2(!(global3.x != (0i << (~4294967295u % 32u))));
    var var_3 = global4[_wgslsmith_index_u32(4098u, 18u)];
    global3 = select(min(var_2.b >> (~vec3<u32>(u_input.a, 3476u, global0.x) % vec3<u32>(32u)), var_3.b) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global0.x, 0u), ~vec3<u32>(u_input.a, 1u, 0u)) % vec3<u32>(32u)), arg_0.b ^ -vec3<i32>(arg_0.b.x, 0i, var_3.a), !any(select(select(vec3<bool>(var_0.d.x, true, true), arg_1.zxw, vec3<bool>(false, false, false)), !arg_1.zyw, true)));
    return ~(~_wgslsmith_dot_vec2_u32(max(abs(vec2<u32>(1u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(19717u, 0u), vec2<u32>(global1.x, global1.x))), vec2<u32>(4294967295u, 5901u) | _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(4294967295u, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.x, countOneBits(4294967295u)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.x >> (12372u % 32u), 1u, ~1u, 23490u)), ~countOneBits(vec4<u32>(global1.x, u_input.a, 4294967295u, global0.x))), ~global1.x), 18u)];
    global2 = global3.x;
    global4 = array<Struct_2, 18>();
    var_0 = global4[_wgslsmith_index_u32(select(abs(_wgslsmith_sub_u32(global1.x, select(10748u, global1.x, false)) << (~1u % 32u)), ~func_1(Struct_2(global3.x, var_0.b, _wgslsmith_f_op_f32(-var_0.c), var_0.d), vec4<bool>(any(vec4<bool>(var_0.d.x, false, false, var_0.d.x)), true, true, true)), true), 18u)];
    var var_1 = ~vec2<u32>(86218u, ~(~global1.x));
    var_0 = Struct_2(~(~(-_wgslsmith_mult_i32(-54511i, global3.x))), -countOneBits(reverseBits(vec3<i32>(0i, u_input.c, -2147483647i))), _wgslsmith_f_op_vec4_f32(func_3(var_0.a, true)).x, vec2<bool>(any(vec4<bool>(false, var_0.d.x, true, var_0.d.x)) && var_0.d.x, var_0.c != -586f));
    global3 = var_0.b;
    let var_2 = global4[_wgslsmith_index_u32(~global1.x, 18u)];
    let var_3 = vec2<bool>(true, var_2.d.x & !(_wgslsmith_f_op_f32(floor(958f)) > _wgslsmith_div_f32(var_2.c, -740f)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, u_input.b, u_input.b), ~vec3<i32>(u_input.d, -46194i, var_2.b.x), var_2.b) & ~(-(vec3<i32>(25301i, 0i, var_0.a) | vec3<i32>(2147483647i, global3.x, var_2.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(334f, var_0.c, var_0.c, var_0.c)))))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, func_1(Struct_2(u_input.b, vec3<i32>(37418i, -13153i, var_2.b.x), var_0.c, var_3), vec4<bool>(false, true, false, true)), global1.x, ~(~var_1.x)), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, global0.x, 31314u), vec4<u32>(global0.x, 13632u, global0.x, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(44616u, 64206u, global0.x, 65967u), vec4<u32>(62555u, 48157u, global0.x, 4294967295u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) + vec2<f32>(-1959f, -401f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1323f, var_0.c)))), vec2<f32>(338f, var_2.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * -1287f)), _wgslsmith_f_op_f32(f32(-1f) * -377f)), var_0.d)));
}

