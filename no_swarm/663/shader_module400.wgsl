struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-1i, 34587i, 0i, i32(-2147483648), 0i, 1464i, -20571i, -1655i, 2147483647i, 0i, -39253i, -16736i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(all(vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(745f * _wgslsmith_f_op_f32(min(-711f, _wgslsmith_f_op_f32(f32(-1f) * -1449f)))), abs(vec3<u32>(~u_input.a.x, 71203u, u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u | u_input.a.x, u_input.a.x), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(23362u, u_input.a.x, 1u)), ~46360u, ~u_input.a.x))), abs(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(u_input.a.x, 3023u))), vec4<bool>(true, true && all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), false, false));
    var_0 = Struct_2(Struct_1(true, !(!vec4<bool>(true, var_0.c.x, var_0.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(120987u, var_0.a.e, 1572u), u_input.a) ^ _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 42910u)), u_input.a.x), var_0.b, var_0.a.b);
    let var_1 = 4294967295u <= _wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~var_0.a.d, u_input.a), max(~vec3<u32>(0u, 36551u, 88933u), var_0.a.d)));
    global0 = array<i32, 12>();
    var var_2 = vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(30018u, var_0.b | u_input.a.x), 22166u), u_input.a.x), 12u)], 0i, global0[_wgslsmith_index_u32(~firstLeadingBit(firstTrailingBit(min(40823u, 6948u))), 12u)], global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(var_0.b)) | ~u_input.a.x, 12u)]);
    return var_0.c.zwx;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    var var_0 = !(!select(arg_0.b, !(!arg_0.b), !vec4<bool>(arg_0.a, arg_0.b.x, arg_0.a, arg_0.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c, 975f, _wgslsmith_f_op_f32(floor(arg_0.c)))));
    let var_2 = Struct_2(arg_0, abs(1u), arg_0.b);
    var_0 = select(arg_0.b, arg_0.b, select(!vec4<bool>(true, arg_0.c <= -701f, var_0.x, any(arg_0.b.xxz)), arg_0.b, ~(arg_1 >> (61771u % 32u)) >= (arg_1 >> (_wgslsmith_add_u32(0u, 7473u) % 32u))));
    var var_3 = arg_0;
    return vec3<bool>(any(func_3()), !all(var_3.b.xwy), false);
}

fn func_1() -> bool {
    global0 = array<i32, 12>();
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, ~global0[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_mult_i32(-46354i, 1i)), -(-vec3<i32>(global0[_wgslsmith_index_u32(62276u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i) << (countOneBits(~vec3<u32>(69243u, 4294967295u, 71835u)) % vec3<u32>(32u))));
    let var_1 = vec3<bool>(true, false, !all(select(vec3<bool>(true, true, true), func_2(Struct_1(true, vec4<bool>(false, true, false, false), -506f, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x), func_3())));
    var var_2 = !var_1;
    let var_3 = firstLeadingBit(vec2<u32>(~42183u, 1u));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_3(vec4<u32>(arg_1.d.x, max(arg_1.d.x, arg_1.e), 17816u, max(_wgslsmith_clamp_u32(arg_1.d.x, 97341u, arg_1.d.x) & reverseBits(0u), ~_wgslsmith_clamp_u32(arg_1.d.x, 1u, 4294967295u))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f + _wgslsmith_f_op_f32(-arg_1.c)) * arg_1.c), arg_1.c, arg_1.c != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.c, 805f, true))))));
    global0 = array<i32, 12>();
    let var_3 = var_2;
    return vec3<f32>(1300f, arg_1.c, arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), Struct_1(false, vec4<bool>(func_1(), any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), true), 1143f, u_input.a, firstTrailingBit(1u)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(706f, -1000f, -400f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1597f, -1000f, -1000f) - vec3<f32>(199f, -764f, 1000f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(-229f, 177f)), _wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(round(510f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1417f, -1040f, -1561f))))), !func_3())));
    global0 = array<i32, 12>();
    var var_1 = Struct_1(false, !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, false, false), false)), var_0.x, ~(vec3<u32>(1u, u_input.a.x, u_input.a.x) << (max(firstTrailingBit(u_input.a), vec3<u32>(4294967295u, 4294967295u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), u_input.a.x);
    let var_2 = Struct_3(vec4<u32>(~firstTrailingBit(_wgslsmith_sub_u32(107921u, 1u)), 14622u, reverseBits(min(1u, 113790u)), ~firstLeadingBit(_wgslsmith_div_u32(1u, 1u))));
    var_1 = Struct_1(var_1.c >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))))), select(!(!vec4<bool>(true, true, var_1.b.x, true)), vec4<bool>(false, !(!var_1.a), var_1.a, var_1.b.x & var_1.a), _wgslsmith_f_op_f32(305f - _wgslsmith_f_op_f32(max(1367f, -465f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(exp2(var_0.x)), ~(~vec3<u32>(4294967295u, 0u, u_input.a.x)) & var_1.d, var_1.d.x);
    let var_3 = Struct_1(!var_1.a, vec4<bool>(var_1.b.x, true, func_1(), !(_wgslsmith_add_u32(27466u, var_2.a.x) >= max(var_1.e, var_1.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-var_1.c))))), min(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(0u, var_2.a.x)), var_1.e ^ u_input.a.x, var_1.e | firstLeadingBit(var_1.e)), abs(abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)))), select(~reverseBits(abs(69083u)), var_1.d.x, select(any(var_1.b.wy) && var_1.b.x, !select(var_1.a, false, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.a.x, 16118u), vec3<u32>(32409u, var_3.e, 47206u), vec3<u32>(28020u, 1944u, 4294967295u)) ^ var_2.a.xzz, var_3.d, reverseBits(~var_3.d)) ^ reverseBits(u_input.a), var_1.d.xy, ~_wgslsmith_clamp_i32(min(reverseBits(global0[_wgslsmith_index_u32(41828u, 12u)]), select(global0[_wgslsmith_index_u32(57659u, 12u)], 0i, var_1.a)), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -1i), ~vec2<i32>(global0[_wgslsmith_index_u32(29734u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])), ~global0[_wgslsmith_index_u32(10009u, 12u)] >> (_wgslsmith_dot_vec2_u32(var_2.a.zx, vec2<u32>(42861u, 0u)) % 32u)), -1513f, vec3<u32>(4294967295u, var_2.a.x, ~(~(var_3.e ^ 1u))));
}

