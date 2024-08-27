struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4294967295u, 6318u), 272f, true);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(21822u, 1u, 0u), vec2<u32>(32474u, 32091u), 204f, vec3<u32>(13089u, 4294967295u, 1u)), Struct_1(vec3<u32>(10959u, 4294967295u, 0u), vec2<u32>(69696u, 21441u), -857f, vec3<u32>(50449u, 16834u, 1u)), Struct_1(vec3<u32>(39722u, 36111u, 22608u), vec2<u32>(66315u, 4294967295u), 1000f, vec3<u32>(0u, 17824u, 13623u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec2<u32>(0u, 0u), 581f, vec3<u32>(37168u, 1u, 63543u)), Struct_1(vec3<u32>(63404u, 0u, 4294967295u), vec2<u32>(3967u, 4294967295u), -428f, vec3<u32>(14849u, 1716u, 0u)), Struct_1(vec3<u32>(113152u, 4294967295u, 10940u), vec2<u32>(11918u, 1u), 1076f, vec3<u32>(38372u, 1u, 43574u)), Struct_1(vec3<u32>(3621u, 11128u, 16703u), vec2<u32>(0u, 4294967295u), -250f, vec3<u32>(40856u, 90597u, 37137u)), Struct_1(vec3<u32>(0u, 63319u, 1u), vec2<u32>(1u, 1u), 1076f, vec3<u32>(0u, 44248u, 28642u)), Struct_1(vec3<u32>(4294967295u, 13148u, 34871u), vec2<u32>(50936u, 4294967295u), -1268f, vec3<u32>(1u, 43992u, 119485u)), Struct_1(vec3<u32>(0u, 1u, 37849u), vec2<u32>(36205u, 35325u), -1514f, vec3<u32>(36452u, 15110u, 27046u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<u32>(0u, 4294967295u), -121f, vec3<u32>(58431u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(69800u, 4294967295u, 37275u), vec2<u32>(72235u, 50437u), 1031f, vec3<u32>(0u, 113829u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 1u), vec2<u32>(4294967295u, 0u), -1032f, vec3<u32>(43192u, 1u, 0u)), Struct_1(vec3<u32>(0u, 0u, 1u), vec2<u32>(4294967295u, 0u), 328f, vec3<u32>(1u, 1u, 1u)), Struct_1(vec3<u32>(0u, 20738u, 54661u), vec2<u32>(60508u, 1u), -538f, vec3<u32>(1u, 1u, 40157u)), Struct_1(vec3<u32>(4294967295u, 51194u, 0u), vec2<u32>(0u, 4294967295u), 2151f, vec3<u32>(49822u, 4294967295u, 21962u)), Struct_1(vec3<u32>(4294967295u, 115111u, 4294967295u), vec2<u32>(29415u, 0u), -187f, vec3<u32>(0u, 1808u, 22345u)), Struct_1(vec3<u32>(4294967295u, 21710u, 44050u), vec2<u32>(34866u, 4294967295u), -490f, vec3<u32>(9723u, 42610u, 36173u)), Struct_1(vec3<u32>(0u, 33321u, 55735u), vec2<u32>(54379u, 1u), -1140f, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 1u), vec2<u32>(0u, 21565u), -566f, vec3<u32>(41119u, 85788u, 21290u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<u32>(35302u, 4294967295u), -588f, vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(17869u, 5892u, 16582u), vec2<u32>(0u, 24609u), 317f, vec3<u32>(4294967295u, 41050u, 1u)), Struct_1(vec3<u32>(1u, 62721u, 0u), vec2<u32>(4294967295u, 2085u), 244f, vec3<u32>(4294967295u, 1081u, 1u)), Struct_1(vec3<u32>(1u, 1u, 73861u), vec2<u32>(1u, 104604u), 1197f, vec3<u32>(4294967295u, 29571u, 0u)), Struct_1(vec3<u32>(0u, 54902u, 4294967295u), vec2<u32>(4294967295u, 1u), 2493f, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(35716u, 28908u, 39345u), vec2<u32>(1u, 0u), -115f, vec3<u32>(42023u, 67495u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 896u, 44040u), vec2<u32>(76036u, 1u), 384f, vec3<u32>(32177u, 1u, 1u)), Struct_1(vec3<u32>(6243u, 4294967295u, 1u), vec2<u32>(34063u, 74951u), -189f, vec3<u32>(44198u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec2<u32>(0u, 0u), 203f, vec3<u32>(80856u, 9557u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 42291u), 648f, vec3<u32>(0u, 4294967295u, 58537u)));

var<private> global3: u32;

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<u32>(48471u, 80991u), -102f, true), Struct_2(vec2<u32>(58834u, 1u), 996f, true), Struct_2(vec2<u32>(71508u, 49301u), -180f, false), Struct_2(vec2<u32>(4294967295u, 4294967295u), -873f, false), Struct_2(vec2<u32>(15985u, 0u), -718f, false), Struct_2(vec2<u32>(4950u, 4294967295u), -1684f, true), Struct_2(vec2<u32>(0u, 20633u), -817f, true), Struct_2(vec2<u32>(11385u, 0u), -212f, true), Struct_2(vec2<u32>(23316u, 0u), -414f, true), Struct_2(vec2<u32>(1u, 38482u), 1000f, false), Struct_2(vec2<u32>(4294967295u, 53535u), -495f, true), Struct_2(vec2<u32>(4294967295u, 0u), -568f, false), Struct_2(vec2<u32>(0u, 4294967295u), -719f, true), Struct_2(vec2<u32>(0u, 0u), -1888f, true), Struct_2(vec2<u32>(55016u, 4294967295u), -882f, false), Struct_2(vec2<u32>(1u, 28088u), -726f, false), Struct_2(vec2<u32>(1u, 4294967295u), -1000f, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = global1.c;
    var var_1 = vec4<u32>(12076u, reverseBits(reverseBits(322u)), ~49626u, global1.a.x);
    global0 = !select(vec2<bool>(false, !any(vec4<bool>(global0.x, global1.c, global1.c, false))), vec2<bool>(!all(vec2<bool>(global0.x, true)), all(select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(true, global1.c, false), vec3<bool>(false, global1.c, global0.x)))), all(vec4<bool>(false, true, false, true)));
    global4 = array<Struct_2, 17>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b)), global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1370f)));
    return global1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> bool {
    global1 = Struct_2(vec2<u32>(func_3(), ~(func_3() | _wgslsmith_sub_u32(arg_3.x, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-341f - global1.b))), arg_0.c), arg_1.x);
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(63519i, u_input.b.x & 16417i), -1i, _wgslsmith_mod_i32(-81606i, u_input.b.x), u_input.e.x | u_input.e.x), vec4<i32>(-1i) * -abs(vec4<i32>(u_input.b.x, u_input.e.x, u_input.e.x, -1i))), countOneBits(vec4<i32>(u_input.b.x, ~u_input.e.x, u_input.e.x, _wgslsmith_mult_i32(34068i, u_input.e.x)) | ~_wgslsmith_sub_vec4_i32(vec4<i32>(-33401i, u_input.b.x, -2147483647i, u_input.e.x), vec4<i32>(-33146i, u_input.e.x, u_input.b.x, 3904i))));
    var var_1 = countOneBits(u_input.b.x);
    let var_2 = Struct_2(vec2<u32>(countOneBits(77656u), global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -816f)), (true == global0.x) || (u_input.b.x < -2147483647i))) * -770f), all(select(vec4<bool>(arg_1.x && global0.x, true, any(arg_1), true), select(select(vec4<bool>(true, global1.c, true, true), vec4<bool>(true, false, false, arg_1.x), true), vec4<bool>(true, true, false, global0.x), all(vec3<bool>(arg_1.x, global0.x, true))), all(vec3<bool>(true, false, false)))));
    let var_3 = select(select(!select(vec4<bool>(arg_1.x, false, arg_1.x, global0.x), vec4<bool>(false, false, global1.c, false), true), vec4<bool>(true, arg_1.x, var_2.c, global0.x), select(any(arg_1) || true, ~global1.a.x < 36922u, true)), select(!(!vec4<bool>(true, false, true, global1.c)), select(vec4<bool>(true, select(global0.x, true, var_2.c), true, all(vec4<bool>(global0.x, false, false, global0.x))), !select(vec4<bool>(false, true, global1.c, false), vec4<bool>(global0.x, false, true, false), vec4<bool>(var_2.c, global0.x, false, global1.c)), select(!vec4<bool>(true, true, false, global1.c), !vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(true, arg_1.x, var_2.c, global1.c), vec4<bool>(true, global1.c, false, false), vec4<bool>(true, global1.c, true, false)))), arg_1.x), global1.c | !global0.x);
    return true;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global2 = array<Struct_1, 30>();
    global1 = Struct_2(~_wgslsmith_div_vec2_u32(abs(u_input.c.xz) | firstLeadingBit(vec2<u32>(global1.a.x, 10323u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), u_input.a)), -166f, false);
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    let var_0 = select(vec2<bool>(arg_0, global0.x), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec3<bool>(arg_0, global1.c, arg_0))), vec2<bool>(false, any(vec4<bool>(global1.c, false, true, false))), func_2(global2[_wgslsmith_index_u32(4294967295u >> (global1.a.x % 32u), 30u)], select(vec3<bool>(global1.c, true, global1.c), vec3<bool>(global0.x, false, true), true), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, 32104u, global1.a.x), u_input.c.wzx), ~vec3<u32>(global1.a.x, 26230u, 1u))), vec2<bool>(true, func_2(global2[_wgslsmith_index_u32(69540u, 30u)], vec3<bool>(global0.x, true, false), select(vec3<u32>(4294967295u, 1u, global1.a.x), vec3<u32>(81273u, u_input.a.x, 0u), vec3<bool>(false, true, false)), u_input.c.yyw)), global1.c == (!arg_0 & true)), all(!(!vec4<bool>(global0.x, global1.c, false, global1.c))));
    return vec4<bool>(false, global0.x && all(!(!vec4<bool>(false, global1.c, false, false))), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    var var_0 = any(!func_1(all(select(vec2<bool>(false, false), vec2<bool>(global1.c, false), true))));
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.a.x, ~0u, u_input.a.x), abs(~0u)), _wgslsmith_add_u32(1u, 0u), 1u), 17u)];
    var var_1 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(abs(1737i)), firstTrailingBit(-1i) >> (22818u % 32u)), u_input.e), max(-6884i << (0u % 32u), select(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x), u_input.b.x), countOneBits(u_input.b.x), !any(vec4<bool>(global1.c, false, true, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2580f), -832f), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(461f, -1050f, false)) - _wgslsmith_f_op_f32(-global1.b))))));
    var var_3 = (u_input.b.yy ^ firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b.x), -u_input.b.xz, ~u_input.b.yz))) ^ vec2<i32>(1982i, firstTrailingBit(u_input.e.x));
    var var_4 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, global1.a.x), 23462u, firstLeadingBit(u_input.c.x)), ~firstLeadingBit(u_input.c.zwx)), ~global1.a, -1507f, firstTrailingBit(~_wgslsmith_sub_vec3_u32(select(vec3<u32>(4294967295u, 11572u, 4294967295u), u_input.c.yyw, vec3<bool>(global1.c, true, false)), u_input.c.ywz | u_input.c.ywx)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_u32(firstLeadingBit(u_input.d) | 0u, var_4.d.x)), ~(~0u));
}

