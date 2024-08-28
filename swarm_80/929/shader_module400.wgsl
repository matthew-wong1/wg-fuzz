struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<bool>(false, false, false, false), 0u, 4294967295u, vec4<u32>(1u, 4294967295u, 1u, 91280u)), Struct_1(vec4<bool>(true, true, true, true), 1u, 4294967295u, vec4<u32>(0u, 0u, 0u, 1u)), Struct_1(vec4<bool>(false, false, true, false), 22142u, 4294967295u, vec4<u32>(1u, 4294967295u, 26598u, 56736u)), Struct_1(vec4<bool>(false, false, false, false), 0u, 4294967295u, vec4<u32>(4294967295u, 0u, 0u, 28663u)), Struct_1(vec4<bool>(true, false, true, true), 67702u, 1u, vec4<u32>(1u, 52282u, 61502u, 25871u)), Struct_1(vec4<bool>(true, false, false, true), 31422u, 72906u, vec4<u32>(0u, 0u, 101786u, 9570u)), Struct_1(vec4<bool>(false, false, true, true), 17490u, 1u, vec4<u32>(0u, 0u, 1u, 0u)), Struct_1(vec4<bool>(false, false, false, false), 4294967295u, 36452u, vec4<u32>(1u, 42285u, 1u, 114465u)), Struct_1(vec4<bool>(false, true, true, false), 0u, 36385u, vec4<u32>(4294967295u, 0u, 38597u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, true), 1u, 4294967295u, vec4<u32>(1u, 1u, 23581u, 1u)), Struct_1(vec4<bool>(false, false, true, true), 4294967295u, 4294967295u, vec4<u32>(29895u, 1u, 67212u, 1u)));

var<private> global1: Struct_1;

var<private> global2: f32 = 1000f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = vec3<bool>(true, false, !any(!select(vec2<bool>(arg_1.a.x, true), vec2<bool>(arg_1.a.x, arg_0.a.x), global1.a.zz)));
    global1 = Struct_1(global1.a, global1.d.x, ~34497u ^ arg_1.c, global1.d);
    global0 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_sub_vec2_i32(arg_2.zx, select(arg_2.yx, vec2<i32>(min(u_input.a.x, -1i), _wgslsmith_add_i32(1i, 20109i)), !all(vec2<bool>(arg_1.a.x, true)))) >> (reverseBits(vec2<u32>(46525u, min(885u, _wgslsmith_clamp_u32(global1.d.x, arg_0.c, 0u)))) % vec2<u32>(32u));
    var var_2 = abs(max(vec4<i32>(u_input.a.x, reverseBits(-1i), select(var_1.x, arg_2.x, true), var_1.x), -(~vec4<i32>(arg_2.x, u_input.a.x, u_input.a.x, 7326i)) >> (vec4<u32>(1u | arg_0.c, reverseBits(22048u), reverseBits(30934u), 0u) % vec4<u32>(32u))));
    return 2946i;
}

fn func_2() -> vec2<f32> {
    global1 = Struct_1(vec4<bool>(true, select(any(global1.a.wx), global1.a.x, u_input.a.x == func_3(Struct_1(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), 53326u, global1.b, vec4<u32>(global1.c, global1.b, global1.c, 4294967295u)), Struct_1(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), global1.d.x, 1u, global1.d), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), any(!select(global1.a.zw, global1.a.yz, true)), any(!(!vec4<bool>(true, global1.a.x, true, false)))), select(4294967295u, 0u, global1.a.x), _wgslsmith_mod_u32(1u, max(1u, 1u)), ~global1.d);
    global2 = -890f;
    var var_0 = -(~(-10384i)) >> (_wgslsmith_div_u32(~_wgslsmith_sub_u32(43932u << (0u % 32u), global1.d.x), 0u) % 32u);
    global0 = array<Struct_1, 11>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-599f, -579f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -150f) - vec2<f32>(1122f, -546f)), vec2<bool>(var_1.a.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 616f) - vec2<f32>(-341f, -609f)))))))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    return -807f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(2225f - arg_0.x), -911f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(max(-1709f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(560f)), _wgslsmith_div_f32(355f, 415f)), -319f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1337f), vec4<f32>(-293f, 484f, 177f, -492f), vec4<bool>(false, global1.a.x, false, true))) + vec4<f32>(arg_0.x, -254f, arg_0.x, arg_0.x)), vec4<f32>(-710f, _wgslsmith_f_op_vec2_f32(func_2()).x, 357f, _wgslsmith_f_op_f32(f32(-1f) * -1346f)), !select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(arg_2.a.x, arg_1.a.x, false, true), arg_1.a)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2383f, arg_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -366f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_2.x) - -308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)))))));
    let var_4 = min(u_input.a, firstLeadingBit(u_input.a));
    return Struct_1(vec4<bool>(any(!(!vec3<bool>(false, global1.a.x, arg_2.a.x))), all(vec4<bool>(!arg_1.a.x, all(global1.a.yy), all(vec3<bool>(arg_2.a.x, false, arg_2.a.x)), arg_1.a.x)), any(vec2<bool>(true, any(vec4<bool>(global1.a.x, global1.a.x, arg_2.a.x, false)))), arg_1.a.x), arg_2.c << (99130u % 32u), _wgslsmith_sub_u32(37023u, abs(firstTrailingBit(firstTrailingBit(global1.d.x)))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(arg_1.d.x, global1.b), arg_1.d.x, _wgslsmith_mult_u32(arg_1.c, 2392u)) >> (~abs(vec4<u32>(arg_1.b, arg_2.d.x, 4294967295u, global1.b)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec3<u32>(10274u, global1.d.x, _wgslsmith_sub_u32(44982u, abs(global1.d.x))));
    let var_1 = true | all(global1.a.zy);
    var var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(340f, 2245f, -235f))), _wgslsmith_f_op_f32(619f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-504f))))), Struct_1(select(!select(vec4<bool>(false, true, var_1, global1.a.x), global1.a, vec4<bool>(global1.a.x, var_1, var_1, false)), vec4<bool>(any(global1.a), any(global1.a), false && var_1, false), global1.a), _wgslsmith_clamp_u32(global1.b, _wgslsmith_sub_u32(firstLeadingBit(var_0.x), ~1u), global1.c), _wgslsmith_div_u32(~(~var_0.x), ~global1.c), reverseBits(abs(vec4<u32>(global1.d.x, 1u, 4294967295u, global1.d.x)))), global0[_wgslsmith_index_u32(select(global1.b, var_0.x << (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 57271u, global1.c, 34698u), vec4<u32>(1u, global1.d.x, global1.d.x, 1u))) % 32u), true), 11u)]);
    let var_3 = vec4<bool>(all(var_2.a.yz), global1.a.x & (~(~var_2.b) < _wgslsmith_mult_u32(countOneBits(1u), var_0.x & var_0.x)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, -1000f)))) * vec2<f32>(-1967f, _wgslsmith_f_op_f32(min(216f, 824f)))), global0[_wgslsmith_index_u32(global1.d.x, 11u)], func_4(vec2<f32>(358f, 729f), global0[_wgslsmith_index_u32(var_2.b, 11u)], Struct_1(!global1.a, 0u, countOneBits(global1.c), var_2.d))).a.x, all(vec2<bool>(var_2.a.x, -u_input.a.x > _wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
    var var_4 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1483f, -237f)), _wgslsmith_div_vec2_f32(vec2<f32>(-637f, 397f), vec2<f32>(-1000f, 410f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(-1112f, 634f)), _wgslsmith_f_op_f32(round(-1405f)))))), Struct_1(var_2.a, ~global1.c, ~(~1u), reverseBits(vec4<u32>(min(4294967295u, global1.b), ~var_2.c, ~28525u, ~1u))), func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(func_2()))), Struct_1(!var_3, var_0.x, var_0.x, global1.d), global0[_wgslsmith_index_u32(4294967295u, 11u)])).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, 5189i) >> ((~vec2<u32>(var_2.b, 4294967295u) | var_0.yx) % vec2<u32>(32u)), _wgslsmith_mult_u32(0u, func_4(vec2<f32>(_wgslsmith_f_op_f32(-455f - 1626f), _wgslsmith_div_f32(-1296f, 652f)), Struct_1(func_4(vec2<f32>(-511f, -281f), global0[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(global1.a, 32898u, 12083u, vec4<u32>(global1.b, var_2.c, var_2.c, var_2.b))).a, var_2.d.x, global1.d.x >> (82339u % 32u), countOneBits(vec4<u32>(var_0.x, 0u, var_2.b, 1u))), Struct_1(func_4(vec2<f32>(1605f, 285f), Struct_1(global1.a, 1u, 0u, vec4<u32>(var_0.x, 1u, global1.d.x, 15420u)), Struct_1(var_3, 0u, var_0.x, global1.d)).a, var_2.b, _wgslsmith_div_u32(var_0.x, global1.c), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 35893u, var_2.b, var_2.c), global1.d))).d.x), max(firstLeadingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-73544i, 35092i, u_input.a.x, -1i), vec4<i32>(1i, u_input.a.x, -14796i, u_input.a.x), vec4<i32>(u_input.a.x, 7893i, u_input.a.x, u_input.a.x))), firstLeadingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(42033i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)))));
}

