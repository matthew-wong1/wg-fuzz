struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-724f, 416f);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<u32>(0u, 0u, 0u), 1121f, 510f, vec4<f32>(1830f, -324f, 1150f, -821f), 1u), Struct_1(vec3<u32>(10269u, 1u, 23277u), -267f, -582f, vec4<f32>(-1007f, 181f, -451f, -1750f), 29127u), Struct_1(vec3<u32>(31518u, 1u, 1u), 214f, -481f, vec4<f32>(746f, 1132f, 1538f, -782f), 14774u), Struct_1(vec3<u32>(4294967295u, 0u, 17897u), -1418f, 1000f, vec4<f32>(338f, -548f, -1141f, 499f), 1u), Struct_1(vec3<u32>(48030u, 30627u, 10851u), 106f, 1045f, vec4<f32>(288f, 1039f, -1544f, -511f), 54984u), Struct_1(vec3<u32>(4294967295u, 14829u, 1u), 315f, -1023f, vec4<f32>(-1630f, -438f, -594f, -575f), 4294967295u), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), -1628f, 640f, vec4<f32>(-1151f, 543f, -1988f, 158f), 81112u), Struct_1(vec3<u32>(7022u, 59031u, 16088u), -1180f, 1413f, vec4<f32>(-409f, 1493f, 172f, 567f), 1u), Struct_1(vec3<u32>(1u, 4294967295u, 0u), -1205f, 1000f, vec4<f32>(-518f, -905f, -1375f, 401f), 14618u), Struct_1(vec3<u32>(4294967295u, 1u, 44538u), 314f, 469f, vec4<f32>(1437f, 632f, 1000f, -1215f), 4294967295u), Struct_1(vec3<u32>(0u, 97524u, 4294967295u), 936f, 483f, vec4<f32>(-838f, 777f, -922f, 1685f), 0u), Struct_1(vec3<u32>(4104u, 22463u, 0u), 502f, 494f, vec4<f32>(-793f, 997f, -2393f, 556f), 4294967295u), Struct_1(vec3<u32>(14872u, 4294967295u, 0u), 1212f, -1058f, vec4<f32>(1445f, 1000f, 371f, -812f), 27849u), Struct_1(vec3<u32>(62910u, 4294967295u, 4294967295u), 589f, 1438f, vec4<f32>(630f, 690f, 1213f, 339f), 73784u), Struct_1(vec3<u32>(88234u, 4294967295u, 4294967295u), -476f, -851f, vec4<f32>(1180f, 2070f, 304f, 678f), 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-_wgslsmith_div_i32(-2147483647i, -16561i), -2147483647i, _wgslsmith_mod_i32(-24376i, 1i)));
    global1 = array<Struct_1, 15>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_2 = Struct_1(firstTrailingBit(vec3<u32>(reverseBits(max(u_input.a.x, 49831u)), ~var_1.a.x, firstTrailingBit(~0u))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -812f))) * var_1.d.x), _wgslsmith_f_op_vec4_f32(-var_1.d), 22094u);
    let var_3 = 93925u;
    return !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, true, true, true), !any(vec3<bool>(false, true, false))), vec4<bool>(true, !all(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))));
}

fn func_4(arg_0: vec4<bool>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(573f, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_div_f32(880f, _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 903f)) - _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + -760f))));
    let var_0 = global1[_wgslsmith_index_u32(~(firstLeadingBit(55828u) ^ (u_input.a.x ^ 1u)), 15u)];
    global1 = array<Struct_1, 15>();
    var var_1 = Struct_1(select(vec3<u32>(abs(~var_0.e), 32638u, 26330u), var_0.a, false), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-457f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1156f, _wgslsmith_f_op_f32(step(-1000f, var_0.d.x)))) - var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d.x, -1019f, 760f, -1029f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_0.b, var_0.c, var_0.b), vec4<f32>(var_0.d.x, 361f, -1472f, -1788f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -1005f, global0.x, global0.x))), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 997f, _wgslsmith_f_op_f32(global0.x + -373f)))), _wgslsmith_clamp_u32(var_0.a.x, var_0.e, _wgslsmith_add_u32(u_input.a.x, ~var_0.a.x)));
    return var_0.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = func_4(func_3());
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), 1835f)));
    let var_1 = global1[_wgslsmith_index_u32(arg_2.a.x, 15u)];
    let var_2 = arg_1.a.xz;
    let var_3 = arg_2.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)), 1883f, true && select(all(vec2<bool>(false, true)), 765f == var_3.x, all(vec4<bool>(false, false, false, false))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-global0.x), 928f, vec4<f32>(arg_0.x, -451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1098f + arg_1.c), _wgslsmith_div_f32(-1193f, 202f))) * 1398f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-617f - 1469f), global0.x)))), ~arg_1.a.x);
    let var_1 = 72764u;
    let var_2 = arg_1;
    var var_3 = vec4<i32>(countOneBits(_wgslsmith_mult_i32(~14609i, arg_2.x)), _wgslsmith_mod_i32(-firstTrailingBit(27500i), abs(firstTrailingBit(arg_2.x))) & arg_2.x, _wgslsmith_add_i32(-2147483647i, arg_2.x), max(arg_2.x, abs(2147483647i)));
    return ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.e, 25807u), u_input.a) >> (vec3<u32>(u_input.a.x, ~17286u, var_0.a.x) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(41303u, arg_0.e, 40411u), u_input.a)) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1120f + 1000f) + -569f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-431f, global0.x, 1013f, arg_0.c) - arg_0.d)))) + arg_0.d), 1u);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(20588u, 45239u, 4294967295u), func_5(vec3<f32>(arg_0.d.x, 1475f, _wgslsmith_f_op_f32(func_2(countOneBits(vec4<u32>(arg_0.e, arg_0.a.x, u_input.a.x, 40856u)), arg_0, arg_0))), arg_0, ~reverseBits(vec3<i32>(2147483647i, arg_1, 0i))));
    let var_2 = _wgslsmith_add_i32(-1i, -1i);
    let var_3 = arg_0;
    let var_4 = select(~firstLeadingBit(select(firstTrailingBit(vec4<u32>(47727u, arg_0.e, 43194u, arg_2)), ~vec4<u32>(4294967295u, 86396u, 57390u, arg_0.e), all(vec4<bool>(true, false, false, true)))), max(countOneBits(~vec4<u32>(0u, var_0.a.x, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.e, 42920u), vec4<u32>(0u, 17898u, 0u, 2432u), abs(vec4<u32>(33820u, 14650u, 0u, arg_2)))) & _wgslsmith_clamp_vec4_u32(min(abs(vec4<u32>(arg_2, 1u, 1u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 36679u, arg_2, 0u), vec4<u32>(5722u, var_3.e, u_input.a.x, 0u))), firstTrailingBit(min(vec4<u32>(u_input.a.x, 97697u, arg_0.a.x, 10391u), vec4<u32>(4294967295u, arg_2, var_3.a.x, 1u))), ~vec4<u32>(16563u, 0u, arg_2, arg_0.a.x) << (~vec4<u32>(var_0.a.x, arg_0.a.x, arg_2, var_0.e) % vec4<u32>(32u))), any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-297f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1610f, _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1415f)), _wgslsmith_f_op_f32(global0.x * -597f)) * vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-514f, 1821f, -1656f, global0.x), vec4<f32>(global0.x, var_0.x, -882f, global0.x), false))))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -2769f))) * _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(max(-231f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(388f + global0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~(~31301u), 15u)], -max(44300i, -1i), ~(~71362u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.wwz) + var_1.wyy);
    global1 = array<Struct_1, 15>();
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i << (u_input.a.x % 32u), ~(-34277i) << ((u_input.a.x ^ 65951u) % 32u)), -53099i, i32(-1i) * -1i, ~(-35966i)), _wgslsmith_div_vec4_i32(-vec4<i32>(firstTrailingBit(43594i), 14477i, firstTrailingBit(-16147i), -2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 47781i, -9990i, 3847i), vec4<i32>(10329i, 0i, -1i, 3452i)), vec4<i32>(0i, 33668i, 3083i, 35134i) >> (vec4<u32>(15311u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(0i, max(0i, -49707i), -37385i, abs(-2147483647i)))));
    var var_4 = vec3<u32>(~u_input.a.x, u_input.a.x, 4294967295u | ~u_input.a.x);
    var_3 = -firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, var_3.x, var_3.x), abs(var_3.yyw)), var_3.x, 1i, var_3.x));
    var var_5 = abs((var_3.ww & var_3.yw) & (_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_3.x, var_3.x), var_3.xz, true), var_3.xx, -vec2<i32>(13197i, var_3.x)) << (vec2<u32>(func_4(vec4<bool>(true, false, false, true)).x, 63077u >> (0u % 32u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(~abs(0u), 1u, ~u_input.a.x << ((var_4.x | u_input.a.x) % 32u))));
}

