struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec3<u32>(81822u, 4724u, 40915u)), vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 0u, 4294967295u)), 662f);

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec3<u32>(8374u, 4294967295u, 66324u)), vec2<bool>(true, false), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec3<u32>(36923u, 12407u, 38253u)), 579f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec3<u32>(1u, 4294967295u, 1u)), vec2<bool>(false, false), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec3<u32>(24115u, 1u, 0u)), 161f), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec3<u32>(23943u, 0u, 4294967295u)), vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec3<u32>(24642u, 0u, 50370u)), -365f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec3<u32>(12490u, 4415u, 4294967295u)), vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 3215u, 1u)), -265f), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec3<u32>(0u, 1u, 21865u)), vec2<bool>(true, false), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec3<u32>(4642u, 0u, 9705u)), 612f), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec3<u32>(0u, 0u, 4294967295u)), vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec3<u32>(0u, 4294967295u, 4294967295u)), 1000f), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec3<u32>(37972u, 0u, 4294967295u)), vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 1u, 4294967295u)), 707f), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 0u, 0u)), vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec3<u32>(38945u, 0u, 83020u)), -2187f), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec3<u32>(87111u, 12259u, 4294967295u)), vec2<bool>(true, true), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 13489u, 1u)), 1739f), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec3<u32>(13254u, 30997u, 21722u)), vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 0u, 0u)), -100f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 0u, 0u)), vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec3<u32>(23457u, 9902u, 1u)), -533f), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec3<u32>(67514u, 31738u, 8418u)), vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec3<u32>(0u, 41573u, 4294967295u)), 1201f), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec3<u32>(0u, 50990u, 20749u)), vec2<bool>(false, true), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec3<u32>(0u, 7919u, 1u)), -1832f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec3<u32>(0u, 1u, 1u)), vec2<bool>(true, false), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec3<u32>(47846u, 73466u, 0u)), 355f), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec3<u32>(7575u, 16706u, 50000u)), vec2<bool>(true, true), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 0u, 99148u)), 1028f), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec3<u32>(84365u, 43815u, 63983u)), vec2<bool>(true, true), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec3<u32>(0u, 13756u, 54270u)), -1000f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 28241u, 60544u)), vec2<bool>(false, false), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec3<u32>(1u, 19894u, 1u)), 1000f));

var<private> global2: array<Struct_5, 25>;

var<private> global3: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(2147483647i, 2028i, 16784i), vec3<i32>(i32(-2147483648), 0i, 17934i), vec3<i32>(-21107i, 37728i, 0i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(i32(-2147483648), -12344i, 12011i), vec3<i32>(-12522i, 0i, i32(-2147483648)), vec3<i32>(38484i, i32(-2147483648), 28833i), vec3<i32>(0i, 11603i, 24019i), vec3<i32>(-9562i, 262i, 67491i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: f32) -> f32 {
    let var_0 = global0.a.a.x;
    let var_1 = 1u;
    global2 = array<Struct_5, 25>();
    return arg_2;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-158f, -526f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u, vec3<i32>(arg_0.x, -67753i, 2147483647i), -394f))), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - global0.d)))));
    global3 = array<vec3<i32>, 9>();
    global3 = array<vec3<i32>, 9>();
    var var_1 = vec3<f32>(1958f, -838f, var_0.x);
    let var_2 = global0.a;
    return !all(vec2<bool>(global0.a.a.x & true, false));
}

fn func_3() -> u32 {
    global2 = array<Struct_5, 25>();
    global0 = Struct_2(Struct_1(select(global0.c.a, !select(global0.a.b, global0.c.b, vec4<bool>(global0.b.x, global0.c.b.x, false, global0.b.x)), true), !(!select(global0.a.b, vec4<bool>(true, true, true, global0.a.b.x), global0.c.a)), ~vec3<u32>(~4294967295u, ~global0.c.c.x, firstLeadingBit(0u))), vec2<bool>(false, false), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(790f)) - 1000f)) - global0.d));
    global0 = global1[_wgslsmith_index_u32(max(1u, abs(~firstTrailingBit(95962u) ^ 1u)), 17u)];
    var var_0 = !(all(global0.a.b.yyw) && true) == (u_input.a < _wgslsmith_sub_u32(~countOneBits(u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.wzy, global0.a.c), global0.c.c.x)));
    var var_1 = Struct_5(-(~(-reverseBits(0i))), _wgslsmith_dot_vec3_i32(reverseBits(global3[_wgslsmith_index_u32(0u, 9u)]), vec3<i32>(1i, 1i, 1i)) << (_wgslsmith_sub_u32(global0.c.c.x | 0u, _wgslsmith_clamp_u32(9013u >> (u_input.a % 32u), 69669u, global0.c.c.x)) % 32u), ~vec2<i32>(-1i, _wgslsmith_div_i32(-4683i, ~(-3501i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(global0.d)))) * _wgslsmith_f_op_f32(sign(-929f))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -24529i;
    var var_1 = vec2<bool>(func_1(vec3<i32>(1i, select(abs(-1i), 1i, false), reverseBits(~1i))), false);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(global0.a.c.x, func_3(), _wgslsmith_mod_u32(u_input.a, u_input.a))) >> (u_input.a % 32u), 9u)], 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -26541i << (abs(u_input.b.x) % 32u), ~0i), vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-2147483647i, -12069i), ~(-17383i)), -69843i, _wgslsmith_sub_i32(countOneBits(0i), ~16324i))), u_input.b.wwy);
}

