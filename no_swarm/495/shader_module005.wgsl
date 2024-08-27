struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(1398f, -533f, -1473f, -469f, 1000f, 462f, -427f, -1000f, -203f, -1489f, 517f);

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, true), true, vec4<u32>(1u, 1u, 40854u, 1u));

var<private> global2: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = Struct_2(vec2<bool>(any(!select(arg_0.a, vec2<bool>(global1.a.x, false), false)), global1.a.x), !(!(!(!arg_0.a.x))), abs(arg_0.c ^ _wgslsmith_div_vec4_u32(~global1.c, vec4<u32>(47805u, u_input.b, u_input.b, 2054u))));
    global0 = array<f32, 11>();
    var var_0 = Struct_3(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i) | vec2<i32>(u_input.a, 24090i)), firstLeadingBit(~_wgslsmith_sub_i32(u_input.a, 1i)), ~(i32(-1i) * -u_input.a), u_input.a), arg_0);
    global0 = array<f32, 11>();
    var_0 = Struct_3(vec4<i32>(-(~(-2147483647i)), countOneBits(_wgslsmith_add_i32(countOneBits(-2147483647i), u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, var_0.a.x) >> (countOneBits(global1.c) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(-1i, 56466i), -u_input.a, ~(-2147483647i), var_0.a.x)), ~(-2071i)), var_0.b);
    return true;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(global1.c.x, 2147483647i, !(!func_3(Struct_2(vec2<bool>(global1.b, global1.a.x), global1.b, vec4<u32>(17540u, 1u, global1.c.x, u_input.b)))));
    global1 = Struct_2(global1.a, true, global1.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(960f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(41541u, 11u)], global0[_wgslsmith_index_u32(55241u, 11u)])))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(67976u, 11u)]) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 458f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.c.x, 11u)], -129f) + vec2<f32>(989f, -1343f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.a, 11u)]))))))));
    var var_3 = vec3<bool>(true, select(global1.b, var_0.c, !global1.a.x), true);
    return vec3<i32>(_wgslsmith_mult_i32(1i, 16883i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(1i), u_input.a, -5779i), var_0.b), u_input.a);
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    return Struct_2(!select(vec2<bool>(false, global1.b), global1.a, true), !(!all(vec2<bool>(false, global1.b))), global1.c);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = func_4(~firstTrailingBit(func_2()));
    let var_1 = u_input.a;
    return Struct_2(select(vec2<bool>(!var_0.b, global1.a.x), vec2<bool>(true, true), all(vec4<bool>(all(vec2<bool>(var_0.b, true)), global1.a.x, true, func_3(Struct_2(global1.a, global1.b, var_0.c))))), func_3(func_4(vec3<i32>(u_input.a, u_input.a, var_1) >> (vec3<u32>(0u, global1.c.x, u_input.b) % vec3<u32>(32u)))), _wgslsmith_sub_vec4_u32(var_0.c, global1.c));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> i32 {
    global1 = Struct_2(!vec2<bool>(_wgslsmith_f_op_f32(step(-280f, 643f)) >= -990f, false), global1.b | arg_1.b, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u >> (1u % 32u), ~global1.c.x, 1u, select(~1u, ~global1.c.x, global1.a.x)), min(vec4<u32>(u_input.b, _wgslsmith_div_u32(u_input.b, 25211u), reverseBits(66342u), arg_1.c.x & arg_1.c.x), vec4<u32>(1u, firstLeadingBit(arg_0), global1.c.x, 86833u))));
    global0 = array<f32, 11>();
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_2.x));
    global1 = func_1(~vec2<u32>(4294967295u << (arg_0 % 32u), ~11101u));
    global2 = _wgslsmith_div_i32(-1i, abs(-32949i) & _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a));
    return u_input.a;
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec3<i32>(firstTrailingBit(-47415i), countOneBits(_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(2380i, arg_2.x, arg_1, arg_1), vec4<i32>(1i, arg_1, u_input.a, -118i)), min(0i, 46155i))), arg_1);
    let var_1 = -reverseBits(vec2<i32>(-1i) * -arg_2);
    var_0 = vec3<i32>(1i, u_input.a, _wgslsmith_mult_i32(-37012i, abs(~arg_2.x & var_0.x)));
    global2 = 23558i;
    var_0 = reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(max(arg_1, arg_1)), var_1.x, (u_input.a | arg_2.x) & 1i), (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, var_1.x, -78316i), vec3<i32>(-2147483647i, -1i, 1i)) & vec3<i32>(var_0.x, var_1.x, u_input.a)) >> (vec3<u32>(global1.c.x, ~8809u, _wgslsmith_sub_u32(u_input.b, global1.c.x)) % vec3<u32>(32u))));
    return Struct_1(~(~(global1.c.x << (1u % 32u))), arg_1, !(!func_1(_wgslsmith_sub_vec2_u32(arg_0.zz, vec2<u32>(1u, arg_0.x))).b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1994f, global0[_wgslsmith_index_u32(global1.c.x, 11u)])));
    global2 = min(53809i, _wgslsmith_add_i32(23425i, -54403i));
    var var_1 = func_6(vec3<u32>(~(~global1.c.x), global1.c.x, global1.c.x), func_5(93537u, func_1(~countOneBits(global1.c.yw)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(36315u, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10802u, 11u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51521u, 11u)]))))), vec2<i32>(u_input.a, func_2().x) | select(vec2<i32>(u_input.a, u_input.a), ~(~vec2<i32>(u_input.a, u_input.a)), global1.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) - -1000f), _wgslsmith_f_op_f32(180f + global0[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f + -879f)), (global1.a.x == global1.a.x) | true))));
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(var_1.a, var_1.a) ^ global1.c.wx), abs(global1.c.yz), countOneBits(global1.c.yx)), -1i, vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] * var_0)), global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -425f))), firstTrailingBit(~vec4<i32>(1i, u_input.a, u_input.a, -4831i)) & vec4<i32>(~(-var_1.b), -var_1.b, countOneBits(var_1.b) << (global1.c.x % 32u), u_input.a));
}

