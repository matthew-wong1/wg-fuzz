struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(vec3<u32>(1u, 4294967295u, 128650u), Struct_2(Struct_1(true, vec4<bool>(false, false, true, true), 4294967295u, false), -2144f, vec4<i32>(-1i, -7824i, -6785i, i32(-2147483648)), -1496f)), Struct_5(vec3<u32>(76480u, 77561u, 4294967295u), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false), 0u, false), 304f, vec4<i32>(-1i, -37935i, -5626i, 51416i), 435f)), Struct_5(vec3<u32>(0u, 4294967295u, 0u), Struct_2(Struct_1(false, vec4<bool>(false, true, false, true), 24658u, true), -652f, vec4<i32>(-33834i, -17605i, -25i, -14331i), -306f)), Struct_5(vec3<u32>(5748u, 12511u, 66354u), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false), 58532u, false), -1168f, vec4<i32>(67727i, -11709i, 0i, 21138i), 244f)), Struct_5(vec3<u32>(1u, 1u, 0u), Struct_2(Struct_1(false, vec4<bool>(false, false, false, true), 41477u, true), 968f, vec4<i32>(-1i, 1i, 15090i, i32(-2147483648)), -982f)), Struct_5(vec3<u32>(1u, 1u, 3975u), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), 43834u, false), 1000f, vec4<i32>(65440i, -45355i, -3369i, -35388i), -1000f)));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(true, vec4<bool>(true, true, false, false), 4294967295u, true), -1081f, vec4<i32>(-51225i, -1i, -1i, 12127i), 1942f), Struct_2(Struct_1(true, vec4<bool>(false, false, true, false), 108790u, false), 1097f, vec4<i32>(10453i, 9535i, 25553i, -7050i), 1084f), Struct_2(Struct_1(true, vec4<bool>(false, true, true, false), 1u, true), -624f, vec4<i32>(-5271i, 0i, 12985i, 2147483647i), -2420f), Struct_2(Struct_1(false, vec4<bool>(false, false, false, false), 177740u, true), 1518f, vec4<i32>(-18626i, 0i, 0i, -1i), 391f), Struct_2(Struct_1(true, vec4<bool>(true, true, true, false), 57676u, false), -1298f, vec4<i32>(-58831i, 29993i, 2147483647i, -70120i), 1674f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_3 {
    return Struct_3(true);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> i32 {
    global1 = array<Struct_5, 6>();
    var var_0 = !arg_3;
    global1 = array<Struct_5, 6>();
    let var_1 = Struct_4(false, -435f, firstLeadingBit(vec2<u32>(4294967295u, ~51126u)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(firstTrailingBit(84144u) >> (global0[_wgslsmith_index_u32(26334u, 5u)] % 32u)), var_1.c.x | 48137u), 5u)];
    return _wgslsmith_clamp_i32(-(59640i << (u_input.e % 32u)), _wgslsmith_div_i32(_wgslsmith_mult_i32(49461i, _wgslsmith_dot_vec2_i32(vec2<i32>(21041i, var_2.c.x), vec2<i32>(arg_1.x, -2147483647i))), _wgslsmith_sub_i32(arg_1.x, -var_2.c.x)), countOneBits(~(-13070i ^ u_input.d.x))) & var_2.c.x;
}

fn func_1() -> u32 {
    global1 = array<Struct_5, 6>();
    var var_0 = func_2();
    let var_1 = !(!(!vec3<bool>(true, var_0.a, u_input.e > u_input.c)));
    var var_2 = Struct_3(any(!var_1.yz));
    let var_3 = func_3(!var_1.zy, _wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.a, ~(-2147483647i), u_input.b, u_input.b)), _wgslsmith_f_op_f32(ceil(-330f)), any(vec4<bool>(var_2.a, true, !var_0.a, var_2.a)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 6>();
    var var_0 = -11176i;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1());
}

