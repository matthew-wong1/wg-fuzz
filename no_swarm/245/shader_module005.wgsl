struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    global0 = _wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(1u, global0.x, 0u)) ^ ~vec3<u32>(u_input.a, u_input.a, 4294967295u), ~(~vec3<u32>(global0.x, 11472u, 0u)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, global0.x, 1u), countOneBits(vec3<u32>(u_input.a, 4294967295u, global0.x))) % vec3<u32>(32u))) & ~(~vec3<u32>(4294967295u, global0.x, 13501u) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, 0u, 61969u), firstLeadingBit(vec3<u32>(27718u, global0.x, u_input.a)), vec3<u32>(42449u, 1u, u_input.a) >> (vec3<u32>(4294967295u, 92132u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_0 = !(!arg_0.x);
    let var_1 = ~vec4<u32>(abs(1u) << (1u % 32u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) << (abs(80615u) % 32u), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a, 9696u)), reverseBits(77713u)));
    global2 = _wgslsmith_f_op_f32(arg_2.a - arg_2.a);
    var var_2 = _wgslsmith_f_op_f32(exp2(arg_2.a));
    return firstLeadingBit(51239i);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(895f, 1040f, false))), _wgslsmith_f_op_f32(f32(-1f) * -683f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(156f, -282f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-347f, -803f) * 259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)))));
    var var_1 = true;
    var_1 = false;
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, var_0.b, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-403f, var_0.b, false)))))), -select(-38395i, func_3(vec3<bool>(false, false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), Struct_1(-1239f, 59076i), vec3<i32>(-1i, -45310i, 1i)), true));
    var var_3 = ~(~vec3<u32>(~(~global0.x), _wgslsmith_mod_u32(~9935u, global0.x ^ u_input.a), 116843u));
    return 4294967295u;
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    global2 = -808f;
    let var_0 = arg_0.wwx;
    global1 = array<vec4<f32>, 16>();
    global0 = vec3<u32>(min(_wgslsmith_mult_u32(func_2(), ~1u), _wgslsmith_add_u32(min(1u, arg_0.x), ~(~arg_0.x))), var_0.x, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-722f - -1000f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2124f), _wgslsmith_f_op_f32(f32(-1f) * -975f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -271f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(-1458f))) - 1000f));
    return !vec3<bool>((u_input.a ^ (arg_0.x | 12174u)) >= _wgslsmith_div_u32(u_input.a & 23435u, abs(global0.x)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, true, true), func_1(countOneBits(abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))), any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true), false)));
    var var_1 = !(!(!(!func_1(vec4<u32>(global0.x, 52326u, 1u, 0u)))));
    let var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), select(vec2<u32>(14919u, u_input.a), global0.yz, var_0.x)), ~0u) & u_input.a;
    global2 = -123f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1478f)), _wgslsmith_f_op_f32(ceil(1000f))))))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(901f, _wgslsmith_div_f32(650f, 120f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1772f + _wgslsmith_f_op_f32(121f + -319f)))), ~(~vec4<i32>(_wgslsmith_div_i32(0i, 24939i), ~u_input.b.x, 0i, -1i)), !vec4<bool>(true, !any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), any(!vec4<bool>(true, false, var_0.x, var_0.x)), u_input.a == 1u), abs(vec2<u32>(var_2, _wgslsmith_clamp_u32(u_input.a & 0u, 25501u, 13992u << (global0.x % 32u)))));
    global1 = array<vec4<f32>, 16>();
    let var_4 = reverseBits((_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -37355i, 9650i), var_3.b.zyw) ^ var_3.b.zzw) | vec3<i32>(-var_3.b.x, -26018i, firstTrailingBit(var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, ~4294967295u, var_2 | var_3.d.x, var_3.d.x), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, var_3.d.x, global0.x), vec4<u32>(global0.x, global0.x, 7764u, global0.x)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, 0u), global0.x & 14183u, ~0u, firstTrailingBit(global0.x)), vec4<u32>(var_3.d.x, var_2, 4294967295u, 1588u) ^ vec4<u32>(43337u, 4294967295u, var_3.d.x, u_input.a)), ~(~(~52765u)), global0.x), global1[_wgslsmith_index_u32(reverseBits(global0.x), 16u)], 2256f, -2147483647i);
}

