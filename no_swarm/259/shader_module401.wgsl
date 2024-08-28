struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), true, 1298f);

var<private> global1: i32;

var<private> global2: array<u32, 11> = array<u32, 11>(24492u, 17927u, 4294967295u, 17778u, 1096u, 1u, 36081u, 4294967295u, 1u, 0u, 0u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.zy, ~min(u_input.c.yx, -arg_0.b.wy));
    global2 = array<u32, 11>();
    var var_1 = Struct_2(!(!(!(!vec4<bool>(global0.b, global0.b, true, global0.b)))), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mult_i32(var_0, -1i)), _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(8956i, -15639i))) < (arg_3.x << (~arg_0.c % 32u)), Struct_1(!(!vec2<bool>(true, global0.b)), global0.b & (4294967295u < u_input.b), -1000f));
    var var_2 = !vec3<bool>((true && any(global0.a)) || true, !all(var_1.a.zwz), var_1.c.a.x);
    let var_3 = Struct_1(var_2.zx, !global0.a.x, 338f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1472f, -594f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)))) + arg_2));
}

fn func_2() -> vec3<f32> {
    global2 = array<u32, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_3(0u, ~(vec4<i32>(-2147483647i, u_input.a.x, u_input.d.x, u_input.e) & vec4<i32>(13802i, u_input.a.x, 1i, u_input.e)) ^ _wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(1i, u_input.c.x, -8487i, u_input.a.x))), ~(1u | ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 11u)])), Struct_3(4294967295u, -(u_input.a ^ min(u_input.a, vec4<i32>(24262i, 0i, 13498i, 0i))), ~0u), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, 2251f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-356f, 1942f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c, global0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-186f, -2141f), vec2<f32>(-1000f, global0.c), global0.a)))))), ~(vec4<i32>(-1i) * -u_input.a)));
    let var_1 = min(u_input.a, u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, var_0.x))));
    let var_2 = Struct_2(!select(vec4<bool>(any(vec3<bool>(false, global0.b, true)), u_input.b > u_input.b, all(vec3<bool>(global0.b, global0.b, global0.b)), false), !vec4<bool>(global0.b, true, global0.b, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(global0.a.x, false, global0.a.x, global0.b), vec4<bool>(true, true, global0.b, true))), global0.b, Struct_1(select(vec2<bool>(global0.a.x, 255f <= var_0.x), vec2<bool>(global0.b, any(vec2<bool>(global0.a.x, global0.a.x))), !global0.a.x), _wgslsmith_mult_i32(var_1.x, firstTrailingBit(u_input.a.x)) == _wgslsmith_add_i32(u_input.c.x, u_input.e << (global2[_wgslsmith_index_u32(1u, 11u)] % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(global2[_wgslsmith_index_u32(20314u, 11u)], var_1, 4294967295u), Struct_3(0u, u_input.a, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, 904f) * vec2<f32>(-1000f, global0.c)), var_1)).x)));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c) * _wgslsmith_f_op_f32(-global0.c))), 456f, 446f)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0;
    global2 = array<u32, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-535f, -257f, 153f))) * vec3<f32>(global0.c, global0.c, 546f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-344f, -1967f, global0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - vec3<f32>(global0.c, global0.c, global0.c)), !(!vec3<bool>(false, false, global0.a.x))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(441f, -969f, -1684f) + vec3<f32>(global0.c, global0.c, 369f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c, global0.c, 1514f), vec3<f32>(global0.c, global0.c, global0.c))))))));
    let var_2 = ~select(reverseBits(~vec3<u32>(global2[_wgslsmith_index_u32(1u, 11u)], 0u, 46687u) | ~vec3<u32>(17824u, u_input.b, 1u)), vec3<u32>(max(~49442u, u_input.b), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], 1u)), abs(vec2<u32>(1u, u_input.b))), 1u), true);
    var var_3 = vec3<bool>(global0.a.x || global0.b, !(global0.b | false), global0.a.x);
    return Struct_1(var_3.xy, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(var_2.x, -vec4<i32>(arg_1.x, -15292i, 2147483647i, arg_1.x), 0u), Struct_3(global2[_wgslsmith_index_u32(u_input.b, 11u)] ^ global2[_wgslsmith_index_u32(u_input.b, 11u)], vec4<i32>(24658i, -27990i, -11676i, -1i), firstLeadingBit(8252u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1266f) - vec2<f32>(global0.c, global0.c)) + _wgslsmith_f_op_vec2_f32(var_1.yx - vec2<f32>(global0.c, var_1.x))), vec4<i32>(-var_0, var_0, -var_0, 1i))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(4294967295u);
    let var_1 = func_1(~(-firstLeadingBit(-1i)), u_input.c.yz);
    global2 = array<u32, 11>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(574f)), global0.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 357f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -2028f)))))));
    var var_3 = Struct_2(select(select(!(!vec4<bool>(false, true, global0.b, global0.b)), vec4<bool>(true || var_1.a.x, false, true, false), select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(true, var_1.a.x, var_1.a.x, false), false), true)), vec4<bool>(true, true, any(!vec3<bool>(true, var_1.b, false)), global0.b), select(!(!vec4<bool>(var_1.b, false, true, global0.a.x)), !select(vec4<bool>(global0.b, global0.a.x, global0.a.x, var_1.a.x), vec4<bool>(global0.b, false, global0.b, var_1.a.x), global0.a.x), vec4<bool>(global0.b, global0.b, var_1.a.x, func_1(-2147483647i, vec2<i32>(u_input.e, u_input.e)).a.x))), global0.b, var_1);
    var var_4 = 17997u;
    let var_5 = true;
    let var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

