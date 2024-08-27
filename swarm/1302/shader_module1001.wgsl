struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(10443i, vec4<u32>(18819u, 10815u, 4294967295u, 66751u), -1i), Struct_1(-47898i, vec4<u32>(4294967295u, 4294967295u, 1u, 56064u), 2147483647i), Struct_1(-19832i, vec4<u32>(23113u, 1u, 79439u, 38589u), -46579i), Struct_1(0i, vec4<u32>(23570u, 29472u, 0u, 58277u), -12556i), Struct_1(2147483647i, vec4<u32>(0u, 0u, 1u, 1u), -1761i), Struct_1(17488i, vec4<u32>(1u, 34934u, 4294967295u, 48932u), 71554i), Struct_1(1i, vec4<u32>(0u, 47074u, 30491u, 21013u), 24381i), Struct_1(2147483647i, vec4<u32>(35348u, 0u, 0u, 12778u), -21970i), Struct_1(6640i, vec4<u32>(1u, 4294967295u, 44133u, 4294967295u), -35452i), Struct_1(-1i, vec4<u32>(1u, 1u, 51354u, 9351u), 0i), Struct_1(1555i, vec4<u32>(66805u, 4294967295u, 42194u, 1u), 1i), Struct_1(2147483647i, vec4<u32>(7770u, 4294967295u, 3586u, 1u), 4091i), Struct_1(0i, vec4<u32>(0u, 63761u, 1u, 4294967295u), 2147483647i), Struct_1(56042i, vec4<u32>(57787u, 1u, 0u, 4294967295u), 1i), Struct_1(2147483647i, vec4<u32>(1u, 0u, 4294967295u, 112479u), 22871i), Struct_1(1i, vec4<u32>(0u, 0u, 33565u, 4294967295u), 15980i), Struct_1(2147483647i, vec4<u32>(26066u, 66214u, 1u, 34921u), 2147483647i), Struct_1(52313i, vec4<u32>(1u, 1120u, 0u, 1u), -1i), Struct_1(-2636i, vec4<u32>(1u, 0u, 52315u, 15855u), 35311i), Struct_1(-8465i, vec4<u32>(0u, 59542u, 72154u, 17444u), -51722i), Struct_1(6724i, vec4<u32>(0u, 4468u, 8695u, 11149u), -69083i), Struct_1(i32(-2147483648), vec4<u32>(43083u, 13096u, 4294967295u, 36531u), 8427i), Struct_1(0i, vec4<u32>(1u, 1u, 4294967295u, 46756u), 1i), Struct_1(-1i, vec4<u32>(0u, 0u, 20006u, 29887u), 1i), Struct_1(1i, vec4<u32>(55249u, 43343u, 0u, 4294967295u), 0i), Struct_1(0i, vec4<u32>(0u, 45525u, 8765u, 63101u), 0i), Struct_1(30413i, vec4<u32>(1u, 8226u, 6369u, 21263u), i32(-2147483648)), Struct_1(34649i, vec4<u32>(1u, 66876u, 34225u, 4294967295u), 0i), Struct_1(i32(-2147483648), vec4<u32>(3752u, 53278u, 35018u, 22878u), 33279i), Struct_1(41760i, vec4<u32>(4294967295u, 1u, 5026u, 4294967295u), 1i), Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 23061u, 0u, 16526u), -37502i));

var<private> global2: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<u32> {
    global0 = vec3<bool>(true, true, true);
    let var_0 = 637f;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, 657f, var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1048f, global2.x, -1510f), vec3<f32>(336f, global2.x, global2.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, 658f, 1977f))))) - vec3<f32>(_wgslsmith_f_op_f32(2566f * global2.x), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(296f - _wgslsmith_f_op_f32(step(802f, 335f))), 943f))));
    let var_1 = Struct_1(_wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(1i, -(~u_input.c.x), u_input.c.x)), vec4<u32>(countOneBits(1u | ~u_input.a), ~(~(~38230u)), select(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.d.x), min(21922u, 7793u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), u_input.d), false), _wgslsmith_div_u32(~u_input.b, ~_wgslsmith_sub_u32(u_input.d.x, 4294967295u))), u_input.c.x);
    var var_2 = u_input.c;
    return reverseBits((~var_1.b >> ((var_1.b << (var_1.b % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(var_1.b.x, ~u_input.d.x, ~u_input.d.x, u_input.d.x | 55175u) % vec4<u32>(32u))) & select(var_1.b, ~var_1.b, vec4<bool>(false && global0.x, !(global0.x != false), global0.x, all(!global0.xx)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(-u_input.c.x, min(vec4<u32>(1u, firstTrailingBit(u_input.b) << (_wgslsmith_add_u32(u_input.d.x, 4294967295u) % 32u), countOneBits(u_input.b) & max(1u, 28327u), u_input.b), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(), vec4<u32>(1u, 0u, u_input.a, u_input.a)), ~vec4<u32>(u_input.b, u_input.b, 33538u, u_input.a))), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -38715i), vec2<i32>(~(-2147483647i), -2147483647i)));
    global1 = array<Struct_1, 31>();
    let var_1 = vec3<i32>(u_input.c.x, firstTrailingBit(1i) | _wgslsmith_add_i32(reverseBits(-16236i) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.c.x), u_input.c), abs(-3069i) << (0u % 32u)), u_input.c.x);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~reverseBits(75372u)), 4294967295u), 31u)];
    var var_3 = select(var_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, var_2.b.x << (4294967295u % 32u)), max(var_0.b.x, ~var_2.b.x)), min(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(834u, u_input.b), vec2<u32>(var_0.b.x, u_input.d.x), vec2<u32>(30523u, 4294967295u))), vec2<u32>(var_0.b.x | var_2.b.x, 7390u))), global0.x);
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = ~u_input.d;
    let var_1 = Struct_1(arg_3.x, abs(vec4<u32>(_wgslsmith_add_u32(35156u, firstLeadingBit(var_0.x)), ~arg_2.b.x, u_input.d.x, _wgslsmith_dot_vec3_u32(arg_2.b.wxz, arg_2.b.wwz ^ vec3<u32>(var_0.x, 4294967295u, arg_2.b.x)))), _wgslsmith_div_i32(arg_1, -9499i));
    global0 = !select(select(vec3<bool>(false & arg_0.x, select(global0.x, global0.x, false), any(arg_0)), vec3<bool>(global0.x, true, arg_0.x), vec3<bool>(global0.x, !global0.x, !global0.x)), vec3<bool>(!all(arg_0), select(451f >= global2.x, arg_0.x, !arg_0.x), true), !(!arg_0));
    global1 = array<Struct_1, 31>();
    let var_2 = Struct_1(i32(-1i) * -_wgslsmith_mult_i32(6187i, firstLeadingBit(-31611i)), var_1.b, 2147483647i);
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    global1 = array<Struct_1, 31>();
    let var_0 = func_4(!func_2(), select(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_2.c), 0i & u_input.c.x, _wgslsmith_clamp_i32(arg_2.a, -2375i, u_input.c.x), u_input.c.x), ~min(vec4<i32>(4065i, arg_2.a, -21193i, 30611i), vec4<i32>(arg_2.a, u_input.c.x, u_input.c.x, u_input.c.x))), ~(-34303i), false), Struct_1(2147483647i, select(arg_2.b, abs(vec4<u32>(u_input.a, 52978u, 25880u, u_input.b)), global0.x), _wgslsmith_add_i32(~u_input.c.x, (-34034i << (arg_2.b.x % 32u)) & -u_input.c.x)), ~(~abs(u_input.c)));
    var var_1 = var_0;
    let var_2 = func_4(arg_0.xzz, _wgslsmith_dot_vec3_i32(u_input.c, -select(u_input.c, vec3<i32>(-22791i, -24628i, u_input.c.x), !vec3<bool>(true, arg_0.x, global0.x))), Struct_1(16340i, func_3(), u_input.c.x), abs(max(-_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, u_input.c), u_input.c)));
    var var_3 = var_0;
    return _wgslsmith_f_op_vec2_f32(global2.xx + _wgslsmith_f_op_vec2_f32(-global2.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1(!select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, true, global0.x, global0.x), global0.x), !select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, global0.x), global0.x), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x))), global2.x, global1[_wgslsmith_index_u32(u_input.b, 31u)]));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.x)))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.x));
    let var_2 = Struct_1(_wgslsmith_mult_i32(31138i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(56558u, _wgslsmith_div_u32(~0u, firstLeadingBit(1u)), 12660u, 19852u), _wgslsmith_add_vec4_u32(vec4<u32>(74513u & u_input.b, u_input.a, u_input.d.x | 25285u, 7843u), func_3())), u_input.c.x);
    let var_3 = u_input.c;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) - var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -479f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.x, global2.x, true))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(294f, -515f), global2.xy));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.yww, var_3);
}

