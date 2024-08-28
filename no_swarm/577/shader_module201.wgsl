struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false, vec2<i32>(43374i, -13690i), 0i, true), Struct_1(true, vec2<i32>(35717i, 23263i), i32(-2147483648), false), Struct_1(true, vec2<i32>(2147483647i, -13803i), 1i, false), Struct_1(false, vec2<i32>(-1i, 10676i), 25032i, true), Struct_1(true, vec2<i32>(9490i, -1i), -20944i, true), Struct_1(true, vec2<i32>(2147483647i, -403i), 0i, false), Struct_1(true, vec2<i32>(i32(-2147483648), 4653i), 1429i, false), Struct_1(true, vec2<i32>(1i, -40913i), 1i, false), Struct_1(false, vec2<i32>(37932i, -2008i), -31498i, false), Struct_1(false, vec2<i32>(-42361i, 0i), -62914i, false), Struct_1(false, vec2<i32>(49785i, -1i), -125083i, false), Struct_1(true, vec2<i32>(-13371i, 46306i), 2147483647i, true), Struct_1(false, vec2<i32>(11360i, 0i), 0i, true), Struct_1(true, vec2<i32>(i32(-2147483648), 40635i), -46068i, true), Struct_1(false, vec2<i32>(39198i, 2147483647i), i32(-2147483648), true), Struct_1(false, vec2<i32>(0i, -1i), 0i, true), Struct_1(true, vec2<i32>(1i, 11308i), -49635i, false), Struct_1(true, vec2<i32>(-30156i, 2147483647i), -5443i, false), Struct_1(false, vec2<i32>(i32(-2147483648), 5634i), 1i, true), Struct_1(true, vec2<i32>(23429i, 21755i), 4389i, false), Struct_1(true, vec2<i32>(24493i, 26568i), -1i, true), Struct_1(true, vec2<i32>(-35144i, 2147483647i), 26844i, true), Struct_1(false, vec2<i32>(i32(-2147483648), -17279i), -1i, false), Struct_1(false, vec2<i32>(-90541i, 2147483647i), 10592i, true), Struct_1(false, vec2<i32>(0i, 1i), 0i, true), Struct_1(false, vec2<i32>(0i, -10082i), 6140i, false), Struct_1(true, vec2<i32>(2147483647i, -74738i), -17045i, false), Struct_1(true, vec2<i32>(2147483647i, 2147483647i), -51502i, true));

var<private> global2: array<vec2<bool>, 26>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    global0 = Struct_1(!any(vec2<bool>(true, true)), firstTrailingBit(abs(_wgslsmith_mult_vec2_i32(u_input.a.xy, global0.b)) << (~vec2<u32>(75114u, u_input.c.x) % vec2<u32>(32u))), ~(-abs(_wgslsmith_mult_i32(arg_0.b.b.x, 22816i))), true);
    global1 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2944f, 668f), vec2<f32>(-783f, 1107f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-694f, 1000f) * vec2<f32>(-984f, -367f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1393f, 227f)))))));
    var var_1 = all(vec4<bool>(!all(select(global2[_wgslsmith_index_u32(99161u, 26u)], global2[_wgslsmith_index_u32(38344u, 26u)], global0.a)), _wgslsmith_f_op_f32(1633f - 1009f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1268f, -1742f)))), select(_wgslsmith_f_op_f32(-var_0.x) <= var_0.x, arg_0.a.a & arg_0.b.a, arg_0.b.d | true), select(any(global2[_wgslsmith_index_u32(max(u_input.c.x, 0u), 26u)]), !arg_0.a.d, global0.a)));
    var var_2 = arg_0;
    return arg_0.b.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(func_3(Struct_2(Struct_1(false, vec2<i32>(-1i, 68900i), 65699i, arg_1.a), Struct_1(global0.d, vec2<i32>(-1i, global0.c), -43680i, true)), 0i), -arg_0.xx, abs(arg_2.c) ^ 0i, global0.d), Struct_1(true, u_input.b.wy, ~countOneBits(abs(21257i)), !(!any(vec4<bool>(global0.d, arg_2.d, arg_3.a, arg_3.d)))));
    var var_1 = arg_1;
    var var_2 = vec4<u32>(reverseBits(0u), min(111094u, 102740u), 21541u, ~u_input.c.x);
    let var_3 = Struct_1(select(~u_input.d, ~(~var_2.x), !(var_0.a.c < var_1.c)) >= ~var_2.x, _wgslsmith_mult_vec2_i32(firstLeadingBit(firstTrailingBit(max(arg_3.b, arg_1.b))), -(vec2<i32>(0i, var_1.c) | -arg_2.b)), -arg_1.c, true);
    let var_4 = _wgslsmith_f_op_f32(abs(-347f));
    return u_input.d;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global2 = array<vec2<bool>, 26>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1788f, -1000f))) + -1000f)));
    let var_1 = max(_wgslsmith_sub_vec4_u32(vec4<u32>(max(arg_0, u_input.c.x), func_2(u_input.a.zzz, Struct_1(true, vec2<i32>(global0.c, u_input.a.x), 26572i, true), Struct_1(global0.d, global0.b, -2147483647i, true), global1[_wgslsmith_index_u32(90748u, 28u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 58305u, u_input.c.x, arg_0), vec4<u32>(u_input.d, arg_0, 33759u, 4294967295u)), ~0u) << (~abs(vec4<u32>(1u, 16064u, arg_0, arg_0)) % vec4<u32>(32u)), ~(~(~vec4<u32>(41967u, u_input.d, arg_0, u_input.d)))), ((~vec4<u32>(1086u, 0u, u_input.d, u_input.d) & select(vec4<u32>(u_input.c.x, u_input.d, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, 4294967295u, u_input.c.x), true)) | vec4<u32>(~0u, _wgslsmith_mod_u32(57189u, 8168u), countOneBits(4294967295u), _wgslsmith_div_u32(20884u, u_input.c.x))) & ~(~vec4<u32>(65696u, arg_0, arg_0, 33004u) | max(vec4<u32>(1u, u_input.d, 17368u, 4294967295u), vec4<u32>(42460u, 30215u, arg_0, 0u))));
    var var_2 = !vec2<bool>(false, all(select(!vec3<bool>(true, false, global0.a), select(vec3<bool>(global0.d, global0.a, global0.a), vec3<bool>(global0.d, false, global0.d), true), false)));
    var var_3 = select(!vec4<bool>(_wgslsmith_div_f32(var_0.a, 1717f) <= _wgslsmith_f_op_f32(-var_0.a), any(vec3<bool>(true, false, false)), var_2.x, select(!var_2.x, all(vec2<bool>(false, false)), any(global2[_wgslsmith_index_u32(912u, 26u)]))), !(!(!vec4<bool>(false, true, true, var_2.x))), ~(1i << (u_input.c.x % 32u)) != -1i);
    return Struct_3(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(30660u, u_input.d);
    let var_1 = func_1(min(1u, var_0));
    global2 = array<vec2<bool>, 26>();
    var var_2 = u_input.b.xyz;
    var var_3 = vec3<u32>(var_0, ~(~((4294967295u >> (0u % 32u)) & var_0)), abs(countOneBits(~_wgslsmith_sub_u32(u_input.d, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec4<u32>(u_input.d, u_input.d, var_3.x, var_0), ~vec4<u32>(var_3.x, 38509u, 4294967295u, u_input.d), global0.c >= global0.b.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, var_0, var_3.x, var_0) << (vec4<u32>(23415u, u_input.c.x, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(var_0, var_3.x, 4294967295u, 1u)) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(544f, 355f, 135f), vec3<f32>(-706f, var_1.a, var_1.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, -687f, 355f), vec3<f32>(-311f, var_1.a, var_1.a))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(859f, var_1.a), _wgslsmith_f_op_f32(abs(var_1.a)), -1385f)))));
}

