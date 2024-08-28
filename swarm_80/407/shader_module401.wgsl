struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32> = vec2<f32>(558f, 1000f);

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: Struct_2;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)));
    let var_0 = firstLeadingBit(min(vec3<u32>(~(~u_input.b), ~18754u, u_input.b), vec3<u32>(~global3.a.a, 0u, 1u)));
    var var_1 = vec2<bool>(_wgslsmith_mult_u32(global0.c << (global3.a.a % 32u), abs(reverseBits(global0.a.a))) > 4294967295u, any(select(!(!global0.b), select(global0.b, select(vec3<bool>(global3.a.b.x, true, false), vec3<bool>(global4.x, global0.a.b.x, true), global0.b), global0.b), select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(global0.a.b.x, true, global0.b.x), select(vec3<bool>(global3.a.b.x, false, global4.x), vec3<bool>(false, true, true), global0.b)))));
    let var_2 = abs(firstLeadingBit(reverseBits(var_0)));
    var_1 = !select(!global3.a.b, vec2<bool>(true, global4.x), global0.d.b);
    return 74479u;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global2 = array<vec2<f32>, 14>();
    let var_0 = reverseBits(~vec3<u32>(1u, 29444u, 20804u));
    global0 = Struct_3(Struct_1(45498u, !vec2<bool>(global3.a.b.x, all(global0.b.xy))), !(!global0.b), ~firstLeadingBit(global0.c), Struct_1(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, u_input.b, 45243u), _wgslsmith_mult_vec3_u32(var_0, var_0)), 8735u), vec2<bool>((u_input.a.x != -17272i) != any(vec4<bool>(global4.x, global3.a.b.x, false, false)), global3.a.b.x)));
    global2 = array<vec2<f32>, 14>();
    var var_1 = global0.d;
    return Struct_3(global3.a, vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) >= global1.x, global4.x), func_3(var_0.x), Struct_1(_wgslsmith_add_u32(u_input.b, 1u), select(select(global3.a.b, vec2<bool>(arg_0, false), vec2<bool>(global0.b.x, true)), !(!var_1.b), global3.a.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    var var_0 = func_2(arg_1.d.b.x);
    var var_1 = _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(146402u, arg_0.a.a, abs(1u))), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.a, 2004u, arg_0.a.a, u_input.b), vec4<u32>(0u, u_input.b, global3.a.a, 27161u)), 36579u, 33224u & var_0.c) << (reverseBits(abs(vec3<u32>(global0.c, var_0.a.a, arg_0.a.a))) % vec3<u32>(32u)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(56376u, arg_1.a.a) << (0u % 32u), var_0.a.a), func_2(global4.x).b));
    var_1 = reverseBits(~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.c, 72026u), vec3<u32>(u_input.b, 0u, 0u)))));
    global3 = Struct_2(Struct_1(48073u, select(func_2(false).b.yz, arg_1.a.b, vec2<bool>(func_2(true).d.b.x, arg_0.a.a != var_1.x))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(908f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))))));
    return func_2((-1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global1.x))) || true);
}

fn func_1() -> Struct_1 {
    let var_0 = !(!(!global3.a.b.x));
    let var_1 = global0.c;
    var var_2 = _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x);
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1181f * global1.x)))))));
    global0 = func_4(Struct_2(global3.a), func_2(all(!(!vec4<bool>(false, global4.x, global0.d.b.x, global3.a.b.x)))));
    return global3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<bool> {
    return func_4(Struct_2(global0.a), Struct_3(global0.a, !select(!global0.b, !global0.b, func_2(global3.a.b.x).b), ~(global0.c << (min(u_input.b, global0.d.a) % 32u)), arg_0.a)).b;
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~(~(~(~vec3<u32>(u_input.b, 14340u, 67324u))));
    let var_1 = func_4(Struct_2(func_4(Struct_2(global3.a), Struct_3(func_2(true).d, !vec3<bool>(arg_2.a.x, global0.a.b.x, false), u_input.b, Struct_1(22225u, vec2<bool>(false, false)))).d), Struct_3(Struct_1(abs(4294967295u), !vec2<bool>(global0.b.x, true)), select(!vec3<bool>(global3.a.b.x, arg_2.a.x, arg_2.a.x), !func_2(arg_1.a.x).b, !select(vec3<bool>(global0.b.x, global4.x, global0.a.b.x), vec3<bool>(false, global3.a.b.x, false), arg_1.a)), var_0.x, func_4(Struct_2(global3.a), func_4(Struct_2(Struct_1(26479u, global0.a.b)), Struct_3(Struct_1(1u, vec2<bool>(global0.b.x, global3.a.b.x)), vec3<bool>(false, false, global4.x), 0u, Struct_1(global0.c, arg_1.a.yz)))).a)).a;
    let var_2 = global3.a;
    global3 = Struct_2(global0.a);
    return Struct_2(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(u_input.a.x, Struct_4(func_5(Struct_2(func_1()), global0.b)), Struct_4(vec3<bool>((global4.x & global0.a.b.x) | (global4.x | global3.a.b.x), global4.x, true)));
    let var_0 = abs(_wgslsmith_div_vec2_u32(min(vec2<u32>(1903u, 4842u), firstLeadingBit(vec2<u32>(global3.a.a, 1u) & vec2<u32>(52263u, 4294967295u))), select(min(vec2<u32>(global3.a.a, 16102u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, global3.a.a), vec2<u32>(1u, u_input.b))), vec2<u32>(~global3.a.a, u_input.b), !global4.x)));
    global3 = Struct_2(Struct_1(4294967295u, select(!global3.a.b, func_4(func_6(u_input.a.x, Struct_4(global0.b), Struct_4(vec3<bool>(true, true, true))), func_2(global0.d.b.x)).a.b, vec2<bool>(all(vec4<bool>(global3.a.b.x, false, global0.a.b.x, false)), any(vec4<bool>(global0.a.b.x, true, false, global4.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, -2362f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(-238f, -966f, global1.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(325f, 490f, global1.x) + vec3<f32>(113f, 730f, -374f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 850f, global1.x), vec3<f32>(187f, -172f, -490f)), !vec3<bool>(global4.x, false, global3.a.b.x)))), (any(global0.b) | true) & (func_2(false).a.b.x || true))));
    let var_2 = select(vec4<bool>(global3.a.b.x, !func_5(Struct_2(global3.a), global0.b).x, !global4.x, false), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(global3.a.b.x, false, true, false), select(vec4<bool>(global4.x, false, global4.x, global0.b.x), vec4<bool>(global4.x, global3.a.b.x, false, global0.a.b.x), false)), vec4<bool>(func_2(global0.a.b.x).b.x, any(global0.b), func_4(Struct_2(global3.a), Struct_3(global3.a, global0.b, var_0.x, global3.a)).b.x, true), select(!vec4<bool>(false, global3.a.b.x, global3.a.b.x, true), vec4<bool>(true, global3.a.b.x, false, true), select(vec4<bool>(global4.x, global0.a.b.x, global4.x, false), vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(global3.a.b.x, true, false, global4.x)))), select(select(vec4<bool>(false, global1.x < global1.x, true, all(global3.a.b)), !vec4<bool>(global3.a.b.x, false, global4.x, global0.d.b.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, global4.x, global4.x, all(global0.b)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, global0.d.b.x, global0.b.x, false), global4.x))));
    let var_3 = vec3<u32>(4122u, func_2(!global3.a.b.x).d.a, firstTrailingBit(~1u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global0.c, 4294967295u), firstTrailingBit(_wgslsmith_mult_u32(95104u, u_input.b)), var_0.x), ~firstTrailingBit(vec3<u32>(u_input.b, global3.a.a, u_input.b))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1076f, var_1.x, _wgslsmith_f_op_f32(-var_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(395f * -342f), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(step(650f, global1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1868f, -908f, -1000f, var_1.x))) + vec4<f32>(-300f, -151f, 1939f, _wgslsmith_f_op_f32(var_1.x * global1.x)))));
}

