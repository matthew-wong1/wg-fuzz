struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 11> = array<f32, 11>(109f, -1522f, -1009f, 1710f, -704f, -1143f, -499f, 720f, -1323f, -127f, -1112f);

var<private> global2: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(select(-876f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(2704u, u_input.b), 11u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_div_u32(u_input.a, u_input.a) > ~0u))));
    var var_1 = !vec4<bool>(!(var_0 > _wgslsmith_div_f32(624f, var_0)), false, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) >= global1[_wgslsmith_index_u32(u_input.c.x, 11u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], -2035f, -154f) + vec3<f32>(global2.x, 2237f, global2.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(54731u, 11u)], -1199f, global2.x))) * vec3<f32>(_wgslsmith_f_op_f32(-710f - -251f), -1094f, _wgslsmith_f_op_f32(round(-793f)))))), true, select(select(!var_1.yzz, select(var_1.wyy, !var_1.zxz, !var_1.x), select(select(vec3<bool>(var_1.x, true, var_1.x), var_1.xyy, vec3<bool>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.yxx), select(var_1.zxx, var_1.yww, true))), vec3<bool>(false, all(var_1.yx), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) - global2.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1301f * -235f) * _wgslsmith_f_op_f32(max(global2.x, -525f)))), countOneBits(u_input.c.xz));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, -670f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1341f)))), -1000f)));
    var var_4 = all(vec4<bool>(!(false != (var_1.x & var_1.x)), !(!var_2.c.x), !(!var_2.c.x & true), var_1.x));
    return _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(49253u, u_input.a), 55013u, min(var_2.d.x, var_2.d.x & 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d.x, var_2.d.x, var_2.d.x, u_input.a), vec4<u32>(25894u, 33967u, u_input.a, 0u)), max(vec4<u32>(u_input.a, var_2.d.x, 41722u, 1u), vec4<u32>(u_input.b, 4294967295u, 5131u, u_input.a)))), ~vec4<u32>(12027u, ~var_2.d.x, firstTrailingBit(1u), var_2.d.x)) << (vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.yz, vec2<u32>(0u, u_input.a)), vec2<u32>(1u, u_input.a) | u_input.c.zy), var_2.d.x, 4294967295u), 64685u, var_2.d.x, 518u) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    global0 = !(true && (abs(_wgslsmith_sub_i32(-2147483647i, -49203i)) > firstTrailingBit(10649i)));
    global1 = array<f32, 11>();
    let var_0 = global1[_wgslsmith_index_u32(~(u_input.c.x & firstTrailingBit(firstLeadingBit(23816u))), 11u)];
    let var_1 = 2147483647i;
    let var_2 = func_3();
    return Struct_1(vec3<f32>(-561f, _wgslsmith_f_op_f32(-1198f * 1151f), -632f), select(!(!all(vec3<bool>(false, false, true))), true, any(vec3<bool>(true, true, true)) & (_wgslsmith_add_i32(var_1, -1i) == -59105i)), select(vec3<bool>(true, reverseBits(var_2.x) < 4294967295u, true), select(vec3<bool>(all(vec2<bool>(true, true)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(12695u >= u_input.b, select(false, true, false), true)), true), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_2.wx, _wgslsmith_sub_vec2_u32(var_2.zx, var_2.xw), u_input.c.yx), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(29683u, var_2.x), vec2<u32>(u_input.c.x, 1u)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    global0 = true;
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(global2.xx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(96452u, 11u)], var_0.a.x)));
    let var_2 = arg_2.c;
    let var_3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1, 0u, u_input.a), vec4<u32>(arg_2.d.x, 53293u, 0u, arg_1)), vec4<u32>(arg_2.d.x, 0u, 99696u, arg_1) << (vec4<u32>(0u, 18644u, 1u, 1u) % vec4<u32>(32u))), abs(min(vec4<u32>(arg_1, arg_1, arg_2.d.x, 27459u), vec4<u32>(0u, 1u, arg_1, 18369u)))), ~((vec4<u32>(u_input.b, var_0.d.x, 8591u, 1u) | vec4<u32>(37812u, u_input.b, 101720u, 4294967295u)) >> (firstLeadingBit(vec4<u32>(1u, 28175u, 4294967295u, arg_2.d.x)) % vec4<u32>(32u))));
    return vec4<u32>(reverseBits(1u), 0u, 0u, _wgslsmith_dot_vec3_u32(countOneBits(u_input.c), reverseBits(~vec3<u32>(var_0.d.x, arg_2.d.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, -3202f, 1000f))))))));
    var var_0 = ~(~select(func_1(false, 4294967295u, Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], -680f, global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), false, vec3<bool>(true, false, true), u_input.c.zz)) & abs(vec4<u32>(u_input.a, u_input.a, 6448u, 4294967295u)), vec4<u32>(firstLeadingBit(u_input.c.x), 32482u, 4921u, 4888u), true));
    var var_1 = ((i32(-1i) * -_wgslsmith_div_i32(31133i, -37487i)) ^ ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-17800i, -16910i), vec2<i32>(2147483647i, -15857i)), vec2<i32>(2147483647i, -1i))) ^ -66387i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], -537f, global1[_wgslsmith_index_u32(var_0.x, 11u)]) - vec3<f32>(global2.x, 609f, global2.x)), vec3<f32>(-267f, _wgslsmith_f_op_f32(1287f * global2.x), 964f), vec3<bool>(global2.x > -317f, all(vec2<bool>(true, true)), true)))), true, select(vec3<bool>(!any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, false)), true), func_2().c, !func_2().c), vec2<u32>(4294967295u, var_0.x & 42168u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(230f, global2.x, 917f))))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.a)))), true && !(!(!var_2.b)), !vec3<bool>(any(!vec2<bool>(false, var_2.c.x)), (var_2.d.x != u_input.c.x) && false, var_2.c.x), ~(~var_0.xy));
    let var_4 = var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1737f, -385f, all(vec2<bool>(var_2.c.x, var_2.b)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.a.x, global1[_wgslsmith_index_u32(6947u, 11u)]), _wgslsmith_f_op_f32(-var_3.a.x))), u_input.a, u_input.c.yz);
}

