struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_3(Struct_1(-10715i), vec2<u32>(0u, 20701u)), vec2<f32>(-474f, -279f), Struct_1(60768i), Struct_2(23941u, true, Struct_1(i32(-2147483648)))), Struct_4(Struct_3(Struct_1(33476i), vec2<u32>(0u, 4294967295u)), vec2<f32>(-1825f, -304f), Struct_1(1i), Struct_2(14216u, true, Struct_1(-1i))), Struct_4(Struct_3(Struct_1(-14752i), vec2<u32>(89567u, 33625u)), vec2<f32>(1806f, 1255f), Struct_1(-37582i), Struct_2(0u, false, Struct_1(-795i))), Struct_4(Struct_3(Struct_1(2147483647i), vec2<u32>(4294967295u, 24821u)), vec2<f32>(1768f, -594f), Struct_1(24654i), Struct_2(16127u, true, Struct_1(0i))), Struct_4(Struct_3(Struct_1(2147483647i), vec2<u32>(1u, 23689u)), vec2<f32>(828f, 1309f), Struct_1(-1i), Struct_2(4294967295u, false, Struct_1(i32(-2147483648)))), Struct_4(Struct_3(Struct_1(-14041i), vec2<u32>(4294967295u, 33925u)), vec2<f32>(396f, -1000f), Struct_1(15902i), Struct_2(66205u, false, Struct_1(-1i))), Struct_4(Struct_3(Struct_1(4446i), vec2<u32>(4294967295u, 4294967295u)), vec2<f32>(-319f, -633f), Struct_1(-27362i), Struct_2(171587u, true, Struct_1(i32(-2147483648)))), Struct_4(Struct_3(Struct_1(2147483647i), vec2<u32>(24198u, 4294967295u)), vec2<f32>(150f, -432f), Struct_1(0i), Struct_2(1u, false, Struct_1(-1i))), Struct_4(Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(103022u, 0u)), vec2<f32>(-727f, -1151f), Struct_1(1i), Struct_2(4294967295u, true, Struct_1(29879i))), Struct_4(Struct_3(Struct_1(-17890i), vec2<u32>(28829u, 0u)), vec2<f32>(-188f, -493f), Struct_1(1i), Struct_2(4294967295u, false, Struct_1(0i))), Struct_4(Struct_3(Struct_1(-7812i), vec2<u32>(36056u, 1u)), vec2<f32>(1170f, -217f), Struct_1(-49319i), Struct_2(95962u, false, Struct_1(0i))), Struct_4(Struct_3(Struct_1(41101i), vec2<u32>(4294967295u, 4294967295u)), vec2<f32>(-1409f, -390f), Struct_1(-24843i), Struct_2(4294967295u, false, Struct_1(13347i))), Struct_4(Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(22922u, 31757u)), vec2<f32>(-623f, -1000f), Struct_1(30435i), Struct_2(1u, false, Struct_1(22874i))), Struct_4(Struct_3(Struct_1(1i), vec2<u32>(29353u, 60514u)), vec2<f32>(529f, 1000f), Struct_1(i32(-2147483648)), Struct_2(1u, false, Struct_1(i32(-2147483648)))), Struct_4(Struct_3(Struct_1(6898i), vec2<u32>(1u, 4294967295u)), vec2<f32>(-815f, 1000f), Struct_1(10684i), Struct_2(4294967295u, false, Struct_1(0i))), Struct_4(Struct_3(Struct_1(15574i), vec2<u32>(38222u, 111062u)), vec2<f32>(-537f, 1183f), Struct_1(38133i), Struct_2(1u, false, Struct_1(25986i))), Struct_4(Struct_3(Struct_1(39015i), vec2<u32>(17676u, 4294967295u)), vec2<f32>(908f, 400f), Struct_1(8060i), Struct_2(53258u, true, Struct_1(2147483647i))), Struct_4(Struct_3(Struct_1(-19299i), vec2<u32>(44619u, 50876u)), vec2<f32>(-176f, -667f), Struct_1(-38303i), Struct_2(55823u, true, Struct_1(21703i))), Struct_4(Struct_3(Struct_1(26705i), vec2<u32>(60912u, 8018u)), vec2<f32>(521f, -1148f), Struct_1(-40611i), Struct_2(66251u, true, Struct_1(32115i))), Struct_4(Struct_3(Struct_1(-16742i), vec2<u32>(1u, 0u)), vec2<f32>(-2421f, 1040f), Struct_1(2498i), Struct_2(20943u, false, Struct_1(2147483647i))), Struct_4(Struct_3(Struct_1(-19807i), vec2<u32>(35137u, 4294967295u)), vec2<f32>(-768f, 446f), Struct_1(i32(-2147483648)), Struct_2(4294967295u, false, Struct_1(-15124i))), Struct_4(Struct_3(Struct_1(12217i), vec2<u32>(0u, 4294967295u)), vec2<f32>(290f, -136f), Struct_1(2147483647i), Struct_2(71362u, true, Struct_1(12469i))), Struct_4(Struct_3(Struct_1(30204i), vec2<u32>(4294967295u, 9752u)), vec2<f32>(145f, -250f), Struct_1(-48969i), Struct_2(36781u, false, Struct_1(-1i))), Struct_4(Struct_3(Struct_1(-1i), vec2<u32>(83931u, 1u)), vec2<f32>(1202f, 109f), Struct_1(0i), Struct_2(0u, false, Struct_1(-1i))), Struct_4(Struct_3(Struct_1(1i), vec2<u32>(4294967295u, 1u)), vec2<f32>(-582f, 1000f), Struct_1(i32(-2147483648)), Struct_2(0u, true, Struct_1(-26691i))));

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(70166u, 1507u)), Struct_3(Struct_1(-1i), vec2<u32>(45529u, 4294967295u)), Struct_3(Struct_1(11835i), vec2<u32>(1u, 14237u)), Struct_3(Struct_1(2147483647i), vec2<u32>(14466u, 2228u)), Struct_3(Struct_1(-518i), vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(1i), vec2<u32>(997u, 0u)), Struct_3(Struct_1(15624i), vec2<u32>(4294967295u, 1u)), Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_1(0i), vec2<u32>(46466u, 0u)), Struct_3(Struct_1(-1i), vec2<u32>(3903u, 71510u)), Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(-13013i), vec2<u32>(75026u, 25494u)), Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(0u, 61450u)), Struct_3(Struct_1(-48432i), vec2<u32>(25725u, 0u)), Struct_3(Struct_1(i32(-2147483648)), vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(-1i), vec2<u32>(90869u, 80315u)), Struct_3(Struct_1(1i), vec2<u32>(21627u, 1u)), Struct_3(Struct_1(1i), vec2<u32>(1u, 43359u)), Struct_3(Struct_1(47217i), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_1(14427i), vec2<u32>(1u, 1u)), Struct_3(Struct_1(1i), vec2<u32>(0u, 1u)), Struct_3(Struct_1(8114i), vec2<u32>(19973u, 1u)), Struct_3(Struct_1(16787i), vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(1i, i32(-1i) * -2147483647i));
    let var_1 = vec4<bool>(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), true, true);
    let var_2 = var_1.ywx;
    let var_3 = u_input.a;
    global1 = array<Struct_4, 25>();
    return _wgslsmith_div_i32((arg_0.a ^ ~(i32(-1i) * -8680i)) | -21250i, arg_0.a);
}

fn func_2() -> vec3<bool> {
    let var_0 = vec2<i32>(min(~_wgslsmith_add_i32(u_input.d.x, ~u_input.d.x), reverseBits(0i)), u_input.d.x);
    var var_1 = Struct_2(firstTrailingBit(_wgslsmith_sub_u32(abs(u_input.a), u_input.b)), true, Struct_1(~(~8814i << (~u_input.a % 32u))));
    let var_2 = -47818i;
    global0 = array<Struct_1, 1>();
    let var_3 = _wgslsmith_mult_i32(-(_wgslsmith_add_i32(0i << (0u % 32u), max(17214i, var_0.x)) >> (~5964u % 32u)), select(func_3(global0[_wgslsmith_index_u32(22256u | (u_input.c << (24715u % 32u)), 1u)]), _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, var_0.x), var_2)), true | all(vec2<bool>(false, false))));
    return select(!(!vec3<bool>(true, false, var_1.b & var_1.b)), !select(vec3<bool>(true, var_1.b || true, var_1.b & var_1.b), vec3<bool>(var_1.b && var_1.b, true, true), true), vec3<bool>(!select(true, var_1.b, var_1.b && false), var_1.b, all(!(!vec4<bool>(true, false, true, var_1.b)))));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    return select(!select(vec3<bool>(arg_0, select(false, true, arg_0), true), !(!vec3<bool>(arg_0, arg_0, false)), vec3<bool>(arg_0, arg_0, false)), select(!select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), false), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0), false), true), vec3<bool>(true, arg_0, arg_0), func_2()), !vec3<bool>(arg_0, all(!vec2<bool>(true, arg_0)), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = all(select(select(func_1(true), vec3<bool>(true, true, false), true), func_2(), true));
    var_1 = false;
    let var_2 = -min(vec3<i32>(-2334i, 0i, -726i), ~_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.d.zwy), abs(vec3<i32>(u_input.d.x, 1960i, u_input.d.x))));
    global1 = array<Struct_4, 25>();
    let var_3 = ~1i;
    var_1 = true;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 1u)];
    global1 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(2185u, _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(29222u, u_input.b), abs(var_0)), (~vec2<u32>(u_input.c, var_0) << (~vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u))) << ((~vec2<u32>(0u, 34526u) << (~vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

