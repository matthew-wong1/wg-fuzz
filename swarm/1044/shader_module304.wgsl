struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<u32>, 31>;

var<private> global4: array<u32, 5>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    return vec3<u32>(4294967295u, _wgslsmith_clamp_u32(reverseBits(firstLeadingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(50174u, 5u)] & global4[_wgslsmith_index_u32(66048u, 5u)], 5u)], 5u)])), 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(181697u, 5u)], 5u)] | global4[_wgslsmith_index_u32(~(1u ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)]), 5u)], 5u)]), 10365u);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> Struct_2 {
    global0 = array<vec4<bool>, 22>();
    let var_0 = select(func_2(max(global2.e.c, -vec4<i32>(-7263i, -21969i, u_input.c.x, -11470i))), firstTrailingBit(~(_wgslsmith_mult_vec3_u32(vec3<u32>(28978u, 56096u, arg_1), vec3<u32>(arg_1, arg_1, arg_1)) & (vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1, 5u)], 5u)], 5662u) & vec3<u32>(3528u, arg_1, 19516u)))), !global2.a.xwz);
    var var_1 = ~_wgslsmith_mod_i32(global2.e.b, -66615i);
    let var_2 = u_input.a;
    global3 = array<vec2<u32>, 31>();
    return Struct_2(!global0[_wgslsmith_index_u32(arg_1, 22u)], select(!(!arg_0.x) | false, global2.b || !select(global2.a.x, arg_0.x, true), global2.e.e.x | select(true || arg_0.x, false, global2.b)), u_input.d << (max(~global4[_wgslsmith_index_u32(4294967295u, 5u)], 0u) % 32u), global2.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~reverseBits(min(vec4<u32>(10049u, global4[_wgslsmith_index_u32(arg_1, 5u)], 1173u, var_0.x), vec4<u32>(22636u, 4294967295u, 94345u, 4294967295u))), ~vec4<u32>(4294967295u, 40311u, _wgslsmith_add_u32(0u, 0u), select(arg_1, var_0.x, arg_0.x))), 8u)]);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits((70406u >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_2(arg_0.e.c).x, 5u)], 5u)] % 32u)) << (_wgslsmith_add_u32(min(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24054u, 5u)], 5u)], 1u), 68331u) % 32u)) ^ 1u, 8u)];
    let var_1 = vec4<bool>(all(var_0.e.xxw), !(global4[_wgslsmith_index_u32(countOneBits(141410u), 5u)] <= ~abs(10429u)), var_0.e.x, false);
    let var_2 = func_1(vec4<bool>(true, true, !(14591u > ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)]), all(func_1(vec4<bool>(arg_2, var_1.x, true, true), abs(global4[_wgslsmith_index_u32(19346u, 5u)]), 1i).e.e)), ~abs(_wgslsmith_div_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14432u, 5u)], 5u)], ~35914u)), firstTrailingBit(firstLeadingBit((arg_1.e.c.x << (1u % 32u)) ^ arg_0.e.b))).e;
    var var_3 = 1i;
    global2 = func_1(!arg_0.e.e, 4294967295u, arg_1.e.c.x);
    return global4[_wgslsmith_index_u32(min(global4[_wgslsmith_index_u32(func_2((firstTrailingBit(var_2.c) << (vec4<u32>(0u, global4[_wgslsmith_index_u32(25576u, 5u)], global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19050u, 5u)], 5u)]) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(3832u, global4[_wgslsmith_index_u32(0u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(92851u, 5u)], 5u)], 76329u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)], 8668u, 6168u, 0u), vec4<u32>(global4[_wgslsmith_index_u32(27851u, 5u)], 4294967295u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)])), ~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55935u, 5u)], 5u)], 0u, 227u)) % vec4<u32>(32u))).x, 5u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(18726u, 5u)] ^ global4[_wgslsmith_index_u32(0u, 5u)], 33260u), _wgslsmith_clamp_vec2_u32(max(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 31u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 31u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47698u, 5u)], 5u)], 5u)], 65951u), ~global3[_wgslsmith_index_u32(1u, 31u)]))), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~(~(vec4<u32>(global4[_wgslsmith_index_u32(55774u, 5u)], 0u, 0u, 23075u) & vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1549u, 5u)], 5u)], global4[_wgslsmith_index_u32(56988u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 5u)], 5u)], 77888u))), vec4<u32>(func_3(func_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 22u)], global4[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c.x), Struct_2(vec4<bool>(false, false, false, global2.a.x), false, global2.c, global2.e.d.zyw, global2.e), false), global4[_wgslsmith_index_u32(abs(0u), 5u)], _wgslsmith_dot_vec3_u32(select(vec3<u32>(global4[_wgslsmith_index_u32(0u, 5u)], 0u, 38865u), vec3<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)]), vec3<bool>(true, false, global2.a.x)), reverseBits(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34265u, 5u)], 5u)], global4[_wgslsmith_index_u32(9299u, 5u)], 81320u))), (1u >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)] % 32u)) << (36103u % 32u))), select(firstTrailingBit(max(~vec4<u32>(1u, 17815u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10599u, 5u)], 5u)], 5u)], 5u)], 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 5u)], 5u)]), vec4<u32>(18517u, global4[_wgslsmith_index_u32(49682u, 5u)], global4[_wgslsmith_index_u32(1901u, 5u)], 21566u))), vec4<u32>(0u, _wgslsmith_div_u32(0u, ~70988u), _wgslsmith_div_u32(~4294967295u, 21902u ^ global4[_wgslsmith_index_u32(82685u, 5u)]), ~global4[_wgslsmith_index_u32(min(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global4[_wgslsmith_index_u32(12136u, 5u)]), 5u)]), all(vec2<bool>(true, true))));
    let var_1 = global2.d.x;
    let var_2 = min(-62280i, 0i ^ firstTrailingBit(21749i));
    global3 = array<vec2<u32>, 31>();
    let var_3 = Struct_2(!vec4<bool>(true, global2.e.e.x, true, global2.a.x), global2.a.x, var_2, _wgslsmith_f_op_vec3_f32(global2.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1352f, 382f, -462f))))), global1[_wgslsmith_index_u32(var_0.x, 8u)]);
    let var_4 = func_1(!global2.e.e, 4294967295u, reverseBits(var_2)).e;
    let var_5 = 1028f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.zx));
}

