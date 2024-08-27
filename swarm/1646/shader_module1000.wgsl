struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: array<i32, 30> = array<i32, 30>(1i, 11964i, 2147483647i, i32(-2147483648), 2147483647i, 2147483647i, 6130i, 59741i, -10481i, 2147483647i, -1i, -3275i, 0i, 7076i, 1i, i32(-2147483648), i32(-2147483648), 38125i, 35106i, -24319i, 23970i, 19389i, 1i, 13012i, 0i, -1i, -1477i, -1i, -1i, -20304i);

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(8387i, 10257i, 74067i, 0i), vec4<i32>(0i, i32(-2147483648), 14456i, 1i), vec4<i32>(2147483647i, 0i, i32(-2147483648), -75744i), vec4<i32>(8664i, 1i, 0i, -52721i), vec4<i32>(-6242i, -1i, 14630i, 63378i), vec4<i32>(-1i, 2147483647i, -44008i, -10854i), vec4<i32>(2147483647i, 35705i, -344i, -1i), vec4<i32>(14390i, 2147483647i, -83093i, -1i), vec4<i32>(-20777i, 0i, 1i, 16902i));

var<private> global3: vec4<bool>;

var<private> global4: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>((global1[_wgslsmith_index_u32(10136u, 30u)] ^ global1[_wgslsmith_index_u32(u_input.c, 30u)]) >> (_wgslsmith_mod_u32(35948u, ~u_input.c) % 32u), ~43143i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-26175i, _wgslsmith_add_i32(-34407i, u_input.d), -u_input.e)), -vec3<i32>(0i, u_input.e ^ 65035i, firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 30u)]))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstLeadingBit(reverseBits(-1i)), ~u_input.e, u_input.d), abs(1i)));
    var var_1 = vec2<bool>(true, false);
    let var_2 = Struct_2(true, Struct_1(vec2<u32>(countOneBits(4294967295u), min(~u_input.c, ~u_input.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, -806f, -649f, -367f)), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(1u, 6u)], vec4<f32>(362f, -1000f, 613f, 1000f)))))), 94217u, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f * -945f))));
    var var_3 = var_2;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(sign(var_2.c)) < var_2.c, var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1144f, _wgslsmith_f_op_f32(-433f + var_3.b.b.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.c)), var_3.b.b.x)))));
    return !var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    global1 = array<i32, 30>();
    let var_0 = arg_0.b;
    var var_1 = Struct_1(vec2<u32>(u_input.c, 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, 500f, -987f, 1066f) * global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, arg_0.b.c), 6u)])) * global0[_wgslsmith_index_u32(1u, 6u)]), ~_wgslsmith_mult_u32(~(~var_0.c), arg_0.b.c), false);
    global2 = array<vec4<i32>, 9>();
    var var_2 = Struct_2(func_3(), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -435f));
    return !all(select(global3.yx, vec2<bool>(any(global3.yz), true), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> vec3<f32> {
    global0 = array<vec4<f32>, 6>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -106f), 488f, global3.x)) * _wgslsmith_div_f32(-1320f, _wgslsmith_f_op_f32(f32(-1f) * -892f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(679f * 1072f))), _wgslsmith_f_op_f32(select(-415f, -224f, func_2(Struct_2(global3.x, Struct_1(vec2<u32>(4294967295u, arg_2), global0[_wgslsmith_index_u32(34235u, 6u)], arg_1, true), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, 1000f)) * vec2<f32>(1000f, 745f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-861f, 956f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1388f + 2694f) - _wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-280f)), -1699f, 1741f)), _wgslsmith_f_op_vec3_f32(func_1(-(~vec3<i32>(global1[_wgslsmith_index_u32(1u, 30u)], 37513i, u_input.d)), 0u ^ (0u >> (u_input.a % 32u)), ~(~u_input.c))))));
    global2 = array<vec4<i32>, 9>();
    let var_1 = any(select(vec4<bool>(select(global3.x, false, false), global3.x, !global3.x, global3.x), vec4<bool>(true, !(!global3.x), true, any(select(vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(true, global3.x, true, true), vec4<bool>(false, global3.x, true, global3.x)))), !global3.x));
    global3 = select(!(!vec4<bool>(-1209f == var_0.x, var_1, all(vec2<bool>(false, global3.x)), any(global3.xwy))), !(!(!vec4<bool>(var_1, global3.x, var_1, global3.x))), global3.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(333f - var_0.x), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(max(-741f, var_0.x)), var_1))), 243f, !(!var_1))), var_0.x);
    var var_3 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c & u_input.a), vec2<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, 0u), ~u_input.c), countOneBits(~vec2<u32>(u_input.a, u_input.c))), ~(~vec2<u32>(48448u, u_input.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_0.x, -660f))), 1u, !(-min(global1[_wgslsmith_index_u32(58195u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]) != global1[_wgslsmith_index_u32(u_input.a, 30u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_1(u_input.b, 16u, u_input.a)).x, _wgslsmith_f_op_f32(var_3.b.x + 840f), true && var_1))), 561f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(floor(var_3.b.x)))) - var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(ceil(-2675f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(abs(-1263f))))), 702f));
}

