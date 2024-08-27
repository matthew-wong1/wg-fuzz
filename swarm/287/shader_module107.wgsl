struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(-654f)))) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 752f)))))));
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_1(select(vec3<bool>(!arg_0, !arg_2.a.x, arg_2.a.x), select(select(vec3<bool>(true, arg_2.a.x, false), arg_2.a, true), arg_2.a, vec3<bool>(!arg_0, arg_1 && arg_2.a.x, true)), arg_2.a));
    global0 = array<Struct_1, 6>();
    var var_2 = arg_2;
    return _wgslsmith_mod_u32(4294967295u, ~u_input.a >> (u_input.a % 32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = ~1u;
    let var_1 = countOneBits(vec4<u32>(~var_0 & ~var_0, ~60049u, _wgslsmith_sub_u32(u_input.a, func_3(true, true, global0[_wgslsmith_index_u32(1u, 6u)])), ~_wgslsmith_add_u32(99469u, var_0))) ^ ~vec4<u32>(1u, ~(var_0 | u_input.a), countOneBits(var_0), 95364u);
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_3 = !(!arg_1.yz);
    var_3 = select(vec2<bool>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 18114u), var_1.yy) <= max(31468u << (var_1.x % 32u), u_input.a & 42178u), true), arg_1.zx, true);
    return ~firstLeadingBit(1u);
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1453f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1031f + -246f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 605f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, -152f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(463f, -1249f), vec2<f32>(-1057f, 550f), vec2<bool>(false, true))))))));
    var var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-585f + var_1.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.x, 1335f)), -1238f), true, true));
    let var_3 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~(~u_input.a), u_input.a, func_2(~vec4<i32>(94745i, -9406i, 31941i, -1i), !vec3<bool>(true, var_2.a.x, false), countOneBits(vec2<i32>(-1i, -1i))), ~44823u)), abs(vec4<u32>(4294967295u, u_input.a, min(u_input.a, 9644u), 29049u)) << (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var var_4 = ~20777u;
    return vec2<i32>(2147483647i, countOneBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 6u)];
    var var_1 = var_0.a.x & true;
    let var_2 = u_input.a;
    global0 = array<Struct_1, 6>();
    var var_3 = select(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -17234i, 1i), reverseBits(vec3<i32>(-1i, 21761i, 0i))), 13893i) >> (vec2<u32>(~4294967295u, ~min(18638u, u_input.a)) % vec2<u32>(32u)), func_1(), u_input.a >= max(firstTrailingBit(1u), var_2));
    var var_4 = Struct_1(var_0.a);
    let var_5 = Struct_1(var_4.a);
    var_4 = var_5;
    var var_6 = Struct_1(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(firstTrailingBit(var_3.x), _wgslsmith_div_i32(-2147483647i, var_3.x)), ~1i, vec4<u32>(var_2, 3222u, var_2, 1u));
}

