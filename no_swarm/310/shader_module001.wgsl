struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: array<i32, 14> = array<i32, 14>(0i, i32(-2147483648), 5172i, 2147483647i, 2147483647i, 0i, -51165i, 1i, -6650i, -1i, -1i, 1i, 1i, i32(-2147483648));

var<private> global3: vec3<f32> = vec3<f32>(-297f, -1401f, 151f);

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), Struct_1(456f, 1i, true, 23935u)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), Struct_1(-638f, -269i, false, 49053u)), Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), Struct_1(186f, 15134i, false, 101961u)), Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), Struct_1(267f, 2147483647i, true, 91020u)), Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), Struct_1(808f, 0i, false, 56534u)), Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), Struct_1(472f, 30384i, true, 1u)), Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), Struct_1(-873f, 0i, true, 36964u)), Struct_2(vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), Struct_1(-1727f, -24060i, true, 4294967295u)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, true, false), Struct_1(2213f, -2748i, true, 13594u)), Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), Struct_1(1123f, -1253i, false, 4294967295u)), Struct_2(vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), Struct_1(173f, 6078i, true, 1u)), Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), Struct_1(-110f, -25484i, false, 4294967295u)), Struct_2(vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), Struct_1(1904f, 1i, false, 4294967295u)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), Struct_1(1000f, 16622i, true, 58242u)), Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), Struct_1(694f, 21041i, true, 0u)), Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(true, true, true), Struct_1(-1080f, 2147483647i, true, 80402u)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), Struct_1(1105f, 1i, false, 1u)), Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, true, false), Struct_1(1374f, -22506i, true, 4294967295u)), Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, false, true), Struct_1(-1886f, 15330i, false, 1u)), Struct_2(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), Struct_1(359f, 2147483647i, true, 4294967295u)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), Struct_1(-600f, 9106i, true, 4294967295u)), Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), Struct_1(2759f, 9604i, true, 28837u)), Struct_2(vec4<bool>(false, true, false, true), vec3<bool>(false, false, false), Struct_1(625f, 16196i, true, 0u)), Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), Struct_1(-132f, i32(-2147483648), false, 4294967295u)), Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), Struct_1(-827f, -33667i, true, 0u)), Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), Struct_1(1159f, 7936i, false, 15440u)), Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), Struct_1(482f, 20340i, true, 4294967295u)), Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), Struct_1(-1008f, -1i, false, 1u)), Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), Struct_1(-426f, -1i, true, 6934u)), Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), Struct_1(-1644f, -47093i, true, 29906u)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(398f * global3.x)) * global3.x)), countOneBits(~1i), true, ~0u);
    let var_1 = _wgslsmith_mod_i32(-arg_0.x, ~var_0.b);
    global4 = array<Struct_2, 30>();
    let var_2 = ~(u_input.a.x | var_0.d);
    global4 = array<Struct_2, 30>();
    return Struct_1(242f, u_input.c, false, 0u);
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = func_2(-(_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(40933u, 14u)], u_input.c, global2[_wgslsmith_index_u32(arg_0.x, 14u)], u_input.c) ^ vec4<i32>(u_input.c, u_input.c, 16146i, global2[_wgslsmith_index_u32(arg_0.x, 14u)]), vec4<i32>(48834i, global2[_wgslsmith_index_u32(127499u, 14u)], global2[_wgslsmith_index_u32(u_input.e, 14u)], -1i) ^ vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(25648u, 14u)], u_input.c, -2147483647i)) & firstTrailingBit(vec4<i32>(-23769i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 14u)], u_input.c) ^ vec4<i32>(13159i, -2147483647i, u_input.c, u_input.c))));
    let var_1 = var_0;
    global2 = array<i32, 14>();
    let var_2 = var_1.b;
    global4 = array<Struct_2, 30>();
    return StorageBuffer(13393u, global2[_wgslsmith_index_u32(105690u, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 27>();
    let var_0 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(max(~vec2<u32>(61115u, u_input.a.x), u_input.a.xw) << (~u_input.b.xy % vec2<u32>(32u))));
}

