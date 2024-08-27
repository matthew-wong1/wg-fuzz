struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -1941f);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<bool>(true, false), 1i), Struct_1(vec2<bool>(false, false), 3684i), Struct_1(vec2<bool>(false, true), -1i), Struct_1(vec2<bool>(false, false), -211i), Struct_1(vec2<bool>(true, false), 23088i), Struct_1(vec2<bool>(false, true), 32255i), Struct_1(vec2<bool>(false, true), -17435i), Struct_1(vec2<bool>(false, true), -65369i), Struct_1(vec2<bool>(false, false), 1i), Struct_1(vec2<bool>(true, true), -1i), Struct_1(vec2<bool>(true, false), 0i), Struct_1(vec2<bool>(true, false), -2003i), Struct_1(vec2<bool>(false, true), -9286i), Struct_1(vec2<bool>(true, true), 2147483647i), Struct_1(vec2<bool>(false, true), -1i), Struct_1(vec2<bool>(false, true), -47i), Struct_1(vec2<bool>(true, false), 1i), Struct_1(vec2<bool>(false, false), 2147483647i), Struct_1(vec2<bool>(true, true), 12950i), Struct_1(vec2<bool>(false, false), -35265i));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), -1185i);

var<private> global3: u32 = 101361u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(~vec4<u32>(arg_0.x & u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, arg_0.x, u_input.e.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u)), ~vec4<u32>(u_input.a, 4294967295u, arg_0.x, arg_0.x)), 42333u, arg_0.x));
    let var_1 = true && global2.a.x;
    global3 = arg_0.x >> (1200u % 32u);
    var_0 = Struct_2(var_0.a ^ ~vec4<u32>(_wgslsmith_mult_u32(1u, 17304u), ~arg_0.x, _wgslsmith_add_u32(9256u, 91492u), 14803u));
    let var_2 = vec2<bool>(var_1, !(var_1 | ((u_input.d != global2.b) && false)));
    return -1021f;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, -1378f)))))))));
    var var_1 = (any(select(select(vec3<bool>(true, global2.a.x, true), vec3<bool>(true, arg_2.a.x, global2.a.x), false), !vec3<bool>(true, true, arg_2.a.x), any(vec2<bool>(true, false)))) | true) || arg_2.a.x;
    var_1 = !((7801u >> (_wgslsmith_clamp_u32(arg_1.a.x, arg_3.a.x, arg_3.a.x) % 32u)) < arg_3.a.x) | ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-256f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_3.a.x, 27662u, arg_1.a.x), vec4<f32>(149f, -482f, 211f, var_0.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false))) + _wgslsmith_f_op_f32(var_0.x - var_0.x))) != !(!global2.a.x));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + _wgslsmith_f_op_f32(min(291f, 1165f))), _wgslsmith_f_op_f32(-1500f - -963f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, vec2<f32>(907f, global0.x))) + vec2<f32>(-287f, arg_0))));
    let var_3 = arg_2.a.x;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = global0.x;
    var var_1 = Struct_1(select(select(select(select(global2.a, global2.a, vec2<bool>(global2.a.x, false)), global2.a, global2.a.x), select(global2.a, global2.a, vec2<bool>(true, global2.a.x)), !any(vec3<bool>(false, true, true))), select(global2.a, !global2.a, vec2<bool>(true, global2.a.x)), !vec2<bool>(all(vec3<bool>(true, global2.a.x, false)), true)), firstTrailingBit(-u_input.b));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(177f, 462f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-961f, global0.x))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec3_u32(arg_0.a.yxw, arg_0.a.zzw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, global0.x, global0.x, 412f)), !vec4<bool>(true, var_1.a.x, true, false))), -648f))));
    let var_2 = !select(vec2<bool>(global2.a.x, var_1.a.x), select(!vec2<bool>(false, global2.a.x), var_1.a, !global2.a), select(!vec2<bool>(global2.a.x, false), var_1.a, vec2<bool>(global2.b < var_1.b, false)));
    var var_3 = abs(min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.b, var_1.b, 11093i), vec3<i32>(1i, global2.b, var_1.b)) | abs(vec3<i32>(u_input.b, global2.b, global2.b)), reverseBits(vec3<i32>(-1i, var_1.b, 9076i))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.d), vec3<i32>(-1i, u_input.d, 1i)), _wgslsmith_div_vec3_i32(max(vec3<i32>(1094i, 249i, global2.b), vec3<i32>(0i, 3121i, 1i)), vec3<i32>(global2.b, 2147483647i, u_input.d)))));
    return func_2(1000f, arg_0, global1[_wgslsmith_index_u32(u_input.a, 20u)], Struct_2(abs(arg_0.a)));
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 20u)];
    let var_1 = func_4(func_2(-1576f, Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 37134u, u_input.a, u_input.a), vec4<u32>(u_input.e.x, 3285u, 1u, u_input.c.x)) >> ((vec4<u32>(u_input.e.x, u_input.a, 0u, u_input.a) & vec4<u32>(u_input.c.x, 0u, u_input.e.x, 0u)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(u_input.c.x, 20u)], Struct_2(min(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.c.x), ~vec4<u32>(6711u, 0u, u_input.e.x, 55609u)))), u_input.a);
    let var_2 = all(select(!vec3<bool>(!global2.a.x, var_0.a.x, true), vec3<bool>(true, var_0.a.x, any(!var_0.a)), (3850i != (-36851i << (u_input.e.x % 32u))) && (_wgslsmith_f_op_f32(min(global0.x, global0.x)) > _wgslsmith_f_op_f32(-global0.x))));
    return _wgslsmith_add_i32(u_input.d, abs(u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = ~(~(~(u_input.e.x ^ 12346u))) ^ firstLeadingBit((u_input.c.x >> (1u % 32u)) | _wgslsmith_div_u32(15088u, firstLeadingBit(u_input.a)));
    var var_1 = Struct_1(vec2<bool>(false, -106f < global0.x), 47943i);
    let var_2 = vec2<u32>(firstLeadingBit(4294967295u), countOneBits(firstLeadingBit(u_input.a)));
    global1 = array<Struct_1, 20>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1455f + 1376f) + -1321f) * global0.x), -1000f)), -947f);
    global3 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1() << (firstTrailingBit(reverseBits(~u_input.e.x)) % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 1246f), 197f) - -1509f))), vec3<u32>(abs(var_2.x) ^ var_2.x, ~var_2.x, select(1u, func_4(func_4(Struct_2(vec4<u32>(1u, u_input.a, var_2.x, u_input.a)), u_input.c.x), 5570u).a.x, global2.a.x)), func_4(Struct_2(~vec4<u32>(var_2.x, 2129u, u_input.c.x, u_input.c.x)), ~53579u).a.zzy & func_4(Struct_2(~vec4<u32>(0u, 31077u, u_input.a, u_input.e.x)), firstTrailingBit(_wgslsmith_add_u32(0u, var_2.x))).a.xzy, -_wgslsmith_sub_i32(~var_1.b, -_wgslsmith_dot_vec2_i32(vec2<i32>(69951i, var_1.b), vec2<i32>(-2147483647i, 53885i))));
}

