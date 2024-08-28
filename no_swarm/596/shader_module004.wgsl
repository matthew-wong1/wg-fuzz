struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(29271u, 49677u, 24145u, 47610u);

var<private> global2: array<u32, 11> = array<u32, 11>(235u, 40433u, 23130u, 1u, 0u, 94043u, 21977u, 4294967295u, 0u, 73476u, 1u);

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<u32>(4294967295u, 9159u, 19609u), false), Struct_2(vec3<u32>(28555u, 4294967295u, 79725u), true), Struct_2(vec3<u32>(18904u, 1u, 1u), false), Struct_2(vec3<u32>(0u, 1u, 55039u), false), Struct_2(vec3<u32>(31855u, 54137u, 0u), false), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), false), Struct_2(vec3<u32>(34514u, 4294967295u, 1u), false), Struct_2(vec3<u32>(46758u, 4294967295u, 42846u), false), Struct_2(vec3<u32>(74117u, 71016u, 1u), true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global2[_wgslsmith_index_u32(67201u, 11u)]), _wgslsmith_add_u32((~global1.x << (global1.x % 32u)) & reverseBits(1u), u_input.b.x)), 9u)];
    return Struct_2(global1.xwy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1099f * 817f) + -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -946f)))) < 1224f);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(22903u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(max(~0u, ~global2[_wgslsmith_index_u32(41186u, 11u)]), 0u, ~(~0u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 11u)])), ~_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(64175u, u_input.c, global2[_wgslsmith_index_u32(0u, 11u)], arg_1.a.x), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0.a.x, u_input.b.x)), select(vec4<u32>(u_input.a, 82088u, arg_1.a.x, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(16948u, 11u)], 1u, arg_0.a.x, 46543u), vec4<bool>(true, false, arg_1.b, arg_0.b)), false), vec4<u32>(~global1.x, 34888u << (arg_1.a.x % 32u), abs(1u), ~4537u)));
    let var_1 = firstLeadingBit(vec4<i32>(u_input.d, -(~1i), -24638i, -_wgslsmith_add_i32(select(-3638i, 0i, false), -31074i)));
    var_0 = vec4<u32>(16363u, 0u, 42277u, 8294u & arg_0.a.x);
    var var_2 = vec3<bool>(arg_0.b, arg_1.b, !arg_1.b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1009f))))))) * _wgslsmith_f_op_f32(-787f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -638f)))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> bool {
    let var_0 = any(vec3<bool>(all(vec3<bool>(!arg_2.x, all(vec4<bool>(false, true, false, true)), arg_1.x & arg_2.x)), false, arg_1.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), 677f, _wgslsmith_div_f32(-739f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -595f), -644f)))));
    var var_2 = func_2();
    var var_3 = select(min(vec4<i32>(11892i, u_input.d, u_input.d, -reverseBits(u_input.d)), vec4<i32>(60808i, u_input.d, -(~(-1134i)), _wgslsmith_clamp_i32(firstTrailingBit(u_input.d), _wgslsmith_sub_i32(24880i, u_input.d), min(u_input.d, 1i)))), _wgslsmith_clamp_vec4_i32(func_3(Struct_2(vec3<u32>(var_2.a.x, 1u, global1.x), var_2.b), Struct_2(global1.xzy, true)) | -max(vec4<i32>(u_input.d, u_input.d, u_input.d, 0i), vec4<i32>(2147483647i, u_input.d, 32603i, u_input.d)), (countOneBits(vec4<i32>(u_input.d, -9301i, 10293i, u_input.d)) >> (vec4<u32>(global1.x, 71277u, 4294967295u, 58229u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_clamp_u32(1u, arg_0, 1u), 0u, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(22933u, arg_0, arg_0), 11u)], 0u) % vec4<u32>(32u)), max(min(vec4<i32>(u_input.d, u_input.d, -11902i, u_input.d), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)) << (~vec4<u32>(var_2.a.x, var_2.a.x, 57866u, 1u) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.d, _wgslsmith_mod_i32(29377i, 583i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d, 0i), vec3<i32>(-3156i, -2147483647i, u_input.d))))), vec4<bool>(!select(var_2.b | false, func_2().b, true == arg_1.x), !any(!vec4<bool>(var_0, arg_2.x, var_0, true)), arg_1.x & var_0, !arg_1.x));
    var var_4 = Struct_1(vec3<bool>(~_wgslsmith_add_u32(var_2.a.x, 0u) == ~countOneBits(4294967295u), false, false), !vec3<bool>(!select(true, true, true), true != !var_2.b, 280f == var_1.x), vec2<i32>(var_3.x, 37691i), arg_2.zx, min(var_3.zyx, var_3.wxy) >> (global1.xww % vec3<u32>(32u)));
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(false & (1u > u_input.c), true && select(false, true, true), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)))), vec3<bool>(func_1(global1.x, select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), true, true), true), vec2<i32>(-1i, select(u_input.d, -abs(u_input.d), any(vec2<bool>(true, true)) | true)), vec2<bool>(true, true), abs(vec3<i32>(func_3(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(30650u, 9u)]).x, _wgslsmith_sub_i32(-30048i, -41511i), -79227i)) << (min(global1.wxy, ~vec3<u32>(global1.x, 0u, global2[_wgslsmith_index_u32(35702u, 11u)])) % vec3<u32>(32u)));
    let var_1 = global3[_wgslsmith_index_u32(global1.x, 9u)];
    let var_2 = u_input.a;
    global0 = _wgslsmith_f_op_f32(min(1071f, _wgslsmith_f_op_f32(f32(-1f) * -346f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, 389f, -798f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1138f, -586f, -1271f) + vec3<f32>(-103f, 430f, 1000f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-297f, 237f, 1016f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1722f, 123f, 112f), vec3<f32>(-1161f, -168f, 552f))))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(818f)), _wgslsmith_f_op_f32(-303f - -1321f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-511f + -843f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f - 1272f))), _wgslsmith_f_op_f32(-192f + _wgslsmith_f_op_f32(round(1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1.wwx & var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1206f, -204f, 2278f))))));
}

