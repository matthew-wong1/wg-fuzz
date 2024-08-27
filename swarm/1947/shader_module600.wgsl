struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 15418u);

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: i32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    var var_0 = vec2<u32>(~arg_0, arg_0);
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(89081u, 10817u), reverseBits(arg_0)), ~0u << ((u_input.a & var_0.x) % 32u), arg_1.a), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, 1u, 0u), vec3<u32>(global0.x, 40302u, u_input.a)), vec3<u32>(u_input.a, arg_1.a, global0.x) ^ vec3<u32>(arg_1.a, 4294967295u, u_input.a)), max(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 49575u)), vec3<u32>(arg_0, var_0.x, 0u)))));
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(min(select(vec4<i32>(-2147483647i, arg_2, arg_2, arg_2) & vec4<i32>(-2147483647i, arg_2, -1209i, 69099i), vec4<i32>(88639i, -1i, arg_2, 64085i), select(arg_1.d, false, arg_1.d)), -vec4<i32>(arg_2, arg_2, 9302i, arg_2)), ~vec4<i32>(arg_2, 11678i, 6906i, 40064i) ^ -vec4<i32>(43388i, arg_2, arg_2, -2147483647i)), ~(~vec4<i32>(-2147483647i, ~arg_2, arg_2, i32(-1i) * -1i)));
    let var_3 = Struct_4(!arg_1.d, _wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), 731f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(655f, -197f)) + _wgslsmith_f_op_vec2_f32(arg_1.b + arg_1.b))))));
    global2 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(min(0i, arg_2), var_2.x, -1i, _wgslsmith_clamp_i32(var_2.x, arg_2, -1i)), _wgslsmith_mult_vec4_i32(var_2, var_2)) >> (_wgslsmith_dot_vec2_u32(var_1.xx, ~(~var_1.zz)) % 32u));
    return vec3<bool>(all(!vec4<bool>(var_3.a | var_3.a, true, true, arg_2 != var_2.x)), true, (var_3.a & !arg_1.c.x) & true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = arg_1.x;
    var var_1 = ~(~select(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u), firstTrailingBit(vec4<u32>(4294967295u, 113004u, 1u, global0.x)) >> (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), !(!vec4<bool>(arg_0.x, arg_0.x, true, true))));
    global1 = array<vec2<i32>, 19>();
    var var_2 = ~(~(~_wgslsmith_sub_u32(4294967295u, 9171u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1031f * -265f), _wgslsmith_f_op_f32(ceil(2195f))), vec2<f32>(2437f, -2760f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-303f, 919f), vec2<f32>(-2117f, 920f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-130f, 1055f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(max(-564f, 293f))))) * var_3.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)))), arg_1.x, _wgslsmith_f_op_f32(func_4(select(vec3<bool>(arg_0.a.x, any(vec3<bool>(arg_0.a.x, arg_0.a.x, false)), false), func_3(~global0.x, Struct_3(global0.x, vec2<f32>(-1224f, arg_1.x), arg_0.a.xy, arg_0.a.x), 2147483647i), func_3(min(68132u, 1u), Struct_3(23811u, arg_1, arg_0.a.yz, arg_0.a.x), 0i).x), _wgslsmith_add_vec4_i32(~max(vec4<i32>(30147i, -1i, 2147483647i, 2147483647i), vec4<i32>(-63210i, -13041i, 2147483647i, 1i)), reverseBits(-vec4<i32>(-14547i, -13680i, 9670i, -25398i))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i << (0u % 32u), 1i, ~(-1i), countOneBits(4357i)), vec4<i32>(35699i, 2147483647i, -234i, -2147483647i) >> (firstTrailingBit(vec4<u32>(global0.x, global0.x, u_input.a, u_input.a)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0.x, 74125u & global0.x), 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(500f, arg_1.x)) + _wgslsmith_f_op_f32(-1000f - arg_1.x)))));
    var var_1 = arg_1.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -968f);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(625f, 734f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), -876f), _wgslsmith_f_op_vec3_f32(-var_0.wwx)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    global0 = ~vec2<u32>(~(~(~u_input.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(global0.x >> (46189u % 32u), reverseBits(46480u)), 84269u));
    let var_0 = 1i;
    let var_1 = false;
    let var_2 = !any(vec2<bool>(!any(vec4<bool>(true, arg_2.a, arg_2.a, false)), func_3(4294967295u, Struct_3(u_input.a, arg_2.b, vec2<bool>(false, true), true), ~arg_1).x));
    var var_3 = Struct_3(select(78077u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(25452u, 0u), reverseBits(vec2<u32>(106657u, 4294967295u))), max(1u, _wgslsmith_mod_u32(39341u, 66843u))), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1609f, arg_2.b.x)), arg_2.b.x) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.yz)))), arg_2.b)), select(vec2<bool>(!(var_0 == 26512i), any(select(vec4<bool>(arg_2.a, arg_2.a, false, var_2), vec4<bool>(true, true, false, true), vec4<bool>(var_2, var_2, arg_2.a, var_1)))), vec2<bool>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) >= _wgslsmith_f_op_f32(arg_2.b.x + arg_0.x), true), any(vec3<bool>(!var_2, !arg_2.a, var_2))), any(vec4<bool>(all(!vec2<bool>(arg_2.a, false)), !(!var_2), true, var_2)));
    return Struct_4(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.b.x, arg_2.b.x))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b.x, arg_2.b.x)))) + arg_2.b));
}

fn func_1() -> Struct_4 {
    var var_0 = -126f;
    return func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_5(vec3<bool>(true, false, false)), vec2<f32>(228f, -1022f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1177f, 726f, 584f)))), vec3<f32>(-1428f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(291f)))), 879f)), max(reverseBits(countOneBits(~(-2147483647i))), abs(-1i)), Struct_4(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -387f), vec2<f32>(1f, 1f), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = ~(~_wgslsmith_add_vec2_u32(abs(~vec2<u32>(u_input.a, global0.x)), ~vec2<u32>(1u, global0.x) ^ ~vec2<u32>(global0.x, global0.x)));
    var var_1 = -vec3<i32>(firstLeadingBit(-firstLeadingBit(15105i)), min(~49010i >> (select(0u, 1u, var_0.a) % 32u), -47545i), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(global0.x, 19u)] >> (min(vec2<u32>(80816u, 92133u), vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u)), reverseBits(-vec2<i32>(-2147483647i, 2147483647i))));
    var_1 = max(vec3<i32>(var_1.x, _wgslsmith_mult_i32(-47498i, _wgslsmith_mod_i32(-var_1.x, var_1.x)), -37530i), ~(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, -2147483647i, 1i), vec3<i32>(var_1.x, 2147483647i, var_1.x)) ^ vec3<i32>(i32(-1i) * -2147483647i, -28447i & var_1.x, _wgslsmith_div_i32(var_1.x, -5703i))));
    global1 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 16354i, select(var_1.x, ~(~var_1.x), !var_0.a));
}

