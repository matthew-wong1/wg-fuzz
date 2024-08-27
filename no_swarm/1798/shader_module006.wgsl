struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 20> = array<i32, 20>(40443i, 1i, 1i, -22686i, 34168i, 1i, -1i, i32(-2147483648), 46595i, -18846i, 227i, -6995i, 0i, 10261i, 45457i, -9892i, 0i, 0i, 11910i, 47271i);

var<private> global2: array<bool, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = ~u_input.c;
    global2 = array<bool, 10>();
    global1 = array<i32, 20>();
    let var_1 = Struct_1(vec4<i32>(-(abs(2147483647i) ^ -global0.x), global1[_wgslsmith_index_u32(99975u, 20u)], -2938i, ~_wgslsmith_div_i32(global0.x, ~27257i)), ~_wgslsmith_add_u32(~firstLeadingBit(arg_0.b), _wgslsmith_clamp_u32(arg_0.b, 1u, 6684u) & (u_input.c << (arg_0.b % 32u))));
    global2 = array<bool, 10>();
    return 1u;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(608f, -1768f, global2[_wgslsmith_index_u32(u_input.d.x, 10u)]))), -980f, any(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(34262u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)])))), _wgslsmith_f_op_f32(-385f * -1747f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(634f * 1000f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a))))));
    var var_2 = var_0;
    var var_3 = vec3<u32>(arg_0.b, ~((~30706u ^ arg_0.b) >> (reverseBits(reverseBits(u_input.d.x)) % 32u)), func_3(Struct_1(countOneBits(arg_0.a), ~65240u), -857f, var_0));
    global0 = (min(arg_0.a, abs(abs(vec4<i32>(2147483647i, 2245i, global0.x, 0i)))) >> (u_input.d % vec4<u32>(32u))) >> (vec4<u32>(29809u, arg_0.b, 1u, reverseBits(_wgslsmith_dot_vec3_u32(~u_input.d.wyy, ~u_input.d.wzx))) % vec4<u32>(32u));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x), 0i, global0.x), -14084i), ~(-global0.xx)) ^ ~(~u_input.a.zz);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_3(global0.xw, _wgslsmith_mod_i32(12188i, -29112i), _wgslsmith_f_op_f32(-arg_0.a.x));
    var_0 = Struct_3(func_2(Struct_1(-u_input.a >> (_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, arg_2.x, 595u, 30768u)) % vec4<u32>(32u)), ~u_input.c)), select(-18520i, -u_input.b, global2[_wgslsmith_index_u32(~u_input.d.x, 10u)]) ^ (_wgslsmith_sub_i32(11136i, 49845i) & select(global0.x >> (5085u % 32u), ~global1[_wgslsmith_index_u32(32435u, 20u)], arg_1.x && global2[_wgslsmith_index_u32(arg_2.x, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(arg_2.x)), 10u)];
    let var_2 = u_input.c;
    var_0 = Struct_3(_wgslsmith_mult_vec2_i32(firstTrailingBit(reverseBits(vec2<i32>(1i, 1i) >> (u_input.d.xx % vec2<u32>(32u)))), ~vec2<i32>(u_input.b >> (arg_2.x % 32u), ~16287i)), 2147483647i, _wgslsmith_f_op_f32(trunc(arg_0.a.x)));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(func_1(Struct_2(vec3<f32>(632f, -526f, 1000f)), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d.x, 10u)]), u_input.d), true, any(vec3<bool>(true, global2[_wgslsmith_index_u32(55245u, 10u)], false)), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 10u)], true)))), !(!(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 10u)], global2[_wgslsmith_index_u32(u_input.c, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_mod_u32(countOneBits(4294967295u), u_input.c ^ u_input.d.x)), 33917u), min(~firstLeadingBit(vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.c, 20u)], 0i)), select(global0.yyx, global0.zzx, 1u >= ~u_input.c)), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(57310u, 4294967295u, u_input.c), u_input.d.yxz) << (0u % 32u), abs(u_input.d.x & u_input.d.x)));
}

