struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 19982i;

var<private> global1: Struct_2;

var<private> global2: array<bool, 17>;

var<private> global3: array<bool, 19> = array<bool, 19>(true, false, false, false, false, false, true, true, true, false, true, true, false, false, false, false, true, false, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    return 27579u;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec3<i32>(~max(select(~(-2472i), ~(-1i), global3[_wgslsmith_index_u32(global1.d.b.x >> (4294967295u % 32u), 19u)]), select(_wgslsmith_sub_i32(-1i, 49879i), 56060i, true)), abs(1i), _wgslsmith_clamp_i32(global1.a.x, firstTrailingBit(u_input.b), 0i));
    global3 = array<bool, 19>();
    return ~func_1();
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, abs(17418u)), vec2<u32>(~23456u, _wgslsmith_div_u32(arg_1, 5778u))), vec2<u32>(abs(arg_1), ~(~0u))), arg_0.d.b);
    global0 = firstLeadingBit(select(_wgslsmith_div_i32(u_input.b, -u_input.b) >> (global1.d.b.x % 32u), ~arg_0.a.x, _wgslsmith_f_op_f32(floor(-1893f)) >= -2268f));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(19994u, _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(arg_0.b, var_0.x, var_0.x))), u_input.c.xwz), u_input.a.x), vec3<u32>(var_0.x ^ ((0u & arg_1) | 1u), ~1u, ~arg_0.d.b.x >> (~(~arg_0.d.b.x) % 32u)));
    let var_2 = arg_0.d;
    global0 = _wgslsmith_div_i32(reverseBits(countOneBits(-22845i)), max(_wgslsmith_div_i32(arg_0.a.x, ~40218i), u_input.b));
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(global1.b, ~func_1(), ~func_2(select(vec2<bool>(false, true), !vec2<bool>(global3[_wgslsmith_index_u32(global1.b, 19u)], true), 4294967295u != u_input.c.x)), global1.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e));
    global1 = Struct_2(abs(global1.a) | vec3<i32>(abs(i32(-1i) * -29388i), ~global1.a.x, reverseBits(u_input.b)), ~1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))))), Struct_1(_wgslsmith_mod_i32(min(1i, u_input.b), ~u_input.b) <= func_3(Struct_2(vec3<i32>(global1.a.x, -2147483647i, global1.a.x), global1.b, global1.e.x, Struct_1(true, vec2<u32>(35659u, 1u)), global1.e), firstTrailingBit(1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global1.c, var_1.x) * vec3<f32>(global1.c, -1311f, 585f))), min(~(vec2<u32>(global1.b, var_0.x) & vec2<u32>(global1.b, global1.b)), abs(var_0.zy))), global1.e);
    let var_2 = Struct_1(((global1.d.b.x >= (u_input.a.x ^ 24475u)) || !select(global3[_wgslsmith_index_u32(var_0.x, 19u)], false, global2[_wgslsmith_index_u32(8014u, 17u)])) | global1.d.a, ~(~max(~var_0.zy, ~global1.d.b)));
    let var_3 = !(!(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], var_2.a, true, true)))));
    global1 = Struct_2(vec3<i32>(~(~(global1.a.x << (1u % 32u))), ~2147483647i, 37344i), _wgslsmith_mod_u32(1u, ~(~1u & ~var_0.x)), var_1.x, global1.d, global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

