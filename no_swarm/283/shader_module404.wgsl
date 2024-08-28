struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(13886i, 18207i, 7345i), 2147483647i, vec3<f32>(454f, 1583f, 573f));

var<private> global1: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(Struct_1(vec3<i32>(-11813i, 8402i, i32(-2147483648)), 71341i, vec3<f32>(1193f, -1326f, -280f)), 4294967295u), Struct_5(Struct_1(vec3<i32>(2147483647i, -19728i, 11081i), 38445i, vec3<f32>(-1070f, -985f, 2573f)), 1u), Struct_5(Struct_1(vec3<i32>(36i, 4737i, 2325i), 2147483647i, vec3<f32>(1360f, -792f, 1145f)), 4294967295u), Struct_5(Struct_1(vec3<i32>(-1665i, i32(-2147483648), i32(-2147483648)), -20917i, vec3<f32>(991f, 521f, 202f)), 0u), Struct_5(Struct_1(vec3<i32>(12587i, 2993i, -44197i), -22119i, vec3<f32>(-1028f, 582f, -1000f)), 1u));

var<private> global2: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(1i, true, 0u, 685f), Struct_4(-37842i, true, 4294967295u, 270f), Struct_4(2415i, true, 1u, -1002f), Struct_4(-48608i, true, 20042u, 526f), Struct_4(-37099i, false, 0u, -960f), Struct_4(-12125i, false, 0u, 151f));

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -14094i);

var<private> global4: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(-25578i, true, 0u, 1000f), Struct_4(-22061i, true, 0u, -1751f), Struct_4(-23673i, true, 4294967295u, -224f), Struct_4(-8127i, true, 33492u, 1249f), Struct_4(16242i, true, 60148u, 1394f), Struct_4(0i, false, 44354u, -743f), Struct_4(-28633i, false, 8238u, -1716f), Struct_4(2882i, true, 3702u, 412f), Struct_4(-1i, false, 7602u, 2972f), Struct_4(15231i, true, 1u, -273f), Struct_4(i32(-2147483648), true, 54320u, -409f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> i32 {
    var var_0 = !(!all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(round(-345f)), global0.c.x, global0.c.x)));
    return -1i;
}

fn func_2(arg_0: u32) -> StorageBuffer {
    let var_0 = select(_wgslsmith_add_u32(firstLeadingBit(4294967295u), arg_0), 4294967295u, global3.x < select(countOneBits(global3.x), _wgslsmith_div_i32(2147483647i, 38788i), any(vec2<bool>(false, false)))) != 35162u;
    global2 = array<Struct_4, 6>();
    global1 = array<Struct_5, 5>();
    var var_1 = Struct_3(Struct_1(global0.a, -countOneBits(global0.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-253f, 377f, -375f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 335f, 1736f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, -110f, -677f))), true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.a.c.x + 118f)))));
    return StorageBuffer(-592f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global3.x, ~_wgslsmith_add_i32(~49841i, -1i), _wgslsmith_mult_i32(~(-(i32(-1i) * -31663i)), -(~_wgslsmith_mult_i32(global0.a.x, u_input.d))), global0.b << (u_input.c % 32u));
    var var_1 = Struct_3(Struct_1(var_0.xzz, select(func_1(), global3.x, false), vec3<f32>(_wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-429f, -1043f, false)), _wgslsmith_f_op_f32(max(520f, 1821f))), global0.c.x)));
    global4 = array<Struct_4, 11>();
    global0 = Struct_1((reverseBits(select(vec3<i32>(u_input.d, -1i, global0.a.x), vec3<i32>(295i, global0.a.x, -16059i), true)) & vec3<i32>(global0.a.x, ~var_1.a.a.x, 1i)) ^ firstLeadingBit(vec3<i32>(~(-1i), firstLeadingBit(var_1.a.a.x), -u_input.d)), 23161i, vec3<f32>(_wgslsmith_f_op_f32(var_1.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - -2112f))), global0.c.x, 1720f));
    global1 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = func_2(~u_input.c);
}

