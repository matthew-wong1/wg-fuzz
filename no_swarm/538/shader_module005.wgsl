struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(1i, 0i, -26695i, i32(-2147483648)), 40669u, Struct_1(1000f, false, vec3<i32>(2147483647i, i32(-2147483648), 45879i), vec2<u32>(16679u, 34530u)), -13613i, 49273u);

var<private> global2: array<vec3<bool>, 12>;

var<private> global3: array<vec3<u32>, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    global0 = array<Struct_1, 17>();
    let var_0 = !vec4<bool>(all(!select(vec2<bool>(global1.c.b, global1.c.b), vec2<bool>(global1.c.b, true), vec2<bool>(true, true))), true, !global1.c.b, global1.c.a > -2837f);
    global3 = array<vec3<u32>, 23>();
    global0 = array<Struct_1, 17>();
    var var_1 = !all(!(!var_0));
    return vec3<i32>(-1i) * -vec3<i32>(-50798i, global1.c.c.x, global1.a.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<u32> {
    global2 = array<vec3<bool>, 12>();
    let var_0 = Struct_3(global1.c, 446f, Struct_2(-abs(~vec4<i32>(0i, global1.d, 15273i, 25116i)), 511u, Struct_1(1985f, arg_0.x, vec3<i32>(global1.d, -41255i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, 28375i), vec2<i32>(24877i, -2147483647i))), max(~global1.c.d, ~global1.c.d)), _wgslsmith_div_i32(~arg_1.c.x, global1.a.x), ~1u), Struct_2(~vec4<i32>(-1i, 0i, arg_1.c.x, 1i) ^ vec4<i32>(_wgslsmith_mult_i32(arg_1.c.x, arg_1.c.x), global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, -2147483647i), arg_1.c.zx), arg_1.c.x | global1.a.x), 1u, arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-37625i, 17809i, arg_1.c.x), -func_3()), ~0u), global1.c.b);
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(239f, -1178f)))) - arg_1.a);
    let var_3 = vec3<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~arg_1.c, -vec3<i32>(1i, 0i, 1i)), global1.d), -19242i);
    return select(global1.c.d, arg_1.d, select(arg_0.yy, arg_0.yx, !select(select(vec2<bool>(false, true), vec2<bool>(false, arg_1.b), arg_0.zz), select(vec2<bool>(false, true), arg_0.yy, arg_0.xy), !vec2<bool>(global1.c.b, arg_1.b))));
}

fn func_1() -> u32 {
    let var_0 = global1.b;
    global3 = array<vec3<u32>, 23>();
    var var_1 = _wgslsmith_div_vec2_u32(abs(global1.c.d), vec2<u32>(0u, firstTrailingBit(~u_input.a))) & vec2<u32>(4294967295u, 1u);
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.c.d.x, var_1.x) >> (vec2<u32>(28999u, var_1.x) % vec2<u32>(32u)), func_2(vec3<bool>(global1.c.b, true, global1.c.b), global1.c, vec2<f32>(1878f, 1000f))), (vec2<u32>(var_1.x, u_input.a) >> (global1.c.d % vec2<u32>(32u))) << (~vec2<u32>(var_1.x, u_input.a) % vec2<u32>(32u))));
    global1 = Struct_2(global1.a, max(global1.b, var_1.x), Struct_1(global1.c.a, all(global2[_wgslsmith_index_u32(var_1.x, 12u)]), ~firstLeadingBit(global1.a.yzx) ^ abs(~vec3<i32>(0i, global1.c.c.x, 15264i)), ~global1.c.d), ~(-_wgslsmith_dot_vec3_i32(global1.c.c << (global3[_wgslsmith_index_u32(global1.e, 23u)] % vec3<u32>(32u)), global1.c.c << (global3[_wgslsmith_index_u32(var_1.x, 23u)] % vec3<u32>(32u)))), _wgslsmith_add_u32(59431u, var_2));
    return global1.c.d.x & 52902u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_1(-179f, ((_wgslsmith_add_u32(1u, u_input.a) >> (36617u % 32u)) > _wgslsmith_mult_u32(u_input.a & 0u, arg_0.x ^ u_input.a)) | !(_wgslsmith_sub_u32(arg_0.x, global1.e) < (u_input.a >> (u_input.a % 32u))), global1.a.xzw, vec2<u32>(~_wgslsmith_dot_vec2_u32(arg_0 ^ global1.c.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b, global1.c.d.x), vec2<u32>(arg_0.x, 8130u), arg_0)), arg_0.x));
    var var_1 = !select(select(vec4<bool>(true, true, !var_0.b, true), !select(vec4<bool>(var_0.b, var_0.b, global1.c.b, var_0.b), vec4<bool>(false, true, global1.c.b, var_0.b), vec4<bool>(true, false, false, false)), !any(vec3<bool>(var_0.b, true, true))), vec4<bool>(true, true, !any(vec4<bool>(var_0.b, false, global1.c.b, false)), true || select(global1.c.b, true, false)), !(!(!vec4<bool>(true, global1.c.b, var_0.b, false))));
    let var_2 = Struct_2(firstLeadingBit(~vec4<i32>(var_0.c.x, global1.a.x | 2147483647i, ~55973i, ~arg_1.x)), 30297u << ((4294967295u & (_wgslsmith_clamp_u32(4294967295u, 24723u, 22956u) >> (select(77274u, global1.b, var_1.x) % 32u))) % 32u), global0[_wgslsmith_index_u32(u_input.a, 17u)], global1.c.c.x | countOneBits(28316i << (arg_0.x % 32u)), min((countOneBits(arg_0.x) ^ _wgslsmith_mod_u32(u_input.a, 1u)) >> (global1.c.d.x % 32u), arg_0.x));
    let var_3 = vec3<bool>(true, var_0.b, all(vec4<bool>(true, true, true, true)));
    global1 = var_2;
    return Struct_2(~(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global1.a.x, 50512i, -52661i), abs(vec4<i32>(-44827i, var_2.d, arg_1.x, 19032i))) >> (vec4<u32>(u_input.a, ~arg_0.x, var_2.e, arg_0.x << (arg_0.x % 32u)) % vec4<u32>(32u))), var_0.d.x, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.c.a, var_2.c.a)))))), true, vec3<i32>(8660i, global1.d, ~abs(var_2.c.c.x)), select(~vec2<u32>(var_2.e, var_2.b), ~vec2<u32>(arg_0.x, var_0.d.x), !select(var_1.wx, var_3.zx, false))), -var_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, var_0.d.x), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 12228i ^ ~_wgslsmith_sub_i32(2463i, global1.c.c.x);
    global1 = func_4(vec2<u32>(~_wgslsmith_mod_u32(global1.e, reverseBits(23449u)), ~(89229u << (func_1() % 32u))), global1.c.c.zx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a * 660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a)), -1071f))), vec4<f32>(global1.c.a, global1.c.a, 1449f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(851f, 925f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f) - global1.c.a))));
    global1 = Struct_2(vec4<i32>(~(-24618i), abs(global1.c.c.x ^ _wgslsmith_sub_i32(-56844i, 0i)), firstTrailingBit(-37646i), 1i), u_input.a, global0[_wgslsmith_index_u32(~(~min(u_input.a, ~u_input.a)), 17u)], global1.a.x, global1.e);
    let var_1 = ~(~(firstLeadingBit(~vec4<u32>(57375u, u_input.a, 2065u, 1u)) >> (vec4<u32>(13506u, 0u, abs(0u), 4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-9892i, -2147483647i), global1.c.a, global3[_wgslsmith_index_u32(u_input.a, 23u)]);
}

