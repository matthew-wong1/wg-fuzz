struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(868f, 672f, -2728f), vec2<i32>(-1i, 0i)), Struct_3(vec3<u32>(61748u, 96839u, 0u), vec3<f32>(-1463f, -994f, 1000f), vec2<i32>(1i, 0i)), Struct_3(vec3<u32>(0u, 0u, 35352u), vec3<f32>(-1266f, -283f, 557f), vec2<i32>(20782i, i32(-2147483648))), Struct_3(vec3<u32>(0u, 0u, 1u), vec3<f32>(-632f, 544f, -255f), vec2<i32>(4498i, 15709i)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<f32>(-354f, 788f, 797f), vec2<i32>(2147483647i, -24189i)), Struct_3(vec3<u32>(89959u, 25952u, 1u), vec3<f32>(-1015f, 314f, -455f), vec2<i32>(41096i, -1i)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 58219u), vec3<f32>(639f, 117f, -540f), vec2<i32>(0i, 0i)), Struct_3(vec3<u32>(0u, 39658u, 1u), vec3<f32>(879f, -1632f, 569f), vec2<i32>(1i, -1i)), Struct_3(vec3<u32>(1u, 1u, 0u), vec3<f32>(-1147f, -330f, -2104f), vec2<i32>(0i, -2962i)));

var<private> global3: vec4<f32> = vec4<f32>(507f, 997f, -368f, -1589f);

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1388f, -674f, global3.x, -1039f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, 159f, global3.x, -853f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(898f, -975f, 813f, global3.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1078f, 892f, 220f, -363f), vec4<f32>(2060f, 394f, 522f, 872f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global3.x, 1474f, global3.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, 1364f, var_0.x)) + vec4<f32>(592f, 1166f, var_0.x, -306f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global3.x, global3.x)), _wgslsmith_f_op_f32(global3.x * 989f), global3.x, _wgslsmith_f_op_f32(-1191f - global3.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, global3.x, global3.x, -1520f)) - vec4<f32>(global3.x, -800f, global3.x, 370f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1404f), -1327f, _wgslsmith_f_op_f32(global3.x * global3.x))), vec4<f32>(-1204f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), -112f, global3.x)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-436f))) > _wgslsmith_f_op_f32(ceil(-676f)), true, global1.d.b, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 1u)) < ~_wgslsmith_dot_vec4_u32(global1.a, vec4<u32>(global4.x, 5923u, 10210u, u_input.b)))));
    let var_1 = Struct_1(vec3<u32>(~(~(~52448u)), ~(~arg_0.x | (0u | arg_0.x)), abs(114960u)), true);
    global4 = global1.c;
    global0 = array<vec3<bool>, 27>();
    return global4.x & ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(1196u, u_input.b), _wgslsmith_sub_u32(u_input.b, arg_0.x)) << ((_wgslsmith_mod_u32(global4.x, 0u) >> (23679u % 32u)) % 32u));
}

fn func_2() -> u32 {
    return ~countOneBits(~(~func_3(vec4<u32>(25834u, global1.b, u_input.a, 34282u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = select(select(vec3<bool>(arg_2.b, !global1.e.b, !global1.d.b), global0[_wgslsmith_index_u32(1u, 27u)], (_wgslsmith_f_op_f32(sign(global3.x)) < -143f) || !arg_3.b), global0[_wgslsmith_index_u32(global1.a.x, 27u)], arg_2.b & arg_1);
    return any(select(!vec3<bool>(52377u <= arg_3.a.x, true, arg_3.b), !(!vec3<bool>(arg_0.x, true, false)), select(!vec3<bool>(arg_0.x, true, global1.e.b), !(!global0[_wgslsmith_index_u32(arg_2.a.x, 27u)]), arg_3.b)));
}

fn func_1() -> Struct_2 {
    var var_0 = ~65788i;
    var var_1 = Struct_1(~(~firstLeadingBit(vec3<u32>(51154u, global1.e.a.x, global1.e.a.x))), func_4(vec2<bool>(global1.d.b, any(!global0[_wgslsmith_index_u32(global1.c.x, 27u)])), 1u < u_input.b, global1.e, Struct_1(vec3<u32>(~4294967295u, func_2(), u_input.a & global4.x), global1.d.b && (global1.b > 4294967295u))));
    var var_2 = vec2<bool>(true, global1.d.b);
    var var_3 = Struct_2(min(global1.c & ~global1.a, countOneBits(min(vec4<u32>(1u, global4.x, global4.x, 57373u) >> (global1.c % vec4<u32>(32u)), ~vec4<u32>(1u, global4.x, var_1.a.x, var_1.a.x)))), 4294967295u, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global4.x, 1248u, 4294967295u, 1u), global1.a) & ~vec4<u32>(~7761u, _wgslsmith_sub_u32(global4.x, 0u), 50201u, global4.x), Struct_1(abs(~vec3<u32>(48842u, 0u, 66415u) >> (~vec3<u32>(global1.e.a.x, 52459u, 104768u) % vec3<u32>(32u))), true), global1.d);
    var var_4 = var_1.a;
    return Struct_2(global1.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_4.x, 64037u, 1u), vec4<u32>(4294967295u, u_input.b, 1u, 86165u))), ~vec2<u32>(global4.x, 1u) ^ ~vec2<u32>(1u, global1.c.x)), ~(~var_3.c), Struct_1(~(_wgslsmith_mult_vec3_u32(global1.e.a, var_3.d.a) << (global4.wyz % vec3<u32>(32u))), select(all(global0[_wgslsmith_index_u32(54915u, 27u)]) & all(vec2<bool>(var_2.x, var_2.x)), any(select(vec4<bool>(true, var_1.b, var_3.d.b, true), vec4<bool>(true, true, var_3.e.b, var_1.b), global1.e.b)), any(vec2<bool>(false, true)))), var_3.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(arg_0.a, ~vec3<u32>(arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 19809u, u_input.a), arg_3.a), arg_1.b)), global1.d.b);
    global0 = array<vec3<bool>, 27>();
    var var_1 = !select(arg_3.b, false, true);
    let var_2 = Struct_2(vec4<u32>(43723u, _wgslsmith_sub_u32(~(~21310u), _wgslsmith_dot_vec3_u32(~global1.c.wxz, vec3<u32>(arg_2, 7089u, 4294967295u))), select(~_wgslsmith_clamp_u32(4294967295u, u_input.a, arg_1.b), arg_1.b, true), ~arg_3.a.x), 16528u, countOneBits(~arg_1.c), Struct_1(vec3<u32>(~var_0.a.x, global4.x, ~(~global4.x)), var_0.b), arg_1.e);
    global1 = Struct_2(~_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(global1.d.a.x, 0u, global1.c.x, global1.c.x)), ~vec4<u32>(49121u, 1u, u_input.b, global4.x)), arg_1.a.x, abs(global1.a >> (global1.c % vec4<u32>(32u))), Struct_1(~select(arg_1.e.a, _wgslsmith_sub_vec3_u32(arg_0.a, global4.wzy), select(global0[_wgslsmith_index_u32(31212u, 27u)], vec3<bool>(false, var_2.e.b, var_0.b), false)), arg_0.b), arg_3);
    return func_1().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, _wgslsmith_div_u32(13801u, global4.x), 14663u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 1u), global1.e.a.zz)), select(vec4<u32>(21845u, 0u, u_input.a, global1.b), vec4<u32>(u_input.b, global4.x, 4294967295u, global1.c.x), global1.d.b))), _wgslsmith_mult_u32(global4.x, global1.c.x), global1.a, func_5(Struct_1(~(~vec3<u32>(global1.b, global1.e.a.x, global4.x)), all(select(vec2<bool>(global1.e.b, false), vec2<bool>(global1.d.b, global1.d.b), vec2<bool>(global1.d.b, false)))), func_1(), ~37588u, func_1().e), func_5(func_5(global1.d, Struct_2(~global1.a, global1.e.a.x, max(vec4<u32>(global4.x, global4.x, 4294967295u, global1.d.a.x), vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a)), Struct_1(global4.yxw, true), global1.e), max(global4.x, max(16950u, u_input.b)), Struct_1(func_5(Struct_1(vec3<u32>(4294967295u, global1.c.x, global1.c.x), global1.d.b), Struct_2(vec4<u32>(5323u, u_input.a, global1.e.a.x, 0u), global4.x, vec4<u32>(global4.x, 4255u, global1.e.a.x, 0u), global1.e, Struct_1(vec3<u32>(global1.d.a.x, 21046u, 56980u), true)), 4605u, Struct_1(vec3<u32>(0u, 25738u, 0u), false)).a, !global1.e.b)), Struct_2(vec4<u32>(global1.a.x, global1.c.x, ~global4.x, u_input.a), 1u, reverseBits(vec4<u32>(1u, global4.x, u_input.a, global1.d.a.x)), Struct_1(global4.xyw, global1.e.b), global1.e), global1.a.x, global1.d));
    var_0 = Struct_2(func_1().a, ~func_5(Struct_1(select(global4.yyy, vec3<u32>(47591u, 1u, 60571u), false), !global1.e.b), Struct_2(abs(vec4<u32>(44836u, 17265u, var_0.c.x, 4294967295u)), 83552u >> (global1.a.x % 32u), vec4<u32>(global4.x, 0u, var_0.d.a.x, global4.x), func_1().e, Struct_1(vec3<u32>(global4.x, 10245u, 1u), false)), func_3(vec4<u32>(4457u, 0u, global1.d.a.x, global4.x)), global1.e).a.x, global1.a, var_0.d, var_0.e);
    var var_1 = vec2<u32>(func_5(func_5(func_1().e, func_1(), func_2(), var_0.e), func_1(), _wgslsmith_div_u32(92781u, _wgslsmith_div_u32(global1.b, global4.x)), global1.e).a.x, firstLeadingBit(56397u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(59660u), 0u), vec2<u32>(4294967295u, ~global1.e.a.x), vec2<u32>(~var_0.e.a.x, 0u));
    var_0 = Struct_2(vec4<u32>(u_input.b, 1u, 44855u, ~(~(~24611u))), ~62489u, ~vec4<u32>(var_0.b | 0u, 57240u, ~(~global4.x), ~_wgslsmith_dot_vec2_u32(var_0.c.yx, global4.xz)), Struct_1(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 1u, 25788u), select(vec3<u32>(global1.e.a.x, 1u, u_input.a), global1.e.a, vec3<bool>(var_0.e.b, true, var_0.d.b))), true), var_0.d);
    var var_2 = select(!vec2<bool>(!global1.e.b, true), vec2<bool>(func_1().e.b, true | global1.d.b), global1.e.b);
    global3 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -677f)), 2490f, global3.x);
    let var_3 = Struct_2(_wgslsmith_mult_vec4_u32(var_0.a, global1.c) >> (vec4<u32>(1u, global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(45613u, 18323u, global1.a.x)), 5482u) % vec4<u32>(32u)), 0u, vec4<u32>(~global4.x, ~u_input.a, global1.a.x, 1u), Struct_1(vec3<u32>(reverseBits(var_0.d.a.x) & 22240u, ~countOneBits(global4.x), 4294967295u), reverseBits(-1i) < select(~23702i, -2791i, true)), func_5(var_0.d, func_1(), abs(var_1.x), Struct_1(vec3<u32>(26559u, global1.c.x, 4294967295u) >> (max(vec3<u32>(var_0.c.x, 114461u, global1.a.x), vec3<u32>(1u, u_input.a, u_input.b)) % vec3<u32>(32u)), !func_1().d.b)));
    var var_4 = Struct_3(~vec3<u32>(~(~var_0.b), 4294967295u, var_1.x), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(361f - 164f) * -660f), _wgslsmith_f_op_f32(f32(-1f) * -1026f))), _wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -608f) + _wgslsmith_f_op_f32(exp2(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x))), ~_wgslsmith_sub_vec2_i32(max(vec2<i32>(-1i, 17952i), vec2<i32>(0i, -1358i) << (global4.wz % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_clamp_i32(-1001i, -4133i, 2147483647i))));
    var var_5 = reverseBits(0i ^ -(~reverseBits(var_4.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b.x), ~(~abs(1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + global3.x)), var_4.b.x, _wgslsmith_f_op_f32(-1599f - var_4.b.x))), vec2<i32>(-var_4.c.x, 0i) & _wgslsmith_mult_vec2_i32(~(~vec2<i32>(var_4.c.x, -36549i)), var_4.c), var_3.e.a.xz);
}

