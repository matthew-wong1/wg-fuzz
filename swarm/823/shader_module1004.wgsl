struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(33549u, 0u, 4294967295u, 51618u, 4294967295u, 23115u, 25003u, 1u, 1u, 5074u, 4294967295u, 0u, 11176u, 23510u, 60066u, 29425u, 1u);

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

var<private> global3: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> u32 {
    let var_0 = select(false, global2.c == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.c - 266f)))), false);
    let var_1 = Struct_1(~15359u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1.x << (global1.x % 32u), 53463u, ~26031u, 0u >> (1u % 32u))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.x, 4294967295u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(60518u, 17u)], 63849u, global2.a.x)), countOneBits(abs(vec4<u32>(0u, 4294967295u, 113153u, 36848u))))));
    let var_2 = vec2<i32>(2147483647i, global2.b.x);
    global1 = u_input.b;
    let var_3 = -global2.b;
    return ~var_1.b ^ _wgslsmith_add_u32(71294u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1.x, global0[_wgslsmith_index_u32(0u, 17u)], 0u, global2.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(38754u, 4294967295u, global2.a.x, 53724u), vec4<u32>(var_1.a, 4294967295u, 1u, global0[_wgslsmith_index_u32(0u, 17u)]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global2 = Struct_3(global2.a << (select(~_wgslsmith_clamp_vec2_u32(global2.a, global1.xz, vec2<u32>(1u, global2.a.x)), vec2<u32>(arg_1.b, u_input.a.x), vec2<bool>(false, true)) % vec2<u32>(32u)), vec4<i32>(~16337i ^ select(13157i, global2.d.x, true), global2.b.x, global2.d.x, -36398i), global2.c, global2.d);
    global2 = Struct_3(~_wgslsmith_sub_vec2_u32(~min(vec2<u32>(31785u, 1u), vec2<u32>(11857u, u_input.a.x)), max(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, arg_1.a) | vec2<u32>(global1.x, global1.x))), vec4<i32>(firstTrailingBit(~(-1i)), i32(-1i) * -1i, global2.d.x, ~countOneBits(global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c - global2.c)), vec2<i32>(abs(_wgslsmith_add_i32(global2.d.x, global2.b.x)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, 65447i), vec2<i32>(-6365i, global2.d.x)), -1i << (reverseBits(select(global2.a.x, 4294967295u, false)) % 32u)));
    var var_0 = firstTrailingBit(arg_0.a);
    var_0 = reverseBits(abs(select(vec3<i32>(615i & var_0.x, 6788i, _wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(31762i, 20784i))), firstLeadingBit(global2.b.ywz), !any(vec4<bool>(false, false, true, false)))));
    var var_1 = true;
    return ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.x, 30149u), ~1u, countOneBits(func_1())) | arg_1.b;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global3 = 2147483647i;
    global3 = -(arg_0.b.x & firstLeadingBit(_wgslsmith_clamp_i32(~global2.b.x, i32(-1i) * -1i, arg_0.d.x)));
    return Struct_1(~func_1(), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(~3252u, ~1u), func_3(Struct_2(vec3<i32>(-30059i, arg_0.d.x, 1i)), Struct_1(global1.x, 45425u)), ~1u));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(27864u, firstLeadingBit(_wgslsmith_div_u32(~44848u, 1u)));
    var var_1 = !vec3<bool>(true, _wgslsmith_f_op_f32(-global2.c) != 636f, true | !any(vec3<bool>(false, true, false)));
    let var_2 = Struct_2(min(max(-vec3<i32>(global2.d.x, global2.d.x, global2.b.x) >> (~u_input.b % vec3<u32>(32u)), -max(global2.b.zww, vec3<i32>(global2.b.x, global2.b.x, global2.b.x))), vec3<i32>(reverseBits(global2.b.x), 1i, -43255i)));
    var var_3 = global2.b;
    var_1 = !(!vec3<bool>(true, all(var_1.zz), (var_0.b | 4294967295u) == 12703u));
    return 43346u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(1u, firstTrailingBit(global2.a.x), _wgslsmith_mod_u32(~abs(1u), func_4(func_1(), func_2(Struct_3(u_input.a, global2.b, global2.c, vec2<i32>(-1059i, 5326i)))) >> (1u % 32u)));
    global0 = array<u32, 17>();
    global2 = Struct_3(global2.a, vec4<i32>(reverseBits(global2.d.x), 3881i, firstLeadingBit(global2.b.x), -1i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -vec2<i32>(global2.d.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 72442i), global2.b.x & 2147483647i)));
    let var_0 = u_input.b;
    var var_1 = !(1894i <= global2.b.x);
    var_1 = 0i <= global2.d.x;
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, global1.x, ~max(abs(89610u), 112851u)), vec3<i32>(global2.b.x, -1i >> (global0[_wgslsmith_index_u32(110962u, 17u)] % 32u), ~(-2147483647i)));
}

