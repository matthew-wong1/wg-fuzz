struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(1u, vec3<bool>(false, true, true), true, vec4<i32>(1i, 2147483647i, 1i, 2147483647i)), i32(-2147483648), Struct_1(1u, vec3<bool>(true, false, true), true, vec4<i32>(-16980i, i32(-2147483648), -1i, -31075i))), Struct_2(Struct_1(18505u, vec3<bool>(false, true, false), true, vec4<i32>(2147483647i, -53445i, -26988i, 1i)), -1i, Struct_1(0u, vec3<bool>(true, false, true), true, vec4<i32>(-9224i, 2147483647i, i32(-2147483648), -29472i))), Struct_2(Struct_1(62598u, vec3<bool>(false, true, true), true, vec4<i32>(-41644i, 26466i, 30361i, -1i)), i32(-2147483648), Struct_1(1u, vec3<bool>(true, false, false), true, vec4<i32>(-1i, -19151i, 4820i, -19356i))), Struct_2(Struct_1(772u, vec3<bool>(false, false, false), false, vec4<i32>(20862i, i32(-2147483648), i32(-2147483648), -13908i)), i32(-2147483648), Struct_1(1u, vec3<bool>(false, false, true), true, vec4<i32>(-1i, -1i, 1i, -8200i))), Struct_2(Struct_1(3005u, vec3<bool>(false, false, true), false, vec4<i32>(17734i, 3956i, -1i, 20941i)), 1i, Struct_1(823u, vec3<bool>(false, true, false), true, vec4<i32>(0i, 1i, 50910i, 19908i))), Struct_2(Struct_1(9796u, vec3<bool>(false, true, true), false, vec4<i32>(-40182i, 41871i, -36149i, i32(-2147483648))), 2147483647i, Struct_1(0u, vec3<bool>(true, false, false), true, vec4<i32>(-1i, -58234i, i32(-2147483648), -21917i))), Struct_2(Struct_1(13141u, vec3<bool>(false, true, false), false, vec4<i32>(46696i, 40504i, 2147483647i, 494i)), 1i, Struct_1(4294967295u, vec3<bool>(false, true, false), true, vec4<i32>(0i, 2147483647i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, false), true, vec4<i32>(0i, 29402i, -4461i, i32(-2147483648))), 0i, Struct_1(0u, vec3<bool>(true, true, false), true, vec4<i32>(0i, 1i, i32(-2147483648), 16411i))), Struct_2(Struct_1(1u, vec3<bool>(false, true, true), false, vec4<i32>(2307i, 1277i, 1i, 1i)), 29012i, Struct_1(30803u, vec3<bool>(true, false, false), true, vec4<i32>(1i, -26802i, -12090i, 0i))), Struct_2(Struct_1(40125u, vec3<bool>(true, true, false), true, vec4<i32>(2147483647i, 9193i, 0i, -19201i)), 1i, Struct_1(1u, vec3<bool>(true, false, false), true, vec4<i32>(2147483647i, 29306i, -1i, -58975i))), Struct_2(Struct_1(30335u, vec3<bool>(false, true, true), true, vec4<i32>(-1i, 11400i, -9245i, -9325i)), -18144i, Struct_1(0u, vec3<bool>(false, false, false), false, vec4<i32>(0i, 70887i, -470i, 0i))), Struct_2(Struct_1(52026u, vec3<bool>(true, true, true), false, vec4<i32>(9940i, -20217i, 0i, -8791i)), 1i, Struct_1(12269u, vec3<bool>(false, true, false), false, vec4<i32>(0i, -18804i, -28505i, 0i))), Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, true), true, vec4<i32>(2147483647i, -14996i, -6636i, 1i)), i32(-2147483648), Struct_1(4294967295u, vec3<bool>(false, false, true), false, vec4<i32>(-1i, -26182i, 44524i, 2147483647i))), Struct_2(Struct_1(14275u, vec3<bool>(false, true, false), true, vec4<i32>(-27971i, -21283i, -1i, 7555i)), -1i, Struct_1(45580u, vec3<bool>(false, true, false), true, vec4<i32>(-1i, 2147483647i, 34289i, -29982i))), Struct_2(Struct_1(1u, vec3<bool>(false, true, false), false, vec4<i32>(-41066i, 713i, 1i, -6229i)), -49713i, Struct_1(11766u, vec3<bool>(true, true, false), false, vec4<i32>(8910i, 0i, i32(-2147483648), 0i))), Struct_2(Struct_1(57661u, vec3<bool>(false, false, false), true, vec4<i32>(1i, -1i, i32(-2147483648), i32(-2147483648))), 2147483647i, Struct_1(0u, vec3<bool>(true, false, false), false, vec4<i32>(i32(-2147483648), -1i, -7373i, 0i))), Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, true), true, vec4<i32>(43940i, -10125i, 1i, -12014i)), 6353i, Struct_1(4294967295u, vec3<bool>(true, false, true), false, vec4<i32>(30313i, i32(-2147483648), 71907i, 16897i))), Struct_2(Struct_1(0u, vec3<bool>(true, false, true), false, vec4<i32>(2147483647i, 0i, 2516i, 0i)), 1i, Struct_1(66160u, vec3<bool>(false, true, true), true, vec4<i32>(2147483647i, 49905i, -7852i, i32(-2147483648)))));

var<private> global1: Struct_1 = Struct_1(0u, vec3<bool>(true, true, false), true, vec4<i32>(2194i, -1993i, 0i, 73547i));

var<private> global2: array<vec4<f32>, 23>;

var<private> global3: array<u32, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_mod_u32(~(global1.a ^ ~global1.a), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(49118u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12142u, 28u)], 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a, 28u)], 28u)], global3[_wgslsmith_index_u32(global1.a, 28u)]), vec4<u32>(global1.a, global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(15320u, 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32345u, 28u)], 28u)], 28u)]) ^ vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 28u)], 7815u, global1.a, 1u)), vec4<u32>(countOneBits(4294967295u), global3[_wgslsmith_index_u32(45240u, 28u)], _wgslsmith_add_u32(global1.a, global1.a), ~global1.a))), !global1.b, !any(select(global1.b.zx, global1.b.xz, false)), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(1701i, u_input.a.x), global1.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global1.d.ww, u_input.a), max(vec2<i32>(0i, global1.d.x), u_input.a)), _wgslsmith_div_i32(-global1.d.x, _wgslsmith_add_i32(10726i, -2147483647i)))));
    global0 = array<Struct_2, 18>();
    var var_0 = vec3<i32>(~(-global1.d.x), firstTrailingBit(u_input.a.x & 0i), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.d.x, -1i, 0i, global1.d.x), vec4<i32>(-2147483647i, global1.d.x, global1.d.x, 1139i) & global1.d), abs(_wgslsmith_dot_vec4_i32(global1.d, vec4<i32>(-1i, u_input.a.x, 36143i, 2147483647i)))), -u_input.a.x));
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-996f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1951f)) * -254f))));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(abs(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)], firstTrailingBit(global3[_wgslsmith_index_u32(global1.a, 28u)]))), global1.a, 81893u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global1.a, 28u)], ~4294967295u)), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(10116u, global3[_wgslsmith_index_u32(global1.a, 28u)], 4294967295u, 16630u) | vec4<u32>(46384u, 0u, global1.a, 4294967295u), vec4<u32>(global1.a, 0u, global3[_wgslsmith_index_u32(28011u, 28u)], global1.a) << (vec4<u32>(global1.a, 0u, 78523u, 91675u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.a, 1u, global1.a, 37356u), vec4<u32>(global3[_wgslsmith_index_u32(global1.a, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global1.a, global1.a))), vec4<u32>(_wgslsmith_clamp_u32(global1.a, 53732u, global3[_wgslsmith_index_u32(4294967295u, 28u)] & global1.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global1.a, 22697u), vec4<u32>(global1.a, 4294967295u, global3[_wgslsmith_index_u32(18956u, 28u)], 35414u)), ~4294967295u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(43932u, 28u)], 28u)]), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x);
}

