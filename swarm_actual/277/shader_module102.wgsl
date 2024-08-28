struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 0u);

var<private> global3: array<u32, 3> = array<u32, 3>(1u, 68696u, 1u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_5 {
    let var_0 = ~(~vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, ~global2.x), firstTrailingBit(~46725u)));
    global2 = vec3<u32>(abs(reverseBits(global3[_wgslsmith_index_u32(u_input.c.x, 3u)])), ~(~(32502u | u_input.c.x)), var_0.x);
    var var_1 = ~vec4<u32>(~var_0.x, global3[_wgslsmith_index_u32(1u, 3u)], 73366u >> (var_0.x % 32u), 0u);
    var var_2 = ~1u;
    let var_3 = Struct_1(global0.e.c.a, arg_1.wwy, vec4<u32>(_wgslsmith_div_u32(1u, 37134u), _wgslsmith_dot_vec3_u32(global0.c, var_1.xxx), ~44053u, 44430u), i32(-1i) * -(~57234i));
    return Struct_5(Struct_3(global0.e.a, abs(~vec2<u32>(86123u, 8253u)), Struct_1(select(global0.e.c.a, !global0.a.a, !global0.e.c.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1296f, 289f, 111f), _wgslsmith_f_op_vec3_f32(-global0.e.c.b))), u_input.c, -8494i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> vec3<f32> {
    global3 = array<u32, 3>();
    var var_0 = ~arg_1.a.a.c.xz;
    var var_1 = arg_1.a.a;
    var var_2 = select(arg_1.a.c.c, u_input.c, any(func_2(!arg_1.a.c.a.zzy, vec4<f32>(_wgslsmith_f_op_f32(round(936f)), -443f, var_1.a, _wgslsmith_f_op_f32(step(global0.e.c.b.x, -338f)))).a.c.a.xy));
    var var_3 = !vec4<bool>((0i >= arg_1.a.c.d) & false, arg_1.a.c.d <= u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)) >= _wgslsmith_f_op_f32(round(arg_1.a.c.b.x)), true);
    return global0.e.c.b;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec4<bool> {
    let var_0 = global0.e.c;
    let var_1 = Struct_4(Struct_1(vec4<bool>(false, abs(-33480i) < -var_0.d, false, false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(true, false, var_0.a.x), func_2(vec3<bool>(global0.b, true, false), vec4<f32>(global0.a.b.x, -833f, -1554f, 1564f)))))), ~(global0.e.c.c >> (firstLeadingBit(vec4<u32>(60742u, 1u, 89001u, arg_0)) % vec4<u32>(32u))), -abs(~(-45267i))), (var_0.c.x == 1u) | global0.b, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global2.x >> (74281u % 32u), ~46891u, 14735u), var_0.c.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(~26992u, ~var_0.c.x, _wgslsmith_clamp_u32(global0.a.c.x, 20793u, 106185u)), func_2(!vec3<bool>(true, var_0.a.x, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, 263f, var_0.b.x, global0.e.c.b.x) - vec4<f32>(1985f, 1070f, 128f, -768f))).a.c.c.zwz, vec3<u32>(~16748u, 41414u, var_0.c.x))), countOneBits(-15949i), global0.e);
    global1 = array<vec3<bool>, 32>();
    global3 = array<u32, 3>();
    let var_2 = 1i;
    return select(func_2(var_1.a.a.zyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(315f, -932f, -484f, 374f) + vec4<f32>(global0.a.b.x, var_1.e.a.a, 1246f, var_0.b.x)) + vec4<f32>(225f, 288f, 179f, -1000f)))).a.c.a, !global0.e.c.a, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec4<bool>(true, global0.a.a.x && global0.b, global0.e.c.a.x, global0.b), select(global0.e.c.a, func_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(530u, 3u)], 3u)], global0.e.c.d), select(false, true, false)), true), vec4<bool>(!(global0.a.d >= 10081i), global0.e.a.d, false, global0.a.a.x || all(global0.a.a)), select(select(vec4<bool>(true, false, global0.b, true), select(global0.a.a, global0.a.a, false), global0.e.c.a.x), !func_2(vec3<bool>(global0.e.c.a.x, false, true), vec4<f32>(932f, 569f, global0.e.c.b.x, 265f)).a.c.a, false)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(106f, global0.e.c.b.x, -260f), _wgslsmith_f_op_vec3_f32(-global0.e.c.b)))), vec4<u32>(global2.x, 90235u, ~(~53903u), global2.x) >> (~(~u_input.c) % vec4<u32>(32u)), u_input.a.x);
    global1 = array<vec3<bool>, 32>();
    var var_1 = max(19903u, _wgslsmith_div_u32(74222u, _wgslsmith_clamp_u32(~global2.x, _wgslsmith_sub_u32(var_0.c.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(24170u, var_0.c.x, 4294967295u, u_input.c.x), u_input.c)) ^ max(global0.e.c.c.x, var_0.c.x)));
    let var_2 = vec3<u32>(global0.e.c.c.x, 44296u, 4294967295u);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -543f))))), global0.e.c.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a.b.x)), 566f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zwx, _wgslsmith_dot_vec3_u32(var_0.c.zzx & global0.e.c.c.yyy, _wgslsmith_sub_vec3_u32(var_2, ~min(vec3<u32>(1u, 0u, global2.x), var_0.c.xyw))));
}

