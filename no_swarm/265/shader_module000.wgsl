struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-21722i, 1274i, -22077i);

var<private> global1: array<u32, 5>;

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(15731i, -59735i, 1i), vec3<i32>(0i, -8025i, -15225i), vec3<i32>(-1i, -1i, 0i));

var<private> global4: array<bool, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(63175u), 16u)];
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    var var_1 = global4[_wgslsmith_index_u32(99329u, 16u)];
    var var_2 = 53123u;
    return global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u << (global1[_wgslsmith_index_u32(u_input.b, 5u)] % 32u), 7016u), 16u)];
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = Struct_2(Struct_1(global2.a.a), global2.a, _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c * global2.c), _wgslsmith_f_op_f32(global2.c + -104f)))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(33594i, global0.x, arg_0.x), reverseBits(-vec3<i32>(arg_0.x, arg_0.x, global0.x))), max(firstLeadingBit(firstTrailingBit(u_input.d)), max(_wgslsmith_clamp_vec3_i32(global2.a.a.yxx, vec3<i32>(12074i, global0.x, u_input.d.x), u_input.d), countOneBits(global2.a.a.yww)))));
    let var_1 = u_input.b;
    var var_2 = Struct_2(Struct_1(abs(vec4<i32>(0i, -u_input.d.x, global0.x, _wgslsmith_sub_i32(1i, arg_0.x)))), Struct_1(vec4<i32>(-2147483647i, u_input.d.x, _wgslsmith_dot_vec4_i32(global2.a.a, abs(vec4<i32>(-22642i, 19142i, 1i, 1i))), 2147483647i)), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(f32(-1f) * -4339f))), countOneBits(vec3<i32>(1i, 0i, arg_0.x) & var_0.d));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f), -810f);
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c, var_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1180f, var_3))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(685f, var_2.c), vec2<f32>(1917f, var_2.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-411f, 1243f) - vec2<f32>(1239f, var_2.c)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-388f, global2.c))), global4[_wgslsmith_index_u32(0u, 16u)] || true))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3067f, var_0.c) * vec2<f32>(var_2.c, var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(264f, -961f)))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1029f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(716f - var_0.c)))))));
    return var_0.a.a.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), -503f);
    let var_1 = !vec4<bool>(false, global0.x < countOneBits(-global0.x), any(vec3<bool>(global2.b.a.x < 1744i, global1[_wgslsmith_index_u32(u_input.c.x, 5u)] == 4294967295u, func_2(arg_0.a))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(30252u, global1[_wgslsmith_index_u32(31913u, 5u)])), 5u)], 5u)]), 16u)]);
    let var_2 = true;
    let var_3 = arg_0;
    var var_4 = u_input.b;
    return Struct_1(vec4<i32>(-2147483647i >> (0u % 32u), func_3(firstTrailingBit(vec2<i32>(2147483647i, u_input.d.x)) << (u_input.c % vec2<u32>(32u))), var_3.a.a.x, _wgslsmith_clamp_i32(arg_0.b.a.x, firstLeadingBit(firstLeadingBit(-1i)), global2.b.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c), abs(~(u_input.e.xz | u_input.c)))), 5u)];
    global0 = _wgslsmith_sub_vec3_i32(min(_wgslsmith_sub_vec3_i32(arg_0.a.xxw, global3[_wgslsmith_index_u32(max(4294967295u, global1[_wgslsmith_index_u32(u_input.c.x, 5u)]), 3u)]), countOneBits(global2.b.a.yww) >> (~vec3<u32>(68065u, global1[_wgslsmith_index_u32(32135u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 5u)], 5u)]) % vec3<u32>(32u))) << (u_input.e % vec3<u32>(32u)), global2.a.a.yyz);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(645f, -292f)) * arg_1) + _wgslsmith_f_op_f32(-global2.c))));
    let var_2 = ~_wgslsmith_clamp_vec4_i32(abs(func_1(Struct_2(Struct_1(arg_2.a), global2.a, var_1.x, vec3<i32>(63848i, -1i, 18498i))).a), _wgslsmith_sub_vec4_i32(-(~global2.b.a), countOneBits(arg_0.a) >> (abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.a, 16085u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)])) % vec4<u32>(32u))), vec4<i32>(-1i) * -(~vec4<i32>(-1i, global2.a.a.x, global0.x, global0.x)));
    let var_3 = arg_2;
    return select(select(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 16u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 16u)], false))), !(!select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 16u)], true, global4[_wgslsmith_index_u32(46204u, 16u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(13240u, 16u)], false), true)), !vec3<bool>(!global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(3809u, 16u)], all(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 16u)], false)))), !vec3<bool>(false, !(!global4[_wgslsmith_index_u32(43968u, 16u)]), true), global4[_wgslsmith_index_u32(0u & u_input.b, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(!vec3<bool>(global4[_wgslsmith_index_u32(83975u, 16u)], false, false), func_4(func_1(Struct_2(Struct_1(global2.b.a), Struct_1(vec4<i32>(12015i, global0.x, u_input.d.x, global0.x)), global2.c, vec3<i32>(-43723i, global2.a.a.x, global2.d.x))), _wgslsmith_f_op_f32(global2.c * global2.c), global2.a), vec3<bool>(u_input.b > 86613u, !global4[_wgslsmith_index_u32(0u, 16u)], false)), vec3<bool>(!(!global4[_wgslsmith_index_u32(1u, 16u)]), true, !(-1i != global0.x)), vec3<bool>(select(true, global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a, 5u)], 16u)], false), false, !(global0.x < u_input.d.x)));
    global1 = array<u32, 5>();
    var var_1 = vec3<bool>(var_0.x, true, false);
    let var_2 = all(vec2<bool>(!(~1u > ~u_input.a), true));
    var_1 = select(select(vec3<bool>(false, true, true), vec3<bool>(true, func_2(global2.a), false), vec3<bool>(any(vec4<bool>(var_0.x, false, var_2, true)), !(global0.x > u_input.d.x), var_0.x)), vec3<bool>(max(_wgslsmith_add_i32(u_input.d.x, -18036i), -24931i) >= -2147483647i, true, var_1.x), !(!vec3<bool>(var_1.x, func_4(Struct_1(global2.a.a), 2001f, Struct_1(vec4<i32>(global0.x, global0.x, global2.a.a.x, global2.d.x))).x, !global4[_wgslsmith_index_u32(u_input.c.x, 16u)])));
    let var_3 = global2.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1173f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1109f, -1647f, true)), -784f)), all(func_4(Struct_1(vec4<i32>(0i, u_input.d.x, global0.x, u_input.d.x)), global2.c, global2.a)))))));
    let var_5 = ~abs(~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(1i, firstTrailingBit(_wgslsmith_clamp_vec2_u32(firstTrailingBit(select(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 5u)]), u_input.c, var_0.x)), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(103050u, 5u)], global1[_wgslsmith_index_u32(37411u, 5u)])), ~vec2<u32>(14043u, 1u))), max(i32(-1i) * -24196i, min(global0.x, firstTrailingBit(0i << (u_input.b % 32u)))), global2.d);
}

