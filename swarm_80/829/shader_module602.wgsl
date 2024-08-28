struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(22868u, 5549u, 50668u, 594u, 42515u, 4275u, 1u, 0u, 23016u, 17121u, 104424u, 29808u, 19515u, 0u, 1u, 6199u, 65375u, 4294967295u, 0u, 20138u, 41168u, 30469u, 20011u, 17479u, 1u, 1u);

var<private> global1: array<Struct_1, 23>;

var<private> global2: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 23u)];
    global2 = false;
    var var_1 = firstLeadingBit(~firstLeadingBit(vec4<i32>(u_input.c, -29417i, 15749i, var_0.c.x)) >> (var_0.e % vec4<u32>(32u)));
    var var_2 = select(!(!select(vec3<bool>(var_0.b.x, var_0.b.x, true), select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true)), !var_0.b.x)), select(vec3<bool>(any(vec3<bool>(false, false, true)), true, any(!vec3<bool>(true, var_0.b.x, var_0.b.x))), vec3<bool>(true, true, true), !vec3<bool>(var_0.b.x, global0[_wgslsmith_index_u32(u_input.a, 26u)] == 50146u, var_0.b.x)), var_0.b.x | (!(var_0.b.x != false) & any(!vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x))));
    global0 = array<u32, 26>();
    return var_0.e.yzw;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<u32> {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    var var_0 = Struct_1((_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 85008u), vec2<u32>(8625u, arg_1))) << (vec2<u32>(~global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(countOneBits(arg_1) | 1u, u_input.a) % vec2<u32>(32u)), vec2<bool>(false, (u_input.a ^ 0u) > u_input.a), firstTrailingBit(abs(vec4<i32>(u_input.b & 1i, _wgslsmith_clamp_i32(-1i, u_input.c, 17125i), 1i, ~2997i))), ~(~firstLeadingBit(arg_1)), _wgslsmith_mod_vec4_u32(firstTrailingBit(~(~vec4<u32>(1u, 79838u, 21281u, 12934u))), select(~firstLeadingBit(vec4<u32>(u_input.a, 782u, global0[_wgslsmith_index_u32(arg_0, 26u)], 50053u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, global0[_wgslsmith_index_u32(arg_0, 26u)]), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(39871u, 26u)], arg_1)), arg_0, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 47147u, global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_0), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, 4294967295u, u_input.a))), true)));
    var var_1 = global1[_wgslsmith_index_u32(var_0.d, 23u)];
    return _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(func_3(), _wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, arg_0), 26u)], max(var_1.a.x, arg_0), min(4294967295u, 1u)), ~(vec3<u32>(arg_0, arg_1, 10013u) ^ var_1.e.yzz))), ~(~_wgslsmith_mod_vec3_u32(var_1.e.zxw, vec3<u32>(var_0.e.x, 26906u, arg_1))) >> (_wgslsmith_sub_vec3_u32(~var_1.e.wyz, var_1.e.zyw) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    var var_0 = func_2(44893u, 27991u);
    let var_1 = u_input.a;
    global1 = array<Struct_1, 23>();
    let var_2 = Struct_1(func_3().xz, !vec2<bool>(true, all(vec3<bool>(true, true, true))), vec4<i32>(max(u_input.b, -firstTrailingBit(-1i)), firstTrailingBit(0i) & 1i, ~1i, -1i), (4294967295u & min(_wgslsmith_div_u32(var_0.x, u_input.a), 4294967295u)) & _wgslsmith_mult_u32(abs(4294967295u), ~var_0.x), ~abs(vec4<u32>(_wgslsmith_add_u32(65199u, u_input.a), select(19988u, global0[_wgslsmith_index_u32(u_input.a, 26u)], false), 23208u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a))));
    let var_3 = -1167f;
    return 35971u ^ _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(var_2.e.wzx, var_2.e.xxw), 1u), 0u << (_wgslsmith_dot_vec3_u32(var_2.e.xyy, vec3<u32>(40845u, global0[_wgslsmith_index_u32(u_input.a, 26u)], var_2.e.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1160f;
    global2 = !any(vec2<bool>(true, true));
    var var_1 = abs(firstLeadingBit(min(u_input.a, ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 4294967295u))));
    var var_2 = Struct_1(vec2<u32>(4294967295u, 1u), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), (0i << (func_1() % 32u)) >= u_input.b), min(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.c, 2147483647i)), vec4<i32>(-2147483647i, u_input.b << (~global0[_wgslsmith_index_u32(56356u, 26u)] % 32u), -u_input.b, u_input.b)), func_3().x, vec4<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(14661u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 26u)])), abs(vec3<u32>(u_input.a, 64237u, u_input.a))), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 42385u >> (u_input.a % 32u)), func_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 10406u, 62152u, 19312u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(false, false, true, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], 1u, u_input.a, global0[_wgslsmith_index_u32(16310u, 26u)]), vec4<u32>(1u, u_input.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)]))), func_1()).x));
    let var_3 = ~reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(3297u, 4294967295u), firstLeadingBit(var_2.a)));
    var_1 = ~(global0[_wgslsmith_index_u32(4294967295u, 26u)] ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45055u, 0u, global0[_wgslsmith_index_u32(0u, 26u)]) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 5257u, global0[_wgslsmith_index_u32(var_3.x, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<u32>(48096u, 55923u, 3138u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 26u)], 26u)])) % vec4<u32>(32u)), vec4<u32>(var_3.x << (var_2.e.x % 32u), var_3.x << (var_2.e.x % 32u), ~0u, 51939u)));
    let x = u_input.a;
    s_output = StorageBuffer(110721u, (reverseBits(u_input.c) & ~u_input.b) >> (0u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(632f + _wgslsmith_f_op_f32(min(163f, -1311f))), _wgslsmith_f_op_f32(f32(-1f) * -545f))), var_3.x);
}

