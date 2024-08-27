struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(0u, 14918u), vec2<u32>(0u, 1u), vec2<u32>(0u, 73157u), vec2<u32>(24716u, 7681u), vec2<u32>(48864u, 1u), vec2<u32>(4294967295u, 16300u), vec2<u32>(68894u, 35999u), vec2<u32>(0u, 86205u), vec2<u32>(1u, 104119u), vec2<u32>(159234u, 47675u), vec2<u32>(39348u, 4294967295u), vec2<u32>(16507u, 4294967295u), vec2<u32>(1u, 4294967295u));

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 8>;

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_vec2_u32(~(~(u_input.a ^ ~u_input.e.xy)), vec2<u32>(countOneBits(~43990u), _wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], u_input.d, u_input.e.x) >> (vec4<u32>(29158u, 0u, 5932u, 43530u) % vec4<u32>(32u))) ^ ~vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 1u, u_input.a.x, 16638u), countOneBits(vec4<u32>(13208u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14976u, 8u)], 8u)], 14894u, 1u))))));
    let var_1 = Struct_1(global2.zx, global4.x);
    global4 = vec2<i32>(~(-66289i), -1i);
    var var_2 = var_1.a.x;
    let var_3 = var_1;
    return 57497u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(-1537f, vec4<u32>(~2995u, 689u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~5485u), 8u)], 53481u), 56934u), vec3<i32>(abs(_wgslsmith_div_i32(-global4.x, global4.x)), -(global4.x >> (abs(6732u) % 32u)), -13592i), Struct_1(global2.xy, ~(-2147483647i)), Struct_1(global2.xx, _wgslsmith_div_i32(global4.x, ~(~u_input.c))));
    let var_1 = _wgslsmith_mod_i32(var_0.e.b, _wgslsmith_sub_i32(~(-countOneBits(global4.x)), ~_wgslsmith_sub_i32(1i, global4.x)));
    return Struct_3(abs(abs(0u)), !(!(!select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(var_0.e.a.x, global2.x, var_0.d.a.x, false), vec4<bool>(var_0.e.a.x, false, true, false)))), vec3<u32>(func_3() ^ 1u, 0u, func_3()));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_1(!(!select(vec2<bool>(var_0.b.x, var_0.b.x), select(vec2<bool>(false, true), vec2<bool>(global2.x, true), vec2<bool>(false, var_0.b.x)), !vec2<bool>(var_0.b.x, false))), global4.x << (abs(abs(func_2().a)) % 32u));
    var var_2 = !(!vec2<bool>(var_1.a.x, true));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1290f)))))), _wgslsmith_sub_vec4_u32(select(min(vec4<u32>(4294967295u, 1u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20583u, 8u)], 8u)]), vec4<u32>(1u, global3[_wgslsmith_index_u32(var_0.a, 8u)], u_input.d, 0u)), min(vec4<u32>(global3[_wgslsmith_index_u32(var_0.a, 8u)], 10602u, global3[_wgslsmith_index_u32(56584u, 8u)], 0u), vec4<u32>(var_0.a, var_0.a, 39488u, 862u)), select(var_1.a.x, false, var_0.b.x)), firstTrailingBit(countOneBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u)))) << (~(~vec4<u32>(4294967295u, 29389u, u_input.d, 26417u)) % vec4<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(~global4.x, global4.x), firstLeadingBit(0i), ~1i), var_1, Struct_1(!(!var_1.a), -19118i));
    let var_4 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(9994i, 13241i, global4.x, u_input.b)), abs(vec4<i32>(0i, global4.x, var_1.b, 2147483647i))), ~_wgslsmith_add_i32(1060i, -1i), -global4.x, -69060i), -firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-17982i, 2147483647i, var_1.b, -15365i), vec4<i32>(-15806i, global4.x, -43516i, u_input.b))));
    return Struct_1(select(var_3.e.a, vec2<bool>(!var_1.a.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + 765f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * -878f))), -firstTrailingBit(var_4));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<u32, 8>();
    var var_1 = !select(vec4<bool>(all(!vec4<bool>(true, var_0.a.x, true, global2.x)), global2.x, var_0.a.x, all(!vec2<bool>(false, global2.x))), !select(func_2().b, select(vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, global2.x, false), global2.x), func_1().a.x), func_2().b);
    var var_2 = Struct_1(select(vec2<bool>(true, all(!global2.xz)), vec2<bool>(var_1.x, !(!var_0.a.x)), var_0.a.x), -reverseBits(-1i));
    var var_3 = func_1();
    var var_4 = countOneBits(firstLeadingBit(-(vec2<i32>(-5282i, var_0.b) ^ vec2<i32>(-2147483647i, global4.x)))) >> (vec2<u32>(~(~(~4294967295u)), ~(~(~u_input.a.x))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~select(vec4<u32>(u_input.e.x, 0u, 4294967295u, 0u), vec4<u32>(u_input.a.x, u_input.d, global3[_wgslsmith_index_u32(7308u, 8u)], 0u), true)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 29939u, 13937u, u_input.e.x), ~vec4<u32>(4294967295u, 0u, 4201u, u_input.e.x)) ^ ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15595u, 8u)], 8u)], 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u)), vec3<u32>(global3[_wgslsmith_index_u32(15209u, 8u)], 4294967295u, countOneBits(0u ^ (global3[_wgslsmith_index_u32(4294967295u, 8u)] | global3[_wgslsmith_index_u32(1u, 8u)]))), 1u, 535f);
}

