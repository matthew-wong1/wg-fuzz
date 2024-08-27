struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, 1u), Struct_1(true, 0u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 1u), Struct_1(false, 1u));

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<bool, 21> = array<bool, 21>(false, false, true, false, false, true, false, true, false, true, true, false, true, true, true, false, false, true, false, true, false);

var<private> global3: Struct_2 = Struct_2(vec4<i32>(-2127i, i32(-2147483648), 36737i, i32(-2147483648)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = 8483u;
    return _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(33174u, u_input.a, 49858u, u_input.a), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 32423u)) ^ firstLeadingBit(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 1677u))), abs(_wgslsmith_clamp_vec4_u32((vec4<u32>(1u, u_input.a, arg_2.x, arg_2.x) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) % vec4<u32>(32u))) | min(vec4<u32>(arg_2.x, 0u, 155415u, 1u), vec4<u32>(2973u, 8082u, 0u, 4294967295u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(27568u, u_input.a, u_input.a, arg_2.x)), countOneBits(vec4<u32>(arg_2.x, u_input.a, u_input.a, 22940u))), vec4<u32>(10367u, _wgslsmith_dot_vec2_u32(arg_2.yz, vec2<u32>(arg_2.x, u_input.a)), u_input.a, 0u))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_2((-(~vec4<i32>(5366i, arg_2.a.x, arg_0, -2147483647i)) << (vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), u_input.a, reverseBits(1u), func_3(false, vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], false, global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<u32>(4294967295u, 2603u, 4294967295u), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 21u)], true))) % vec4<u32>(32u))) >> (~countOneBits(vec4<u32>(50031u, 44031u, 0u, u_input.a)) % vec4<u32>(32u)));
    global2 = array<bool, 21>();
    global0 = array<Struct_1, 6>();
    global2 = array<bool, 21>();
    let var_1 = u_input.a;
    return ~vec4<u32>(min(~var_1, firstTrailingBit(var_1) | ~u_input.a), firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 0u)), 1u, u_input.a);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(u_input.a, 49234u, 1u, 18946u), vec4<u32>(u_input.a, u_input.a, 8081u, 0u), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 21u)], true, true, false)), vec4<u32>(u_input.a, u_input.a, 1u, 0u) >> ((vec4<u32>(u_input.a, 4294967295u, 9930u, u_input.a) | vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a) ^ vec4<u32>(47386u, u_input.a, u_input.a, 4294967295u))), (func_2(global3.a.x, vec4<f32>(1249f, -113f, 449f, 1013f), global1[_wgslsmith_index_u32(102378u, 2u)]) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 8236u, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u))) << ((_wgslsmith_div_vec4_u32(vec4<u32>(1u, 13680u, 4294967295u, u_input.a), vec4<u32>(0u, u_input.a, 1u, u_input.a)) & ~vec4<u32>(u_input.a, 63553u, u_input.a, 13536u)) % vec4<u32>(32u))) | (vec4<u32>(0u, u_input.a | 23852u, u_input.a, 4294967295u) ^ (~vec4<u32>(u_input.a, 35615u, u_input.a, 4294967295u) ^ min(~vec4<u32>(59924u, u_input.a, 1u, 4294967295u), reverseBits(vec4<u32>(0u, 0u, u_input.a, 71931u)))));
    var var_1 = -global3.a.yx;
    var var_2 = Struct_2(global3.a);
    global2 = array<bool, 21>();
    var var_3 = !select(vec3<bool>(global2[_wgslsmith_index_u32(abs(u_input.a), 21u)], true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(19577u, 21u)], false, true), select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false, global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], true), true), select(!vec3<bool>(global2[_wgslsmith_index_u32(56365u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 21u)]))), !select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 21u)], true, global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(var_0.x, 21u)]), any(vec3<bool>(true, global2[_wgslsmith_index_u32(14606u, 21u)], false))));
    return Struct_1(global2[_wgslsmith_index_u32(var_0.x, 21u)], ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), ~4294967295u) | ~(var_0.x << (u_input.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 6u)];
    global0 = array<Struct_1, 6>();
    global2 = array<bool, 21>();
    let var_1 = func_1();
    global0 = array<Struct_1, 6>();
    let var_2 = -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-global3.a.x, global3.a.x), 1i), _wgslsmith_dot_vec2_i32(~abs(global3.a.xx), -(vec2<i32>(global3.a.x, 0i) ^ global3.a.zy)), max(global3.a.x, global3.a.x), -(global3.a.x | global3.a.x) << (~_wgslsmith_add_u32(11488u, var_1.b) % 32u));
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(max(global3.a.zwz | max(vec3<i32>(2147483647i, var_2.x, global3.a.x), var_2.zxy), select(vec3<i32>(-18010i, -17254i, -2147483647i), abs(vec3<i32>(0i, -1i, 0i)), func_1().a & !var_1.a)), -483f, u_input.a);
}

