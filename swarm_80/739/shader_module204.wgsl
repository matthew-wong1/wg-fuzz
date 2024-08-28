struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, true, true), vec2<u32>(1u, 0u), vec3<bool>(false, true, false));

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true), vec2<u32>(20458u, 4294967295u), vec3<bool>(true, false, false));

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, false), vec2<u32>(80942u, 63351u), vec3<bool>(false, true, false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~arg_0, min(~firstTrailingBit(global3.c.x), arg_1.x), global3.c.x, 51412u), firstLeadingBit(~(~vec4<u32>(arg_0, 52366u, global3.c.x, arg_1.x))));
    var var_1 = vec4<i32>(-1i, 21928i, 0i, 2147483647i);
    global0 = Struct_1(global1.zwz, vec4<bool>(!any(vec2<bool>(global2.a.x, global1.x)), true, false, 4294967295u > u_input.a), ~max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 27125u), vec3<u32>(global2.c.x, global2.c.x, global0.c.x)), _wgslsmith_mod_u32(var_0.x, var_0.x)), ~global0.c), select(vec3<bool>(true, !global3.d.x | any(global0.b), global0.a.x), vec3<bool>(true, true | all(global3.b.xxw), global0.a.x), global3.b.wzw));
    let var_2 = firstTrailingBit(vec2<u32>(48569u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x), ~arg_0) ^ ~4294967295u));
    let var_3 = global0.b.xy;
    return vec3<bool>(all(global0.a.zx), 456f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f - -844f)), _wgslsmith_f_op_f32(round(-260f))), true);
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    var var_1 = global2.a;
    var var_2 = Struct_1(select(func_3(global3.c.x, u_input.b, -2147483647i), vec3<bool>(select(select(false, false, global3.d.x), func_3(global3.c.x, vec3<u32>(44433u, global0.c.x, 18729u), u_input.e).x, global0.d.x), global1.x, !global2.d.x), global0.b.wxz), global2.b, ~vec2<u32>(global3.c.x, global2.c.x & abs(25409u)), select(global2.d, !global3.d, vec3<bool>(true, true, !global1.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    global2 = Struct_1(select(select(vec3<bool>(!global0.b.x, any(global0.b), true), select(select(vec3<bool>(var_1.x, true, var_1.x), var_2.a, global2.a), vec3<bool>(true, true, true), !vec3<bool>(true, global3.b.x, false)), global3.a), var_2.b.wzy, vec3<bool>(select(global3.d.x, var_3.x == var_3.x, true), true, var_1.x | (6576i != u_input.c.x))), !global0.b, vec2<u32>(global3.c.x, 1u), !select(global3.b.xxz, func_3(70409u, vec3<u32>(var_2.c.x, u_input.a, 36526u) ^ u_input.b, u_input.c.x), var_2.a));
    return Struct_1(vec3<bool>(true, true, !any(vec4<bool>(false, global3.b.x, global1.x, true))), vec4<bool>(func_3(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.c.x, var_0), var_0, ~global3.c.x), vec3<u32>(_wgslsmith_mod_u32(4294967295u, 35524u), global0.c.x & global0.c.x, 52318u), 13212i >> (global3.c.x % 32u)).x, true & all(vec4<bool>(true, var_2.a.x, global0.b.x, false)), any(func_3(65907u ^ global0.c.x, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, global2.c.x, var_0), vec3<u32>(global0.c.x, global3.c.x, 5911u)), ~1i)), global2.a.x), firstTrailingBit(u_input.b.xy), select(global1.xww, global1.wwy, !global2.b.x));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(max(global2.c.x, global0.c.x), _wgslsmith_dot_vec2_u32(~(~global0.c), ~(~global3.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, ~18119u, 1u), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.c.x, 0u, 0u), vec3<u32>(0u, global0.c.x, 63595u), vec3<u32>(u_input.b.x, global0.c.x, u_input.b.x))))), vec3<u32>(~19243u, ~_wgslsmith_mod_u32(~u_input.b.x, select(4294967295u, global2.c.x, global0.a.x)), (~global3.c.x ^ 2014u) << (~global3.c.x % 32u)));
    let var_1 = func_2();
    var_0 = _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(~(global3.c.x >> (1u % 32u)), ~var_1.c.x, firstLeadingBit(global0.c.x)));
    let var_2 = !select(vec3<bool>(any(global3.a) & all(vec2<bool>(global3.d.x, var_1.b.x)), false, false), vec3<bool>(!global3.a.x, false, true), false);
    global3 = Struct_1(vec3<bool>(!(!var_1.b.x), any(select(!global3.b, select(global0.b, vec4<bool>(var_2.x, global0.b.x, false, true), vec4<bool>(var_2.x, global0.a.x, global1.x, false)), true)), true), vec4<bool>(any(vec3<bool>(false, global0.d.x, all(vec2<bool>(false, global2.b.x)))), !any(vec3<bool>(false, true, global1.x)), u_input.b.x >= global0.c.x, var_2.x), global0.c, vec3<bool>(func_3(25358u, u_input.b, u_input.d.x).x, !var_2.x, !(!global0.a.x) == any(!vec2<bool>(global2.d.x, false))));
    return any(!vec2<bool>(global3.d.x, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global3 = Struct_1(!select(!select(vec3<bool>(false, true, false), global1.zzy, arg_2.x), vec3<bool>(global1.x, true, u_input.d.x > 1i), arg_3.d.x), select(vec4<bool>(true || !global0.b.x, func_3(16455u, u_input.b, u_input.c.x).x | global2.d.x, arg_3.b.x || true, false), !vec4<bool>(true, false, global1.x || global1.x, true), select(vec4<bool>(!global0.b.x, all(arg_0), any(vec4<bool>(false, false, true, false)), false && global0.a.x), func_2().b, arg_3.b)), max(vec2<u32>(global3.c.x, arg_3.c.x), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c.x, 68179u), vec2<u32>(62651u, global2.c.x), vec2<u32>(arg_3.c.x, u_input.b.x)), vec2<u32>(global0.c.x, arg_3.c.x))) ^ vec2<u32>(~_wgslsmith_mult_u32(arg_3.c.x, 33400u), ~(~4294967295u)), vec3<bool>(arg_2.x, u_input.c.x <= 0i, any(vec4<bool>(true, true, true, true))));
    global2 = Struct_1(arg_3.b.xzw, select(global0.b, !vec4<bool>(true, !global1.x, false, true), -10408i < u_input.e), reverseBits(max(select(vec2<u32>(u_input.a, 0u) | vec2<u32>(4294967295u, global3.c.x), global3.c, !arg_0), ~_wgslsmith_add_vec2_u32(global3.c, u_input.b.zy))), global3.d);
    global0 = Struct_1(!(!global0.d), select(vec4<bool>(func_3(~4294967295u, min(vec3<u32>(arg_1.x, arg_3.c.x, u_input.a), vec3<u32>(12553u, global3.c.x, global0.c.x)), _wgslsmith_add_i32(u_input.c.x, 36115i)).x, func_1(), func_2().a.x, !(0u == global3.c.x)), arg_3.b, select(vec4<bool>(true | arg_3.b.x, true, false, true), !(!vec4<bool>(global3.b.x, arg_0.x, global0.a.x, global0.a.x)), arg_3.b)), ~(~(abs(global0.c) << (vec2<u32>(4294967295u, global3.c.x) % vec2<u32>(32u)))), func_3(countOneBits(_wgslsmith_mult_u32(~global2.c.x, _wgslsmith_div_u32(u_input.b.x, global3.c.x))), arg_1.xxz, 1i));
    let var_0 = func_2().b;
    let var_1 = func_2();
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(!vec2<bool>(~u_input.d.x == ~u_input.d.x, true), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.a), ~firstLeadingBit(~global0.c.x), arg_0.c.x, global3.c.x), select(global2.b.www, func_3(4839u, ~u_input.b, u_input.c.x & _wgslsmith_add_i32(u_input.c.x, u_input.d.x)), true), Struct_1(func_2().d, global0.b, ~global2.c, arg_0.d));
    var var_1 = Struct_1(arg_1.zzx, arg_1, vec2<u32>(~10809u, abs(~4294967295u)), vec3<bool>(!global0.a.x, global1.x, global3.d.x));
    var var_2 = arg_0.c;
    global3 = func_2();
    var_0 = Struct_1(vec3<bool>(global0.a.x, global1.x || true, false), global3.b, var_1.c, select(!global3.a, global2.d, select(func_2().b.xyx, var_0.a, select(!vec3<bool>(false, false, global1.x), !global3.d, vec3<bool>(true, true, true)))));
    return func_4(global3.d.yy, _wgslsmith_sub_vec4_u32(~max(vec4<u32>(30202u, var_2.x, 594u, 109189u), max(vec4<u32>(global2.c.x, 842u, 22195u, 0u), vec4<u32>(var_1.c.x, 1u, 18234u, 123157u))), vec4<u32>(max(89606u, min(130154u, 0u)), global0.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, global3.c.x, 4294967295u), vec4<u32>(arg_0.c.x, var_0.c.x, 48026u, 4294967295u)), ~1u | global3.c.x)), func_4(!var_0.d.yz, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 1u, var_1.c.x, global3.c.x), ~vec4<u32>(0u, global0.c.x, global0.c.x, var_1.c.x)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(53965u, global2.c.x, var_1.c.x, u_input.a)), vec4<u32>(26124u, var_1.c.x, 79398u, var_0.c.x) & vec4<u32>(31834u, 13209u, var_1.c.x, 110351u))), vec3<bool>(arg_1.x, global2.c.x != 17923u, true), arg_0).d, Struct_1(!select(select(vec3<bool>(true, false, var_1.a.x), var_0.b.zzw, vec3<bool>(global0.b.x, false, global1.x)), global3.b.zxy, vec3<bool>(true, global0.a.x, arg_2.x)), !func_2().b, ~var_0.c, !select(vec3<bool>(global3.a.x, true, true), !vec3<bool>(var_1.d.x, global3.a.x, true), any(global3.b.yzx))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_4(vec2<bool>(true, func_1()), countOneBits(vec4<u32>(global2.c.x, 1u, 9960u, 0u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.c.x, 0u, 0u), vec4<u32>(0u, global0.c.x, global3.c.x, 47961u))), vec3<bool>(true, global1.x, false), func_2()), vec4<bool>(func_3(_wgslsmith_mod_u32(13790u, _wgslsmith_clamp_u32(global2.c.x, 4294967295u, 31810u)), vec3<u32>(global3.c.x, 10315u | global2.c.x, abs(u_input.a)), 4357i).x, global2.a.x & all(vec2<bool>(global0.d.x, global0.b.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(global0.c.x, 0u), global2.c.x) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(66903u, global2.c.x, 4294967295u, global2.c.x), vec4<u32>(0u, global3.c.x, 16107u, global2.c.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, 27929u), u_input.a) <= func_2().c.x), !global1.yz);
    var var_0 = Struct_1(vec3<bool>(global3.b.x, !(!global3.a.x), any(!global2.b.zw) && true), vec4<bool>(true, all(global2.b.yz) | true, !select(all(global3.b), global1.x, func_3(4294967295u, u_input.b, 28769i).x), true), abs(~_wgslsmith_sub_vec2_u32(abs(u_input.b.xz), vec2<u32>(global3.c.x, 21409u))), global0.d);
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, global0.c), ~global2.c.x), var_0.c.x);
    global2 = func_2();
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(82952u);
}

