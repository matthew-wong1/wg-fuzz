struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 1u, 1u);

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec4<u32>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), 529f, vec2<i32>(-18041i, -43970i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = vec2<i32>(global3.c.x, ~598i);
    let var_1 = arg_0;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global2.x, _wgslsmith_dot_vec2_u32(global2.xy, min(global0.yy, vec2<u32>(49689u, 177u)) << (~vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)))) & ~_wgslsmith_mult_u32(20413u, global2.x | ~global0.x), 24u)];
    var var_3 = reverseBits(global2.wwx | ((global0.wwx | ~vec3<u32>(global0.x, global0.x, 8164u)) >> ((countOneBits(global0.zwx) << (vec3<u32>(global0.x, 27934u, global0.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_4 = global1[_wgslsmith_index_u32(1u, 24u)];
    return firstLeadingBit(_wgslsmith_div_i32(57308i, ~(-_wgslsmith_sub_i32(2147483647i, var_4.c.x))));
}

fn func_2() -> f32 {
    global2 = ~(~(~vec4<u32>(4294967295u, global2.x, global0.x, global2.x)) ^ ~vec4<u32>(global0.x, 4294967295u, 28522u, global0.x)) >> (_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 26429u, 66898u, global2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global2.x, 1u, global2.x), vec4<u32>(67141u, global0.x, global2.x, global2.x))), ~countOneBits(vec4<u32>(4294967295u, global2.x, global2.x, 1284u)) << (vec4<u32>(global0.x, _wgslsmith_mult_u32(0u, 4294967295u), 15796u, 76659u) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_0 = func_3(global1[_wgslsmith_index_u32(19512u, 24u)], !global3.a.x);
    global3 = global1[_wgslsmith_index_u32(global2.x, 24u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.b)), -979f, _wgslsmith_f_op_f32(max(-1505f, _wgslsmith_f_op_f32(sign(-1598f))))))));
    global0 = ~vec4<u32>(global0.x & (global2.x >> (global2.x % 32u)), global2.x, ~_wgslsmith_mult_u32(5183u, global2.x), _wgslsmith_add_u32(global0.x << (45652u % 32u), reverseBits(7031u))) & ~vec4<u32>(_wgslsmith_div_u32(global2.x, 63553u << (global0.x % 32u)), abs(max(global2.x, global2.x)), ~_wgslsmith_clamp_u32(1u, global2.x, global0.x), global2.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global3.b, 631f, false)))) + -1000f);
}

fn func_1() -> i32 {
    var var_0 = Struct_1(global3.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))) - global3.b))), abs(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, global3.c.x), ~0i)) & ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a)));
    global0 = ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, global0.x, global2.x, 1675u) | vec4<u32>(global0.x, 22592u, global2.x, global0.x)), select(vec4<u32>(global2.x, global0.x, global0.x, global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 0u, global2.x, global0.x), vec4<u32>(global0.x, 0u, 60905u, global0.x)), global3.a), select(vec4<u32>(7252u, 80037u, 0u, 46849u), vec4<u32>(13448u, global2.x, 63578u, 56358u), true) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, 4294967295u, 20124u), vec4<u32>(4294967295u, 4294967295u, global2.x, 6594u)) % vec4<u32>(32u))) & vec4<u32>(min(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0.x, global2.x), ~0u), ~firstLeadingBit(0u)), global0.x, ~(4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 33410u), global2.xy)), ~(~25553u) ^ global2.x);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.b))))))));
    var var_2 = global1[_wgslsmith_index_u32(select(firstTrailingBit(1u), max(1u, select(global2.x, reverseBits(global2.x), !all(global3.a.xx))), all(vec3<bool>(false, true, true))), 24u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -434f));
    return ~(-var_2.c.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec4<u32> {
    return vec4<u32>(4294967295u, _wgslsmith_add_u32(0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(~global0.xwx, global2.yyx))), max(global0.x, _wgslsmith_div_u32(3456u, _wgslsmith_mult_u32(min(0u, global2.x), 1u))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(_wgslsmith_mult_u32(3065u, global0.x ^ 0u), global0.x, ~4294967295u, ~(~_wgslsmith_sub_u32(38299u, 1u)));
    global0 = func_4(select(select(select(vec4<bool>(global3.a.x, global3.a.x, true, true), vec4<bool>(true, global3.a.x, global3.a.x, true), vec4<bool>(false, global3.a.x, true, global3.a.x)), vec4<bool>(global3.a.x, false, global3.a.x, true), global3.a), select(vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), !global3.a, global3.a), true), global1[_wgslsmith_index_u32(~(~(1u & global0.x)), 24u)], vec4<i32>(global3.c.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(37358i, global3.c.x)), vec2<i32>(global3.c.x, global3.c.x)), func_1(), global3.c.x ^ u_input.a.x), false) << (~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 1u, 1330u, 1u), vec4<u32>(global2.x, 0u, 1u, 1u)))) % vec4<u32>(32u));
    let var_0 = 38915u;
    var var_1 = global3.a.ywy;
    let var_2 = ~1u;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(0u, 0u)), var_2), var_2), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec4<u32>(var_0, 1u, 609u, 28019u))), vec2<u32>(4294967295u, global2.x), ~global0.yx);
}

