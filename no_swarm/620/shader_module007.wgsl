struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_1(vec4<i32>(31837i, 2147483647i, -19777i, 2147483647i), vec3<f32>(-2023f, -879f, -209f))), Struct_4(Struct_1(vec4<i32>(2147483647i, -23761i, -13512i, i32(-2147483648)), vec3<f32>(287f, 383f, -2293f))));

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(0i, 1i, -2644i, 1i), vec4<i32>(10421i, -15174i, 11330i, -28725i), vec4<i32>(-57223i, -18400i, 8221i, -32365i), vec4<i32>(-5508i, 1i, 33202i, -11707i), vec4<i32>(14019i, -1235i, 15268i, 34306i), vec4<i32>(35692i, 18082i, -65931i, i32(-2147483648)), vec4<i32>(22098i, 0i, i32(-2147483648), -45761i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -20450i), vec4<i32>(-8381i, 0i, -64190i, -38892i), vec4<i32>(2147483647i, 1i, -32886i, -43354i), vec4<i32>(-48832i, 2147483647i, 40895i, 4691i), vec4<i32>(-32436i, 2147483647i, 31845i, 2147483647i), vec4<i32>(5157i, -1i, 0i, 0i), vec4<i32>(-21049i, 0i, -5648i, i32(-2147483648)), vec4<i32>(0i, 4759i, 14633i, 2147483647i), vec4<i32>(-52523i, -9591i, 2147483647i, -19525i), vec4<i32>(i32(-2147483648), 0i, -1i, i32(-2147483648)), vec4<i32>(-51493i, -20748i, 0i, 2147483647i), vec4<i32>(-38137i, -26837i, -11095i, -52005i), vec4<i32>(2147483647i, -1i, -1i, 1i), vec4<i32>(20183i, -4892i, -4976i, i32(-2147483648)), vec4<i32>(2147483647i, -2450i, 0i, 1i));

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1000f, -222f, -411f), vec3<f32>(-940f, 393f, 205f), vec3<f32>(-628f, 922f, 454f), vec3<f32>(-308f, -1863f, -2541f), vec3<f32>(386f, 1887f, -799f), vec3<f32>(421f, -328f, 484f), vec3<f32>(253f, 1053f, -1522f), vec3<f32>(438f, 1395f, -301f), vec3<f32>(973f, 399f, -1000f), vec3<f32>(586f, -1179f, -805f), vec3<f32>(-227f, 265f, 1000f), vec3<f32>(-1000f, 412f, -1701f), vec3<f32>(-310f, -1182f, -1473f), vec3<f32>(2342f, 1514f, -2089f), vec3<f32>(-485f, -1993f, -407f), vec3<f32>(-1000f, -531f, -1083f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    global1 = array<vec4<i32>, 22>();
    global2 = array<vec3<f32>, 16>();
    global1 = array<vec4<i32>, 22>();
    global2 = array<vec3<f32>, 16>();
    global1 = array<vec4<i32>, 22>();
    return ~vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(51613i, -23804i, 1i), -vec3<i32>(-42795i, 34811i, 0i)), select(~max(14099i, 13360i), 1i, true), -63806i, ~abs(~19922i));
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    global0 = array<Struct_4, 2>();
    var var_0 = _wgslsmith_dot_vec2_i32(~reverseBits(firstLeadingBit(countOneBits(vec2<i32>(15356i, 8447i)))), ~(~select(~vec2<i32>(-10527i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 50453i), vec2<i32>(1i, 42810i)), vec2<bool>(true, false))));
    return vec4<i32>(-39534i, 2147483647i, 1i, ~firstTrailingBit(~(-4712i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = Struct_2(select(~max(~vec2<u32>(0u, arg_1.c), ~vec2<u32>(24342u, 11528u)), countOneBits(~vec2<u32>(arg_1.c, 1u)), !vec2<bool>(arg_1.a.x, all(arg_1.a.yw))), Struct_1(-func_3(arg_1.a), _wgslsmith_f_op_vec3_f32(select(arg_1.b.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x), vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, 335f), arg_1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, 528f, arg_1.b.b.x)))), arg_1.a.x))), Struct_1(-(arg_1.b.a << (vec4<u32>(1u, 0u, arg_1.c, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-162f, arg_1.b.b.x, arg_1.b.b.x))))), _wgslsmith_f_op_vec3_f32(arg_1.b.b + _wgslsmith_f_op_vec3_f32(min(arg_1.b.b, vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x)))), arg_1.a.yxx))), arg_1.b.a.x, arg_1.b.b.xz);
    var var_1 = _wgslsmith_mult_vec4_i32(firstLeadingBit(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.b.a, vec4<i32>(-2147483647i, -1i, -20347i, arg_0.x)), vec4<i32>(arg_1.b.a.x, 35471i, 26277i, 7818i))), max(var_0.c.a, vec4<i32>(-var_0.d, arg_1.b.a.x, ~0i, _wgslsmith_sub_i32(var_0.c.a.x, 2147483647i) & _wgslsmith_mult_i32(0i, -2147483647i))));
    var var_2 = arg_1.d;
    global1 = array<vec4<i32>, 22>();
    var_1 = global1[_wgslsmith_index_u32(18849u, 22u)];
    return abs(~abs(~countOneBits(vec4<u32>(0u, arg_1.c, var_0.a.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(0i);
    let var_1 = _wgslsmith_add_u32(~u_input.a, 4294967295u);
    let var_2 = -(func_1(reverseBits(~vec3<u32>(var_1, u_input.b, u_input.b))) << (firstTrailingBit(select(vec4<u32>(20142u, var_1, var_1, 0u), func_2(vec3<i32>(-2147483647i, 0i, -21679i), Struct_3(vec4<bool>(true, false, true, false), Struct_1(vec4<i32>(-30806i, -23324i, 2147483647i, 8236i), vec3<f32>(343f, 2385f, -763f)), 92687u, false)), true)) % vec4<u32>(32u)));
    var_0 = 11445i;
    var var_3 = ~reverseBits(~(~vec3<u32>(u_input.b, u_input.a, 4294967295u)));
    global1 = array<vec4<i32>, 22>();
    var_0 = 0i;
    var var_4 = vec2<bool>(true, true);
    var var_5 = Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(var_3.x, 22u)], _wgslsmith_mod_vec4_i32(var_2, global1[_wgslsmith_index_u32(4727u, 22u)])), ~select(vec4<i32>(var_2.x, var_2.x, var_2.x, 109359i), vec4<i32>(19609i, 1i, 22115i, 0i), vec4<bool>(false, var_4.x, var_4.x, var_4.x)), func_1(vec3<u32>(var_1, 0u, var_3.x)) ^ vec4<i32>(-25227i, 0i, var_2.x, 27911i)), var_2), global2[_wgslsmith_index_u32(u_input.b, 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(abs(~0u), 16u)] + vec3<f32>(_wgslsmith_f_op_f32(var_5.b.x + var_5.b.x), 615f, _wgslsmith_f_op_f32(879f * 2428f))))), firstTrailingBit(var_3.x) & func_2(-vec3<i32>(8832i, var_2.x, 24084i), Struct_3(select(vec4<bool>(true, var_4.x, var_4.x, true), vec4<bool>(var_4.x, true, true, var_4.x), vec4<bool>(var_4.x, false, true, var_4.x)), Struct_1(vec4<i32>(var_2.x, var_2.x, var_5.a.x, 2147483647i), global2[_wgslsmith_index_u32(var_3.x, 16u)]), firstTrailingBit(u_input.a), any(vec3<bool>(true, var_4.x, true)))).x, var_3.xy, firstTrailingBit(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.x, var_5.a.x), _wgslsmith_dot_vec3_i32(var_2.yyy, var_5.a.zwz))));
}

