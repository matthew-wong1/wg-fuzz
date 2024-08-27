struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<i32, 6> = array<i32, 6>(-73432i, i32(-2147483648), i32(-2147483648), 4321i, 8179i, -11694i);

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec3<bool>(true, false, false), vec2<i32>(25177i, 16203i), Struct_3(vec3<bool>(false, true, false), 61897u, vec3<u32>(1u, 78855u, 88818u)), Struct_2(0i, false, -331f, Struct_1(22762u, vec4<i32>(2147483647i, -38357i, i32(-2147483648), 29497i), vec2<u32>(178u, 0u))), Struct_3(vec3<bool>(true, false, false), 23480u, vec3<u32>(27142u, 1u, 101764u))), Struct_4(vec3<bool>(true, true, false), vec2<i32>(21658i, -13250i), Struct_3(vec3<bool>(false, true, true), 0u, vec3<u32>(1u, 0u, 1u)), Struct_2(2147483647i, true, 414f, Struct_1(0u, vec4<i32>(151i, i32(-2147483648), 56815i, 2559i), vec2<u32>(28115u, 3127u))), Struct_3(vec3<bool>(true, false, true), 58881u, vec3<u32>(22933u, 0u, 4294967295u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), 1i), Struct_3(vec3<bool>(true, true, false), 4294967295u, vec3<u32>(11438u, 58663u, 0u)), Struct_2(-37978i, false, -1128f, Struct_1(1u, vec4<i32>(2147483647i, -7777i, 0i, 17303i), vec2<u32>(1u, 49541u))), Struct_3(vec3<bool>(true, true, false), 33384u, vec3<u32>(83769u, 4294967295u, 1u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(2147483647i, 32419i), Struct_3(vec3<bool>(false, true, false), 30709u, vec3<u32>(1623u, 45381u, 65603u)), Struct_2(1i, false, 311f, Struct_1(41568u, vec4<i32>(14615i, 1i, 13765i, 1i), vec2<u32>(6868u, 4858u))), Struct_3(vec3<bool>(true, true, false), 23470u, vec3<u32>(50867u, 4294967295u, 4294967295u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(0i, -1i), Struct_3(vec3<bool>(true, false, false), 4294967295u, vec3<u32>(1u, 16616u, 18261u)), Struct_2(-1i, true, 361f, Struct_1(48677u, vec4<i32>(2147483647i, 1i, -15219i, 1i), vec2<u32>(0u, 44620u))), Struct_3(vec3<bool>(true, false, false), 4294967295u, vec3<u32>(39229u, 29314u, 4294967295u))), Struct_4(vec3<bool>(true, true, false), vec2<i32>(14234i, 12197i), Struct_3(vec3<bool>(false, true, true), 37922u, vec3<u32>(20349u, 29046u, 1u)), Struct_2(i32(-2147483648), false, -641f, Struct_1(4294967295u, vec4<i32>(-9350i, 8431i, i32(-2147483648), 1i), vec2<u32>(0u, 19995u))), Struct_3(vec3<bool>(true, true, true), 12822u, vec3<u32>(6324u, 4294967295u, 31218u))), Struct_4(vec3<bool>(true, true, true), vec2<i32>(-2505i, 2147483647i), Struct_3(vec3<bool>(false, false, false), 8101u, vec3<u32>(42316u, 20460u, 1u)), Struct_2(2147483647i, false, -576f, Struct_1(16561u, vec4<i32>(16845i, 30084i, 6742i, 58086i), vec2<u32>(23250u, 0u))), Struct_3(vec3<bool>(true, false, false), 78600u, vec3<u32>(67181u, 1u, 7143u))), Struct_4(vec3<bool>(false, true, true), vec2<i32>(0i, -36806i), Struct_3(vec3<bool>(true, true, false), 4294967295u, vec3<u32>(21317u, 0u, 0u)), Struct_2(1i, false, 482f, Struct_1(4294967295u, vec4<i32>(24521i, -1i, 6265i, -51397i), vec2<u32>(24080u, 12263u))), Struct_3(vec3<bool>(true, false, true), 4294967295u, vec3<u32>(26831u, 4294967295u, 4294967295u))), Struct_4(vec3<bool>(true, true, true), vec2<i32>(23228i, -20148i), Struct_3(vec3<bool>(true, false, true), 1u, vec3<u32>(0u, 112431u, 21837u)), Struct_2(0i, true, 2089f, Struct_1(61906u, vec4<i32>(19485i, 15468i, 1i, -1i), vec2<u32>(1u, 1u))), Struct_3(vec3<bool>(true, false, false), 73098u, vec3<u32>(0u, 40641u, 44196u))), Struct_4(vec3<bool>(false, false, false), vec2<i32>(26019i, 1i), Struct_3(vec3<bool>(false, true, false), 4294967295u, vec3<u32>(0u, 4294967295u, 55461u)), Struct_2(-8050i, true, 311f, Struct_1(0u, vec4<i32>(1i, -30304i, 1i, i32(-2147483648)), vec2<u32>(27576u, 65823u))), Struct_3(vec3<bool>(false, false, true), 0u, vec3<u32>(1u, 1u, 0u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(2147483647i, -43618i), Struct_3(vec3<bool>(true, false, false), 77976u, vec3<u32>(747u, 0u, 1u)), Struct_2(0i, false, -495f, Struct_1(4294967295u, vec4<i32>(-3247i, 11138i, 9552i, 41632i), vec2<u32>(51544u, 8920u))), Struct_3(vec3<bool>(true, false, false), 4294967295u, vec3<u32>(4294967295u, 1698u, 4294967295u))), Struct_4(vec3<bool>(true, false, true), vec2<i32>(8180i, 2147483647i), Struct_3(vec3<bool>(false, true, false), 38144u, vec3<u32>(1u, 85873u, 57940u)), Struct_2(i32(-2147483648), true, 311f, Struct_1(0u, vec4<i32>(i32(-2147483648), 1i, -47028i, 0i), vec2<u32>(1u, 37510u))), Struct_3(vec3<bool>(false, true, true), 4294967295u, vec3<u32>(29770u, 44169u, 1u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(2147483647i, 47228i), Struct_3(vec3<bool>(false, false, false), 4908u, vec3<u32>(40332u, 4294967295u, 7002u)), Struct_2(1i, true, -312f, Struct_1(89775u, vec4<i32>(-1i, 36657i, 25330i, 2147483647i), vec2<u32>(7130u, 4294967295u))), Struct_3(vec3<bool>(false, false, true), 4294967295u, vec3<u32>(0u, 4294967295u, 116112u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(2147483647i, -5369i), Struct_3(vec3<bool>(true, false, false), 61758u, vec3<u32>(13086u, 27190u, 23986u)), Struct_2(-1i, false, 571f, Struct_1(4294967295u, vec4<i32>(-10435i, -39745i, 2147483647i, 5686i), vec2<u32>(50039u, 1842u))), Struct_3(vec3<bool>(true, false, true), 56010u, vec3<u32>(1u, 21969u, 0u))), Struct_4(vec3<bool>(true, false, true), vec2<i32>(-1i, 2147483647i), Struct_3(vec3<bool>(true, true, true), 1u, vec3<u32>(38828u, 2575u, 1u)), Struct_2(0i, true, 1044f, Struct_1(0u, vec4<i32>(29177i, -8294i, 2147483647i, -1i), vec2<u32>(34718u, 2025u))), Struct_3(vec3<bool>(true, true, false), 4294967295u, vec3<u32>(91028u, 22165u, 51659u))), Struct_4(vec3<bool>(false, false, false), vec2<i32>(1i, 1i), Struct_3(vec3<bool>(true, true, true), 77957u, vec3<u32>(39511u, 1u, 22548u)), Struct_2(-1i, false, -1000f, Struct_1(53891u, vec4<i32>(0i, -1i, 0i, 36523i), vec2<u32>(1u, 7439u))), Struct_3(vec3<bool>(true, false, false), 4294967295u, vec3<u32>(78708u, 7933u, 0u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(-3095i, 2147483647i), Struct_3(vec3<bool>(false, false, false), 17873u, vec3<u32>(4294967295u, 4294967295u, 15586u)), Struct_2(-1i, false, -1869f, Struct_1(29309u, vec4<i32>(-34111i, 21051i, -52049i, -24277i), vec2<u32>(0u, 9798u))), Struct_3(vec3<bool>(false, false, false), 8188u, vec3<u32>(14742u, 4294967295u, 4294967295u))), Struct_4(vec3<bool>(true, true, true), vec2<i32>(1i, 1i), Struct_3(vec3<bool>(false, true, false), 0u, vec3<u32>(4294967295u, 2421u, 11885u)), Struct_2(36848i, true, -373f, Struct_1(0u, vec4<i32>(0i, -1i, 7314i, 2890i), vec2<u32>(1u, 1u))), Struct_3(vec3<bool>(true, false, true), 51214u, vec3<u32>(1u, 4294967295u, 13908u))), Struct_4(vec3<bool>(false, false, false), vec2<i32>(-39849i, -1i), Struct_3(vec3<bool>(true, true, false), 0u, vec3<u32>(4294967295u, 0u, 127406u)), Struct_2(-7321i, false, -2688f, Struct_1(1u, vec4<i32>(-32975i, -1i, 58608i, i32(-2147483648)), vec2<u32>(83884u, 5406u))), Struct_3(vec3<bool>(false, false, false), 25238u, vec3<u32>(4294967295u, 56824u, 30629u))), Struct_4(vec3<bool>(false, false, false), vec2<i32>(-48826i, 0i), Struct_3(vec3<bool>(false, true, true), 0u, vec3<u32>(15989u, 0u, 35011u)), Struct_2(-1i, true, -771f, Struct_1(1u, vec4<i32>(0i, -11047i, -1i, -4019i), vec2<u32>(54716u, 0u))), Struct_3(vec3<bool>(true, true, false), 2174u, vec3<u32>(1u, 1u, 1u))), Struct_4(vec3<bool>(true, false, false), vec2<i32>(85197i, -32389i), Struct_3(vec3<bool>(false, false, false), 21249u, vec3<u32>(4294967295u, 862u, 0u)), Struct_2(29294i, false, -110f, Struct_1(33925u, vec4<i32>(0i, 0i, 46095i, 40443i), vec2<u32>(1u, 27271u))), Struct_3(vec3<bool>(true, true, false), 11420u, vec3<u32>(1u, 1u, 1u))), Struct_4(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -28000i), Struct_3(vec3<bool>(true, false, true), 18420u, vec3<u32>(45983u, 2442u, 32889u)), Struct_2(0i, false, -119f, Struct_1(21742u, vec4<i32>(i32(-2147483648), 1i, 13974i, -5382i), vec2<u32>(33016u, 1u))), Struct_3(vec3<bool>(false, false, true), 1u, vec3<u32>(4294967295u, 0u, 57848u))), Struct_4(vec3<bool>(false, true, true), vec2<i32>(-1i, -9487i), Struct_3(vec3<bool>(true, false, true), 1u, vec3<u32>(85968u, 5217u, 0u)), Struct_2(-1i, true, -1003f, Struct_1(6728u, vec4<i32>(54980i, 6319i, 5049i, 0i), vec2<u32>(1u, 4294967295u))), Struct_3(vec3<bool>(true, false, false), 3250u, vec3<u32>(19502u, 4294967295u, 1u))), Struct_4(vec3<bool>(false, true, true), vec2<i32>(19646i, 53768i), Struct_3(vec3<bool>(true, true, false), 0u, vec3<u32>(51936u, 4294967295u, 101377u)), Struct_2(1i, true, 1504f, Struct_1(10258u, vec4<i32>(-5048i, 865i, 3892i, -1i), vec2<u32>(2790u, 13387u))), Struct_3(vec3<bool>(true, false, false), 0u, vec3<u32>(116635u, 4294967295u, 4294967295u))), Struct_4(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 61640i), Struct_3(vec3<bool>(false, true, false), 4294967295u, vec3<u32>(66728u, 0u, 9820u)), Struct_2(-5250i, true, -1047f, Struct_1(0u, vec4<i32>(7759i, 2147483647i, -1i, 2147483647i), vec2<u32>(1u, 28223u))), Struct_3(vec3<bool>(true, true, false), 0u, vec3<u32>(49401u, 72273u, 1u))));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_5(Struct_1(_wgslsmith_add_u32(~(~u_input.a), u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-20691i | global2[_wgslsmith_index_u32(89599u, 6u)], -12283i, global2[_wgslsmith_index_u32(firstTrailingBit(1u), 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)] >> (20573u % 32u)), ~vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(48635u, 6u)], 24807i, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]) ^ vec4<i32>(global2[_wgslsmith_index_u32(1u, 6u)], -1i, global2[_wgslsmith_index_u32(4294967295u, 6u)], 7364i)), _wgslsmith_div_vec2_u32(select(vec2<u32>(0u, u_input.b.x), u_input.b.yy, false), ~(~vec2<u32>(4294967295u, u_input.b.x)))), Struct_4(!vec3<bool>(select(true, true, true), all(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, false, false))), vec2<i32>(-19609i, _wgslsmith_mult_i32(-44629i, _wgslsmith_clamp_i32(-1817i, global2[_wgslsmith_index_u32(u_input.a, 6u)], 24139i))), Struct_3(vec3<bool>(true, all(vec3<bool>(false, true, false)), true), _wgslsmith_add_u32(abs(u_input.b.x), 38630u), ~(u_input.b.yxw << (u_input.b.ywx % vec3<u32>(32u)))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(u_input.a, u_input.a)), 6u)], true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f - -1516f)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13749u, u_input.b.x, u_input.a), u_input.b), ~u_input.b.x), 8u)]), Struct_3(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), abs(1u), max(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]) & global0[_wgslsmith_index_u32(70444u, 13u)])));
    var var_1 = var_0.b.e;
    var var_2 = var_0.b.e;
    var var_3 = min(global0[_wgslsmith_index_u32(var_1.b, 13u)], var_1.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2391f, var_0.b.d.c, 111f), vec3<f32>(123f, 1357f, -401f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.d.c, -1057f, 168f), vec3<f32>(var_0.b.d.c, var_0.b.d.c, -2158f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, 1500f, -1508f))))), !(!select(var_2.a, var_2.a, true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -135f)), _wgslsmith_div_f32(-611f, -766f))));
    return _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(15176u, 6u)], -61239i) << (81305u % 32u);
}

fn func_2() -> Struct_3 {
    let var_0 = select(u_input.b.xw ^ u_input.b.xy, vec2<u32>(u_input.a, ~1u), true);
    let var_1 = vec3<i32>(-global2[_wgslsmith_index_u32(countOneBits(u_input.b.x) << (4294967295u % 32u), 6u)] & ~0i, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_mult_u32(4294967295u, var_0.x), countOneBits(1u)), firstLeadingBit(~24756u)) >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), ~1u) % 32u), 6u)]);
    var var_2 = min(vec4<i32>(~(-2147483647i), global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)), 6u)], -(~abs(2147483647i)), -func_3()), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 35895i, 1i, -21402i) ^ vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], 0i, 2147483647i, 1i), vec4<i32>(var_1.x, 0i, 2147483647i, var_1.x)), 0i, reverseBits(0i), firstLeadingBit(~(-53778i))), -vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], select(var_1.x, var_1.x, false), -18950i, var_1.x)));
    global0 = array<vec3<u32>, 13>();
    let var_3 = Struct_5(Struct_1(min(4294967295u, ~40912u), _wgslsmith_div_vec4_i32(vec4<i32>(max(global2[_wgslsmith_index_u32(20120u, 6u)], var_2.x), _wgslsmith_mult_i32(7935i, var_1.x), var_2.x, -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.yx, var_1.zy), var_2.x, _wgslsmith_mod_i32(-66651i, -26202i), -26835i)), _wgslsmith_clamp_vec2_u32(~u_input.b.yx, ~countOneBits(vec2<u32>(56273u, 67543u)), ~(vec2<u32>(38187u, u_input.b.x) << (vec2<u32>(u_input.a, var_0.x) % vec2<u32>(32u))))), global4[_wgslsmith_index_u32(var_0.x, 25u)]);
    return Struct_3(select(!vec3<bool>(all(vec4<bool>(var_3.b.e.a.x, var_3.b.a.x, var_3.b.a.x, var_3.b.c.a.x)), var_3.b.d.c > -1626f, any(var_3.b.a.xx)), vec3<bool>(var_3.b.a.x, true, _wgslsmith_f_op_f32(max(var_3.b.d.c, var_3.b.d.c)) < -564f), !select(vec3<bool>(true, true, true), vec3<bool>(var_3.b.e.a.x, var_3.b.e.a.x, var_3.b.e.a.x), select(var_3.b.a, var_3.b.c.a, var_3.b.a))), ~(firstLeadingBit(reverseBits(30198u)) & _wgslsmith_sub_u32(u_input.b.x, ~4294967295u)), u_input.b.wwz);
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_2, 11>();
    var var_0 = _wgslsmith_mult_i32(min(~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)] | 0i, global2[_wgslsmith_index_u32(u_input.a, 6u)]), global2[_wgslsmith_index_u32(reverseBits(u_input.a) & u_input.a, 6u)]), -2147483647i);
    return Struct_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), -(select(vec2<i32>(-33037i, global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<i32>(-1i, -21745i) << (u_input.b.ww % vec2<u32>(32u)), select(false, false, false)) & reverseBits(-vec2<i32>(2147483647i, 2147483647i))), func_2(), global1[_wgslsmith_index_u32(u_input.a, 11u)], func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 11>();
    var var_0 = Struct_5(global3[_wgslsmith_index_u32(14734u, 8u)], func_1());
    var var_1 = Struct_3(var_0.b.c.a, (u_input.a << (var_0.a.c.x % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_add_u32(u_input.a, var_0.b.e.c.x), reverseBits(var_0.b.e.b)), firstLeadingBit(~vec3<u32>(4294967295u, 13450u, var_0.b.e.b))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(func_2().c, select(vec3<u32>(1u, u_input.b.x, var_0.b.c.b), vec3<u32>(54199u, var_0.a.a, 0u), !var_0.b.c.a), select(_wgslsmith_mod_vec3_u32(u_input.b.yyy, vec3<u32>(var_0.b.d.d.a, u_input.b.x, 1u)), u_input.b.yzy << (vec3<u32>(220u, var_0.a.a, var_0.b.e.c.x) % vec3<u32>(32u)), var_0.b.b.x >= var_0.a.b.x)), _wgslsmith_sub_vec3_u32(u_input.b.yyw, _wgslsmith_add_vec3_u32(var_0.b.c.c, vec3<u32>(2891u, var_0.a.a, 0u)))));
    global4 = array<Struct_4, 25>();
    var var_2 = Struct_5(func_1().d.d, Struct_4(!(!var_0.b.a), var_0.b.b, Struct_3(vec3<bool>(func_2().a.x, var_0.b.c.a.x, var_0.b.a.x), ~(~0u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 34482u) << (vec3<u32>(u_input.a, 4294967295u, var_1.c.x) % vec3<u32>(32u)), vec3<u32>(63072u, var_0.b.c.c.x, 16523u) ^ var_0.b.c.c)), func_1().d, var_0.b.e));
    var var_3 = _wgslsmith_mult_vec2_i32(~(~vec2<i32>(45834i, var_2.a.b.x)), -vec2<i32>(-var_0.b.d.a & max(var_0.a.b.x, -1i), var_2.b.b.x));
    let var_4 = func_1().d.d;
    global4 = array<Struct_4, 25>();
    let var_5 = ~vec3<u32>(~var_0.b.e.b >> (4294967295u % 32u), ~var_2.a.c.x, countOneBits(~4294967295u)) >> (~global0[_wgslsmith_index_u32(~var_4.c.x, 13u)] % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(firstLeadingBit(min(vec4<i32>(25037i, var_2.b.d.a, global2[_wgslsmith_index_u32(15950u, 6u)], -49131i), var_2.a.b))), var_5.x);
}

