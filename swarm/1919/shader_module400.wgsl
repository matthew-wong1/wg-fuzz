struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec4<u32>;

var<private> global3: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = ~vec4<u32>(u_input.d.x, ~(~global3.x), ~191u << (_wgslsmith_mod_u32(_wgslsmith_div_u32(global3.x, 4294967295u), _wgslsmith_div_u32(global2.x, 5898u)) % 32u), max(18391u, ~1u));
    global2 = abs(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global2.x, 11159u, 29239u) >> (u_input.b % vec4<u32>(32u)), ~vec4<u32>(31823u, 1u, global2.x, 23443u), min(vec4<u32>(0u, global3.x, global2.x, 4294967295u), vec4<u32>(4294967295u, 11731u, 18587u, global2.x))), reverseBits(u_input.b)));
    var var_0 = -41181i;
    let var_1 = Struct_5(Struct_3(min(-(~u_input.a), u_input.a)), countOneBits(~(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.b.x, 40753u), vec3<u32>(u_input.d.x, global2.x, 21574u)) << (firstLeadingBit(vec3<u32>(1u, 63860u, 133593u)) % vec3<u32>(32u)))), Struct_3(-(i32(-1i) * -15819i)), Struct_1((select(vec2<u32>(16729u, 1u), global2.wz, global0[_wgslsmith_index_u32(4294967295u, 31u)]) & ~vec2<u32>(global2.x, 40242u)) ^ (global2.wx ^ global2.ww), reverseBits(4294967295u), u_input.b), Struct_3(-u_input.a));
    let var_2 = reverseBits(firstTrailingBit(u_input.c.wwz));
    return ~(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b.x, global3.x)), ~vec2<u32>(4294967295u, 39805u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = Struct_2(u_input.b.x, arg_0.b);
    var var_1 = Struct_1(countOneBits(vec2<u32>(~_wgslsmith_dot_vec2_u32(var_0.b.c.yw, vec2<u32>(0u, 1u)), firstLeadingBit(~63585u))), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(max(1u, arg_2), 1u), _wgslsmith_mod_u32(~arg_0.b.a.x, global3.x) | global3.x, abs(5156u)), u_input.b);
    var_1 = Struct_1(~(~global3.wz & _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(global3.x, 4294967295u)), vec2<u32>(1u, 57927u), ~vec2<u32>(arg_0.b.b, global2.x))), ~1u, vec4<u32>(~1u, 35307u, arg_2, 9594u));
    var var_2 = Struct_5(Struct_3(-abs(0i)), select(~vec3<u32>(reverseBits(0u), ~102640u, ~4294967295u), var_1.c.xxw << (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 8956u, 31382u), arg_0.b.c.xzz) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), !vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 31u)], true, false), global0[_wgslsmith_index_u32(var_0.a, 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.b.c.x, 1u), 31u)] && !global0[_wgslsmith_index_u32(var_1.a.x, 31u)])), Struct_3(u_input.a), arg_0.b, Struct_3(-1i));
    global1 = _wgslsmith_mult_i32(u_input.c.x, 25253i) & var_2.e.a;
    return _wgslsmith_mult_u32(~(~firstLeadingBit(u_input.e.x)), u_input.b.x);
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = func_4(Struct_2(~select(func_3(), 1u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 31u)]), Struct_1(global2.ww, 4294967295u, vec4<u32>(22368u, abs(23796u), ~4294967295u, 1u))), u_input.a, _wgslsmith_sub_u32(abs(~global3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 705u, u_input.e.x), ~vec3<u32>(global3.x, 0u, 4294967295u)) << (79627u % 32u)));
    global1 = u_input.a;
    let var_1 = select(1i, ~(~_wgslsmith_sub_i32(-1i, -32833i)), true) >= ~u_input.a;
    var var_2 = Struct_5(Struct_3(abs(-26892i)), ~(max(global2.ywy, vec3<u32>(u_input.b.x, 0u, global2.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, global3.x, 41563u), vec3<u32>(1u, 0u, arg_0.b.a.x))) >> (vec3<u32>(reverseBits(1u), _wgslsmith_mult_u32(4294967295u, global3.x), _wgslsmith_dot_vec3_u32(~global3.ywz, ~vec3<u32>(4781u, 4294967295u, 4294967295u))) % vec3<u32>(32u)), Struct_3(firstLeadingBit(u_input.c.x)), Struct_1(~arg_0.b.a, 1u, _wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, global3.x), arg_0.b.a), min(16279u, 0u), 1u), countOneBits(u_input.b))), Struct_3(u_input.a));
    var var_3 = Struct_4(_wgslsmith_sub_u32(var_0, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global3.xx, vec2<u32>(4294967295u, arg_0.a)), _wgslsmith_sub_u32(4294967295u, 4648u), var_2.b.x))));
    return ~(~var_0);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_5 {
    var var_0 = global0[_wgslsmith_index_u32(global3.x, 31u)];
    let var_1 = u_input.e.x;
    var_0 = arg_0 > arg_0;
    let var_2 = ~(abs(global3.wy) ^ ~(~vec2<u32>(u_input.d.x, global2.x)));
    global2 = ~select(vec4<u32>(10431u, 23267u, _wgslsmith_dot_vec2_u32(global2.wx, u_input.d), 19267u), ~(~u_input.b), !vec4<bool>(select(global0[_wgslsmith_index_u32(12014u, 31u)], global0[_wgslsmith_index_u32(var_1, 31u)], global0[_wgslsmith_index_u32(var_1, 31u)]), !global0[_wgslsmith_index_u32(global2.x, 31u)], 93u > var_2.x, 60999u != var_2.x));
    return Struct_5(Struct_3(-countOneBits(u_input.c.x >> (global2.x % 32u))), vec3<u32>(select(_wgslsmith_dot_vec2_u32(global3.zx << (var_2 % vec2<u32>(32u)), vec2<u32>(0u, 0u)), countOneBits(20119u ^ global3.x), false), var_2.x, func_2(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, 1u), vec3<u32>(var_1, 0u, var_1)), Struct_1(global2.xw, 46361u, u_input.b)))), Struct_3(~_wgslsmith_dot_vec2_i32(-u_input.c.xw, u_input.c.yw)), Struct_1(abs(_wgslsmith_div_vec2_u32(global2.wy | vec2<u32>(13282u, 32684u), vec2<u32>(35268u, 1u))), _wgslsmith_mult_u32(u_input.e.x ^ var_1, global2.x), u_input.b), Struct_3(_wgslsmith_sub_i32(1i, u_input.c.x) & -51319i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_u32(global3.x, select(global2.x, 1u, global0[_wgslsmith_index_u32(global3.x, 31u)]) << ((global2.x >> (u_input.e.x % 32u)) % 32u), 13725u) & 4294967295u;
    global0 = array<bool, 31>();
    let var_1 = func_1(-(_wgslsmith_dot_vec3_i32(u_input.c.wwz | u_input.c.ywz, vec3<i32>(u_input.c.x, -2147483647i, 32978i)) | abs(reverseBits(-8497i))), 1f);
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_2 = any(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(true, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(59615u, 31u)], global0[_wgslsmith_index_u32(var_0, 31u)], false, global0[_wgslsmith_index_u32(4294967295u, 31u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(32007u, 31u)], true, true, global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, global0[_wgslsmith_index_u32(global3.x, 31u)], true), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(var_0, 31u)])), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 31u)], global0[_wgslsmith_index_u32(49169u, 31u)], false, false))) || true;
    let x = u_input.a;
    s_output = StorageBuffer(global2.ww, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(102f)))), _wgslsmith_f_op_f32(select(1f, -1697f, !global0[_wgslsmith_index_u32(var_1.d.c.x, 31u)]))))), var_1.d.b, vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~4294967295u, ~4294967295u), 4294967295u, ~(~0u))));
}

