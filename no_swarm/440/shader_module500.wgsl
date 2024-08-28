struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(1u, 0u, 1u, 75765u, 34364u, 1u, 0u, 16238u, 1u, 4294967295u, 24411u, 24405u, 12017u, 5748u, 15182u, 43712u, 2062u, 25345u, 38985u, 0u, 28021u, 4294967295u, 1u, 105947u, 20495u, 0u, 53978u, 73217u);

var<private> global1: vec3<f32> = vec3<f32>(262f, 506f, 1135f);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(42077u, 4294967295u, 21155u), true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global0 = array<u32, 28>();
    let var_0 = !global2.b;
    var var_1 = Struct_2(Struct_1(global2.a, any(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, global2.b), vec3<bool>(false, true, global2.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1134f, 1427f, -1474f, 277f), vec4<f32>(global1.x, 293f, 950f, 769f), vec4<bool>(true, var_0, global2.b, true))), vec4<f32>(574f, -1023f, global1.x, -234f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, global1.x, global1.x))), false)), vec4<f32>(-449f, global1.x, _wgslsmith_f_op_f32(sign(-292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(global2.a.x, 35254u, global2.a.x) & select(u_input.d, u_input.d, true)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(38441u, 1u, global2.a.x), ~global2.a), vec3<u32>(32392u, _wgslsmith_dot_vec2_u32(u_input.d.zy, global2.a.xz), global0[_wgslsmith_index_u32(0u >> (u_input.d.x % 32u), 28u)]), vec3<u32>(~global2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(19545u, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global2.a.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global2.a.x, 28u)], 24164u, global2.a.x, 58314u)), abs(4294967295u)))));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1615u, u_input.d.x), vec2<u32>(17758u, select(9000u, var_1.a.a.x, true)), select(vec2<bool>(true, true), select(vec2<bool>(var_1.a.b, global2.b), vec2<bool>(var_0, false), vec2<bool>(global2.b, var_1.a.b)), select(vec2<bool>(var_0, global2.b), vec2<bool>(global2.b, var_1.a.b), global2.b))), reverseBits(var_1.a.a.xx ^ (vec2<u32>(0u, global0[_wgslsmith_index_u32(var_1.c.x, 28u)]) << (vec2<u32>(48949u, var_1.c.x) % vec2<u32>(32u))))), _wgslsmith_mod_u32(1u, firstLeadingBit(23055u)));
    let var_3 = countOneBits(vec2<i32>(_wgslsmith_sub_i32(~u_input.a, _wgslsmith_div_i32(32607i, u_input.c.x)), 7376i) ^ u_input.b.yy);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + 1462f) - global1.x), _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-1258f * 1077f)))))));
}

fn func_2(arg_0: bool) -> i32 {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.x, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f - global1.x)), _wgslsmith_f_op_f32(trunc(global1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x))))));
    var var_0 = Struct_2(Struct_1(vec3<u32>(1u, ~35172u, global0[_wgslsmith_index_u32(global2.a.x, 28u)]) & vec3<u32>(firstLeadingBit(u_input.d.x), ~53042u, 1u), !(-u_input.c.x != -1i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 1000f, 146f), vec4<f32>(-335f, -961f, -432f, 1343f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 723f, 900f, -883f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, -1276f, -757f)), vec4<bool>(true, global2.b, false, arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, -439f, 966f, 380f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -2135f, -415f, -925f), vec4<f32>(global1.x, global1.x, 2669f, global1.x), arg_0)))))), vec3<u32>(~(~(u_input.d.x << (51280u % 32u))), 1u, 4294967295u << (select(4294967295u, select(u_input.d.x, 1u, arg_0), true) % 32u)));
    global0 = array<u32, 28>();
    return u_input.e.x;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_add_vec4_i32(-u_input.b, vec4<i32>(u_input.b.x, -29842i, -func_2(all(vec4<bool>(true, false, global2.b, var_0))), u_input.b.x));
    var var_2 = max(u_input.c.x << (1u % 32u), -7003i);
    let var_3 = Struct_2(Struct_1(max(global2.a, vec3<u32>(~u_input.d.x, firstLeadingBit(global0[_wgslsmith_index_u32(19720u, 28u)]), 1u)), select(true & (-571f != global1.x), false, global2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 333f, global1.x, 329f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1692f, -231f, 611f, 297f) - vec4<f32>(-1148f, -553f, -1585f, 406f))))), vec3<u32>(~(global2.a.x | (global0[_wgslsmith_index_u32(global2.a.x, 28u)] & 42405u)), ~4294967295u ^ max(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1016u, 28u)]), 28u)], 4294967295u), (_wgslsmith_mod_u32(global2.a.x, global2.a.x) >> (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u)) >> (_wgslsmith_mod_u32(~u_input.d.x, global2.a.x | global2.a.x) % 32u)));
    var var_4 = ~0i;
    return Struct_1(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(~global0[_wgslsmith_index_u32(u_input.d.x, 28u)], ~global0[_wgslsmith_index_u32(global2.a.x, 28u)], ~global2.a.x) ^ vec3<u32>(~4294967295u, 16297u, 13038u ^ global0[_wgslsmith_index_u32(1u, 28u)])), all(select(vec3<bool>(!var_0, any(vec2<bool>(true, global2.b)), 23656u <= var_3.c.x), vec3<bool>(any(vec4<bool>(false, false, false, var_3.a.b)), true, any(vec3<bool>(true, global2.b, var_0))), !(global1.x == -339f))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_0 = ~(select(reverseBits(vec4<u32>(arg_1.c.x, global2.a.x, 6047u, 4294967295u)), min(vec4<u32>(global2.a.x, 24457u, 49908u, 4294967295u), vec4<u32>(arg_3.a.x, arg_1.a.a.x, global0[_wgslsmith_index_u32(1u, 28u)], arg_1.c.x)), any(vec4<bool>(false, arg_0, true, global2.b))) << (~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_3.a.x, global2.a.x, global0[_wgslsmith_index_u32(0u, 28u)]), vec4<u32>(49580u, global0[_wgslsmith_index_u32(4294967295u, 28u)], 1u, 0u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.x, 50047u, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global2.a.x), vec4<u32>(global2.a.x, arg_3.a.x, 4294967295u, global2.a.x))) % vec4<u32>(32u)));
    var var_1 = vec4<u32>(4294967295u, 5174u, 4294967295u, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, 34387u, var_0.x, var_0.x) & vec4<u32>(38115u, var_0.x, var_0.x, arg_3.a.x), ~vec4<u32>(global0[_wgslsmith_index_u32(arg_1.a.a.x, 28u)], global2.a.x, global0[_wgslsmith_index_u32(arg_1.c.x, 28u)], arg_1.c.x), true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2.a.x, global0[_wgslsmith_index_u32(var_0.x, 28u)], 0u), vec4<u32>(1u, 49280u, u_input.d.x, global0[_wgslsmith_index_u32(41314u, 28u)]))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i > u_input.a;
    var var_1 = Struct_2(func_4(global2.b, Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -1152f, -334f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 368f, global1.x)))), u_input.d), u_input.c.x, func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(global1.x, 1000f, global1.x, 975f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, -834f, -2332f, 2201f))), select(vec4<bool>(global2.b, false, global2.b, global2.b), select(vec4<bool>(var_0, false, true, true), vec4<bool>(false, global2.b, var_0, true), global2.b), vec4<bool>(var_0, var_0, false, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 625f, 892f, global1.x)))))), vec3<u32>(reverseBits(~global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), u_input.d.x, 463u));
    var var_2 = var_1.a;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(select(2030f, -1942f, func_4(u_input.e.x != u_input.e.x, Struct_2(var_1.a, vec4<f32>(-595f, 894f, var_1.b.x, 164f), var_2.a), countOneBits(u_input.c.x), var_1.a).b || (_wgslsmith_mult_u32(19536u, var_2.a.x) == _wgslsmith_mult_u32(1u, 17592u)))), global1.x);
    let var_3 = u_input.a;
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    global1 = vec3<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(776f + global1.x), var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(951f + _wgslsmith_f_op_f32(-412f - global1.x))));
    global2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~86105u, 25021u, vec2<u32>(~4294967295u, ~firstLeadingBit(_wgslsmith_div_u32(var_2.a.x, global2.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1862f, 2109f, var_1.b.x) + var_1.b.yyy) - vec3<f32>(-437f, -866f, global1.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_1.b.zzy, vec3<f32>(var_1.b.x, global1.x, global1.x))))), var_1.b.wxy, !vec3<bool>(false, false, all(vec2<bool>(true, global2.b))))), vec4<u32>(min(_wgslsmith_mod_u32(var_1.a.a.x, 15834u), ~_wgslsmith_clamp_u32(88650u, var_1.a.a.x, var_2.a.x)), ~_wgslsmith_div_u32(var_2.a.x, u_input.d.x), var_2.a.x | 4294967295u, u_input.d.x ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, var_2.a.x, 67660u), _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(9180u, var_1.a.a.x, 68126u)))));
}

