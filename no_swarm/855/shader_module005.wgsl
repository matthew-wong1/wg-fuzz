struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(vec2<i32>(-1i, 0i), 0u, vec3<bool>(true, true, true), 104959u), true, vec2<u32>(44009u, 1u)), Struct_3(Struct_2(vec2<i32>(13382i, i32(-2147483648)), 4294967295u, vec3<bool>(true, true, false), 34395u), false, vec2<u32>(5221u, 0u)), Struct_3(Struct_2(vec2<i32>(-1i, i32(-2147483648)), 57286u, vec3<bool>(false, false, false), 4294967295u), true, vec2<u32>(1u, 0u)), Struct_3(Struct_2(vec2<i32>(17941i, -4640i), 14529u, vec3<bool>(true, false, false), 2311u), true, vec2<u32>(1u, 45904u)), Struct_3(Struct_2(vec2<i32>(22520i, -17575i), 4294967295u, vec3<bool>(true, true, false), 0u), false, vec2<u32>(66822u, 1u)), Struct_3(Struct_2(vec2<i32>(2147483647i, 8624i), 13352u, vec3<bool>(true, false, false), 8767u), true, vec2<u32>(0u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(-1i, -22160i), 32686u, vec3<bool>(true, false, false), 47012u), false, vec2<u32>(75379u, 68130u)), Struct_3(Struct_2(vec2<i32>(0i, 25738i), 59371u, vec3<bool>(true, true, true), 36259u), true, vec2<u32>(34533u, 26580u)), Struct_3(Struct_2(vec2<i32>(29340i, -1i), 4294967295u, vec3<bool>(true, true, true), 0u), true, vec2<u32>(32323u, 99141u)), Struct_3(Struct_2(vec2<i32>(2147483647i, 53210i), 0u, vec3<bool>(true, false, false), 76540u), true, vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(2147483647i, 41542i), 4294967295u, vec3<bool>(true, true, false), 0u), true, vec2<u32>(1u, 1u)), Struct_3(Struct_2(vec2<i32>(0i, 2147483647i), 4294967295u, vec3<bool>(true, true, false), 4294967295u), true, vec2<u32>(85211u, 0u)), Struct_3(Struct_2(vec2<i32>(2147483647i, -41802i), 1u, vec3<bool>(true, false, false), 0u), true, vec2<u32>(5882u, 42100u)), Struct_3(Struct_2(vec2<i32>(-1i, -2540i), 4294967295u, vec3<bool>(false, true, false), 4294967295u), true, vec2<u32>(4294967295u, 1u)), Struct_3(Struct_2(vec2<i32>(4652i, i32(-2147483648)), 31419u, vec3<bool>(false, false, false), 0u), true, vec2<u32>(1u, 1u)));

var<private> global4: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), 4294967295u, vec3<bool>(false, true, false), 0u), Struct_2(vec2<i32>(-35066i, -5885i), 40299u, vec3<bool>(true, true, false), 4294967295u), Struct_2(vec2<i32>(-23754i, 2147483647i), 27752u, vec3<bool>(true, true, true), 0u), Struct_2(vec2<i32>(-4987i, 1i), 0u, vec3<bool>(false, false, false), 0u), Struct_2(vec2<i32>(28626i, -28002i), 1u, vec3<bool>(true, true, true), 0u), Struct_2(vec2<i32>(-1i, 2147483647i), 1u, vec3<bool>(false, false, true), 21143u), Struct_2(vec2<i32>(-46592i, 0i), 0u, vec3<bool>(false, true, true), 48392u), Struct_2(vec2<i32>(-1i, 16768i), 84790u, vec3<bool>(true, false, false), 1u), Struct_2(vec2<i32>(-1i, i32(-2147483648)), 4294967295u, vec3<bool>(true, false, true), 4294967295u), Struct_2(vec2<i32>(2147483647i, -1i), 4294967295u, vec3<bool>(false, false, true), 4294967295u), Struct_2(vec2<i32>(52973i, i32(-2147483648)), 4294967295u, vec3<bool>(false, false, true), 36710u), Struct_2(vec2<i32>(2850i, 22687i), 0u, vec3<bool>(true, true, false), 58322u), Struct_2(vec2<i32>(-1i, 48062i), 4294967295u, vec3<bool>(false, true, false), 42432u), Struct_2(vec2<i32>(2147483647i, 2147483647i), 52262u, vec3<bool>(false, false, false), 5869u), Struct_2(vec2<i32>(34083i, -1i), 1u, vec3<bool>(false, false, true), 1u), Struct_2(vec2<i32>(0i, 2444i), 44689u, vec3<bool>(false, true, true), 1u), Struct_2(vec2<i32>(-1i, -61785i), 4294967295u, vec3<bool>(true, true, true), 4294967295u), Struct_2(vec2<i32>(31205i, i32(-2147483648)), 14378u, vec3<bool>(false, true, true), 33948u), Struct_2(vec2<i32>(38273i, -13481i), 55507u, vec3<bool>(true, false, false), 4294967295u), Struct_2(vec2<i32>(-17070i, -9067i), 4294967295u, vec3<bool>(false, true, false), 4294967295u), Struct_2(vec2<i32>(34378i, 2147483647i), 1u, vec3<bool>(false, true, true), 1u), Struct_2(vec2<i32>(4363i, 7520i), 26432u, vec3<bool>(false, true, false), 25503u), Struct_2(vec2<i32>(2147483647i, 51820i), 0u, vec3<bool>(false, true, false), 1952u), Struct_2(vec2<i32>(1i, 6928i), 41778u, vec3<bool>(false, false, true), 31471u), Struct_2(vec2<i32>(1i, -18614i), 78152u, vec3<bool>(false, true, false), 4294967295u), Struct_2(vec2<i32>(30433i, 1i), 1u, vec3<bool>(true, false, false), 1u), Struct_2(vec2<i32>(1i, -4782i), 17799u, vec3<bool>(false, true, true), 1u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<i32> {
    let var_0 = -604f;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-2882f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 177f, 2131f) - vec3<f32>(872f, 865f, -199f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1080f, 1180f, var_0), vec3<f32>(335f, var_0, 930f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(818f, var_0, 903f)), vec3<f32>(1496f, var_0, 464f))))));
    global2 = select(!(!(!vec2<bool>(false, global2.x))), vec2<bool>(false, all(vec2<bool>(global2.x, all(vec3<bool>(true, global2.x, global2.x))))), !vec2<bool>(!all(vec3<bool>(false, global2.x, global2.x)), select(true, true && global2.x, true)));
    global0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 0u, global0.x, _wgslsmith_clamp_u32(~global0.x, 1u, firstTrailingBit(0u))), ~vec4<u32>(u_input.b, global0.x ^ global0.x, global0.x, 4294967295u));
    var var_2 = global0.x ^ u_input.b;
    return -(~(-vec3<i32>(-2147483647i, global1.x ^ global1.x, u_input.a.x)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = vec2<bool>(global2.x, all(select(!(!vec3<bool>(global2.x, false, true)), vec3<bool>(true, global2.x, all(vec4<bool>(global2.x, false, true, true))), false)));
    global3 = array<Struct_3, 15>();
    global2 = var_0;
    global1 = select(reverseBits(~func_3() & u_input.a.xyx), _wgslsmith_add_vec3_i32(min(abs(vec3<i32>(global1.x, 26302i, u_input.a.x)), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), 12648i)), vec3<i32>(u_input.a.x, -max(global1.x, global1.x), -_wgslsmith_mod_i32(global1.x, global1.x))), true);
    global1 = firstTrailingBit(~vec3<i32>(_wgslsmith_mod_i32(min(-79555i, -64142i), _wgslsmith_add_i32(global1.x, 1i)), u_input.a.x, u_input.a.x));
    return ~abs(~arg_0.x << (arg_0.x % 32u)) << (0u % 32u);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = !(all(!(!vec3<bool>(global2.x, global2.x, global2.x))) & !any(vec3<bool>(global2.x, global2.x, global2.x)));
    let var_1 = global4[_wgslsmith_index_u32(~(~(~(~(~53037u)))), 27u)];
    global4 = array<Struct_2, 27>();
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, func_2(~(~vec4<u32>(u_input.b, u_input.b, global0.x, var_1.d)))), 27u)];
    let var_3 = vec2<bool>(all(vec4<bool>(!(arg_0.c > -1218f), true, false, !any(var_2.c.zy))), any(vec4<bool>(true, all(vec4<bool>(global2.x, true, true, var_1.c.x)) | var_1.c.x, true, var_2.a.x >= 2147483647i)));
    return !(true & !(!var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.yx, global0.x, select(vec3<bool>(true, global2.x, false), !vec3<bool>(func_1(Struct_1(vec4<i32>(13409i, global1.x, 23767i, global1.x), -1000f, 1000f, 31994i)), all(vec2<bool>(global2.x, true)), global2.x), !vec3<bool>(global2.x == true, select(false, global2.x, global2.x), false)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, u_input.b, abs(~u_input.b)), vec4<u32>(u_input.b, u_input.b, global0.x, min(func_2(vec4<u32>(0u, u_input.b, global0.x, 0u)), _wgslsmith_div_u32(4294967295u, 4635u)))));
    var var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(abs(0u), _wgslsmith_mod_u32(~1u, func_2(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))), ~select(var_0.b, 1u, var_0.c.x), 4294967295u), vec4<u32>(var_0.b, u_input.b, ~(~global0.x), select(~var_0.b, _wgslsmith_clamp_u32(5844u, global0.x, ~128199u), true)));
    global0 = abs(vec4<u32>(~(~global0.x), 16822u, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(44180u, 1u, 10819u, 4294967295u)), max(abs(vec4<u32>(var_1.x, 0u, u_input.b, var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d, var_0.d, 0u, 1u), vec4<u32>(1u, 61252u, var_1.x, 19122u)))), 49079u));
    let var_2 = !select(var_0.c.zy, vec2<bool>(any(vec3<bool>(true, false, global2.x)), false), !select(var_0.c.zy, !var_0.c.yy, false));
    var var_3 = global3[_wgslsmith_index_u32(~var_0.b, 15u)];
    var_3 = Struct_3(global4[_wgslsmith_index_u32(~1u, 27u)], true, min(~abs(~vec2<u32>(52359u, global0.x)), firstLeadingBit(firstTrailingBit(~vec2<u32>(var_0.b, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(8595u, u_input.b), firstTrailingBit(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(128f)) + _wgslsmith_f_op_f32(sign(1783f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-144f))))));
}

