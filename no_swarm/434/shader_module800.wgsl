struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 96221u;

var<private> global1: array<Struct_2, 4>;

var<private> global2: vec2<u32>;

var<private> global3: vec2<f32> = vec2<f32>(-414f, 1000f);

var<private> global4: Struct_2 = Struct_2(191f, vec3<bool>(true, false, true), 1u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = ~u_input.a;
    let var_0 = (_wgslsmith_dot_vec2_u32(firstTrailingBit(~u_input.a), vec2<u32>(global4.c << (global4.c % 32u), ~global4.c)) ^ (~1u ^ ~(~global4.c))) << ((_wgslsmith_clamp_u32(global4.c, 28365u, 0u) >> (_wgslsmith_mult_u32(4980u, global2.x) % 32u)) % 32u);
    global3 = arg_0.b.yx;
    global4 = Struct_2(global3.x, vec3<bool>(all(vec4<bool>(select(false, false, arg_0.a), any(vec4<bool>(global4.b.x, false, arg_0.a, arg_0.a)), true, select(false, true, arg_0.e))), false, !select(any(global4.b), global4.b.x, true)), firstLeadingBit(max(countOneBits(38747u), 4294967295u)));
    let var_1 = reverseBits(1u);
    return !select(!(!select(global4.b, vec3<bool>(true, false, true), global4.b.x)), !global4.b, true);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = u_input.b;
    var_0 = firstTrailingBit(-16376i);
    var var_1 = Struct_2(global3.x, func_3(Struct_1(arg_0.b.x || !arg_0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, arg_0.a, 667f))), vec2<i32>(u_input.b, -6941i), _wgslsmith_add_i32(u_input.b, ~(-1i)), arg_0.b.x)), ~global4.c);
    return _wgslsmith_f_op_f32(-2951f - _wgslsmith_f_op_f32(arg_0.a * 534f));
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    global0 = ~max(firstLeadingBit(~0u), ~1u) | _wgslsmith_mult_u32(u_input.a.x, 1u);
    global1 = array<Struct_2, 4>();
    var var_0 = vec4<f32>(923f, global4.a, global4.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(1333f + global4.a), 1u <= u_input.a.x)))))));
    var var_1 = ~_wgslsmith_add_vec4_u32(arg_0, ~select(vec4<u32>(4294967295u, global4.c, global2.x, global4.c), vec4<u32>(arg_0.x, global4.c, global4.c, arg_0.x), vec4<bool>(false, global4.b.x, global4.b.x, global4.b.x)));
    global1 = array<Struct_2, 4>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + -1589f))), var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<u32>(4294967295u, select(~global2.x, 4294967295u, false), u_input.a.x), (vec3<u32>(global2.x << (u_input.a.x % 32u), ~global2.x, firstLeadingBit(global2.x)) | _wgslsmith_div_vec3_u32(select(vec3<u32>(global4.c, global4.c, 32770u), vec3<u32>(u_input.a.x, 24923u, 18488u), vec3<bool>(global4.b.x, false, false)), vec3<u32>(global4.c, 4294967295u, 4294967295u) >> (vec3<u32>(15116u, 1u, global2.x) % vec3<u32>(32u)))) & firstTrailingBit(~vec3<u32>(global4.c, 11475u, global2.x)), global4.b);
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(~67189u, global4.c, 0u << (global2.x % 32u), u_input.a.x))))));
    let var_1 = u_input.a;
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~global4.c, ~u_input.a.x, _wgslsmith_sub_u32(~global2.x, global2.x)), vec3<u32>(~firstLeadingBit(~global4.c), abs(~global4.c) ^ 1u, 77229u));
    let var_2 = max(select(vec3<i32>(27133i, u_input.b, -10375i) | abs(vec3<i32>(38608i, 24535i, -1i) >> (var_0 % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, -7888i, 0i) ^ vec3<i32>(-2147483647i, -2147483647i, u_input.b), -vec3<i32>(-1i, u_input.b, 16951i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-4849i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-27099i, u_input.b, 1i))), global4.b), -vec3<i32>(30070i, firstLeadingBit(u_input.b), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global4.a, global4.a, global3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1829f, 1000f, global4.a, 1009f) + vec4<f32>(-1313f, global3.x, global3.x, global4.a))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global4.a, global3.x, 170f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, -945f, global3.x, global4.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, global4.a, global4.a, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, global4.a, 999f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 190f), vec2<f32>(447f, global4.a))), vec2<f32>(global3.x, global4.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, global4.a), vec2<f32>(-601f, global4.a), global4.b.zz))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, 1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 140f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, global3.x))))))), global2.x);
}

