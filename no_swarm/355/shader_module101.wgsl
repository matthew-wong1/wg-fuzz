struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, false, true, true, true, false, false, false, true, false, false, true, false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec3<u32> {
    global0 = array<bool, 17>();
    let var_0 = u_input.c.x;
    return _wgslsmith_mod_vec3_u32(countOneBits(abs(u_input.c.wzy)), vec3<u32>(_wgslsmith_mod_u32(var_0, 1992u), min(firstTrailingBit(var_0), 1u), 48469u));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_sub_i32(u_input.d, ~1i) | _wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(reverseBits(u_input.a.x), u_input.a.x, u_input.d));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(u_input.c ^ vec4<u32>(u_input.b, u_input.b, 1u, 0u)), u_input.c), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_add_u32(u_input.b, u_input.b)), 26514u, ~(~4294967295u), select(~1u, 4294967295u, select(global0[_wgslsmith_index_u32(4294967295u, 17u)], false, global0[_wgslsmith_index_u32(54323u, 17u)])))) << (~((_wgslsmith_mod_u32(1u, u_input.c.x) | u_input.c.x) >> (u_input.c.x % 32u)) % 32u);
    var var_2 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c.x, 1u, ~4294967295u << (1u % 32u))), min(u_input.c.zwz | min(func_3(vec4<f32>(-1486f, 653f, 360f, 2347f), -1537f), vec3<u32>(4294967295u, u_input.b, u_input.b)), ~vec3<u32>(55351u, 14054u, 9774u)));
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(var_2.x << (_wgslsmith_mult_u32(var_2.x, 1u) % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, var_2.x), max(43899u, u_input.b), abs(27957u), select(72883u, u_input.b, false)), u_input.c), var_2.x), 17u)];
}

fn func_1() -> f32 {
    var var_0 = Struct_1(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(13577u, 17u)], false, global0[_wgslsmith_index_u32(1u, 17u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(51313u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false, global0[_wgslsmith_index_u32(~u_input.c.x, 17u)], u_input.b >= u_input.c.x), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(31910u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], false, global0[_wgslsmith_index_u32(48055u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(20378u, 17u)], true, true, true)), (u_input.d > 24038i) & (u_input.b < u_input.b)), vec4<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], false, false, global0[_wgslsmith_index_u32(u_input.c.x, 17u)])), _wgslsmith_f_op_f32(select(999f, -848f, true)) > _wgslsmith_f_op_f32(f32(-1f) * -298f), !all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false)), false)), !vec2<bool>(func_2(), abs(u_input.a.x) <= ~u_input.d), firstTrailingBit(u_input.a), max(~u_input.c.x, firstTrailingBit(u_input.c.x & (u_input.c.x << (0u % 32u)))));
    var_0 = Struct_1(select(!select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], false, false, false), !var_0.a, !var_0.a.x), var_0.a, true), var_0.a.yz, var_0.c, var_0.d);
    global0 = array<bool, 17>();
    var var_1 = _wgslsmith_f_op_f32(485f * _wgslsmith_f_op_f32(f32(-1f) * -231f));
    var_1 = 144f;
    return 2273f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1458f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_div_f32(-628f, 408f)))), _wgslsmith_f_op_f32(func_1()))));
    let var_1 = Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u & _wgslsmith_clamp_u32(u_input.c.x, 8250u | u_input.b, ~1u), 17u)], all(!vec4<bool>(true, global0[_wgslsmith_index_u32(38837u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)])) == global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(u_input.c.wxy, u_input.c.zwx, false), vec3<u32>(24401u, 0u, 9542u)), 17u)], global0[_wgslsmith_index_u32(51343u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), !(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(4893u, 17u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(53832u, 17u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(16714u, 17u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(36921u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<bool>(true, false)))), select(-max(u_input.a, -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), (select(u_input.a, vec3<i32>(u_input.d, -19204i, u_input.d), global0[_wgslsmith_index_u32(1u, 17u)]) | (vec3<i32>(u_input.d, 1i, -7107i) >> (vec3<u32>(49243u, 4764u, 2849u) % vec3<u32>(32u)))) ^ (u_input.a >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.b, 1u, u_input.b)) % vec3<u32>(32u))), func_2()), u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(753f, -940f, 1921f) * vec3<f32>(-734f, 1695f, -214f)), vec3<f32>(935f, 554f, 1156f), all(var_1.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, 731f, -415f) * vec3<f32>(-555f, -694f, -1589f))))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -241f)));
    var_3 = 142f;
    let var_4 = false || global0[_wgslsmith_index_u32(var_1.d, 17u)];
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(1881f, -1591f)), all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)]))))))), 1000f);
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5, var_5, 163f, var_5))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 275f, var_5, var_5) + vec4<f32>(211f, -316f, var_2.x, var_5))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, var_5, -1000f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_5, 771f) - vec4<f32>(var_2.x, var_2.x, var_5, var_5)), !var_1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, var_2.x, -100f, var_5)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_5, var_5, 1700f)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], var_1.a.x, true, false))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-159f, 274f, -2352f, -861f), vec4<f32>(var_2.x, var_5, 235f, 123f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_1.c.x, 2147483647i, var_5);
}

