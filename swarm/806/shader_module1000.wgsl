struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

var<private> global1: array<u32, 11> = array<u32, 11>(96328u, 0u, 10794u, 4294967295u, 41466u, 1u, 63431u, 2570u, 0u, 1u, 46701u);

var<private> global2: array<Struct_2, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(644f * 114f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1232f, -1066f)))))), global2[_wgslsmith_index_u32(1u, 16u)]);
    var var_1 = min(~countOneBits(u_input.a ^ ~u_input.a), ~vec4<i32>((u_input.a.x << (global1[_wgslsmith_index_u32(1u, 11u)] % 32u)) | -2147483647i, u_input.a.x, abs(-1i) ^ _wgslsmith_dot_vec3_i32(u_input.a.yyx, u_input.a.zzx), _wgslsmith_add_i32(max(-2147483647i, var_0.b.c.b), 30077i)));
    var var_2 = any(!select(vec2<bool>(all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), true), vec2<bool>(true, var_0.b.c.a && false), select(vec2<bool>(arg_0.a, false), select(vec2<bool>(var_0.b.b, false), vec2<bool>(true, false), false), select(vec2<bool>(var_0.b.c.a, var_0.b.c.a), vec2<bool>(var_0.b.c.a, true), arg_0.a))));
    let var_3 = Struct_4(var_0.b.c, var_1.yyy);
    var var_4 = Struct_1(false, -2147483647i);
    return min(var_0.b.a, 0u);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(423f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(func_3(Struct_1(false, 34745i)), 48726u, abs(46210u)), _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49639u, 11u)], 32u)])), firstTrailingBit(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42920u, 11u)], 11u)], 32u)] >> (global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3407u, 11u)], 32u)] % vec3<u32>(32u))))), 16u)]);
    var var_1 = vec3<i32>(abs(-var_0.b.c.b), -var_0.b.c.b, 2147483647i | -countOneBits(var_0.b.c.b & u_input.a.x));
    global1 = array<u32, 11>();
    var_0 = Struct_3(var_0.a, var_0.b);
    var var_2 = global1[_wgslsmith_index_u32(~1u, 11u)] >> (_wgslsmith_add_u32(var_0.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0.b.a, 11u)], 15242u), _wgslsmith_div_vec2_u32(vec2<u32>(5511u, var_0.b.a), vec2<u32>(var_0.b.a, var_0.b.a))) & ~(~var_0.b.a)) % 32u);
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(24512u, 32u)], vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8961u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global1[_wgslsmith_index_u32(24813u, 11u)])), _wgslsmith_sub_vec3_u32(~global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(22179u, 32u)] ^ vec3<u32>(0u, global1[_wgslsmith_index_u32(19461u, 11u)], global1[_wgslsmith_index_u32(37451u, 11u)]))), 16u)]);
    global0 = array<vec3<u32>, 32>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(231f, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)))))));
    var var_2 = global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_0.b.a, 11u)] | ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~792u, 11u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_0.b.a, 11u)], 34533u)), 11u)], ~max(_wgslsmith_div_u32(var_0.b.a, global1[_wgslsmith_index_u32(70371u, 11u)]) ^ _wgslsmith_mult_u32(var_0.b.a, var_0.b.a), global1[_wgslsmith_index_u32(select(0u ^ global1[_wgslsmith_index_u32(var_0.b.a, 11u)], ~global1[_wgslsmith_index_u32(4294967295u, 11u)], true), 11u)])), 11u)];
    var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~((global0[_wgslsmith_index_u32(0u, 32u)] >> (vec3<u32>(var_0.b.a, 74723u, global1[_wgslsmith_index_u32(0u, 11u)]) % vec3<u32>(32u))) ^ global0[_wgslsmith_index_u32(0u, 32u)]), vec3<u32>(firstTrailingBit(13610u), ~select(var_0.b.a, 6801u, true), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.a >> (global1[_wgslsmith_index_u32(var_0.b.a, 11u)] % 32u), 11u)], 11u)])), select(~(~_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(var_0.b.a, 32u)], vec3<u32>(0u, var_0.b.a, 17496u))), ~global0[_wgslsmith_index_u32(max(min(1u, var_0.b.a), min(1u, var_0.b.a)), 32u)], true));
    return Struct_4(Struct_1(var_0.b.c.b <= -2147483647i, u_input.a.x), vec3<i32>(_wgslsmith_add_i32(-var_0.b.c.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, arg_0.x), -u_input.a.x)), _wgslsmith_dot_vec3_i32(u_input.a.xyw, select(-u_input.a.wwy, vec3<i32>(-11268i, u_input.a.x, 37894i), false)), _wgslsmith_mult_i32(-var_0.b.c.b, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -75191i;
    global1 = array<u32, 11>();
    var var_1 = ~(~abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), vec2<u32>(14599u, 4580u), vec2<u32>(0u, 52603u))));
    var var_2 = func_1(u_input.a.zw);
    var var_3 = vec3<bool>(func_1(_wgslsmith_clamp_vec2_i32(func_1(countOneBits(var_2.b.zz)).b.yx, vec2<i32>(countOneBits(-20043i), ~(-1i)), -vec2<i32>(var_2.a.b, 14047i))).a.a, u_input.a.x <= 3021i, (-2147483647i ^ -u_input.a.x) <= u_input.a.x);
    let var_4 = firstTrailingBit(-(~countOneBits(-vec4<i32>(0i, -1567i, 4309i, var_2.a.b))));
    var var_5 = vec2<bool>(any(select(select(!vec4<bool>(true, var_2.a.a, false, var_2.a.a), vec4<bool>(false, var_3.x, var_3.x, var_3.x), !vec4<bool>(var_3.x, true, var_2.a.a, var_2.a.a)), !vec4<bool>(var_3.x, false, false, true), true)), false);
    var var_6 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~1i), _wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_clamp_i32(var_4.x, -2147483647i, 1i), ~(var_4.x | -51265i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, select(-2147483647i, 20754i, true), u_input.a.x), vec3<i32>(var_2.a.b, u_input.a.x, 1i))));
}

