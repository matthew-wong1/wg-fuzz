struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<u32, 11>;

var<private> global2: array<bool, 24>;

var<private> global3: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    return firstTrailingBit(~(~(~(~830u))));
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 24>();
    let var_0 = vec3<u32>(~(~func_2()), abs(global1[_wgslsmith_index_u32(~max(_wgslsmith_clamp_u32(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u), max(1u, 23116u)), 11u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~global1[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(49964u, global1[_wgslsmith_index_u32(56486u, 11u)]) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(18157u, 0u), vec2<u32>(6542u, 9963u), vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(51190u, u_input.a))), 11u)], 11u)]);
    let var_1 = Struct_1(select(select(global0.yz << (~vec2<u32>(u_input.a, 45486u) % vec2<u32>(32u)), countOneBits(vec2<i32>(-29760i, -18340i) ^ vec2<i32>(-1i, global0.x)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), 24u)]), global0.xx, vec2<bool>(false, any(select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], false, global2[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(55772u, 24u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20352u, 11u)], 24u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35800u, 11u)], 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))))), var_0.yz, vec2<bool>(!global2[_wgslsmith_index_u32(u_input.a, 24u)], true), ~(i32(-1i) * -2147483647i) << (var_0.x % 32u));
    let var_2 = Struct_4(~6946i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -629f);
    var_1 = 452f;
    var_0 = Struct_1(global0.yy, ~min(vec2<u32>(~4294967295u, 29804u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 10247u), vec2<u32>(1u, u_input.a))), var_0.c, 31784i);
    var_1 = -678f;
    var var_2 = _wgslsmith_add_i32(-2147483647i, -reverseBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~81827u, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, -1589f, -207f, 721f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(957f, -1000f, -867f, 734f)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-1704f)), 1190f, -629f, -1668f))), 1i, ~firstLeadingBit(vec4<u32>(~0u, func_1().b.x, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(113364u, 11u)], 8157u), _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(16918u, u_input.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1146f, _wgslsmith_f_op_f32(floor(-942f)), true)), 1266f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -969f), _wgslsmith_f_op_f32(f32(-1f) * -2673f))), 1352f)));
}

