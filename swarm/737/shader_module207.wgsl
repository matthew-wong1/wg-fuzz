struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4796i, vec3<bool>(false, false, true), vec4<i32>(-1i, 2147483647i, -1i, 5717i), false);

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 30> = array<bool, 30>(true, true, false, false, true, true, false, true, true, false, true, true, true, true, false, false, true, false, false, true, false, false, false, false, false, true, true, false, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    global2 = array<bool, 30>();
    global1 = -vec4<i32>(global0.a, _wgslsmith_div_i32(arg_1, -2147483647i), i32(-1i) * -16895i, ~_wgslsmith_mult_i32(-14972i, global1.x));
    global1 = arg_2;
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1789f + -1090f)) + 1f)))));
    var var_1 = vec2<f32>(270f, 628f);
    return _wgslsmith_mult_u32(112499u, 0u);
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, -621f, -161f, -165f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, 2178f, -1379f, -722f) + vec4<f32>(688f, -372f, -878f, 875f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, _wgslsmith_f_op_f32(858f * _wgslsmith_f_op_f32(397f - 108f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f - -436f)), -164f)));
    global0 = Struct_1(-((global0.c.x ^ global1.x) | -2147483647i) >> (_wgslsmith_add_u32(reverseBits(u_input.a) << (func_3(Struct_1(global1.x, global0.b, global0.c, global2[_wgslsmith_index_u32(u_input.a, 30u)]), 1i, global0.c) % 32u), firstLeadingBit(u_input.a)) % 32u), global0.b, vec4<i32>(-_wgslsmith_sub_i32(~2147483647i, _wgslsmith_dot_vec3_i32(global0.c.wwy, global1.zwx)), 1i, global0.a, -52317i), true);
    global0 = Struct_1(37424i, global0.b, countOneBits(_wgslsmith_clamp_vec4_i32(abs(global0.c) >> (vec4<u32>(u_input.a, 50923u, 0u, 3013u) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -51387i, 1i, global1.x), vec4<i32>(global0.a, -33388i, global0.c.x, -1i)), global0.c | global0.c)), false);
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(global1.x, 33596i), ~_wgslsmith_mult_i32(-4704i, 1i)) | ~(~(1i << (u_input.a % 32u))), select(vec3<bool>(true, true, true), global0.b, select(vec3<bool>(any(global0.b.xx), any(vec2<bool>(global0.d, true)), global2[_wgslsmith_index_u32(u_input.a, 30u)]), global0.b, global0.b.x)), abs(global0.c), global2[_wgslsmith_index_u32(14340u, 30u)]);
}

fn func_1() -> vec2<f32> {
    var var_0 = abs(abs(firstTrailingBit(vec3<u32>(u_input.a, 0u, 1u) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) >> (vec3<u32>(abs(u_input.a), u_input.a, u_input.a) % vec3<u32>(32u))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(619f, 1430f, true)))), _wgslsmith_f_op_f32(-1022f * -583f), 2870f)));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.x))))))));
    let var_4 = _wgslsmith_add_vec3_i32(~global0.c.xyx, vec3<i32>(-(~8301i), global1.x, -reverseBits(-var_1.c.x)));
    return var_2.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(542f, _wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(1000f - -286f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1()))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))), !select(select(global0.b.yx, global0.b.xy, global0.d), global0.b.zx, select(vec2<bool>(true, false), global0.b.zy, vec2<bool>(global0.b.x, global0.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2352f, -1072f) - vec2<f32>(-1309f, 900f)))))));
    var var_1 = func_2();
    var var_2 = Struct_1(var_1.a, func_2().b, -global0.c, all(var_1.b.zy));
    var var_3 = func_2();
    global2 = array<bool, 30>();
    let var_4 = global0.a;
    let var_5 = min(vec3<u32>(u_input.a, ~_wgslsmith_mod_u32(65997u, abs(u_input.a)), _wgslsmith_div_u32(0u, u_input.a)), vec3<u32>(u_input.a, _wgslsmith_add_u32(min(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), u_input.a), func_3(func_2(), -var_3.c.x >> (4560u % 32u), ~(~var_1.c))));
    global1 = firstTrailingBit(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-37208i, 1i, 1i, var_2.a)), min(_wgslsmith_clamp_vec4_i32(max(var_2.c, var_3.c), reverseBits(vec4<i32>(-2147483647i, var_3.c.x, 0i, 643i)), vec4<i32>(var_3.c.x, global0.a, var_1.c.x, global1.x)), _wgslsmith_div_vec4_i32(global0.c, vec4<i32>(global0.c.x, -1i, var_2.a, global0.c.x)))));
    var var_6 = _wgslsmith_sub_vec2_i32(vec2<i32>(global0.a, _wgslsmith_sub_i32(-44726i, var_3.a) << ((~u_input.a ^ var_5.x) % 32u)), var_1.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(1790f, var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557f - var_0.x) * var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))));
}

