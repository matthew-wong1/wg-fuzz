struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, false, false, false, true, false, true, true, true, true, false, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = ~arg_1.a.x;
    return _wgslsmith_mod_i32(var_0, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.x, arg_0, arg_1.a.x), arg_1.a.xwy), min(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, arg_1.a.x, arg_1.a.x), arg_1.a.xzy), arg_1.a.xwx << (vec3<u32>(u_input.a, 47438u, u_input.a) % vec3<u32>(32u)))) | (i32(-1i) * -(~1i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> vec4<i32> {
    global0 = array<bool, 13>();
    let var_0 = arg_0.xy;
    let var_1 = _wgslsmith_f_op_f32(-1000f + -1416f);
    var var_2 = min(abs(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1125i, 26162i, 21875i), arg_3.zzy))) & _wgslsmith_mod_vec3_i32(arg_3.yww, vec3<i32>(-1i) * -vec3<i32>(1i, 62567i, 56529i)), vec3<i32>(~arg_3.x, -1i, arg_3.x) >> (max((vec3<u32>(u_input.a, 0u, 1u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) & ~vec3<u32>(u_input.a, 4294967295u, u_input.a), ~reverseBits(vec3<u32>(4294967295u, 52973u, u_input.a))) % vec3<u32>(32u)));
    global0 = array<bool, 13>();
    return _wgslsmith_add_vec4_i32(vec4<i32>(abs(-9990i), select(var_2.x, func_2(abs(var_2.x), Struct_1(arg_3, arg_1, arg_2), u_input.a == u_input.a), global0[_wgslsmith_index_u32(~(u_input.a >> (u_input.a % 32u)), 13u)]), abs(arg_3.x), var_2.x), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_3.x, 1i, 14177i, var_2.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(-63436i, arg_3.x, 0i, 6075i), arg_3), arg_3));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(func_3(select(vec3<bool>(true, u_input.a < arg_0.x, false), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)])), true), -1183f, arg_0.x <= 15868u, vec4<i32>(2147483647i, abs(func_2(0i, Struct_1(vec4<i32>(-1937i, 2147483647i, 0i, 2147483647i), 1197f, true), global0[_wgslsmith_index_u32(arg_0.x, 13u)])), min(reverseBits(2147483647i), _wgslsmith_sub_i32(-50973i, 1i)), _wgslsmith_div_i32(-43247i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1208f - -1234f), -1019f)) * _wgslsmith_f_op_f32(f32(-1f) * -308f))), all(!arg_1));
    var_0 = Struct_1(~var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(min(var_0.b, -1993f)))), (-1i < var_0.a.x) & true);
    let var_1 = reverseBits(abs(~(vec4<u32>(u_input.a, 17320u, arg_0.x, arg_0.x) >> (vec4<u32>(26534u, arg_0.x, 22207u, 4294967295u) % vec4<u32>(32u)))) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.x, u_input.a, 45972u, 1001u) ^ (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(1u, 0u, u_input.a, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, arg_0.x, u_input.a) << (vec4<u32>(78714u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0.x, arg_0.x), vec4<u32>(62641u, 4294967295u, arg_0.x, 12039u))), vec4<u32>(min(u_input.a, 18515u), 1u, arg_0.x, ~1u)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_div_u32(1u, 1u)), vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f + -381f) + -616f));
    var var_1 = 1i;
    var var_2 = Struct_1(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-263f)))))), any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(12257u, 13u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 13u)]), true))) | !global0[_wgslsmith_index_u32(~1u & (76073u & u_input.a), 13u)]);
    let var_3 = 4294967295u;
    var var_4 = ~firstLeadingBit(1u);
    var_0 = var_2.b;
    var_0 = _wgslsmith_f_op_f32(ceil(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(-29317i, var_2.a.x, 0i), vec3<i32>(0i, var_2.a.x, -27064i)), 4294967295u, vec4<i32>(max(func_2(-6000i, Struct_1(vec4<i32>(var_2.a.x, 11549i, 1i, 40700i), var_2.b, false), global0[_wgslsmith_index_u32(83607u, 13u)] | var_2.c), 18509i), 1i | -(~var_2.a.x), 1i, var_2.a.x), -var_2.a.zzw);
}

