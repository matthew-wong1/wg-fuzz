struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 28>;

var<private> global2: array<i32, 5> = array<i32, 5>(-1i, 8689i, 10559i, -12236i, 6308i);

var<private> global3: vec4<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.b.x)))), -218f));
    let var_1 = reverseBits(select(-global4.a.wwy, -reverseBits(select(global4.a.xyx, global4.a.xzx, false)), true));
    var var_2 = _wgslsmith_f_op_f32(-global4.b.x);
    var var_3 = abs(-15440i);
    var var_4 = false;
    return ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_sub_i32(0i, var_1.x), ~global0.a.x, -1258i), _wgslsmith_mod_vec4_i32(global0.a, global4.a << (vec4<u32>(u_input.b, u_input.c, 1u, u_input.c) % vec4<u32>(32u)))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(~countOneBits(global0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1008f, 1000f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), -1000f), arg_0)));
    let var_1 = ~global2[_wgslsmith_index_u32(~(~4294967295u), 5u)];
    global2 = array<i32, 5>();
    global3 = vec4<i32>(global4.a.x, 2147483647i, -30757i, countOneBits(~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_0.a.x >> (4294967295u % 32u))));
    let var_2 = vec2<i32>(1i, 0i);
    return Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.a.x & var_1, global2[_wgslsmith_index_u32(0u | u_input.b, 5u)], -41626i, -1i >> (u_input.c % 32u)), select(_wgslsmith_sub_vec4_i32(~global4.a, vec4<i32>(15682i, var_1, global2[_wgslsmith_index_u32(31240u, 5u)], global3.x)), func_3(), !arg_0)), vec2<f32>(_wgslsmith_f_op_f32(round(global4.b.x)), global4.b.x));
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = abs(global2[_wgslsmith_index_u32(abs(countOneBits(reverseBits(0u))), 5u)]);
    let var_1 = vec3<f32>(-1427f, -1270f, global0.b.x);
    let var_2 = global4.b.x;
    global0 = func_2(true);
    var var_3 = func_2(!arg_0.x);
    return ~vec4<u32>(~_wgslsmith_div_u32(1u, abs(1u)), _wgslsmith_mult_u32(59155u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.b, u_input.b))), firstTrailingBit(firstLeadingBit(u_input.c)) >> (~max(u_input.b, 16554u) % 32u), ~((u_input.b ^ 4294967295u) ^ _wgslsmith_clamp_u32(u_input.c, u_input.b, 27177u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u) ^ ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(69229u, 76589u, u_input.c, u_input.b)), func_1(vec2<bool>(false, false))), ~u_input.a, 12758u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1168f))), _wgslsmith_f_op_f32(-global0.b.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f))));
    var var_3 = _wgslsmith_mult_u32(select(41567u, 0u, true), 0u);
    var var_4 = var_1;
    global2 = array<i32, 5>();
    var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, _wgslsmith_f_op_f32(trunc(-620f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, 1f, 895f))), _wgslsmith_mod_vec4_i32(-select(~global4.a, global4.a >> (vec4<u32>(0u, u_input.a, 39404u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(false, false, false, false)), firstLeadingBit(min(global0.a & vec4<i32>(56941i, global0.a.x, global3.x, global2[_wgslsmith_index_u32(var_0, 5u)]), global0.a))));
}

