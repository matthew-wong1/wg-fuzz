struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: vec3<bool>;

var<private> global2: vec3<u32> = vec3<u32>(12037u, 54534u, 0u);

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(25354u, 1u, 6942u, 0u), vec4<f32>(-1786f, 259f, 609f, -768f), 1391f, vec2<bool>(false, true), 46240u), Struct_1(vec4<u32>(31230u, 1u, 1u, 44537u), vec4<f32>(-269f, 577f, 512f, -804f), 714f, vec2<bool>(false, false), 55161u), Struct_1(vec4<u32>(3926u, 38910u, 43220u, 0u), vec4<f32>(2285f, 1140f, 556f, 794f), -897f, vec2<bool>(true, true), 4294967295u), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<f32>(717f, 101f, -188f, -1211f), -584f, vec2<bool>(false, false), 1u), Struct_1(vec4<u32>(1u, 48088u, 1u, 39946u), vec4<f32>(-666f, 577f, -199f, 366f), -804f, vec2<bool>(true, false), 4294967295u), Struct_1(vec4<u32>(1u, 51816u, 11111u, 30333u), vec4<f32>(-849f, 1007f, 850f, -376f), 392f, vec2<bool>(false, true), 4294967295u), Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec4<f32>(-1533f, -1166f, -215f, -885f), 1450f, vec2<bool>(false, false), 1u), Struct_1(vec4<u32>(25698u, 4294967295u, 4294967295u, 28354u), vec4<f32>(-209f, 1564f, -648f, 797f), -1168f, vec2<bool>(true, false), 18071u), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<f32>(2077f, 1631f, 110f, 1064f), 863f, vec2<bool>(true, true), 4294967295u), Struct_1(vec4<u32>(1u, 51875u, 18472u, 63520u), vec4<f32>(2472f, 873f, -1208f, -335f), -100f, vec2<bool>(false, true), 0u), Struct_1(vec4<u32>(19803u, 17405u, 94600u, 4294967295u), vec4<f32>(319f, 843f, -655f, 201f), 2081f, vec2<bool>(false, true), 44766u), Struct_1(vec4<u32>(28101u, 67636u, 79365u, 4294967295u), vec4<f32>(-370f, 455f, 501f, 131f), -475f, vec2<bool>(true, false), 4294967295u), Struct_1(vec4<u32>(73344u, 4294967295u, 0u, 1u), vec4<f32>(1639f, -366f, -317f, -1486f), 544f, vec2<bool>(false, false), 75571u), Struct_1(vec4<u32>(1u, 70230u, 25210u, 4294967295u), vec4<f32>(253f, -1153f, -300f, -1298f), -279f, vec2<bool>(false, true), 28915u), Struct_1(vec4<u32>(60839u, 0u, 4294967295u, 24281u), vec4<f32>(-2107f, -439f, 574f, 756f), -285f, vec2<bool>(true, true), 44049u), Struct_1(vec4<u32>(8324u, 4294967295u, 0u, 4294967295u), vec4<f32>(-395f, 1483f, 777f, -1128f), 1330f, vec2<bool>(true, true), 1u), Struct_1(vec4<u32>(24502u, 20871u, 4294967295u, 1u), vec4<f32>(941f, -692f, -827f, -168f), -834f, vec2<bool>(false, false), 1u), Struct_1(vec4<u32>(70175u, 11423u, 15760u, 4294967295u), vec4<f32>(-112f, 409f, -189f, 131f), -1503f, vec2<bool>(false, true), 46290u), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<f32>(1233f, 1114f, -2274f, -1456f), -439f, vec2<bool>(true, true), 4058u), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 20098u), vec4<f32>(-942f, -1176f, 125f, -244f), -941f, vec2<bool>(false, false), 47598u), Struct_1(vec4<u32>(77202u, 10487u, 0u, 4294967295u), vec4<f32>(-1044f, 153f, -330f, 1549f), -1146f, vec2<bool>(false, true), 4294967295u), Struct_1(vec4<u32>(14009u, 0u, 5385u, 24763u), vec4<f32>(1000f, 679f, -1908f, 684f), -1501f, vec2<bool>(false, false), 0u));

var<private> global4: array<vec2<i32>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec3<u32> {
    global0 = array<Struct_1, 27>();
    var var_0 = ~firstTrailingBit(u_input.a);
    global3 = array<Struct_1, 22>();
    let var_1 = global1.xx;
    global2 = vec3<u32>(~(~firstLeadingBit(var_0.x) >> (firstTrailingBit(4294967295u >> (0u % 32u)) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_0.x), ~11570u << (~global2.x % 32u), reverseBits(4294967295u)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, global2.x)) >> ((vec3<u32>(24270u, u_input.a.x, 1u) ^ vec3<u32>(global2.x, global2.x, var_0.x)) % vec3<u32>(32u))), u_input.a.x);
    return ~vec3<u32>(var_0.x, ~1u, ~var_0.x);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-22245i, 19618i), vec2<i32>(-41630i, 2147483647i)) ^ 0i, -2147483647i, -39615i), vec3<i32>(-1i, 2147483647i, 2147483647i) << (~func_1(0i, vec4<f32>(-1759f, 666f, 1000f, arg_0)) % vec3<u32>(32u))));
    global4 = array<vec2<i32>, 20>();
    let var_1 = arg_0;
    var var_2 = global1.x;
    var var_3 = global0[_wgslsmith_index_u32(abs(u_input.a.x), 27u)];
    return (all(!select(vec4<bool>(true, true, global1.x, true), vec4<bool>(var_3.d.x, global1.x, false, true), vec4<bool>(var_3.d.x, global1.x, global1.x, false))) & true) & true;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = -20546i;
    var var_1 = vec2<u32>(arg_1.x, 27647u);
    let var_2 = all(!vec3<bool>(func_3(_wgslsmith_f_op_f32(min(2177f, -853f))), true, global1.x == any(vec4<bool>(false, true, global1.x, global1.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-466f, 348f), _wgslsmith_f_op_f32(ceil(516f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-683f + -1006f))) * _wgslsmith_f_op_f32(max(-1543f, _wgslsmith_f_op_f32(-712f * 670f))))));
    var var_4 = _wgslsmith_add_i32(i32(-1i) * -15744i, 1i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-778f, _wgslsmith_f_op_f32(1989f - 407f)), vec2<f32>(-312f, -515f))));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    var var_0 = vec4<i32>(-_wgslsmith_dot_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(0i, 2147483647i, 53757i, 13647i))), vec4<i32>(~(-5266i), ~(-2147483647i), 1i, countOneBits(10471i))), _wgslsmith_sub_i32(~(-16936i), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, 54116i), vec4<i32>(14400i, -15325i, -2147483647i, -1i)), _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(global2.x, 20u)], global4[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(-19120i, 55765i, 57884i) & countOneBits(-2147483647i)) ^ ~1i, i32(-1i) * -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(3762i, 1i, 0i)), -vec3<i32>(21128i, -1i, -35652i)));
    let var_1 = !(global1.x | (75772u > u_input.a.x));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(var_0.xyw, vec3<i32>(var_0.x, var_0.x, 2147483647i)), vec3<i32>(_wgslsmith_add_i32(var_0.x, 77849i), 31683i, _wgslsmith_mult_i32(1i, -18108i))), 1i, -2147483647i));
    var var_3 = -_wgslsmith_add_vec3_i32(vec3<i32>(1971i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_2, -1i, 24540i), vec4<i32>(var_2, var_2, var_0.x, 2147483647i)), select(33348i, var_0.x, global1.x)), ~(-var_0.zxw)) >> (vec3<u32>(select(global2.x, select(~20748u, reverseBits(1133u), !var_1), true), ~1u, global2.x) % vec3<u32>(32u));
    global1 = select(select(vec3<bool>(global1.x, global1.x, (1062f > arg_0.x) && !var_1), !vec3<bool>(global1.x | global1.x, var_1, false), !vec3<bool>(!global1.x, all(vec3<bool>(true, global1.x, true)), false)), select(vec3<bool>(!any(vec4<bool>(var_1, true, false, global1.x)), any(global1.yz), true), !select(vec3<bool>(var_1, var_1, global1.x), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), !vec3<bool>(global1.x, global1.x, var_1)), vec3<bool>(false, true, var_1)), all(select(select(vec4<bool>(var_1, global1.x, true, true), !vec4<bool>(false, var_1, var_1, global1.x), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(var_1, global1.x, var_1, var_1), false)), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, var_1, false, true), false), select(vec4<bool>(true, true, false, var_1), !vec4<bool>(true, global1.x, false, false), global1.x))));
    return all(!select(select(select(vec4<bool>(var_1, global1.x, false, var_1), vec4<bool>(false, var_1, true, var_1), vec4<bool>(true, false, false, global1.x)), !vec4<bool>(false, global1.x, global1.x, global1.x), all(vec3<bool>(true, global1.x, false))), select(!vec4<bool>(global1.x, var_1, true, false), !vec4<bool>(var_1, false, var_1, var_1), global1.x | global1.x), !select(vec4<bool>(var_1, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, true, true), vec4<bool>(true, var_1, global1.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 22>();
    var var_0 = countOneBits(vec4<u32>(30745u, ~u_input.a.x, global2.x, 23078u)) >> (vec4<u32>(~_wgslsmith_div_u32(~global2.x, select(4294967295u, 35052u, global1.x)), ~(~4294967295u), ~u_input.a.x, global2.x) % vec4<u32>(32u));
    var var_1 = 0i;
    let var_2 = global1.yy;
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, 1011f) * vec2<f32>(-1242f, -2152f)))) + _wgslsmith_f_op_vec2_f32(func_2(i32(-1i) * -2147483647i, func_1(2147483647i, vec4<f32>(-616f, 1208f, 1081f, -640f))))), vec2<f32>(-296f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-450f)), 1005f, true))), all(!vec4<bool>(global1.x, false, false, var_2.x)))));
    let var_4 = global0[_wgslsmith_index_u32(0u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 21165u) << (var_0.zzx % vec3<u32>(32u))), var_4.a.yyw);
}

