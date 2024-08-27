struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<bool>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1050f, 728f) * 314f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1073f * -804f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(254f))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(539f * 253f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(364f))))))) - 655f);
    let var_1 = Struct_3(Struct_2(abs(0u)), (vec2<i32>(2147483647i, 1i) >> (u_input.b.zx % vec2<u32>(32u))) & max(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, 0i), abs(vec2<i32>(u_input.a, 0i))), abs(vec2<i32>(48010i, 1i) << (u_input.b.yx % vec2<u32>(32u)))));
    global0 = select(!vec2<bool>(!global0.x, true), !(!vec2<bool>(any(vec4<bool>(true, false, global0.x, true)), global0.x)), vec2<bool>(global0.x, true));
    global1 = array<vec3<bool>, 32>();
    return 48319u;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = u_input.a;
    global1 = array<vec3<bool>, 32>();
    let var_1 = ~(firstLeadingBit(vec3<i32>(u_input.a, arg_3.a.b.x, min(arg_3.a.b.x, arg_3.a.b.x))) >> (vec3<u32>(15917u, arg_0 >> (44960u % 32u), arg_0) % vec3<u32>(32u)));
    var_0 = var_1.x;
    var var_2 = firstLeadingBit(vec3<u32>(~arg_0, ~69884u, 0u));
    return select(~(select(var_2.xy, u_input.b.xz, global0.x) & ~select(vec2<u32>(1u, var_2.x), vec2<u32>(arg_3.a.a.a, arg_2.x), vec2<bool>(false, false))), vec2<u32>(~arg_2.x, ~_wgslsmith_mod_u32(~arg_3.a.a.a, 0u)), select(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), false)), !select(!vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(global0.x, all(vec2<bool>(global0.x, true)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32) -> vec2<bool> {
    let var_0 = min(firstTrailingBit(~vec2<u32>(0u, u_input.b.x | u_input.b.x)), func_4(func_3(), Struct_4(Struct_3(arg_0, max(vec2<i32>(17323i, -17425i), vec2<i32>(1i, u_input.a)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_2, 4294967295u, arg_0.a, 1u), max(~vec4<u32>(arg_0.a, arg_2, 3868u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, arg_0.a), vec4<u32>(0u, arg_2, 5291u, 0u))), ~(vec4<u32>(0u, 1u, 3504u, u_input.b.x) & vec4<u32>(arg_0.a, 82468u, 1u, 4294967295u))), Struct_4(Struct_3(Struct_2(26761u), firstTrailingBit(vec2<i32>(27788i, u_input.a))))));
    let var_1 = -506f;
    global0 = select(select(select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), !vec2<bool>(global0.x, false)), select(vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(false, global0.x)), true), true), select(!(!vec2<bool>(true, global0.x)), vec2<bool>(1u != var_0.x, any(vec4<bool>(true, global0.x, global0.x, true))), global0.x), vec2<bool>(any(vec2<bool>(true, global0.x)) & (global0.x && global0.x), false)), select(!vec2<bool>(global0.x, any(vec4<bool>(false, true, true, global0.x))), vec2<bool>(!global0.x, global0.x), global0.x), !vec2<bool>(global0.x, global0.x));
    global0 = select(vec2<bool>(global0.x, !(global0.x && all(global1[_wgslsmith_index_u32(arg_2, 32u)]))), select(!(!(!vec2<bool>(global0.x, global0.x))), select(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), true), global0.x & global0.x), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global0.x, true), false), true)), vec2<bool>(global0.x, select(arg_1.x > 1807f, true, !global0.x))), vec2<bool>(true, false));
    let var_2 = Struct_4(Struct_3(Struct_2(var_0.x), vec2<i32>(~(~2147483647i), _wgslsmith_mod_i32(1i, u_input.a) & -2147483647i)));
    return vec2<bool>(global0.x, global0.x);
}

fn func_1() -> u32 {
    global0 = !vec2<bool>(!global0.x, all(select(vec2<bool>(global0.x, true), func_2(Struct_2(1u), vec3<f32>(1513f, -444f, -1632f), u_input.b.x), global0.x)));
    global0 = !vec2<bool>(false, !(true | !global0.x));
    global1 = array<vec3<bool>, 32>();
    global0 = select(!(!(!(!vec2<bool>(global0.x, true)))), vec2<bool>(global0.x, global0.x), global0.x);
    global1 = array<vec3<bool>, 32>();
    return u_input.b.x;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<i32>) -> bool {
    global1 = array<vec3<bool>, 32>();
    global1 = array<vec3<bool>, 32>();
    global1 = array<vec3<bool>, 32>();
    let var_0 = !select(vec2<bool>(global0.x, true), !select(!vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x)), any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_add_vec3_i32(select(arg_3.zyz, arg_3.xwz, false), _wgslsmith_div_vec3_i32(max((vec3<i32>(1i, 1i, -29265i) | arg_3.yxy) | (arg_3.zyw >> (u_input.b % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_3.xwx, arg_3.wxz), -12047i, _wgslsmith_add_i32(arg_2, 31466i))), vec3<i32>(abs(arg_2) >> (~40933u % 32u), abs(7047i), u_input.a)));
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(Struct_3(Struct_2(func_1()), -vec2<i32>(17412i, -9268i) | vec2<i32>(u_input.a, 15305i))), u_input.b.zy, ~(-1i) | u_input.a, -vec4<i32>(u_input.a, ~select(u_input.a, u_input.a, global0.x), u_input.a, max(i32(-1i) * -23578i, u_input.a)));
    let var_1 = vec3<bool>(global0.x, false, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, 342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1624f)))));
    let var_3 = firstLeadingBit(max(-u_input.a, u_input.a)) & ~reverseBits(-1i & u_input.a);
    global1 = array<vec3<bool>, 32>();
    let var_4 = ~701u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit((u_input.a ^ 57277i) & 23648i), -(countOneBits(37424i) << (firstTrailingBit(u_input.b.x) % 32u)), -2147483647i));
}

