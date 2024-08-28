struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false));

var<private> global1: vec3<u32>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: vec2<u32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    return 47560u;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    let var_0 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global2.x, 114117u, global3.x)), ~min(vec3<u32>(4294967295u, global3.x, 4294967295u), vec3<u32>(0u, global1.x, 16369u))), 4294967295u));
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(min(vec3<u32>(~var_0, ~global3.x, ~0u), ~vec3<u32>(1u, var_0, global3.x)), ~vec3<u32>(select(global2.x, 4294967295u, false), global2.x, abs(global2.x))));
    global2 = global1.xx;
    global1 = vec3<u32>(~0u, func_3(select(vec4<bool>(true, true, true, true), !select(global0[_wgslsmith_index_u32(global1.x, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)], false), any(select(global0[_wgslsmith_index_u32(4294967295u, 14u)], vec4<bool>(true, false, true, true), true))), 33650i), global1.x);
    var_1 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(13724u, 63053u, 81102u) & ~(vec3<u32>(global1.x, global3.x, global3.x) >> (vec3<u32>(var_1.x, global1.x, 73707u) % vec3<u32>(32u)))), ~abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.x, 4294967295u, 83301u), max(vec3<u32>(var_0, 52792u, global2.x), vec3<u32>(global1.x, 0u, var_0)), vec3<u32>(global1.x, global1.x, global1.x))));
    return abs(global1.x) | ~var_1.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_u32(1u, global2.x);
    var var_1 = Struct_1(func_2(-127f, u_input.a, _wgslsmith_sub_i32(arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(-8517i, -2147483647i), -u_input.a))), !select(vec2<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 14u)]), any(global0[_wgslsmith_index_u32(global2.x, 14u)])), vec2<bool>(true, true), vec2<bool>(!arg_1, any(vec2<bool>(false, false)))), _wgslsmith_clamp_u32(26857u, global3.x, min(countOneBits(0u), 34645u)) > reverseBits(48631u));
    global2 = global1.zz;
    global0 = array<vec4<bool>, 14>();
    let var_2 = _wgslsmith_add_vec4_u32(max(~firstLeadingBit(vec4<u32>(36633u, global3.x, 4294967295u, global3.x) << (vec4<u32>(global2.x, 22267u, 43089u, 56038u) % vec4<u32>(32u))), vec4<u32>(global3.x, 66113u, ~1u, global1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~33427u, func_3(vec4<bool>(arg_1, var_1.b.x, var_1.c, arg_1), u_input.a.x), _wgslsmith_sub_u32(42561u, global1.x)), var_1.a, ~73454u, _wgslsmith_add_u32(~global2.x, 1u)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(6640u, var_1.a, global1.x, global2.x)) & vec4<u32>(global3.x, 1u, global3.x, global2.x), ~select(vec4<u32>(global1.x, global1.x, global1.x, global2.x), vec4<u32>(60400u, 15283u, 1u, 1u), global0[_wgslsmith_index_u32(60702u, 14u)]))));
    return ~var_2.wwz;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(select(true, true, all(arg_1.zx)), Struct_2((arg_1.x || true) && (arg_1.x | false), arg_1.zzy), Struct_2(arg_1.x, select(select(vec3<bool>(arg_1.x, arg_1.x, false), arg_1.xyx, true), !vec3<bool>(true, false, arg_1.x), arg_1.wwy))), func_1(u_input.a.x, false, ~firstTrailingBit(u_input.a.x | -27101i)).x);
    var var_1 = ~(~47134u);
    var_1 = 65171u;
    global3 = ~global1.xx;
    global0 = array<vec4<bool>, 14>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~(-2147483647i), global2.x < _wgslsmith_mult_u32(~global2.x, 47819u), ~u_input.a.x), select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(true, false, false) && false, any(vec4<bool>(true, true, true, true)), true), select(global0[_wgslsmith_index_u32(0u, 14u)], vec4<bool>(true, true, true, true), select(!global0[_wgslsmith_index_u32(global1.x, 14u)], !global0[_wgslsmith_index_u32(97194u, 14u)], true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(firstTrailingBit(abs(vec3<i32>(u_input.a.x, u_input.a.x, 0i))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, -60451i) >> (vec3<u32>(global3.x, 0u, 42326u) % vec3<u32>(32u)), vec3<i32>(0i, u_input.a.x, -9069i) | vec3<i32>(u_input.a.x, 21269i, -2147483647i)), vec3<i32>(70062i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, -22188i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, -57573i)))), ~(~global1.yy) ^ (vec2<u32>(~4294967295u, ~1u) >> (global1.xz % vec2<u32>(32u))), -1621f, ~func_1(~(u_input.a.x ^ u_input.a.x), global1.x >= ~global3.x, u_input.a.x));
}

