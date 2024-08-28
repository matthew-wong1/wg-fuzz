struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(180f, -336f, -106f, 520f), vec4<f32>(-119f, -138f, -1000f, 1996f), vec4<f32>(-178f, 1886f, -284f, -153f), vec4<f32>(-977f, 1085f, -525f, -517f), vec4<f32>(-513f, 538f, 1000f, -964f), vec4<f32>(1403f, 2019f, -786f, -836f), vec4<f32>(-1866f, 2832f, 934f, 1117f), vec4<f32>(878f, 1000f, 167f, -2122f), vec4<f32>(-874f, -431f, 1127f, -506f), vec4<f32>(1000f, -1768f, 659f, -131f), vec4<f32>(1480f, -1914f, -1000f, -567f), vec4<f32>(1151f, -970f, 632f, 249f), vec4<f32>(694f, 269f, 315f, -738f), vec4<f32>(-195f, -136f, 1425f, -370f), vec4<f32>(567f, 2140f, 1768f, 673f), vec4<f32>(1923f, -179f, 696f, 794f), vec4<f32>(801f, 1197f, 1178f, -1266f), vec4<f32>(-564f, 216f, -1905f, 1924f), vec4<f32>(1000f, -1991f, 542f, 804f), vec4<f32>(232f, 166f, 683f, -1229f), vec4<f32>(-363f, 2096f, 516f, -1368f), vec4<f32>(-444f, 1000f, -215f, 201f), vec4<f32>(989f, 2052f, -550f, 1711f), vec4<f32>(-203f, 1654f, -1005f, -1602f), vec4<f32>(743f, 233f, 1000f, 662f), vec4<f32>(-559f, -562f, 450f, 1000f), vec4<f32>(752f, 1140f, -1000f, -494f), vec4<f32>(149f, 154f, -1610f, -418f), vec4<f32>(-845f, 1000f, -148f, 742f), vec4<f32>(1852f, 1564f, 673f, -1100f), vec4<f32>(405f, 1359f, 135f, 2615f));

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: i32;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(false, false, vec3<bool>(true, false, true), 10779u), Struct_1(true, true, vec3<bool>(false, false, true), 0u), Struct_1(false, true, vec3<bool>(true, false, true), 23620u), 35826i, true), Struct_2(Struct_1(false, true, vec3<bool>(false, true, true), 65633u), Struct_1(false, true, vec3<bool>(true, true, false), 4294967295u), Struct_1(true, true, vec3<bool>(false, true, true), 1u), i32(-2147483648), true), Struct_2(Struct_1(true, true, vec3<bool>(false, true, false), 0u), Struct_1(true, true, vec3<bool>(false, true, true), 4294967295u), Struct_1(true, true, vec3<bool>(true, true, false), 1u), -19609i, false), Struct_2(Struct_1(true, true, vec3<bool>(true, false, true), 4294967295u), Struct_1(false, false, vec3<bool>(false, false, false), 12048u), Struct_1(false, false, vec3<bool>(false, true, false), 20414u), -9893i, false), Struct_2(Struct_1(false, true, vec3<bool>(false, false, true), 24855u), Struct_1(true, false, vec3<bool>(true, true, true), 1037u), Struct_1(true, false, vec3<bool>(true, false, true), 1u), 11170i, false), Struct_2(Struct_1(false, false, vec3<bool>(true, false, true), 11289u), Struct_1(false, true, vec3<bool>(false, false, false), 1u), Struct_1(false, false, vec3<bool>(false, false, true), 1u), -10498i, true), Struct_2(Struct_1(true, true, vec3<bool>(true, false, false), 0u), Struct_1(true, true, vec3<bool>(false, true, true), 27698u), Struct_1(false, false, vec3<bool>(true, true, false), 1u), 1i, false), Struct_2(Struct_1(false, false, vec3<bool>(false, true, true), 0u), Struct_1(true, true, vec3<bool>(true, false, false), 0u), Struct_1(false, false, vec3<bool>(true, true, true), 0u), -1230i, true), Struct_2(Struct_1(true, true, vec3<bool>(true, true, true), 1469u), Struct_1(true, false, vec3<bool>(false, false, false), 0u), Struct_1(false, false, vec3<bool>(true, false, true), 15503u), 21094i, true), Struct_2(Struct_1(false, false, vec3<bool>(false, true, true), 40951u), Struct_1(false, true, vec3<bool>(false, false, true), 2833u), Struct_1(true, false, vec3<bool>(true, true, false), 7832u), -74482i, false), Struct_2(Struct_1(true, true, vec3<bool>(false, true, true), 27582u), Struct_1(true, true, vec3<bool>(true, false, false), 76704u), Struct_1(true, true, vec3<bool>(false, false, true), 17228u), 2147483647i, false));

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    global3 = array<Struct_2, 11>();
    let var_0 = abs(~(~50269u));
    global0 = array<vec4<f32>, 31>();
    var var_1 = _wgslsmith_div_vec2_u32(~(~abs(vec2<u32>(18141u, 1u))), vec2<u32>(~u_input.a.x, 4294967295u));
    let var_2 = arg_3;
    return vec3<bool>(arg_3.e, true, false);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<vec4<f32>, 31>();
    let var_0 = _wgslsmith_dot_vec2_u32(~(select(u_input.c.yz >> (u_input.c.xy % vec2<u32>(32u)), ~u_input.c.xy, true) >> (~(u_input.a.zz ^ vec2<u32>(u_input.c.x, u_input.a.x)) % vec2<u32>(32u))), vec2<u32>(u_input.c.x, 4294967295u));
    return Struct_2(Struct_1(all(func_3(_wgslsmith_sub_i32(4235i, -3383i), ~(-1i), var_0 | u_input.c.x, Struct_2(Struct_1(true, false, vec3<bool>(false, false, false), u_input.c.x), Struct_1(false, false, vec3<bool>(false, true, true), 70029u), Struct_1(true, true, vec3<bool>(true, true, false), 4294967295u), u_input.d.x, true))), all(vec4<bool>(true, true, true, true)), select(vec3<bool>(false, -2147483647i < u_input.d.x, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), true), _wgslsmith_div_u32(67276u & var_0, _wgslsmith_div_u32(u_input.c.x, ~u_input.a.x))), Struct_1(select(true, (u_input.c.x | var_0) <= u_input.a.x, _wgslsmith_f_op_f32(ceil(-1000f)) < _wgslsmith_f_op_f32(trunc(arg_0))), true, vec3<bool>(all(func_3(2147483647i, u_input.b, 26892u, global3[_wgslsmith_index_u32(29102u, 11u)]).zz), (i32(-1i) * -38614i) == u_input.d.x, 17970i >= u_input.d.x), 1u), Struct_1(all(vec2<bool>(true, true)), true, !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(~u_input.c.x, 4294967295u))), select(firstLeadingBit(u_input.d.x ^ u_input.b), _wgslsmith_mult_i32(min(-419i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(18526i, u_input.d.x), vec2<i32>(1i, -44383i))), -171f != _wgslsmith_f_op_f32(floor(-352f))), true);
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_2(-740f);
    let var_1 = u_input.a;
    var var_2 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(-13465i, _wgslsmith_dot_vec4_i32(-vec4<i32>(25490i, -2147483647i, -2147483647i, 40110i), vec4<i32>(3315i, -11344i, -19885i, -37608i) << (vec4<u32>(1u, u_input.c.x, var_0.c.d, 2365u) % vec4<u32>(32u)))), _wgslsmith_mult_i32(-u_input.d.x, -1i >> (_wgslsmith_clamp_u32(var_1.x, 0u, 133399u) % 32u))));
    let var_3 = var_0.d;
    var_2 = abs(var_0.d);
    return -_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(~4294967295u >> (reverseBits(~var_0.b.d) % 32u), 14u)], abs(-(~vec3<i32>(u_input.b, u_input.b, -1170i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(true);
    let var_0 = func_2(-2037f);
    let var_1 = countOneBits(-(~firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_0.d), u_input.d.zx, u_input.d.xx))));
    let var_2 = true;
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a ^ vec4<u32>(13665u, u_input.a.x, var_0.c.d, 42689u), vec4<u32>(abs(u_input.a.x), ~u_input.a.x, 1u, _wgslsmith_sub_u32(65973u, 1u))), vec4<u32>(~(var_0.b.d ^ u_input.c.x), var_0.c.d, 1u, abs(_wgslsmith_mod_u32(var_0.c.d, 0u)))), vec4<u32>(firstLeadingBit(4294967295u), u_input.c.x, ~reverseBits(u_input.c.x) ^ ~0u, u_input.a.x));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(f32(-1f) * -396f), -376f);
    let var_5 = var_0;
    let var_6 = !vec4<bool>(var_5.e, func_2(_wgslsmith_f_op_f32(min(var_4.x, _wgslsmith_f_op_f32(min(451f, 855f))))).c.a, var_2, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(5678u, var_3.x), vec2<f32>(_wgslsmith_f_op_f32(select(1000f, -819f, true)), var_4.x));
}

