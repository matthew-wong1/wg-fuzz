struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -40500i, 2147483647i);

var<private> global1: array<u32, 26> = array<u32, 26>(4294967295u, 31454u, 91465u, 1u, 44821u, 32132u, 0u, 1u, 4294967295u, 4294967295u, 19206u, 60112u, 1u, 4294967295u, 31673u, 67758u, 50561u, 9351u, 4954u, 15345u, 0u, 4294967295u, 47349u, 26532u, 19125u, 1u);

var<private> global2: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: u32, arg_3: i32) -> i32 {
    global1 = array<u32, 26>();
    global2 = abs(u_input.a);
    global2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2 ^ 48645u, reverseBits(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 26u)], 26u)]))), 12486u);
    global2 = ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(28168u, 26u)], ~1u);
    return global0.x;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = all(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))));
    global0 = min(~arg_1.xyw, _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -2147483647i, 5818i) | arg_1.wwx, max(arg_1.yzz, arg_1.zzz)), vec3<i32>(-66339i, ~0i, ~0i)));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(global0.zy, vec2<i32>(~(-762i), 0i) | vec2<i32>(_wgslsmith_add_i32(arg_1.x, 14205i), 41799i)), !select(var_0, true, true), global0.xz);
    let var_2 = countOneBits(vec2<i32>(func_3(vec2<bool>(true, true), var_1.c.x ^ -14902i, 4294967295u, abs(arg_1.x)) & reverseBits(-arg_0), 14486i));
    let var_3 = select(select(!(!select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, false), vec2<bool>(var_0, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, var_1.b), vec2<bool>(var_0, true))), var_0), !(!vec2<bool>(all(vec2<bool>(true, var_1.b)), false)), true);
    return Struct_4(_wgslsmith_f_op_f32(-295f * -1356f));
}

fn func_1() -> Struct_1 {
    var var_0 = any(vec2<bool>((_wgslsmith_div_u32(u_input.c.x, 0u) != global1[_wgslsmith_index_u32(u_input.c.x, 26u)]) && true, !(!select(true, false, true))));
    let var_1 = func_2(22147i, vec4<i32>(firstTrailingBit(~global0.x), global0.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(37841i, global0.x, 14758i, 0i)), vec4<i32>(37038i, global0.x, 0i, global0.x) << (vec4<u32>(64344u, 4294967295u, 67123u, 0u) % vec4<u32>(32u))), global0.x) & vec4<i32>(-20436i, min(~15380i, 1i << (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(3758i, global0.x, global0.x, -2147483647i), vec4<i32>(-25673i, global0.x, global0.x, -2312i)) >> (countOneBits(1u) % 32u), -global0.x));
    var var_2 = ~(~global0.x);
    let var_3 = var_1.a;
    global2 = u_input.a;
    return Struct_1(-44524i, true, vec2<i32>(-1i & global0.x, ~(~2147483647i)) >> (~select(u_input.c.xz, u_input.c.xy, true) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = Struct_4(arg_0.d);
    let var_2 = abs(25463i);
    global0 = vec3<i32>(global0.x, var_0.c.x, 24952i);
    var var_3 = -609f;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    var var_1 = Struct_2(false, func_4(Struct_2(true | (u_input.d > u_input.d), func_1(), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0, u_input.a), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25146u, 26u)], 26u)], 4294967295u, global1[_wgslsmith_index_u32(28232u, 26u)])), abs(25402u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 26u)], 26u)]), 1f, ~2236i), vec3<bool>(true, true, true), _wgslsmith_clamp_i32(-14089i << (global1[_wgslsmith_index_u32(4294967295u, 26u)] % 32u), -38982i, _wgslsmith_add_i32(global0.x, -40428i)) >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(reverseBits(var_0), 26u)], firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 26u)])) % 32u), Struct_3(vec3<f32>(-2004f, -859f, _wgslsmith_f_op_f32(f32(-1f) * -493f)))), vec4<u32>(~_wgslsmith_sub_u32(4245u, ~global1[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~26305u, ~var_0), 26u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(113091u, 26u)], var_0), vec4<u32>(0u, var_0, 26090u, 76912u))), ~min(~4294967295u, max(5202u, 84464u)), firstTrailingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 26u)], 26u)], 26u)], 26u)], 26u)])), -443f, -22081i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f + var_1.d)) + _wgslsmith_f_op_f32(-var_1.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - _wgslsmith_f_op_f32(-var_1.d)) - var_1.d)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))));
    var var_3 = Struct_1(-1i, all(!(!vec2<bool>(var_1.a, var_1.b.b))), -vec2<i32>(_wgslsmith_mod_i32(var_1.e << (u_input.c.x % 32u), var_1.b.c.x), global0.x));
    var var_4 = ~global1[_wgslsmith_index_u32(~countOneBits(countOneBits(~0u)), 26u)];
    var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c, vec4<i32>(var_3.c.x, var_1.b.a, -var_3.c.x, _wgslsmith_mult_i32(min(-1i >> (u_input.b % 32u), ~var_3.a), reverseBits(firstLeadingBit(global0.x)))), global0.x);
}

