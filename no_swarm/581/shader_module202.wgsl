struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(58572u, 1u, 21984u);

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<u32>(0u, 4294967295u, 0u, 13596u), vec4<f32>(441f, -189f, 1000f, -208f), vec2<i32>(2147483647i, 45225i), vec2<i32>(1i, 2147483647i), vec4<u32>(37986u, 4294967295u, 1u, 0u)), Struct_3(vec4<u32>(3725u, 27359u, 35825u, 38644u), vec4<f32>(138f, 359f, 983f, -756f), vec2<i32>(24290i, i32(-2147483648)), vec2<i32>(-28690i, -27335i), vec4<u32>(4294967295u, 6456u, 4294967295u, 0u)), Struct_3(vec4<u32>(1u, 4294967295u, 52702u, 0u), vec4<f32>(256f, -290f, -848f, 1000f), vec2<i32>(20318i, -10952i), vec2<i32>(57832i, 1i), vec4<u32>(4294967295u, 1u, 35443u, 30189u)), Struct_3(vec4<u32>(1u, 0u, 4294967295u, 53066u), vec4<f32>(612f, -597f, -590f, 1424f), vec2<i32>(14979i, 22882i), vec2<i32>(10074i, -18901i), vec4<u32>(19035u, 73065u, 56112u, 4294967295u)), Struct_3(vec4<u32>(28873u, 34370u, 35450u, 1u), vec4<f32>(1513f, 1297f, 482f, 122f), vec2<i32>(-15910i, i32(-2147483648)), vec2<i32>(-64369i, 0i), vec4<u32>(13112u, 1u, 4294967295u, 46137u)), Struct_3(vec4<u32>(57723u, 55031u, 37548u, 62730u), vec4<f32>(-317f, 663f, 1601f, 125f), vec2<i32>(51338i, 16551i), vec2<i32>(1i, i32(-2147483648)), vec4<u32>(1u, 43166u, 4294967295u, 16580u)), Struct_3(vec4<u32>(1u, 33782u, 1u, 26648u), vec4<f32>(-256f, 612f, -651f, 1000f), vec2<i32>(30325i, i32(-2147483648)), vec2<i32>(1i, -19671i), vec4<u32>(72046u, 36483u, 26851u, 1860u)), Struct_3(vec4<u32>(44976u, 101427u, 4294967295u, 23347u), vec4<f32>(304f, -114f, 382f, -2303f), vec2<i32>(54186i, 2147483647i), vec2<i32>(11114i, i32(-2147483648)), vec4<u32>(46430u, 6658u, 0u, 9822u)), Struct_3(vec4<u32>(0u, 57728u, 0u, 47275u), vec4<f32>(-135f, -144f, -173f, -253f), vec2<i32>(18729i, 2147483647i), vec2<i32>(70360i, 0i), vec4<u32>(0u, 112802u, 4294967295u, 4294967295u)), Struct_3(vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<f32>(-404f, -571f, -1226f, -520f), vec2<i32>(-1i, -5700i), vec2<i32>(2147483647i, 12496i), vec4<u32>(0u, 15850u, 78032u, 0u)), Struct_3(vec4<u32>(4294967295u, 67654u, 12219u, 0u), vec4<f32>(-565f, -1000f, -1659f, 370f), vec2<i32>(-18693i, -27179i), vec2<i32>(66392i, 36097i), vec4<u32>(3593u, 4294967295u, 12579u, 35067u)), Struct_3(vec4<u32>(2734u, 25815u, 0u, 6377u), vec4<f32>(-1634f, 224f, 717f, -783f), vec2<i32>(4082i, 16226i), vec2<i32>(33556i, 1i), vec4<u32>(0u, 15253u, 38629u, 1u)), Struct_3(vec4<u32>(6115u, 4294967295u, 0u, 0u), vec4<f32>(827f, -121f, -1181f, 174f), vec2<i32>(10362i, 2147483647i), vec2<i32>(18040i, i32(-2147483648)), vec4<u32>(7513u, 4294967295u, 90204u, 0u)), Struct_3(vec4<u32>(110615u, 38863u, 1u, 0u), vec4<f32>(-1602f, 204f, -1175f, -1000f), vec2<i32>(-34330i, -50475i), vec2<i32>(2147483647i, 48956i), vec4<u32>(59128u, 0u, 0u, 1u)), Struct_3(vec4<u32>(1u, 1u, 0u, 0u), vec4<f32>(-2089f, -148f, 538f, 321f), vec2<i32>(32741i, -48070i), vec2<i32>(-1i, 0i), vec4<u32>(41720u, 0u, 1u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 0u, 91589u, 4294967295u), vec4<f32>(601f, 1388f, -865f, 330f), vec2<i32>(-54413i, 1i), vec2<i32>(49492i, -21786i), vec4<u32>(4294967295u, 1u, 0u, 1u)));

var<private> global4: array<vec4<f32>, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = vec2<i32>(u_input.c, u_input.a);
    let var_1 = Struct_2(Struct_1(select(global1.a, vec2<bool>(true, true), global2.a.a)));
    global1 = var_1.a;
    var var_2 = global3[_wgslsmith_index_u32(0u, 16u)];
    let var_3 = arg_1.b.x;
    return !select(vec2<bool>(!global2.a.a.x, true), vec2<bool>(global2.a.a.x, select(global2.a.a.x, select(true, global2.a.a.x, var_1.a.a.x), true)), var_1.a.a.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = select(global1.a, func_3(vec3<bool>(all(vec3<bool>(global1.a.x, true, false)), true, global2.a.a.x), Struct_3(u_input.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(global0.x, 26u)] * vec4<f32>(1285f, 155f, -472f, -133f)))), arg_0.xz, vec2<i32>(2147483647i, _wgslsmith_sub_i32(u_input.e, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, global0.x, global0.x)))), func_3(select(select(!vec3<bool>(true, false, global2.a.a.x), !vec3<bool>(true, false, global1.a.x), select(vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(false, false, global1.a.x), true)), select(select(vec3<bool>(true, global1.a.x, false), vec3<bool>(global1.a.x, true, global2.a.a.x), false), vec3<bool>(false, global1.a.x, true), false), vec3<bool>(false, true, global1.a.x)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(u_input.b.wz), global0.xx), 16u)]));
    var var_1 = 27541u;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d | 1u, u_input.d)), firstTrailingBit(global0.yx)), 16u)];
    var var_3 = global2.a;
    let var_4 = Struct_3(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0.x, 4294967295u, 1u)), countOneBits(vec3<u32>(u_input.b.x, 10704u, 55802u)))), ~4294967295u, _wgslsmith_mod_u32(1u, 0u & _wgslsmith_mult_u32(global0.x, 58086u)), ~1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, -1362f, -900f, arg_1.x) * var_2.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(global0.x, 26u)]) + _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(1u, 26u)] - var_2.b)))), vec2<i32>(1i, 0i), vec2<i32>(-1i) * -reverseBits(vec2<i32>(arg_0.x, arg_0.x)), u_input.b);
    return _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~(~var_4.a.x & var_4.e.x), var_4.e.x, ~var_2.e.x), firstTrailingBit(abs(vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), ~119355u, _wgslsmith_sub_u32(0u, u_input.d), var_4.e.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global4 = array<vec4<f32>, 26>();
    let var_0 = vec3<i32>(-1i, _wgslsmith_mod_i32(0i, min(1i, -1i)), arg_0) << (u_input.b.yzx % vec3<u32>(32u));
    let var_1 = _wgslsmith_mult_vec4_u32(~select(~vec4<u32>(1u, global0.x, u_input.d, global0.x) >> (~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 0u) % vec4<u32>(32u)), func_2(vec4<i32>(var_0.x, var_0.x, 0i, u_input.c), vec2<f32>(-1000f, 485f)), !(!vec4<bool>(false, false, global2.a.a.x, arg_1.a.a.x))), vec4<u32>(1u, ~1u, u_input.b.x, countOneBits(0u)));
    let var_2 = arg_1;
    let var_3 = -abs(firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -12594i, arg_0, 1i), vec4<i32>(50486i, u_input.a, -2147483647i, arg_0))));
    return Struct_1(!arg_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~select(~vec3<u32>(u_input.d, u_input.b.x, u_input.b.x), vec3<u32>(global0.x, u_input.b.x, u_input.d), global1.a.x)));
    global4 = array<vec4<f32>, 26>();
    global2 = Struct_2(func_1(_wgslsmith_div_i32(u_input.c, _wgslsmith_div_i32(-25334i >> (global0.x % 32u), 0i)), Struct_2(Struct_1(vec2<bool>(false, global1.a.x))), global2.a));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-309f, 666f, 544f), vec3<f32>(750f, -702f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1706f, 631f) - vec3<f32>(-486f, 676f, -993f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, 468f, 111f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -244f))), !select(select(vec3<bool>(global2.a.a.x, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, global2.a.a.x)), select(vec3<bool>(true, global1.a.x, false), vec3<bool>(true, global2.a.a.x, global1.a.x), false), vec3<bool>(global1.a.x, global1.a.x, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(900f, 1525f, -973f) + vec3<f32>(1561f, 667f, 1691f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-629f, -1000f, -1000f))), select(vec3<bool>(false, true, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, true, global1.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(591f, 765f)) + _wgslsmith_f_op_f32(2290f * -104f)), _wgslsmith_f_op_f32(floor(1607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)))));
    global2 = Struct_2(global2.a);
    var var_1 = global0.x;
    global3 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(-43002i, -35072i, u_input.c, u_input.c), vec4<i32>(2147483647i, 15452i, u_input.a, 668i))), -firstTrailingBit(vec4<i32>(u_input.c, 6798i, u_input.e, u_input.a) >> (u_input.b % vec4<u32>(32u))), !all(select(vec3<bool>(global1.a.x, global1.a.x, false), vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, true, global2.a.a.x)))));
}

