struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, true, false, false, false, true, true, false);

var<private> global1: Struct_3 = Struct_3(1795f, Struct_1(vec4<u32>(4294967295u, 0u, 15634u, 62111u)), 4294967295u, Struct_1(vec4<u32>(16031u, 0u, 30795u, 63112u)));

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<bool, 10>();
    let var_0 = abs(arg_2);
    let var_1 = false;
    global0 = array<bool, 10>();
    let var_2 = _wgslsmith_f_op_f32(1000f * arg_3.b.x);
    return Struct_1(vec4<u32>(var_0, ~(~(arg_1.a.a.x ^ arg_1.a.a.x)), arg_3.a.a.x, _wgslsmith_add_u32(global1.c, select(~arg_3.a.a.x, ~var_0, global1.c >= u_input.b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<bool>) -> bool {
    return arg_3.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    global3 = u_input.a;
    global0 = array<bool, 10>();
    global3 = u_input.c.x;
    let var_0 = arg_2;
    var var_1 = Struct_2(var_0.d, arg_1.b, _wgslsmith_mult_vec3_i32(u_input.c, ~vec3<i32>(-arg_1.c.x, firstTrailingBit(u_input.c.x), -arg_1.c.x)), ~(~_wgslsmith_mod_i32(u_input.c.x, -1i) << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.b.a.x, arg_1.a.a.x), arg_2.d.a.x << (85346u % 32u)) % 32u)));
    return Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~select(arg_2.b.a, var_0.d.a, true), select(abs(global1.d.a), ~global1.b.a, vec4<bool>(true, arg_3.b, false, global0[_wgslsmith_index_u32(arg_1.a.a.x, 10u)]))), vec4<u32>(43975u, u_input.b, var_0.d.a.x, var_0.b.a.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = ~(-(countOneBits(vec3<i32>(u_input.a, 53656i, u_input.d)) >> (firstLeadingBit(global1.b.a.yzy) % vec3<u32>(32u))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(global1.a)), global1.b, ~u_input.b, func_4(global1.a, Struct_2(global1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -2211f, global1.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1048f, 790f, global1.a) * vec3<f32>(global1.a, global1.a, -679f))), firstLeadingBit(u_input.c), -2147483647i), Struct_3(_wgslsmith_f_op_f32(-1073f - global1.a), Struct_1(firstTrailingBit(global1.d.a)), abs(0u), func_2(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 5u)], true), true), Struct_2(global1.b, vec3<f32>(-434f, -790f, global1.a), vec3<i32>(-2147483647i, 30708i, u_input.c.x), u_input.a), u_input.b, Struct_2(global1.d, vec3<f32>(-646f, -1654f, global1.a), vec3<i32>(1i, 38843i, 16266i), -35285i))), Struct_4(vec4<f32>(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(f32(-1f) * -1948f), _wgslsmith_div_f32(540f, -360f)), func_3(~global1.b.a.xww, vec2<u32>(global1.d.a.x, global1.b.a.x), select(global2[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(global1.b.a.x, 10u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.c, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, global1.a, global2[_wgslsmith_index_u32(global1.c, 5u)]))))));
    let var_2 = Struct_4(vec4<f32>(484f, -593f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(295f + 1181f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ~(14030u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, var_1.b.a.x), vec2<u32>(u_input.b, 20712u)) % 32u)) <= ~(~u_input.b), _wgslsmith_f_op_f32(-global1.a));
    let var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(global1.b.a.xxy, vec3<u32>(global1.d.a.x, u_input.b, 1u)), vec3<u32>(1u, global1.c, global1.b.a.x))), var_1.d.a.zyz ^ ~(~global1.d.a.zzx)), select(vec3<u32>(~global1.b.a.x, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c, 4294967295u, u_input.b), global1.b.a) << (_wgslsmith_dot_vec4_u32(global1.b.a, vec4<u32>(global1.d.a.x, 40796u, 0u, var_1.b.a.x)) % 32u)), ~vec3<u32>(4294967295u, ~4294967295u, 33571u), vec3<bool>(false, false, select(var_2.b, !var_2.b, true))));
    let var_4 = var_2;
    return Struct_2(Struct_1(~var_1.d.a), vec3<f32>(_wgslsmith_div_f32(1209f, _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(floor(var_4.c)), 1000f), u_input.c, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    var var_0 = func_1();
    let var_1 = var_0.c.x;
    let var_2 = func_1();
    var var_3 = vec4<bool>(func_3(reverseBits(~(~vec3<u32>(global1.b.a.x, 20150u, var_0.a.a.x))), vec2<u32>(var_0.a.a.x, ~global1.b.a.x), all(vec3<bool>(var_0.c.x == -1i, !global2[_wgslsmith_index_u32(var_0.a.a.x, 5u)], true)), !select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 5u)], global2[_wgslsmith_index_u32(18831u, 5u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.a.x, 10u)], global2[_wgslsmith_index_u32(global1.d.a.x, 5u)]), true)), true, any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a.x, 10u)], global0[_wgslsmith_index_u32(var_2.a.a.x, 10u)], global2[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2.a.a.x, 10u)], false, global2[_wgslsmith_index_u32(71718u, 5u)], false)))), any(!select(vec3<bool>(global0[_wgslsmith_index_u32(global1.d.a.x, 10u)], false, global0[_wgslsmith_index_u32(var_2.a.a.x, 10u)]), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(11090u, 10u)], true, false))));
    var_0 = func_1();
    global3 = 1i;
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -515f), var_0.b.x))), Struct_1(~var_2.a.a << (~(var_2.a.a | var_0.a.a) % vec4<u32>(32u))), ~(14391u | (~var_2.a.a.x | func_4(1000f, var_2, Struct_3(-175f, global1.b, 36457u, Struct_1(var_2.a.a)), Struct_4(vec4<f32>(1599f, var_0.b.x, -1362f, -920f), var_3.x, global1.a)).a.x)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(global1.b.a), global1.b.a), var_0.a.a));
}

