struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(vec3<u32>(27528u, 9755u, 4294967295u), vec3<f32>(230f, 902f, -929f), 40376u), -164f, vec4<i32>(1i, 1i, -40551i, -41603i), vec2<f32>(-296f, -1422f), false), Struct_4(Struct_3(vec3<u32>(0u, 59284u, 0u), vec3<f32>(2258f, 1114f, -272f), 0u), -303f, vec4<i32>(-31471i, i32(-2147483648), 1i, 19883i), vec2<f32>(-130f, -1244f), false), Struct_4(Struct_3(vec3<u32>(4294967295u, 31692u, 28964u), vec3<f32>(-1248f, 905f, 1669f), 1u), 2349f, vec4<i32>(-45265i, i32(-2147483648), 2147483647i, 2147483647i), vec2<f32>(2233f, 1359f), true), Struct_4(Struct_3(vec3<u32>(21180u, 1u, 4294967295u), vec3<f32>(-1892f, 1434f, 870f), 7777u), -1000f, vec4<i32>(-8523i, -1i, -1i, -7493i), vec2<f32>(1000f, 456f), true), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<f32>(-1419f, -695f, 157f), 1u), -653f, vec4<i32>(-1i, -1i, -54213i, i32(-2147483648)), vec2<f32>(-250f, -530f), true), Struct_4(Struct_3(vec3<u32>(0u, 1191u, 4294967295u), vec3<f32>(-1162f, 1223f, 217f), 346u), -1000f, vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648)), vec2<f32>(133f, -919f), true), Struct_4(Struct_3(vec3<u32>(0u, 1u, 25629u), vec3<f32>(1644f, -1288f, 1128f), 81893u), 370f, vec4<i32>(0i, -1i, -1i, -26209i), vec2<f32>(-1000f, 2437f), true), Struct_4(Struct_3(vec3<u32>(30438u, 23934u, 1u), vec3<f32>(-1042f, -1000f, -1162f), 48090u), 1568f, vec4<i32>(2147483647i, i32(-2147483648), -54863i, 0i), vec2<f32>(264f, 356f), true), Struct_4(Struct_3(vec3<u32>(4294967295u, 60896u, 0u), vec3<f32>(-1289f, 155f, 500f), 63972u), -971f, vec4<i32>(17768i, 48498i, 0i, -15414i), vec2<f32>(-590f, -750f), false), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 63231u), vec3<f32>(1432f, -853f, 1000f), 4294967295u), 617f, vec4<i32>(-10186i, -30600i, 44051i, 1i), vec2<f32>(-2229f, -372f), true), Struct_4(Struct_3(vec3<u32>(1u, 1u, 1u), vec3<f32>(1104f, -1000f, -1000f), 130434u), 1000f, vec4<i32>(-19415i, 0i, 1i, 0i), vec2<f32>(154f, 108f), true), Struct_4(Struct_3(vec3<u32>(0u, 1u, 1u), vec3<f32>(1000f, -796f, 560f), 44929u), 733f, vec4<i32>(1i, i32(-2147483648), -2341i, -30963i), vec2<f32>(-310f, 682f), true), Struct_4(Struct_3(vec3<u32>(0u, 4294967295u, 25925u), vec3<f32>(1163f, 827f, 383f), 4294967295u), 218f, vec4<i32>(1i, -1i, -1i, 0i), vec2<f32>(326f, 279f), true), Struct_4(Struct_3(vec3<u32>(0u, 10615u, 53088u), vec3<f32>(-1907f, -1000f, -490f), 19842u), 447f, vec4<i32>(20812i, i32(-2147483648), 1i, 1i), vec2<f32>(-124f, 199f), false), Struct_4(Struct_3(vec3<u32>(0u, 1u, 38234u), vec3<f32>(348f, -2576f, -348f), 0u), -1207f, vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i), vec2<f32>(259f, 746f), false), Struct_4(Struct_3(vec3<u32>(1u, 0u, 4294967295u), vec3<f32>(2823f, 426f, 143f), 42331u), -788f, vec4<i32>(27583i, 2147483647i, 2147483647i, -1i), vec2<f32>(1576f, -861f), false), Struct_4(Struct_3(vec3<u32>(4294967295u, 79384u, 19458u), vec3<f32>(2863f, -1410f, 701f), 76988u), -1000f, vec4<i32>(77638i, 1i, 11811i, 0i), vec2<f32>(-680f, -2020f), true), Struct_4(Struct_3(vec3<u32>(0u, 47764u, 20931u), vec3<f32>(-1134f, -301f, 566f), 1u), 1712f, vec4<i32>(-6097i, -1i, -49571i, 12831i), vec2<f32>(1000f, 1000f), false), Struct_4(Struct_3(vec3<u32>(14820u, 0u, 4294967295u), vec3<f32>(-622f, -1000f, 2125f), 1u), -212f, vec4<i32>(-1i, -36629i, -3872i, 0i), vec2<f32>(-204f, -220f), false), Struct_4(Struct_3(vec3<u32>(0u, 4294967295u, 1u), vec3<f32>(208f, 446f, -1000f), 10406u), -1280f, vec4<i32>(12111i, 26602i, 42515i, 1i), vec2<f32>(1334f, 171f), true), Struct_4(Struct_3(vec3<u32>(63046u, 0u, 0u), vec3<f32>(114f, -883f, 1000f), 89349u), 1000f, vec4<i32>(-2361i, 19385i, 36122i, 36147i), vec2<f32>(-1445f, 608f), true), Struct_4(Struct_3(vec3<u32>(1u, 4294967295u, 41357u), vec3<f32>(229f, -450f, 496f), 1u), -1000f, vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<f32>(1000f, -520f), false), Struct_4(Struct_3(vec3<u32>(1u, 1u, 70691u), vec3<f32>(590f, -1465f, -1220f), 754u), -921f, vec4<i32>(66344i, i32(-2147483648), i32(-2147483648), 40023i), vec2<f32>(-1389f, -879f), false), Struct_4(Struct_3(vec3<u32>(6739u, 1u, 20916u), vec3<f32>(184f, -2689f, 719f), 18422u), -639f, vec4<i32>(2147483647i, 38975i, -21i, 20268i), vec2<f32>(-299f, -451f), true), Struct_4(Struct_3(vec3<u32>(1u, 26437u, 6964u), vec3<f32>(-1000f, -106f, 494f), 1u), 1000f, vec4<i32>(8784i, 29145i, 0i, 0i), vec2<f32>(488f, 106f), true), Struct_4(Struct_3(vec3<u32>(0u, 53362u, 51343u), vec3<f32>(293f, -104f, -1971f), 12534u), -918f, vec4<i32>(48229i, 2147483647i, -35164i, 1i), vec2<f32>(189f, -704f), true), Struct_4(Struct_3(vec3<u32>(0u, 1u, 22206u), vec3<f32>(367f, 271f, -612f), 85251u), -764f, vec4<i32>(10097i, 17329i, 17321i, -1i), vec2<f32>(679f, -514f), false), Struct_4(Struct_3(vec3<u32>(4294967295u, 1u, 48184u), vec3<f32>(-365f, -896f, 1280f), 65397u), -265f, vec4<i32>(2147483647i, -3432i, -50908i, -1i), vec2<f32>(-1357f, 1000f), true));

var<private> global3: array<u32, 6>;

var<private> global4: f32 = 1173f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = vec2<i32>(arg_0, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(23994i, -2147483647i), _wgslsmith_sub_i32(arg_0, -2147483647i)), i32(-1i) * -1i), _wgslsmith_sub_i32(-1i, ~(~u_input.b))));
    var var_1 = all(select(select(select(select(vec2<bool>(false, arg_1), global1.yy, global1.yx), global1.yz, select(global1.yz, vec2<bool>(arg_1, true), global1.yz)), global1.xx, arg_1), !global1.xy, !vec2<bool>(any(vec4<bool>(arg_1, false, true, false)), global1.x)));
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 28u)];
    let var_3 = Struct_4(var_2.a, var_2.b, vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(var_2.c, var_2.c ^ vec4<i32>(var_2.c.x, var_0.x, var_2.c.x, arg_0)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d - _wgslsmith_f_op_vec2_f32(max(var_2.a.b.zx, var_2.a.b.yx))) + vec2<f32>(_wgslsmith_f_op_f32(var_2.b - 1117f), _wgslsmith_f_op_f32(f32(-1f) * -753f))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-695f, var_2.d.x)), _wgslsmith_f_op_f32(min(256f, -217f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) * _wgslsmith_f_op_f32(-var_2.d.x))))), !any(vec2<bool>(false, arg_0 == 64590i)));
    var_1 = false;
    return ~(~(~(~0u)));
}

fn func_2() -> Struct_5 {
    let var_0 = vec3<bool>(global1.x == global1.x, false, all(vec3<bool>(true, global1.x, !(!global1.x))));
    let var_1 = vec4<u32>(select(firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 133641u), vec2<u32>(4294967295u, u_input.c.x) >> (u_input.c.zx % vec2<u32>(32u))), 6u)]), 4294967295u, any(select(select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, false, var_0.x, false), vec4<bool>(global1.x, true, true, true)), vec4<bool>(var_0.x, var_0.x, true, true), !vec4<bool>(global1.x, false, global1.x, global1.x)))), 1u, global3[_wgslsmith_index_u32(~u_input.c.x, 6u)], _wgslsmith_mod_u32(50603u, ~_wgslsmith_mult_u32(u_input.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 6u)]) & _wgslsmith_mod_u32(func_3(u_input.b, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 44809u), vec3<u32>(4136u, 41632u, global3[_wgslsmith_index_u32(4294967295u, 6u)])))));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(380f + 1224f), -531f);
    let var_2 = _wgslsmith_mod_u32(var_1.x << (_wgslsmith_sub_u32(var_1.x, var_1.x) % 32u), min(_wgslsmith_div_u32(1u, abs(4294967295u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~23471u), 6u)], 6u)])) & 55496u;
    global3 = array<u32, 6>();
    return Struct_5(32168u);
}

fn func_1() -> Struct_2 {
    var var_0 = global1.x;
    let var_1 = func_2();
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(var_1.a, 6u)], u_input.c.x), ~_wgslsmith_clamp_vec2_u32(u_input.c.zz, vec2<u32>(4294967295u, 63980u), u_input.c.yx)), u_input.c.zz), vec2<u32>(select(u_input.c.x, ~55143u, true) & global3[_wgslsmith_index_u32(45764u, 6u)], ~global3[_wgslsmith_index_u32(4294967295u, 6u)]));
    let var_3 = _wgslsmith_mult_vec2_u32(var_2, ~((min(vec2<u32>(var_1.a, global3[_wgslsmith_index_u32(1u, 6u)]), vec2<u32>(var_1.a, global3[_wgslsmith_index_u32(0u, 6u)])) & (vec2<u32>(u_input.c.x, var_2.x) & vec2<u32>(1u, global3[_wgslsmith_index_u32(29804u, 6u)]))) | abs(~vec2<u32>(var_1.a, u_input.c.x))));
    let var_4 = Struct_4(Struct_3(vec3<u32>(~abs(1u), ~(~0u), 4294967295u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(322f, -1234f, 1000f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1686f, -809f, 1000f))))))), ~0u), 388f, abs(-(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, 61125i, -41147i), vec4<i32>(u_input.b, 0i, 1i, 17414i)) | (vec4<i32>(u_input.a, u_input.b, u_input.a, -15482i) ^ vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i)))), vec2<f32>(-1549f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(967f, -1000f)))))), global1.x);
    return Struct_2(!global1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.x, var_4.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1196f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.b)) - -607f))), -var_4.c.x != 2147483647i, func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(1037f));
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -677f);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0));
    let var_1 = func_1();
    var var_2 = vec3<u32>(~(~global3[_wgslsmith_index_u32(abs(1u), 6u)]), ~(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)]) | (44324u >> (1u % 32u))), 3023u) >> (u_input.c % vec3<u32>(32u));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.a >> (global3[_wgslsmith_index_u32(var_1.d, 6u)] % 32u), -u_input.b, u_input.a)), firstLeadingBit(-(~vec2<i32>(u_input.a, -35606i))), -(reverseBits(vec2<i32>(-10330i, u_input.b)) | select(vec2<i32>(u_input.b, 14203i), vec2<i32>(-2147483647i, -2147483647i), false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-605f, _wgslsmith_div_f32(-472f, var_0)))))), -754f);
}

