struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(12177u, 7771u), true, -549f, vec4<u32>(24618u, 3146u, 31428u, 2791u), -1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<u32>(~global0.d.x, ~u_input.a.x);
    return Struct_1(~vec2<u32>(~1u, global0.a.x), !global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c * global0.c))))), _wgslsmith_mod_vec4_u32(global0.d, min(global0.d, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 41641u, u_input.a.x, 0u), vec4<u32>(39747u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(var_0.x, u_input.a.x, 4294967295u, global0.d.x)), ~vec4<u32>(var_0.x, 0u, u_input.a.x, 4294967295u)))), abs(global0.e));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = firstLeadingBit(~vec3<u32>(global0.d.x >> (27607u % 32u), ~0u, 1u)) ^ arg_2.a.d.wzz;
    global0 = Struct_1(arg_0.a.d.zz, all(select(select(vec4<bool>(false, true, arg_1.b, arg_2.a.b), vec4<bool>(arg_1.b, true, arg_0.a.b, arg_2.a.b), false), vec4<bool>(global0.b, arg_0.a.b != arg_1.b, true, global0.b | arg_2.a.b), ~66195u < max(arg_2.a.d.x, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(ceil(arg_2.a.c))))))), vec4<u32>(var_0.x, 1u, reverseBits(49481u), _wgslsmith_div_u32(~arg_2.a.a.x, var_0.x)), func_1(_wgslsmith_f_op_f32(trunc(arg_2.a.c))).e);
    global0 = arg_2.a;
    var var_1 = vec2<bool>(!(!(!arg_0.a.b)) & (select(!global0.b, arg_2.a.b, false) & false), all(!vec4<bool>(true, true, all(vec4<bool>(true, global0.b, arg_0.a.b, global0.b)), true)));
    var var_2 = max(~(~reverseBits(vec3<i32>(-20355i, arg_0.b.x, -53717i)) ^ abs(~vec3<i32>(18842i, arg_1.e, -28016i))), firstTrailingBit(countOneBits(vec3<i32>(-27435i, _wgslsmith_mod_i32(global0.e, arg_2.b.x), global0.e | -2147483647i))));
    return select(_wgslsmith_clamp_vec2_u32(global0.d.zy, u_input.a.yx, countOneBits(select(_wgslsmith_mult_vec2_u32(var_0.yy, vec2<u32>(4294967295u, var_0.x)), ~arg_2.a.d.xz, var_1.x))), func_1(286f).a, vec2<bool>(any(!select(vec3<bool>(false, false, arg_0.a.b), vec3<bool>(false, arg_0.a.b, true), vec3<bool>(true, arg_1.b, true))), 1648f > arg_2.a.c));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<f32> {
    global0 = arg_1.a;
    let var_0 = func_1(1010f);
    var var_1 = arg_2.a;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-1718f + arg_2.a.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, -1071f, -550f, -837f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 748f, -738f, global0.c)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.c, -1000f, -1118f, var_1.c), vec4<f32>(170f, arg_3.a.c, -1097f, -448f))))))), vec4<f32>(793f, global0.c, var_1.c, -288f));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(select(~func_3(Struct_2(arg_0, vec2<i32>(arg_0.e, 587i)), arg_0, Struct_2(Struct_1(vec2<u32>(arg_0.a.x, arg_0.d.x), true, global0.c, vec4<u32>(global0.d.x, arg_0.a.x, 1u, 15482u), -2147483647i), vec2<i32>(global0.e, global0.e))), ~abs(firstLeadingBit(arg_0.d.yw)), any(vec2<bool>(arg_0.b, true))), Struct_2(Struct_1(func_3(Struct_2(Struct_1(vec2<u32>(arg_0.a.x, 1u), true, 3075f, vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u), 0i), vec2<i32>(global0.e, global0.e)), Struct_1(arg_0.d.wz, false, global0.c, vec4<u32>(1u, 36587u, 1u, global0.d.x), 30246i), Struct_2(Struct_1(vec2<u32>(arg_0.a.x, u_input.a.x), global0.b, 739f, vec4<u32>(12094u, arg_0.d.x, 17398u, 0u), arg_0.e), vec2<i32>(arg_0.e, 12528i))), !all(vec3<bool>(false, true, arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, arg_0.c)), vec4<u32>(arg_0.a.x, 62214u ^ global0.d.x, countOneBits(1u), arg_0.a.x), -95562i), firstLeadingBit(~vec2<i32>(arg_0.e, global0.e))), Struct_2(Struct_1(vec2<u32>(0u >> (global0.a.x % 32u), ~4152u), true, _wgslsmith_f_op_f32(-arg_0.c), arg_0.d, arg_0.e), abs(countOneBits(~vec2<i32>(global0.e, arg_0.e)))), Struct_2(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c * arg_0.c), -165f))), reverseBits(select(~vec2<i32>(0i, global0.e), vec2<i32>(-27261i, global0.e), !vec2<bool>(false, global0.b))))));
    let var_1 = all(select(!vec2<bool>(!arg_0.b, global0.b), select(select(vec2<bool>(global0.b, global0.b), select(vec2<bool>(global0.b, arg_0.b), vec2<bool>(true, arg_0.b), vec2<bool>(false, false)), !arg_0.b), vec2<bool>(false, any(vec2<bool>(arg_0.b, true))), false), vec2<bool>(true, arg_0.d.x != func_1(global0.c).d.x)));
    global0 = arg_0;
    var_0 = vec4<f32>(global0.c, -1470f, -1048f, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1564f)))));
    global0 = arg_0;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~u_input.a.x >> ((firstLeadingBit(global0.d.x) | ~(~global0.a.x)) % 32u)) >> (4294967295u % 32u);
    global0 = Struct_1(~(func_2(func_1(-449f)) | _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, var_0), vec2<u32>(4294967295u, 67634u)), global0.a)), all(vec4<bool>(global0.b, all(select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, true), global0.b)), !select(global0.b, global0.b, global0.b), true)), _wgslsmith_f_op_f32(-global0.c), ~_wgslsmith_sub_vec4_u32(~max(global0.d, vec4<u32>(global0.a.x, u_input.a.x, 1u, 11947u)), vec4<u32>(~1u, 4294967295u, global0.d.x ^ u_input.a.x, ~var_0)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-16160i, _wgslsmith_add_i32(global0.e, -13713i), global0.e, global0.e), ~((vec4<i32>(global0.e, global0.e, -1i, global0.e) >> (global0.d % vec4<u32>(32u))) << (global0.d % vec4<u32>(32u)))));
    global0 = Struct_1(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, global0.d.x), vec2<u32>(var_0, 11051u))), true, _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-global0.c)), ~((countOneBits(vec4<u32>(var_0, u_input.a.x, 43467u, var_0)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, var_0, var_0), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), global0.d)) & global0.d), ~global0.e);
    global0 = Struct_1(u_input.a.xy, global0.b, -281f, vec4<u32>(min(var_0, max(global0.a.x, ~var_0)), 30147u, _wgslsmith_add_u32(var_0, ~global0.d.x << (1u % 32u)), ~func_1(_wgslsmith_f_op_f32(max(global0.c, -570f))).d.x), 74490i);
    var var_1 = func_1(2166f).d;
    global0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1945f)), global0.c))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(i32(-1i) * -global0.e, ~reverseBits(~0i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.e, ~max(global0.e, global0.e), global0.e, global0.e), countOneBits(vec4<i32>(global0.e, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.e), vec2<i32>(1i, global0.e)), ~global0.e, countOneBits(global0.e)))));
}

