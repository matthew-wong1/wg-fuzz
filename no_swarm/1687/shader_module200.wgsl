struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<f32, 30> = array<f32, 30>(674f, 117f, -373f, -455f, -1074f, 1169f, -717f, 115f, 507f, -749f, 672f, 717f, -1617f, 1630f, 181f, -829f, -819f, -296f, -1403f, -2142f, 164f, -140f, -1240f, 286f, -251f, 622f, 625f, -1000f, -1907f, 2414f);

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 19602u, 7860u, 0u, 51138u, 4294967295u, 4536u, 41204u, 0u, 1u, 4294967295u, 16598u, 1u, 24048u, 93522u, 3454u, 4294967295u, 4294967295u, 29415u, 4294967295u, 4294967295u, 2564u, 53003u, 61883u);

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = min(_wgslsmith_clamp_vec4_u32(firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.b.x), vec4<u32>(48904u, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 34572u, u_input.a))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(22292u, 0u, 1u, u_input.a)), firstTrailingBit(~vec4<u32>(0u, u_input.a, 53642u, global2[_wgslsmith_index_u32(83563u, 24u)]))), ~vec4<u32>(1u, _wgslsmith_mod_u32(1u, 95914u), u_input.a, u_input.b.x | u_input.b.x)), abs(firstTrailingBit(~vec4<u32>(115588u, 4294967295u, 13965u, 68580u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~59861u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(4294967295u, u_input.b.x))), 30u)]));
    var var_2 = var_1;
    var var_3 = arg_1;
    var_2 = -775f;
    return false;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<u32> {
    global1 = array<f32, 30>();
    let var_0 = 1056f;
    global3 = array<vec3<bool>, 23>();
    var var_1 = !(~(u_input.b.x | 30208u) >= firstTrailingBit(36874u));
    global1 = array<f32, 30>();
    return _wgslsmith_mult_vec2_u32(~arg_0.xy, vec2<u32>(abs(0u), u_input.b.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = u_input.b.yx;
    var_0 = ~(vec2<u32>(_wgslsmith_sub_u32(abs(global2[_wgslsmith_index_u32(0u, 24u)]), ~var_0.x), var_0.x) & (u_input.b.xz ^ func_3(abs(u_input.b), Struct_1(vec4<i32>(arg_2.x, -2147483647i, arg_2.x, arg_2.x)), vec3<i32>(30545i, arg_1.x, -2147483647i))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(countOneBits(u_input.b.yz), vec2<u32>(firstTrailingBit(var_0.x), ~u_input.b.x)), ~reverseBits(~vec2<u32>(global2[_wgslsmith_index_u32(1u, 24u)], u_input.a))), ~var_0.x), 24u)];
    let var_2 = ~(~(-1i << (1u % 32u))) << (~global2[_wgslsmith_index_u32(33604u, 24u)] % 32u);
    global2 = array<u32, 24>();
    return Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, var_2, arg_1.x), arg_1), arg_1 | arg_1), vec4<i32>(-1i) * -arg_1), ~vec4<i32>(1i, _wgslsmith_clamp_i32(25438i, var_2, 0i), _wgslsmith_div_i32(1i, arg_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(40653i, -17956i, arg_1.x), vec3<i32>(arg_1.x, arg_2.x, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, !func_1(Struct_1(vec4<i32>(-59112i, -2147483647i, -8431i, 56612i)), Struct_1(vec4<i32>(62620i, -74631i, -31715i, 13367i)), -27930i)), vec2<bool>(true, true)), ~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(2147483647i, -1i, 2147483647i, -17651i), vec4<i32>(28429i, 0i, 377i, -32652i)), ~vec4<i32>(9622i, 1i, -10729i, 32254i), firstTrailingBit(vec4<i32>(5549i, 91413i, -18176i, -55971i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1317i, 7936i, -1i, 22362i), vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-53231i, -1i, 50728i, 1i))), vec3<i32>(_wgslsmith_sub_i32(~firstTrailingBit(-32857i), 0i), 1i, min(-select(2147483647i, 5678i, false), -2147483647i)));
    global1 = array<f32, 30>();
    let var_1 = -(~(-(var_0.a.wwx ^ ~var_0.a.wwz)));
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 11504u), reverseBits(func_3(u_input.b, func_2(vec2<bool>(true, true), var_0.a, vec3<i32>(-13402i, var_1.x, var_1.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-13191i, -1i, 2147483647i), var_2.zxw)))), 2147483647i, ~97054u, vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(21603u, ~0u), select(~4294967295u, _wgslsmith_mod_u32(u_input.b.x, 1u), true)), 30u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 30u)]))), u_input.b.zz);
}

