struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(false, Struct_1(vec3<i32>(-8025i, 0i, -1i), vec4<f32>(174f, 179f, -1022f, -346f), 1u)), Struct_2(true, Struct_1(vec3<i32>(1i, 13617i, 3321i), vec4<f32>(-659f, -363f, -1000f, 1027f), 27542u)), Struct_2(false, Struct_1(vec3<i32>(-1i, -9957i, 1i), vec4<f32>(1173f, -1358f, -916f, 131f), 5934u)), Struct_2(true, Struct_1(vec3<i32>(0i, 17909i, 1i), vec4<f32>(-1000f, -2099f, -1000f, -1279f), 1u)), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -50361i, 25859i), vec4<f32>(-259f, -403f, 462f, -1044f), 4294967295u)), Struct_2(false, Struct_1(vec3<i32>(19205i, i32(-2147483648), 0i), vec4<f32>(-631f, -672f, 1803f, -1129f), 147431u)), Struct_2(false, Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<f32>(-392f, 163f, 123f, -689f), 0u)), Struct_2(false, Struct_1(vec3<i32>(1i, 33911i, 2147483647i), vec4<f32>(-1384f, -1830f, -1000f, 887f), 5176u)), Struct_2(true, Struct_1(vec3<i32>(0i, 17671i, -1i), vec4<f32>(-100f, 380f, 1466f, -1443f), 0u)), Struct_2(true, Struct_1(vec3<i32>(32751i, 2147483647i, 1i), vec4<f32>(-213f, -2054f, 1000f, 111f), 0u)), Struct_2(false, Struct_1(vec3<i32>(-11765i, -33640i, 0i), vec4<f32>(113f, 2094f, 1807f, -1406f), 4294967295u)), Struct_2(false, Struct_1(vec3<i32>(0i, -21038i, 1739i), vec4<f32>(-199f, 496f, 358f, -113f), 4294967295u)), Struct_2(false, Struct_1(vec3<i32>(0i, 36535i, 1i), vec4<f32>(-707f, -1317f, -464f, 143f), 16072u)), Struct_2(true, Struct_1(vec3<i32>(17392i, 24626i, 0i), vec4<f32>(-233f, 1115f, 676f, 919f), 46304u)), Struct_2(false, Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec4<f32>(-1487f, 1346f, 491f, -1000f), 4294967295u)), Struct_2(true, Struct_1(vec3<i32>(21219i, 0i, 1i), vec4<f32>(637f, 1319f, -400f, 610f), 35854u)), Struct_2(true, Struct_1(vec3<i32>(-14214i, 0i, 0i), vec4<f32>(1296f, -338f, 829f, 626f), 4294967295u)), Struct_2(true, Struct_1(vec3<i32>(0i, 8898i, -29203i), vec4<f32>(798f, -1221f, 346f, 1000f), 25431u)), Struct_2(true, Struct_1(vec3<i32>(70842i, -15116i, -1i), vec4<f32>(-320f, 391f, 1006f, -1985f), 0u)), Struct_2(true, Struct_1(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec4<f32>(159f, -887f, 272f, -2213f), 4294967295u)), Struct_2(false, Struct_1(vec3<i32>(12754i, 75892i, 0i), vec4<f32>(2348f, -1567f, 373f, -392f), 4294967295u)), Struct_2(true, Struct_1(vec3<i32>(13323i, i32(-2147483648), -1i), vec4<f32>(756f, 1134f, 434f, -1000f), 117870u)), Struct_2(true, Struct_1(vec3<i32>(-56173i, -23553i, -31469i), vec4<f32>(-343f, 684f, 1000f, 1107f), 20282u)), Struct_2(false, Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), vec4<f32>(790f, 280f, -686f, 628f), 4294967295u)), Struct_2(false, Struct_1(vec3<i32>(28543i, -28409i, -2489i), vec4<f32>(-594f, -1334f, 402f, -650f), 0u)), Struct_2(false, Struct_1(vec3<i32>(-20076i, 34395i, 2147483647i), vec4<f32>(1658f, 963f, -1000f, 330f), 51703u)), Struct_2(true, Struct_1(vec3<i32>(19607i, -4744i, 11166i), vec4<f32>(-1110f, 1644f, -701f, -1000f), 6167u)), Struct_2(true, Struct_1(vec3<i32>(2576i, 0i, 17374i), vec4<f32>(-1000f, 1000f, -182f, 149f), 1u)));

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> i32 {
    var var_0 = ~(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.b.a.x, arg_1.b.a.x, u_input.c), reverseBits(arg_1.b.a.x)), arg_1.b.a.x, 1i >> (arg_1.b.c % 32u)) >> (~1u % 32u));
    let var_1 = ~0u;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.b.b.xwy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1456f, -101f, global0.b.b.x) + _wgslsmith_f_op_vec3_f32(abs(global0.b.b.wzx)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1158f - -1262f), 887f, _wgslsmith_f_op_f32(arg_1.b.b.x * arg_1.b.b.x)))))));
    global0 = Struct_2(!(u_input.b.x != max(19432u >> (1u % 32u), u_input.b.x)), Struct_1(_wgslsmith_mod_vec3_i32(u_input.a ^ ~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(61960i, 1i, u_input.d)), _wgslsmith_add_vec3_i32(arg_1.b.a, arg_1.b.a), -vec3<i32>(30621i, u_input.a.x, arg_1.b.a.x))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b.b.x, -1558f), var_2.x, global0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -199f), var_2.x)), global0.b.b.x, global0.b.b.x), min(max(var_1, 28185u), ~(~u_input.b.x))));
    global2 = arg_1.b.a.x;
    return ~(-u_input.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> i32 {
    global0 = global1[_wgslsmith_index_u32(1u, 28u)];
    global0 = Struct_2(false, global0.b);
    let var_0 = Struct_1(-vec3<i32>(abs(func_3(0u, Struct_2(global0.a, Struct_1(vec3<i32>(-2147483647i, u_input.e.x, 2745i), vec4<f32>(global0.b.b.x, global0.b.b.x, global0.b.b.x, arg_1.x), global0.b.c)), global0.a)), ~1i >> (global0.b.c % 32u), ~global0.b.a.x), vec4<f32>(933f, global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + _wgslsmith_f_op_f32(-global0.b.b.x))), -1509f), ~1u);
    var var_1 = select(_wgslsmith_div_vec4_i32(~select(-vec4<i32>(arg_0.x, u_input.a.x, var_0.a.x, -1i), ~vec4<i32>(0i, global0.b.a.x, var_0.a.x, arg_0.x), global0.a), -(~vec4<i32>(global0.b.a.x, 30i, var_0.a.x, u_input.c))), ~vec4<i32>(-27069i, reverseBits(1i), -2147483647i, func_3(u_input.b.x, global1[_wgslsmith_index_u32(79839u, 28u)], false)), global0.a);
    global1 = array<Struct_2, 28>();
    return -(~countOneBits(countOneBits(~1i)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = global0.b.b;
    let var_1 = vec2<i32>(abs(u_input.a.x), reverseBits(~firstLeadingBit(arg_0)) ^ -_wgslsmith_sub_i32(func_2(vec3<i32>(1i, arg_0, arg_0), global0.b.b), func_3(0u, global1[_wgslsmith_index_u32(43273u, 28u)], global0.a)));
    return global0.b;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = -1314f;
    let var_1 = all(!select(!vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, all(vec3<bool>(global0.a, true, global0.a)), all(vec3<bool>(arg_0, true, false)), true), select(!global0.a, global0.a, !global0.a)));
    global0 = Struct_2(all(select(select(select(vec3<bool>(true, false, var_1), vec3<bool>(global0.a, global0.a, false), global0.a), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, false, global0.a), true), all(vec3<bool>(arg_0, false, true))), vec3<bool>(global0.b.b.x != -846f, true, any(vec2<bool>(false, true))), arg_0)), arg_2);
    global1 = array<Struct_2, 28>();
    var var_2 = !(!var_1);
    return func_1(-2147483647i).c ^ _wgslsmith_mod_u32(global0.b.c, ~(~0u));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.b.c, _wgslsmith_mod_u32(firstLeadingBit(global0.b.c >> (u_input.b.x % 32u)), arg_1.x)), 28u)];
    global2 = arg_3.x;
    let var_0 = vec4<u32>(~(~1u), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 15252u), arg_1.x);
    let var_1 = any(select(vec3<bool>(global0.a, false, !(var_0.x < arg_1.x)), select(vec3<bool>(any(vec2<bool>(true, global0.a)), all(vec3<bool>(false, false, false)), all(vec2<bool>(false, global0.a))), !vec3<bool>(global0.a, false, false), true), select(vec3<bool>(any(vec4<bool>(false, false, global0.a, global0.a)), global0.a, global0.a), vec3<bool>(global0.a, true, true), true)));
    var var_2 = ~firstLeadingBit(_wgslsmith_add_u32(arg_1.x, 86522u));
    return Struct_1(vec3<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(func_1(2147483647i).a.x, -1i), _wgslsmith_mod_i32(global0.b.a.x, firstTrailingBit(1i))), select(~(-20087i), ~2147483647i, false) & _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_2.zy, arg_2.xy), arg_2.x << (var_0.x % 32u))), global0.b.b, abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = Struct_2(!global0.a, global0.b);
    var var_1 = func_5(_wgslsmith_f_op_f32(select(global0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) + _wgslsmith_f_op_f32(global0.b.b.x * -2373f)) * global0.b.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.b.x - global0.b.b.x), _wgslsmith_f_op_f32(-global0.b.b.x)) > _wgslsmith_f_op_f32(1639f * 1048f))), firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, ~87538u), func_4(!global0.a, _wgslsmith_mult_i32(-2147483647i, global0.b.a.x), func_1(-61966i), -1378f))), abs(max(u_input.a, vec3<i32>(-1i, -1i & u_input.d, _wgslsmith_dot_vec3_i32(global0.b.a, vec3<i32>(global0.b.a.x, global0.b.a.x, 0i))))), -(~vec3<i32>(-26299i, u_input.c << (33630u % 32u), ~u_input.c)));
    var var_2 = global1[_wgslsmith_index_u32(~(~global0.b.c), 28u)];
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(0u)), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.b.yzz, 4294967295u);
}

