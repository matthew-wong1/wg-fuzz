struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 364f;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, true, true, false, false, true, false, false, true, true, true, false, false, true, false, false, true, false, false, false, true, true, true, false, true, true, true, false, false, true);

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_3, 24>;

var<private> global4: array<Struct_3, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = !all(vec4<bool>(any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 31u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), false)), true, 45712u > (1u | global2.x), !(!global1[_wgslsmith_index_u32(global2.x, 31u)])));
    global0 = -2324f;
    global3 = array<Struct_3, 24>();
    global2 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(38967u, u_input.a), global2.x) << (select(select(vec3<u32>(19715u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 0u), global1[_wgslsmith_index_u32(1u, 31u)]), vec3<u32>(0u, global2.x, 4294967295u), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], false, global1[_wgslsmith_index_u32(global2.x, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], true, global1[_wgslsmith_index_u32(global2.x, 31u)]), global1[_wgslsmith_index_u32(4294967295u, 31u)])) % vec3<u32>(32u)), select(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(7997u, 34157u, 1u)), ~vec3<u32>(15886u, 59728u, 70971u)), vec3<u32>(1u, min(global2.x, global2.x), _wgslsmith_mult_u32(u_input.a, 66583u)), !(!global1[_wgslsmith_index_u32(u_input.a, 31u)])));
    var var_1 = Struct_1(~(~select(43616u, u_input.a, false)) ^ u_input.a, all(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(66782u, 31u)], global1[_wgslsmith_index_u32(50027u, 31u)], false, false), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global2.x, 31u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 31u)], true), vec4<bool>(global1[_wgslsmith_index_u32(17185u, 31u)], true, true, true)), !global1[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 31u)], false, false)), global1[_wgslsmith_index_u32(8409u, 31u)] == true, !global1[_wgslsmith_index_u32(94201u, 31u)]), vec4<bool>(true, true, any(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], false, false)), false))), 1i);
    return -14233i >> (max(116575u, ~select(~u_input.a, u_input.a ^ 4181u, true)) % 32u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<bool, 31>();
    global3 = array<Struct_3, 24>();
    let var_0 = !(!vec2<bool>(~23626i >= func_3(), !global1[_wgslsmith_index_u32(select(arg_0, global2.x, false), 31u)]));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -644f);
    return Struct_1(~_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0, 23942u), reverseBits(arg_0))), var_0.x, -9211i);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(select(abs(vec2<u32>(u_input.a, global2.x)), global2.xz, vec2<bool>(true, global1[_wgslsmith_index_u32(64287u, 31u)])), _wgslsmith_add_vec2_u32(~vec2<u32>(global2.x, global2.x), vec2<u32>(~global2.x, ~54912u))), _wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(min(50553i, 28066i)), 540i), vec2<i32>(reverseBits(-1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global2.x), vec2<u32>(20418u, 9880u)) % 32u), abs(-59310i))), func_2(global2.x << (~select(31264u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 31u)]) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-517f - arg_1))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(919f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    global0 = 1f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(round(1038f)));
    global4 = array<Struct_3, 18>();
    let var_2 = select(any(vec3<bool>(!var_0.c.b, var_0.d && true, !all(vec2<bool>(true, var_0.c.b)))), any(!select(!vec3<bool>(var_0.c.b, var_0.c.b, true), vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], true, var_0.c.b), vec3<bool>(global1[_wgslsmith_index_u32(var_0.c.a, 31u)], var_0.d, var_0.d), vec3<bool>(var_0.c.b, true, global1[_wgslsmith_index_u32(4294967295u, 31u)])))), true);
    return func_2(_wgslsmith_div_u32(~u_input.a, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 31>();
    let var_0 = _wgslsmith_div_i32(-2468i, ~firstTrailingBit(-44569i) >> ((~abs(72994u) << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, 0u), u_input.a) % 32u)) % 32u));
    var var_1 = 30137i;
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    let var_2 = Struct_2(global2.xy, vec2<i32>(var_0, max(firstTrailingBit(-2560i), var_0)) >> (min(global2.zx ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global2.x), global2.yx), max(global2.zy, vec2<u32>(1u, global2.x) & vec2<u32>(0u, u_input.a))) % vec2<u32>(32u)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-525f - 958f)) - _wgslsmith_f_op_f32(sign(-1056f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(979f)) * 1f) + -1000f)), global2.x >= 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec3<i32>(select(var_0, -2147483647i, global1[_wgslsmith_index_u32(22881u, 31u)]), -32316i, -var_2.b.x)), vec4<u32>(u_input.a, ~1u ^ ~(4294967295u >> (global2.x % 32u)), 1u, 1u));
}

