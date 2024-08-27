struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(true, Struct_1(-58410i, true, vec3<f32>(309f, 142f, -253f), 1u), vec3<i32>(-6688i, 0i, -24006i), Struct_3(-42038i, -733f, vec2<i32>(-47651i, -1i))), Struct_4(false, Struct_1(-4409i, true, vec3<f32>(-1000f, -244f, -585f), 0u), vec3<i32>(0i, 0i, 1i), Struct_3(13368i, 306f, vec2<i32>(2147483647i, -30434i))), Struct_4(true, Struct_1(1i, true, vec3<f32>(1563f, -654f, -731f), 1u), vec3<i32>(-22950i, -46517i, 1i), Struct_3(7034i, -732f, vec2<i32>(i32(-2147483648), -34240i))), Struct_4(false, Struct_1(i32(-2147483648), true, vec3<f32>(-1814f, 1219f, -418f), 72415u), vec3<i32>(i32(-2147483648), 0i, 53217i), Struct_3(-46076i, -1218f, vec2<i32>(1880i, i32(-2147483648)))), Struct_4(false, Struct_1(-7964i, true, vec3<f32>(293f, 167f, -1233f), 0u), vec3<i32>(0i, 0i, -10050i), Struct_3(18599i, -176f, vec2<i32>(-2618i, i32(-2147483648)))), Struct_4(false, Struct_1(34083i, false, vec3<f32>(-1829f, 650f, -720f), 40903u), vec3<i32>(8936i, 2147483647i, 0i), Struct_3(i32(-2147483648), -241f, vec2<i32>(0i, 42083i))), Struct_4(false, Struct_1(i32(-2147483648), false, vec3<f32>(1152f, 884f, -100f), 46785u), vec3<i32>(725i, 2193i, -1i), Struct_3(23626i, -1039f, vec2<i32>(24729i, -79482i))), Struct_4(false, Struct_1(i32(-2147483648), false, vec3<f32>(-599f, 145f, -1000f), 4294967295u), vec3<i32>(1i, -1i, 2147483647i), Struct_3(-1i, -194f, vec2<i32>(1i, -8951i))), Struct_4(false, Struct_1(55928i, false, vec3<f32>(1663f, -277f, -848f), 4294967295u), vec3<i32>(40312i, 15401i, -3698i), Struct_3(-22881i, 1825f, vec2<i32>(-40483i, 2147483647i))), Struct_4(false, Struct_1(-41569i, false, vec3<f32>(-841f, -926f, -348f), 0u), vec3<i32>(-27443i, i32(-2147483648), 5394i), Struct_3(-85292i, 1000f, vec2<i32>(-10824i, 3793i))), Struct_4(false, Struct_1(i32(-2147483648), true, vec3<f32>(-823f, -1330f, 1411f), 84914u), vec3<i32>(1i, -7665i, 0i), Struct_3(-1i, -2058f, vec2<i32>(-7870i, 49106i))), Struct_4(false, Struct_1(-54316i, true, vec3<f32>(-132f, 1205f, 318f), 4294967295u), vec3<i32>(1i, 2147483647i, -39553i), Struct_3(35012i, -989f, vec2<i32>(-18399i, -1i))), Struct_4(false, Struct_1(-1i, true, vec3<f32>(1000f, -587f, -161f), 4294967295u), vec3<i32>(0i, 2215i, i32(-2147483648)), Struct_3(20160i, -153f, vec2<i32>(13452i, -18794i))), Struct_4(true, Struct_1(-3739i, true, vec3<f32>(1103f, 510f, 554f), 1u), vec3<i32>(57696i, -76567i, -6048i), Struct_3(-1i, 283f, vec2<i32>(-50520i, 2147483647i))), Struct_4(true, Struct_1(i32(-2147483648), true, vec3<f32>(370f, -602f, 352f), 14121u), vec3<i32>(-3235i, -62333i, i32(-2147483648)), Struct_3(8157i, 1791f, vec2<i32>(-14709i, -1i))));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(2147483647i, -1888f, vec2<i32>(-1i, 29613i)), Struct_3(19290i, -532f, vec2<i32>(-27931i, 2147483647i)), Struct_3(0i, -1000f, vec2<i32>(3144i, -1i)), Struct_3(-33821i, 144f, vec2<i32>(9169i, 2147483647i)), Struct_3(-1i, 1442f, vec2<i32>(i32(-2147483648), 20897i)), Struct_3(2147483647i, -224f, vec2<i32>(-27319i, 2147483647i)), Struct_3(-13922i, -767f, vec2<i32>(6557i, -47942i)), Struct_3(23208i, -508f, vec2<i32>(1i, -1i)), Struct_3(1i, -2471f, vec2<i32>(0i, 5594i)), Struct_3(-1i, -426f, vec2<i32>(-11883i, 4846i)), Struct_3(-1i, 742f, vec2<i32>(-7337i, 4393i)), Struct_3(1i, -1449f, vec2<i32>(1i, -34045i)), Struct_3(39034i, -1570f, vec2<i32>(22989i, -57807i)));

var<private> global2: Struct_4 = Struct_4(true, Struct_1(1i, true, vec3<f32>(-1183f, -2021f, -372f), 0u), vec3<i32>(6410i, i32(-2147483648), -4537i), Struct_3(-1i, 1151f, vec2<i32>(2147483647i, 2147483647i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 13>();
    global0 = array<Struct_4, 15>();
    global1 = array<Struct_3, 13>();
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1i) * -54484i, firstLeadingBit(0i)), global2.c.x) << (~54076u % 32u), global2.a, global2.b.c, u_input.c.x);
    global1 = array<Struct_3, 13>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c.x, -1154f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, global2.d.b))) * vec2<f32>(global2.d.b, _wgslsmith_f_op_f32(-var_0.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c.x, -1828f))))), _wgslsmith_add_i32(32379i, global2.d.a), firstTrailingBit(_wgslsmith_sub_i32(global2.d.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -3997i, -43238i) >> (vec3<u32>(var_0.d, var_0.d, var_0.d) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(global2.c, vec3<i32>(-23739i, 10517i, -5269i))))));
}

