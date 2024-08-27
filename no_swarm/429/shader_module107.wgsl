struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 19> = array<i32, 19>(22978i, -1i, 27474i, -46566i, 0i, 53789i, 1i, -1i, 25977i, 1i, 2147483647i, 8917i, 11613i, -65256i, -2266i, 2147483647i, -3668i, -1i, 10159i);

var<private> global3: bool = true;

var<private> global4: Struct_1 = Struct_1(true, vec3<i32>(0i, 0i, 3081i), vec3<bool>(false, true, true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(abs(global1.x), abs(arg_1), countOneBits(32833u)), 28982u), ~vec2<u32>(36852u ^ arg_1, ~57252u));
    var var_1 = global4.a;
    let var_2 = firstLeadingBit(min(countOneBits(~vec4<u32>(1u, global1.x, 52214u, 4294967295u)), firstTrailingBit(vec4<u32>(1u, var_0.x, 1u, global1.x))));
    let var_3 = var_2;
    global1 = var_2;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    global0 = array<Struct_1, 23>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_1 = func_2(arg_0, countOneBits(_wgslsmith_add_u32(arg_2, 1u)));
    global4 = func_2(arg_0, ~_wgslsmith_add_u32(global1.x | _wgslsmith_dot_vec3_u32(global1.ywy, global1.xxz), _wgslsmith_mult_u32(~arg_2, 3828u)));
    let var_2 = (countOneBits(global1.x) ^ _wgslsmith_mult_u32(min(reverseBits(global1.x), 3363u << (1u % 32u)), ~(arg_2 << (arg_2 % 32u)))) << (_wgslsmith_dot_vec2_u32(~firstTrailingBit(global1.yz), ~vec2<u32>(arg_2, global1.x) >> (abs(select(global1.xw, vec2<u32>(51349u, 26044u), global4.c.yx)) % vec2<u32>(32u))) % 32u);
    return arg_1.c.zx;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> bool {
    global3 = any(select(!(!(!arg_1)), func_3(Struct_1(global4.a, abs(global4.b), global4.c), func_2(global0[_wgslsmith_index_u32(6134u, 23u)], 1u), ~(~global1.x)), vec2<bool>(false, _wgslsmith_clamp_u32(global1.x, 36733u, global1.x) > 21718u)));
    var var_0 = global4.c.xx;
    let var_1 = !all(vec4<bool>(all(vec3<bool>(true, true, true)), false, all(!vec4<bool>(arg_1.x, global4.a, true, false)), all(!vec4<bool>(true, true, var_0.x, var_0.x))));
    let var_2 = ~(37281u >> (global1.x % 32u));
    var var_3 = global0[_wgslsmith_index_u32(~var_2, 23u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, 37715u), vec4<u32>(32685u, 48697u, 36937u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(24335u, 66134u, global1.x, global1.x), vec4<u32>(34626u, global1.x, global1.x, global1.x), vec4<u32>(1u, global1.x, global1.x, 0u)) << ((vec4<u32>(26502u, global1.x, global1.x, global1.x) ^ vec4<u32>(57362u, global1.x, global1.x, 1u)) % vec4<u32>(32u)), vec4<bool>(func_1(-2199i, global4.c.yx), select(global4.c.x, global4.a, global4.a), false, true)));
    let var_1 = ~var_0.x;
    global2 = array<i32, 19>();
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.b.x << (28262u % 32u), abs(-17059i), ~(-2147483647i)), ~(-global4.b))) | -u_input.a.x;
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_add_u32(~var_1, ~1u), firstLeadingBit(var_1 & var_0.x) & global1.x), 23u)];
    var var_4 = global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(~(~global1.x) >> (~1u % 32u), min(4294967295u, 28947u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, var_1), vec3<u32>(1u, var_0.x, 78965u)), _wgslsmith_div_u32(~var_1, ~var_1)), abs(var_1)), all(select(vec4<bool>(var_3.a != global4.c.x, false, global4.a || true, any(global4.c)), !vec4<bool>(var_3.a, true, global4.a, var_3.c.x), var_3.c.x))), 23u)];
    var_0 = vec4<u32>(global1.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.x, var_0.x, var_0.x, global1.x)) | (firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 21376u, 15972u)) ^ ~vec4<u32>(var_1, global1.x, 0u, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 46535u, 0u, var_1), vec4<u32>(var_1, var_1, var_0.x, 82742u)), min(vec4<u32>(global1.x, var_1, 0u, 9471u), vec4<u32>(var_0.x, var_0.x, global1.x, 0u))) >> (countOneBits(max(vec4<u32>(60573u, var_1, 4294967295u, 0u), vec4<u32>(32669u, var_0.x, var_1, 0u))) % vec4<u32>(32u))), countOneBits(var_0.x), 82009u << (global1.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global0[_wgslsmith_index_u32(~global1.x, 23u)], abs(_wgslsmith_div_u32(~var_1, 0u))).b.x, var_0.ww, _wgslsmith_dot_vec4_u32(vec4<u32>(15956u << (1u % 32u), 0u, _wgslsmith_mod_u32(43439u, var_1), ~48063u) ^ vec4<u32>(var_0.x, min(global1.x, global1.x), var_1, var_1), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.x, 18761u, 64322u), vec4<u32>(var_1, global1.x, 0u, var_0.x), vec4<u32>(93398u, 4294967295u, 1u, 4294967295u)))), 25377i);
}

