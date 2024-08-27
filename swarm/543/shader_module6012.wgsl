struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<bool>(false, true, true), -1505f, 72779u, 0u, Struct_1(false, vec2<bool>(false, true), vec3<bool>(true, true, false), 1u)), -33474i);

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<bool>(true, false, false), -608f, 1u, 4294967295u, Struct_1(false, vec2<bool>(false, false), vec3<bool>(true, true, true), 0u)), Struct_2(vec3<bool>(true, true, true), 715f, 1u, 25950u, Struct_1(true, vec2<bool>(true, false), vec3<bool>(false, false, true), 21993u)), Struct_2(vec3<bool>(true, false, false), -465f, 95173u, 0u, Struct_1(false, vec2<bool>(false, true), vec3<bool>(true, false, false), 0u)), Struct_2(vec3<bool>(false, true, false), 1233f, 9449u, 33401u, Struct_1(true, vec2<bool>(true, true), vec3<bool>(true, true, false), 14499u)), Struct_2(vec3<bool>(true, false, false), -356f, 8681u, 0u, Struct_1(true, vec2<bool>(false, true), vec3<bool>(false, true, false), 4294967295u)), Struct_2(vec3<bool>(true, false, false), -276f, 0u, 61054u, Struct_1(true, vec2<bool>(false, true), vec3<bool>(false, true, true), 4294967295u)), Struct_2(vec3<bool>(true, true, true), -923f, 1u, 24081u, Struct_1(true, vec2<bool>(false, false), vec3<bool>(true, true, true), 83269u)), Struct_2(vec3<bool>(false, false, true), -1847f, 38097u, 1u, Struct_1(true, vec2<bool>(false, true), vec3<bool>(false, true, false), 29584u)), Struct_2(vec3<bool>(false, false, false), 503f, 48655u, 31515u, Struct_1(false, vec2<bool>(true, false), vec3<bool>(true, true, false), 1u)), Struct_2(vec3<bool>(true, true, false), -2503f, 0u, 14320u, Struct_1(false, vec2<bool>(false, false), vec3<bool>(true, true, true), 58240u)), Struct_2(vec3<bool>(true, true, true), -2732f, 0u, 19329u, Struct_1(true, vec2<bool>(false, true), vec3<bool>(false, false, true), 1u)), Struct_2(vec3<bool>(true, false, true), 817f, 0u, 63592u, Struct_1(true, vec2<bool>(true, true), vec3<bool>(true, true, true), 1u)), Struct_2(vec3<bool>(true, true, false), 272f, 1u, 97025u, Struct_1(true, vec2<bool>(false, true), vec3<bool>(false, true, false), 13383u)));

var<private> global3: vec3<f32>;

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = u_input.c;
    let var_1 = global4.yz;
    let var_2 = Struct_1(3848i != ~countOneBits(u_input.b), !vec2<bool>(!global4.x, !select(global0.a.e.a, var_1.x, true)), vec3<bool>(true, ((u_input.c >> (u_input.c % 32u)) << (~12910u % 32u)) >= countOneBits(u_input.a), true), global0.a.c);
    global0 = Struct_3(Struct_2(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x)))), _wgslsmith_div_u32(0u, global0.a.d), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(85289u, 1u, 0u)) >> ((_wgslsmith_sub_u32(var_2.d, 3793u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, 15348u), vec2<u32>(4294967295u, global0.a.d))) % 32u), Struct_1(global0.b <= _wgslsmith_sub_i32(u_input.b, u_input.d), select(select(vec2<bool>(global0.a.e.b.x, false), global0.a.a.yx, vec2<bool>(true, var_1.x)), select(vec2<bool>(var_2.c.x, global4.x), vec2<bool>(var_1.x, true), true), select(global0.a.e.c.zy, global0.a.a.zx, false)), select(var_2.c, vec3<bool>(global4.x, var_1.x, false), global0.a.e.c), global0.a.d)), max(global0.b, ~_wgslsmith_sub_i32(global0.b, global0.b)) & -(~min(u_input.b, -53637i)));
    let var_3 = var_2.c.x;
    return true;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec4<bool>((false || global4.x) & false, global4.x || global4.x, true, global4.x);
    global4 = select(vec3<bool>(true, (all(vec4<bool>(var_0.x, true, false, true)) && true) | global4.x, global0.a.e.b.x | true), !(!vec3<bool>(func_3(), var_0.x, global4.x)), vec3<bool>(var_0.x, all(!select(vec4<bool>(false, false, global4.x, false), vec4<bool>(var_0.x, false, global4.x, true), vec4<bool>(true, global0.a.e.a, global0.a.a.x, true))), any(global0.a.e.c)));
    var_0 = vec4<bool>(true, (true & all(vec2<bool>(var_0.x, var_0.x))) || !global4.x, global4.x, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-394f, -1024f)) - _wgslsmith_f_op_f32(-1606f - 1209f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.x, global0.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -1751f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -558f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-797f, -1201f, 646f), vec3<f32>(global0.a.b, global0.a.b, global0.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b, 780f, global0.a.b) - vec3<f32>(global0.a.b, 911f, global0.a.b)), true))), vec3<f32>(global0.a.b, _wgslsmith_f_op_f32(-1178f - arg_0), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global3.x), _wgslsmith_f_op_f32(select(1556f, -2232f, global4.x)))), var_0.wzx)));
    global4 = select(!var_0.xwx, vec3<bool>(!(!var_0.x), any(select(vec4<bool>(global4.x, var_0.x, global4.x, false), !vec4<bool>(true, true, true, global4.x), vec4<bool>(true, global4.x, false, true))), all(!select(vec4<bool>(global4.x, false, false, false), vec4<bool>(global4.x, true, false, global4.x), false))), vec3<bool>(global0.a.e.b.x, any(var_0.wyw), false));
    return Struct_3(global0.a, 0i);
}

fn func_1() -> vec3<u32> {
    global0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(-global0.a.b), true))), 689f));
    global1 = array<vec3<i32>, 9>();
    let var_0 = select(select(global0.a.a.xy, !func_2(-207f).a.a.xz, false), !global4.yy, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)))).a.e.c.yy);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, -535f), vec3<f32>(714f, global0.a.b, global0.a.b), vec3<bool>(global0.a.a.x, false, global4.x))))) * vec3<f32>(_wgslsmith_div_f32(466f, global0.a.b), _wgslsmith_f_op_f32(sign(-1205f)), 247f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1325f, 370f, global3.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1158f, global3.x, -428f))))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global0.a.b)))), _wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.x, -285f)), _wgslsmith_f_op_f32(select(1000f, global0.a.b, true))), global3.x, false))));
    let var_2 = Struct_1(all(global0.a.e.c.xy), !select(vec2<bool>(global4.x | global0.a.a.x, false), vec2<bool>(true, all(vec3<bool>(true, false, global0.a.e.b.x))), func_2(_wgslsmith_f_op_f32(1321f * global3.x)).a.a.yy), global0.a.a, _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(1u, global0.a.e.d, global0.a.c))), ~abs(~vec3<u32>(u_input.c, 4294967295u, 3281u))));
    return firstTrailingBit(vec3<u32>(7388u, u_input.c, 46364u) >> (min(vec3<u32>(4294967295u, u_input.a, ~var_2.d), select(select(vec3<u32>(global0.a.e.d, u_input.a, global0.a.c), vec3<u32>(var_2.d, global0.a.c, 7954u), vec3<bool>(global4.x, var_2.a, false)), max(vec3<u32>(5100u, var_2.d, var_2.d), vec3<u32>(u_input.c, global0.a.d, 0u)), !var_2.c)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_2(global0.a.a, _wgslsmith_f_op_f32(-global3.x), 20152u, ~_wgslsmith_sub_u32(1u, 1u), Struct_1(any(!vec3<bool>(false, global0.a.e.a, true)), !global0.a.e.b, !select(global0.a.a, vec3<bool>(global4.x, global4.x, true), global0.a.e.b.x), 32468u)), global0.b);
    var var_0 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(11403u, global0.a.c | global0.a.e.d, ~u_input.c), ~vec3<u32>(global0.a.c, 0u, global0.a.e.d), false), _wgslsmith_sub_vec3_u32(min(~vec3<u32>(34557u, 47855u, global0.a.c), func_1()), reverseBits(countOneBits(vec3<u32>(0u, 1u, global0.a.c))))) | (~vec3<u32>(global0.a.e.d >> (global0.a.c % 32u), ~4294967295u, 30849u >> (0u % 32u)) << (firstLeadingBit(~(~vec3<u32>(52348u, u_input.c, 72327u))) % vec3<u32>(32u)));
    var var_1 = !global4.xy;
    var var_2 = Struct_3(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(496f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))))).a, 0i);
    var_1 = global0.a.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, var_2.a.e.d), var_0.zz), ~vec2<u32>(21903u, 30117u)), 24314u, 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.xz))));
}

